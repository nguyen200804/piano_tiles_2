package org.apache.commons.io.monitor;

import java.io.File;
import java.io.FileFilter;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import org.apache.commons.io.FileUtils;
import org.apache.commons.io.IOCase;
import org.apache.commons.io.comparator.NameFileComparator;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class FileAlterationObserver implements Serializable {
    private final Comparator<File> comparator;
    private final FileFilter fileFilter;
    private final List<FileAlterationListener> listeners;
    private final FileEntry rootEntry;

    public FileAlterationObserver(String directoryName) {
        this(new File(directoryName));
    }

    public FileAlterationObserver(String directoryName, FileFilter fileFilter) {
        this(new File(directoryName), fileFilter);
    }

    public FileAlterationObserver(String directoryName, FileFilter fileFilter, IOCase caseSensitivity) {
        this(new File(directoryName), fileFilter, caseSensitivity);
    }

    public FileAlterationObserver(File directory) {
        this(directory, (FileFilter) null);
    }

    public FileAlterationObserver(File directory, FileFilter fileFilter) {
        this(directory, fileFilter, (IOCase) null);
    }

    public FileAlterationObserver(File directory, FileFilter fileFilter, IOCase caseSensitivity) {
        this(new FileEntry(directory), fileFilter, caseSensitivity);
    }

    protected FileAlterationObserver(FileEntry rootEntry, FileFilter fileFilter, IOCase caseSensitivity) {
        this.listeners = new CopyOnWriteArrayList();
        if (rootEntry == null) {
            throw new IllegalArgumentException("Root entry is missing");
        }
        if (rootEntry.getFile() == null) {
            throw new IllegalArgumentException("Root directory is missing");
        }
        this.rootEntry = rootEntry;
        this.fileFilter = fileFilter;
        if (caseSensitivity == null || caseSensitivity.equals(IOCase.SYSTEM)) {
            this.comparator = NameFileComparator.NAME_SYSTEM_COMPARATOR;
        } else if (caseSensitivity.equals(IOCase.INSENSITIVE)) {
            this.comparator = NameFileComparator.NAME_INSENSITIVE_COMPARATOR;
        } else {
            this.comparator = NameFileComparator.NAME_COMPARATOR;
        }
    }

    public File getDirectory() {
        return this.rootEntry.getFile();
    }

    public FileFilter getFileFilter() {
        return this.fileFilter;
    }

    public void addListener(FileAlterationListener listener) {
        if (listener != null) {
            this.listeners.add(listener);
        }
    }

    public void removeListener(FileAlterationListener listener) {
        if (listener != null) {
            while (this.listeners.remove(listener)) {
            }
        }
    }

    public Iterable<FileAlterationListener> getListeners() {
        return this.listeners;
    }

    public void initialize() throws Exception {
        this.rootEntry.refresh(this.rootEntry.getFile());
        File[] listFiles = listFiles(this.rootEntry.getFile());
        FileEntry[] fileEntryArr = listFiles.length > 0 ? new FileEntry[listFiles.length] : FileEntry.EMPTY_ENTRIES;
        for (int i = 0; i < listFiles.length; i++) {
            fileEntryArr[i] = createFileEntry(this.rootEntry, listFiles[i]);
        }
        this.rootEntry.setChildren(fileEntryArr);
    }

    public void destroy() throws Exception {
    }

    public void checkAndNotify() {
        Iterator<FileAlterationListener> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().onStart(this);
        }
        File file = this.rootEntry.getFile();
        if (file.exists()) {
            checkAndNotify(this.rootEntry, this.rootEntry.getChildren(), listFiles(file));
        } else if (this.rootEntry.isExists()) {
            checkAndNotify(this.rootEntry, this.rootEntry.getChildren(), FileUtils.EMPTY_FILE_ARRAY);
        }
        Iterator<FileAlterationListener> it2 = this.listeners.iterator();
        while (it2.hasNext()) {
            it2.next().onStop(this);
        }
    }

    private void checkAndNotify(FileEntry parent, FileEntry[] previous, File[] files) {
        int i = 0;
        FileEntry[] fileEntryArr = files.length > 0 ? new FileEntry[files.length] : FileEntry.EMPTY_ENTRIES;
        for (FileEntry fileEntry : previous) {
            while (i < files.length && this.comparator.compare(fileEntry.getFile(), files[i]) > 0) {
                fileEntryArr[i] = createFileEntry(parent, files[i]);
                doCreate(fileEntryArr[i]);
                i++;
            }
            if (i < files.length && this.comparator.compare(fileEntry.getFile(), files[i]) == 0) {
                doMatch(fileEntry, files[i]);
                checkAndNotify(fileEntry, fileEntry.getChildren(), listFiles(files[i]));
                fileEntryArr[i] = fileEntry;
                i++;
            } else {
                checkAndNotify(fileEntry, fileEntry.getChildren(), FileUtils.EMPTY_FILE_ARRAY);
                doDelete(fileEntry);
            }
        }
        while (i < files.length) {
            fileEntryArr[i] = createFileEntry(parent, files[i]);
            doCreate(fileEntryArr[i]);
            i++;
        }
        parent.setChildren(fileEntryArr);
    }

    private FileEntry createFileEntry(FileEntry parent, File file) {
        FileEntry newChildInstance = parent.newChildInstance(file);
        newChildInstance.refresh(file);
        File[] listFiles = listFiles(file);
        FileEntry[] fileEntryArr = listFiles.length > 0 ? new FileEntry[listFiles.length] : FileEntry.EMPTY_ENTRIES;
        for (int i = 0; i < listFiles.length; i++) {
            fileEntryArr[i] = createFileEntry(newChildInstance, listFiles[i]);
        }
        newChildInstance.setChildren(fileEntryArr);
        return newChildInstance;
    }

    private void doCreate(FileEntry entry) {
        for (FileAlterationListener fileAlterationListener : this.listeners) {
            if (entry.isDirectory()) {
                fileAlterationListener.onDirectoryCreate(entry.getFile());
            } else {
                fileAlterationListener.onFileCreate(entry.getFile());
            }
        }
        for (FileEntry fileEntry : entry.getChildren()) {
            doCreate(fileEntry);
        }
    }

    private void doMatch(FileEntry entry, File file) {
        if (entry.refresh(file)) {
            for (FileAlterationListener fileAlterationListener : this.listeners) {
                if (entry.isDirectory()) {
                    fileAlterationListener.onDirectoryChange(file);
                } else {
                    fileAlterationListener.onFileChange(file);
                }
            }
        }
    }

    private void doDelete(FileEntry entry) {
        for (FileAlterationListener fileAlterationListener : this.listeners) {
            if (entry.isDirectory()) {
                fileAlterationListener.onDirectoryDelete(entry.getFile());
            } else {
                fileAlterationListener.onFileDelete(entry.getFile());
            }
        }
    }

    private File[] listFiles(File file) {
        File[] fileArr = null;
        if (file.isDirectory()) {
            fileArr = this.fileFilter == null ? file.listFiles() : file.listFiles(this.fileFilter);
        }
        if (fileArr == null) {
            fileArr = FileUtils.EMPTY_FILE_ARRAY;
        }
        if (this.comparator != null && fileArr.length > 1) {
            Arrays.sort(fileArr, this.comparator);
        }
        return fileArr;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append("[file='");
        sb.append(getDirectory().getPath());
        sb.append('\'');
        if (this.fileFilter != null) {
            sb.append(", ");
            sb.append(this.fileFilter.toString());
        }
        sb.append(", listeners=");
        sb.append(this.listeners.size());
        sb.append("]");
        return sb.toString();
    }
}
