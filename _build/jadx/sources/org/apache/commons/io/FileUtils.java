package org.apache.commons.io;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileFilter;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.Reader;
import java.math.BigInteger;
import java.net.URL;
import java.net.URLConnection;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.zip.CRC32;
import java.util.zip.CheckedInputStream;
import java.util.zip.Checksum;
import org.apache.commons.io.filefilter.DirectoryFileFilter;
import org.apache.commons.io.filefilter.FalseFileFilter;
import org.apache.commons.io.filefilter.FileFilterUtils;
import org.apache.commons.io.filefilter.IOFileFilter;
import org.apache.commons.io.filefilter.SuffixFileFilter;
import org.apache.commons.io.filefilter.TrueFileFilter;
import org.apache.commons.io.output.NullOutputStream;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class FileUtils {
    private static final long FILE_COPY_BUFFER_SIZE = 31457280;
    public static final long ONE_GB = 1073741824;
    public static final long ONE_KB = 1024;
    public static final long ONE_MB = 1048576;
    public static final long ONE_PB = 1125899906842624L;
    public static final long ONE_TB = 1099511627776L;
    public static final BigInteger ONE_KB_BI = BigInteger.valueOf(1024);
    public static final BigInteger ONE_MB_BI = ONE_KB_BI.multiply(ONE_KB_BI);
    public static final BigInteger ONE_GB_BI = ONE_KB_BI.multiply(ONE_MB_BI);
    public static final BigInteger ONE_TB_BI = ONE_KB_BI.multiply(ONE_GB_BI);
    public static final BigInteger ONE_PB_BI = ONE_KB_BI.multiply(ONE_TB_BI);
    public static final BigInteger ONE_EB_BI = ONE_KB_BI.multiply(ONE_PB_BI);
    public static final long ONE_EB = 1152921504606846976L;
    public static final BigInteger ONE_ZB = BigInteger.valueOf(1024).multiply(BigInteger.valueOf(ONE_EB));
    public static final BigInteger ONE_YB = ONE_KB_BI.multiply(ONE_ZB);
    public static final File[] EMPTY_FILE_ARRAY = new File[0];
    private static final Charset UTF8 = Charset.forName("UTF-8");

    public static File getFile(File directory, String... names) {
        if (directory == null) {
            throw new NullPointerException("directorydirectory must not be null");
        }
        if (names == null) {
            throw new NullPointerException("names must not be null");
        }
        int length = names.length;
        int i = 0;
        while (i < length) {
            File file = new File(directory, names[i]);
            i++;
            directory = file;
        }
        return directory;
    }

    public static File getFile(String... names) {
        File file;
        if (names == null) {
            throw new NullPointerException("names must not be null");
        }
        int length = names.length;
        File file2 = null;
        int i = 0;
        while (i < length) {
            String str = names[i];
            if (file2 == null) {
                file = new File(str);
            } else {
                file = new File(file2, str);
            }
            i++;
            file2 = file;
        }
        return file2;
    }

    public static String getTempDirectoryPath() {
        return System.getProperty("java.io.tmpdir");
    }

    public static File getTempDirectory() {
        return new File(getTempDirectoryPath());
    }

    public static String getUserDirectoryPath() {
        return System.getProperty("user.home");
    }

    public static File getUserDirectory() {
        return new File(getUserDirectoryPath());
    }

    public static FileInputStream openInputStream(File file) throws IOException {
        if (file.exists()) {
            if (file.isDirectory()) {
                throw new IOException("File '" + file + "' exists but is a directory");
            }
            if (!file.canRead()) {
                throw new IOException("File '" + file + "' cannot be read");
            }
            return new FileInputStream(file);
        }
        throw new FileNotFoundException("File '" + file + "' does not exist");
    }

    public static FileOutputStream openOutputStream(File file) throws IOException {
        return openOutputStream(file, false);
    }

    public static FileOutputStream openOutputStream(File file, boolean append) throws IOException {
        if (file.exists()) {
            if (file.isDirectory()) {
                throw new IOException("File '" + file + "' exists but is a directory");
            }
            if (!file.canWrite()) {
                throw new IOException("File '" + file + "' cannot be written to");
            }
        } else {
            File parentFile = file.getParentFile();
            if (parentFile != null && !parentFile.mkdirs() && !parentFile.isDirectory()) {
                throw new IOException("Directory '" + parentFile + "' could not be created");
            }
        }
        return new FileOutputStream(file, append);
    }

    public static String byteCountToDisplaySize(BigInteger size) {
        if (size.divide(ONE_EB_BI).compareTo(BigInteger.ZERO) > 0) {
            return String.valueOf(size.divide(ONE_EB_BI)) + " EB";
        }
        if (size.divide(ONE_PB_BI).compareTo(BigInteger.ZERO) > 0) {
            return String.valueOf(size.divide(ONE_PB_BI)) + " PB";
        }
        if (size.divide(ONE_TB_BI).compareTo(BigInteger.ZERO) > 0) {
            return String.valueOf(size.divide(ONE_TB_BI)) + " TB";
        }
        if (size.divide(ONE_GB_BI).compareTo(BigInteger.ZERO) > 0) {
            return String.valueOf(size.divide(ONE_GB_BI)) + " GB";
        }
        if (size.divide(ONE_MB_BI).compareTo(BigInteger.ZERO) > 0) {
            return String.valueOf(size.divide(ONE_MB_BI)) + " MB";
        }
        if (size.divide(ONE_KB_BI).compareTo(BigInteger.ZERO) > 0) {
            return String.valueOf(size.divide(ONE_KB_BI)) + " KB";
        }
        return String.valueOf(size) + " bytes";
    }

    public static String byteCountToDisplaySize(long size) {
        return byteCountToDisplaySize(BigInteger.valueOf(size));
    }

    public static void touch(File file) throws IOException {
        if (!file.exists()) {
            IOUtils.closeQuietly((OutputStream) openOutputStream(file));
        }
        if (!file.setLastModified(System.currentTimeMillis())) {
            throw new IOException("Unable to set the last modification time for " + file);
        }
    }

    public static File[] convertFileCollectionToFileArray(Collection<File> files) {
        return (File[]) files.toArray(new File[files.size()]);
    }

    private static void innerListFiles(Collection<File> files, File directory, IOFileFilter filter, boolean includeSubDirectories) {
        File[] listFiles = directory.listFiles((FileFilter) filter);
        if (listFiles != null) {
            for (File file : listFiles) {
                if (file.isDirectory()) {
                    if (includeSubDirectories) {
                        files.add(file);
                    }
                    innerListFiles(files, file, filter, includeSubDirectories);
                } else {
                    files.add(file);
                }
            }
        }
    }

    public static Collection<File> listFiles(File directory, IOFileFilter fileFilter, IOFileFilter dirFilter) {
        validateListFilesParameters(directory, fileFilter);
        IOFileFilter upEffectiveFileFilter = setUpEffectiveFileFilter(fileFilter);
        IOFileFilter upEffectiveDirFilter = setUpEffectiveDirFilter(dirFilter);
        LinkedList linkedList = new LinkedList();
        innerListFiles(linkedList, directory, FileFilterUtils.or(upEffectiveFileFilter, upEffectiveDirFilter), false);
        return linkedList;
    }

    private static void validateListFilesParameters(File directory, IOFileFilter fileFilter) {
        if (!directory.isDirectory()) {
            throw new IllegalArgumentException("Parameter 'directory' is not a directory");
        }
        if (fileFilter == null) {
            throw new NullPointerException("Parameter 'fileFilter' is null");
        }
    }

    private static IOFileFilter setUpEffectiveFileFilter(IOFileFilter fileFilter) {
        return FileFilterUtils.and(fileFilter, FileFilterUtils.notFileFilter(DirectoryFileFilter.INSTANCE));
    }

    private static IOFileFilter setUpEffectiveDirFilter(IOFileFilter dirFilter) {
        return dirFilter == null ? FalseFileFilter.INSTANCE : FileFilterUtils.and(dirFilter, DirectoryFileFilter.INSTANCE);
    }

    public static Collection<File> listFilesAndDirs(File directory, IOFileFilter fileFilter, IOFileFilter dirFilter) {
        validateListFilesParameters(directory, fileFilter);
        IOFileFilter upEffectiveFileFilter = setUpEffectiveFileFilter(fileFilter);
        IOFileFilter upEffectiveDirFilter = setUpEffectiveDirFilter(dirFilter);
        LinkedList linkedList = new LinkedList();
        if (directory.isDirectory()) {
            linkedList.add(directory);
        }
        innerListFiles(linkedList, directory, FileFilterUtils.or(upEffectiveFileFilter, upEffectiveDirFilter), true);
        return linkedList;
    }

    public static Iterator<File> iterateFiles(File directory, IOFileFilter fileFilter, IOFileFilter dirFilter) {
        return listFiles(directory, fileFilter, dirFilter).iterator();
    }

    public static Iterator<File> iterateFilesAndDirs(File directory, IOFileFilter fileFilter, IOFileFilter dirFilter) {
        return listFilesAndDirs(directory, fileFilter, dirFilter).iterator();
    }

    private static String[] toSuffixes(String[] extensions) {
        String[] strArr = new String[extensions.length];
        for (int i = 0; i < extensions.length; i++) {
            strArr[i] = "." + extensions[i];
        }
        return strArr;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v5, types: [org.apache.commons.io.filefilter.IOFileFilter] */
    public static Collection<File> listFiles(File directory, String[] extensions, boolean recursive) {
        SuffixFileFilter suffixFileFilter;
        if (extensions == null) {
            suffixFileFilter = TrueFileFilter.INSTANCE;
        } else {
            suffixFileFilter = new SuffixFileFilter(toSuffixes(extensions));
        }
        return listFiles(directory, suffixFileFilter, recursive ? TrueFileFilter.INSTANCE : FalseFileFilter.INSTANCE);
    }

    public static Iterator<File> iterateFiles(File directory, String[] extensions, boolean recursive) {
        return listFiles(directory, extensions, recursive).iterator();
    }

    public static boolean contentEquals(File file1, File file2) throws IOException {
        FileInputStream fileInputStream;
        FileInputStream fileInputStream2 = null;
        boolean exists = file1.exists();
        if (exists != file2.exists()) {
            return false;
        }
        if (!exists) {
            return true;
        }
        if (file1.isDirectory() || file2.isDirectory()) {
            throw new IOException("Can't compare directories, only files");
        }
        if (file1.length() != file2.length()) {
            return false;
        }
        if (file1.getCanonicalFile().equals(file2.getCanonicalFile())) {
            return true;
        }
        try {
            FileInputStream fileInputStream3 = new FileInputStream(file1);
            try {
                fileInputStream = new FileInputStream(file2);
            } catch (Throwable th) {
                th = th;
                fileInputStream = null;
                fileInputStream2 = fileInputStream3;
            }
            try {
                boolean contentEquals = IOUtils.contentEquals(fileInputStream3, fileInputStream);
                IOUtils.closeQuietly((InputStream) fileInputStream3);
                IOUtils.closeQuietly((InputStream) fileInputStream);
                return contentEquals;
            } catch (Throwable th2) {
                th = th2;
                fileInputStream2 = fileInputStream3;
                IOUtils.closeQuietly((InputStream) fileInputStream2);
                IOUtils.closeQuietly((InputStream) fileInputStream);
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            fileInputStream = null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v11 */
    /* JADX WARN: Type inference failed for: r2v12 */
    /* JADX WARN: Type inference failed for: r2v4, types: [boolean] */
    /* JADX WARN: Type inference failed for: r2v5 */
    /* JADX WARN: Type inference failed for: r2v6, types: [java.io.Reader] */
    /* JADX WARN: Type inference failed for: r2v7 */
    /* JADX WARN: Type inference failed for: r2v9, types: [java.io.Reader] */
    public static boolean contentEqualsIgnoreEOL(File file, File file2, String str) throws IOException {
        InputStreamReader inputStreamReader = null;
        boolean exists = file.exists();
        if (exists != file2.exists()) {
            return false;
        }
        if (!exists) {
            return true;
        }
        if (file.isDirectory() || file2.isDirectory()) {
            throw new IOException("Can't compare directories, only files");
        }
        ?? equals = file.getCanonicalFile().equals(file2.getCanonicalFile());
        if (equals != 0) {
            return true;
        }
        try {
            try {
                if (str == null) {
                    InputStreamReader inputStreamReader2 = new InputStreamReader(new FileInputStream(file));
                    inputStreamReader = new InputStreamReader(new FileInputStream(file2));
                    equals = inputStreamReader2;
                } else {
                    InputStreamReader inputStreamReader3 = new InputStreamReader(new FileInputStream(file), str);
                    inputStreamReader = new InputStreamReader(new FileInputStream(file2), str);
                    equals = inputStreamReader3;
                }
                boolean contentEqualsIgnoreEOL = IOUtils.contentEqualsIgnoreEOL(equals, inputStreamReader);
                IOUtils.closeQuietly((Reader) equals);
                IOUtils.closeQuietly((Reader) inputStreamReader);
                return contentEqualsIgnoreEOL;
            } catch (Throwable th) {
                th = th;
                IOUtils.closeQuietly((Reader) equals);
                IOUtils.closeQuietly((Reader) inputStreamReader);
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            equals = inputStreamReader;
            IOUtils.closeQuietly((Reader) equals);
            IOUtils.closeQuietly((Reader) inputStreamReader);
            throw th;
        }
    }

    public static File toFile(URL url) {
        if (url == null || !"file".equalsIgnoreCase(url.getProtocol())) {
            return null;
        }
        return new File(decodeUrl(url.getFile().replace(IOUtils.DIR_SEPARATOR_UNIX, File.separatorChar)));
    }

    static String decodeUrl(String url) {
        if (url != null && url.indexOf(37) >= 0) {
            int length = url.length();
            StringBuffer stringBuffer = new StringBuffer();
            ByteBuffer allocate = ByteBuffer.allocate(length);
            int i = 0;
            while (i < length) {
                if (url.charAt(i) == '%') {
                    do {
                        try {
                            allocate.put((byte) Integer.parseInt(url.substring(i + 1, i + 3), 16));
                            i += 3;
                            if (i >= length) {
                                break;
                            }
                        } catch (RuntimeException e) {
                            if (allocate.position() > 0) {
                                allocate.flip();
                                stringBuffer.append(UTF8.decode(allocate).toString());
                                allocate.clear();
                            }
                        } catch (Throwable th) {
                            if (allocate.position() > 0) {
                                allocate.flip();
                                stringBuffer.append(UTF8.decode(allocate).toString());
                                allocate.clear();
                            }
                            throw th;
                        }
                    } while (url.charAt(i) == '%');
                    if (allocate.position() > 0) {
                        allocate.flip();
                        stringBuffer.append(UTF8.decode(allocate).toString());
                        allocate.clear();
                    }
                }
                stringBuffer.append(url.charAt(i));
                i++;
            }
            return stringBuffer.toString();
        }
        return url;
    }

    public static File[] toFiles(URL[] urls) {
        if (urls == null || urls.length == 0) {
            return EMPTY_FILE_ARRAY;
        }
        File[] fileArr = new File[urls.length];
        for (int i = 0; i < urls.length; i++) {
            URL url = urls[i];
            if (url != null) {
                if (!url.getProtocol().equals("file")) {
                    throw new IllegalArgumentException("URL could not be converted to a File: " + url);
                }
                fileArr[i] = toFile(url);
            }
        }
        return fileArr;
    }

    public static URL[] toURLs(File[] files) throws IOException {
        URL[] urlArr = new URL[files.length];
        for (int i = 0; i < urlArr.length; i++) {
            urlArr[i] = files[i].toURI().toURL();
        }
        return urlArr;
    }

    public static void copyFileToDirectory(File srcFile, File destDir) throws IOException {
        copyFileToDirectory(srcFile, destDir, true);
    }

    public static void copyFileToDirectory(File srcFile, File destDir, boolean preserveFileDate) throws IOException {
        if (destDir == null) {
            throw new NullPointerException("Destination must not be null");
        }
        if (destDir.exists() && !destDir.isDirectory()) {
            throw new IllegalArgumentException("Destination '" + destDir + "' is not a directory");
        }
        copyFile(srcFile, new File(destDir, srcFile.getName()), preserveFileDate);
    }

    public static void copyFile(File srcFile, File destFile) throws IOException {
        copyFile(srcFile, destFile, true);
    }

    public static void copyFile(File srcFile, File destFile, boolean preserveFileDate) throws IOException {
        if (srcFile == null) {
            throw new NullPointerException("Source must not be null");
        }
        if (destFile == null) {
            throw new NullPointerException("Destination must not be null");
        }
        if (!srcFile.exists()) {
            throw new FileNotFoundException("Source '" + srcFile + "' does not exist");
        }
        if (srcFile.isDirectory()) {
            throw new IOException("Source '" + srcFile + "' exists but is a directory");
        }
        if (srcFile.getCanonicalPath().equals(destFile.getCanonicalPath())) {
            throw new IOException("Source '" + srcFile + "' and destination '" + destFile + "' are the same");
        }
        File parentFile = destFile.getParentFile();
        if (parentFile != null && !parentFile.mkdirs() && !parentFile.isDirectory()) {
            throw new IOException("Destination '" + parentFile + "' directory cannot be created");
        }
        if (destFile.exists() && !destFile.canWrite()) {
            throw new IOException("Destination '" + destFile + "' exists but is read-only");
        }
        doCopyFile(srcFile, destFile, preserveFileDate);
    }

    public static long copyFile(File input, OutputStream output) throws IOException {
        FileInputStream fileInputStream = new FileInputStream(input);
        try {
            return IOUtils.copyLarge(fileInputStream, output);
        } finally {
            fileInputStream.close();
        }
    }

    private static void doCopyFile(File srcFile, File destFile, boolean preserveFileDate) throws IOException {
        FileChannel fileChannel;
        FileOutputStream fileOutputStream;
        FileInputStream fileInputStream;
        FileChannel channel;
        FileChannel fileChannel2 = null;
        if (destFile.exists() && destFile.isDirectory()) {
            throw new IOException("Destination '" + destFile + "' exists but is a directory");
        }
        try {
            FileInputStream fileInputStream2 = new FileInputStream(srcFile);
            try {
                FileOutputStream fileOutputStream2 = new FileOutputStream(destFile);
                try {
                    FileChannel channel2 = fileInputStream2.getChannel();
                    try {
                        channel = fileOutputStream2.getChannel();
                    } catch (Throwable th) {
                        th = th;
                        fileOutputStream = fileOutputStream2;
                        fileInputStream = fileInputStream2;
                        fileChannel2 = channel2;
                        fileChannel = null;
                    }
                    try {
                        long size = channel2.size();
                        for (long j = 0; j < size; j += channel.transferFrom(channel2, j, size - j > FILE_COPY_BUFFER_SIZE ? 31457280L : size - j)) {
                        }
                        IOUtils.closeQuietly(channel);
                        IOUtils.closeQuietly((OutputStream) fileOutputStream2);
                        IOUtils.closeQuietly(channel2);
                        IOUtils.closeQuietly((InputStream) fileInputStream2);
                        if (srcFile.length() != destFile.length()) {
                            throw new IOException("Failed to copy full contents from '" + srcFile + "' to '" + destFile + "'");
                        }
                        if (preserveFileDate) {
                            destFile.setLastModified(srcFile.lastModified());
                        }
                    } catch (Throwable th2) {
                        fileOutputStream = fileOutputStream2;
                        fileInputStream = fileInputStream2;
                        fileChannel = channel;
                        th = th2;
                        fileChannel2 = channel2;
                        IOUtils.closeQuietly(fileChannel);
                        IOUtils.closeQuietly((OutputStream) fileOutputStream);
                        IOUtils.closeQuietly(fileChannel2);
                        IOUtils.closeQuietly((InputStream) fileInputStream);
                        throw th;
                    }
                } catch (Throwable th3) {
                    th = th3;
                    fileChannel = null;
                    fileOutputStream = fileOutputStream2;
                    fileInputStream = fileInputStream2;
                }
            } catch (Throwable th4) {
                th = th4;
                fileChannel = null;
                fileOutputStream = null;
                fileInputStream = fileInputStream2;
            }
        } catch (Throwable th5) {
            th = th5;
            fileChannel = null;
            fileOutputStream = null;
            fileInputStream = null;
        }
    }

    public static void copyDirectoryToDirectory(File srcDir, File destDir) throws IOException {
        if (srcDir == null) {
            throw new NullPointerException("Source must not be null");
        }
        if (srcDir.exists() && !srcDir.isDirectory()) {
            throw new IllegalArgumentException("Source '" + destDir + "' is not a directory");
        }
        if (destDir == null) {
            throw new NullPointerException("Destination must not be null");
        }
        if (destDir.exists() && !destDir.isDirectory()) {
            throw new IllegalArgumentException("Destination '" + destDir + "' is not a directory");
        }
        copyDirectory(srcDir, new File(destDir, srcDir.getName()), true);
    }

    public static void copyDirectory(File srcDir, File destDir) throws IOException {
        copyDirectory(srcDir, destDir, true);
    }

    public static void copyDirectory(File srcDir, File destDir, boolean preserveFileDate) throws IOException {
        copyDirectory(srcDir, destDir, null, preserveFileDate);
    }

    public static void copyDirectory(File srcDir, File destDir, FileFilter filter) throws IOException {
        copyDirectory(srcDir, destDir, filter, true);
    }

    public static void copyDirectory(File srcDir, File destDir, FileFilter filter, boolean preserveFileDate) throws IOException {
        if (srcDir == null) {
            throw new NullPointerException("Source must not be null");
        }
        if (destDir == null) {
            throw new NullPointerException("Destination must not be null");
        }
        if (!srcDir.exists()) {
            throw new FileNotFoundException("Source '" + srcDir + "' does not exist");
        }
        if (!srcDir.isDirectory()) {
            throw new IOException("Source '" + srcDir + "' exists but is not a directory");
        }
        if (srcDir.getCanonicalPath().equals(destDir.getCanonicalPath())) {
            throw new IOException("Source '" + srcDir + "' and destination '" + destDir + "' are the same");
        }
        ArrayList arrayList = null;
        if (destDir.getCanonicalPath().startsWith(srcDir.getCanonicalPath())) {
            File[] listFiles = filter == null ? srcDir.listFiles() : srcDir.listFiles(filter);
            if (listFiles != null && listFiles.length > 0) {
                arrayList = new ArrayList(listFiles.length);
                for (File file : listFiles) {
                    arrayList.add(new File(destDir, file.getName()).getCanonicalPath());
                }
            }
        }
        doCopyDirectory(srcDir, destDir, filter, preserveFileDate, arrayList);
    }

    private static void doCopyDirectory(File srcDir, File destDir, FileFilter filter, boolean preserveFileDate, List<String> exclusionList) throws IOException {
        File[] listFiles = filter == null ? srcDir.listFiles() : srcDir.listFiles(filter);
        if (listFiles == null) {
            throw new IOException("Failed to list contents of " + srcDir);
        }
        if (destDir.exists()) {
            if (!destDir.isDirectory()) {
                throw new IOException("Destination '" + destDir + "' exists but is not a directory");
            }
        } else if (!destDir.mkdirs() && !destDir.isDirectory()) {
            throw new IOException("Destination '" + destDir + "' directory cannot be created");
        }
        if (!destDir.canWrite()) {
            throw new IOException("Destination '" + destDir + "' cannot be written to");
        }
        for (File file : listFiles) {
            File file2 = new File(destDir, file.getName());
            if (exclusionList == null || !exclusionList.contains(file.getCanonicalPath())) {
                if (file.isDirectory()) {
                    doCopyDirectory(file, file2, filter, preserveFileDate, exclusionList);
                } else {
                    doCopyFile(file, file2, preserveFileDate);
                }
            }
        }
        if (preserveFileDate) {
            destDir.setLastModified(srcDir.lastModified());
        }
    }

    public static void copyURLToFile(URL source, File destination) throws IOException {
        copyInputStreamToFile(source.openStream(), destination);
    }

    public static void copyURLToFile(URL source, File destination, int connectionTimeout, int readTimeout) throws IOException {
        URLConnection openConnection = source.openConnection();
        openConnection.setConnectTimeout(connectionTimeout);
        openConnection.setReadTimeout(readTimeout);
        copyInputStreamToFile(openConnection.getInputStream(), destination);
    }

    public static void copyInputStreamToFile(InputStream source, File destination) throws IOException {
        try {
            FileOutputStream openOutputStream = openOutputStream(destination);
            try {
                IOUtils.copy(source, openOutputStream);
                openOutputStream.close();
            } finally {
                IOUtils.closeQuietly((OutputStream) openOutputStream);
            }
        } finally {
            IOUtils.closeQuietly(source);
        }
    }

    public static void deleteDirectory(File directory) throws IOException {
        if (directory.exists()) {
            if (!isSymlink(directory)) {
                cleanDirectory(directory);
            }
            if (!directory.delete()) {
                throw new IOException("Unable to delete directory " + directory + ".");
            }
        }
    }

    public static boolean deleteQuietly(File file) {
        if (file == null) {
            return false;
        }
        try {
            if (file.isDirectory()) {
                cleanDirectory(file);
            }
        } catch (Exception e) {
        }
        try {
            return file.delete();
        } catch (Exception e2) {
            return false;
        }
    }

    public static boolean directoryContains(File directory, File child) throws IOException {
        if (directory == null) {
            throw new IllegalArgumentException("Directory must not be null");
        }
        if (!directory.isDirectory()) {
            throw new IllegalArgumentException("Not a directory: " + directory);
        }
        if (child != null && directory.exists() && child.exists()) {
            return FilenameUtils.directoryContains(directory.getCanonicalPath(), child.getCanonicalPath());
        }
        return false;
    }

    public static void cleanDirectory(File directory) throws IOException {
        if (!directory.exists()) {
            throw new IllegalArgumentException(directory + " does not exist");
        }
        if (!directory.isDirectory()) {
            throw new IllegalArgumentException(directory + " is not a directory");
        }
        File[] listFiles = directory.listFiles();
        if (listFiles == null) {
            throw new IOException("Failed to list contents of " + directory);
        }
        IOException e = null;
        for (File file : listFiles) {
            try {
                forceDelete(file);
            } catch (IOException e2) {
                e = e2;
            }
        }
        if (e != null) {
            throw e;
        }
    }

    public static boolean waitFor(File file, int seconds) {
        int i = 0;
        int i2 = 0;
        while (!file.exists()) {
            int i3 = i + 1;
            if (i >= 10) {
                int i4 = i2 + 1;
                if (i2 > seconds) {
                    return false;
                }
                i2 = i4;
                i = 0;
            } else {
                i = i3;
            }
            try {
                Thread.sleep(100L);
            } catch (InterruptedException e) {
            } catch (Exception e2) {
            }
        }
        return true;
    }

    public static String readFileToString(File file, Charset encoding) throws IOException {
        FileInputStream fileInputStream = null;
        try {
            fileInputStream = openInputStream(file);
            return IOUtils.toString(fileInputStream, Charsets.toCharset(encoding));
        } finally {
            IOUtils.closeQuietly((InputStream) fileInputStream);
        }
    }

    public static String readFileToString(File file, String encoding) throws IOException {
        return readFileToString(file, Charsets.toCharset(encoding));
    }

    public static String readFileToString(File file) throws IOException {
        return readFileToString(file, Charset.defaultCharset());
    }

    public static byte[] readFileToByteArray(File file) throws IOException {
        FileInputStream fileInputStream = null;
        try {
            fileInputStream = openInputStream(file);
            return IOUtils.toByteArray(fileInputStream, file.length());
        } finally {
            IOUtils.closeQuietly((InputStream) fileInputStream);
        }
    }

    public static List<String> readLines(File file, Charset encoding) throws IOException {
        FileInputStream fileInputStream = null;
        try {
            fileInputStream = openInputStream(file);
            return IOUtils.readLines(fileInputStream, Charsets.toCharset(encoding));
        } finally {
            IOUtils.closeQuietly((InputStream) fileInputStream);
        }
    }

    public static List<String> readLines(File file, String encoding) throws IOException {
        return readLines(file, Charsets.toCharset(encoding));
    }

    public static List<String> readLines(File file) throws IOException {
        return readLines(file, Charset.defaultCharset());
    }

    public static LineIterator lineIterator(File file, String encoding) throws IOException {
        FileInputStream fileInputStream = null;
        try {
            fileInputStream = openInputStream(file);
            return IOUtils.lineIterator(fileInputStream, encoding);
        } catch (IOException e) {
            IOUtils.closeQuietly((InputStream) fileInputStream);
            throw e;
        } catch (RuntimeException e2) {
            IOUtils.closeQuietly((InputStream) fileInputStream);
            throw e2;
        }
    }

    public static LineIterator lineIterator(File file) throws IOException {
        return lineIterator(file, null);
    }

    public static void writeStringToFile(File file, String data, Charset encoding) throws IOException {
        writeStringToFile(file, data, encoding, false);
    }

    public static void writeStringToFile(File file, String data, String encoding) throws IOException {
        writeStringToFile(file, data, encoding, false);
    }

    public static void writeStringToFile(File file, String data, Charset encoding, boolean append) throws IOException {
        FileOutputStream fileOutputStream = null;
        try {
            fileOutputStream = openOutputStream(file, append);
            IOUtils.write(data, (OutputStream) fileOutputStream, encoding);
            fileOutputStream.close();
        } finally {
            IOUtils.closeQuietly((OutputStream) fileOutputStream);
        }
    }

    public static void writeStringToFile(File file, String data, String encoding, boolean append) throws IOException {
        writeStringToFile(file, data, Charsets.toCharset(encoding), append);
    }

    public static void writeStringToFile(File file, String data) throws IOException {
        writeStringToFile(file, data, Charset.defaultCharset(), false);
    }

    public static void writeStringToFile(File file, String data, boolean append) throws IOException {
        writeStringToFile(file, data, Charset.defaultCharset(), append);
    }

    public static void write(File file, CharSequence data) throws IOException {
        write(file, data, Charset.defaultCharset(), false);
    }

    public static void write(File file, CharSequence data, boolean append) throws IOException {
        write(file, data, Charset.defaultCharset(), append);
    }

    public static void write(File file, CharSequence data, Charset encoding) throws IOException {
        write(file, data, encoding, false);
    }

    public static void write(File file, CharSequence data, String encoding) throws IOException {
        write(file, data, encoding, false);
    }

    public static void write(File file, CharSequence data, Charset encoding, boolean append) throws IOException {
        writeStringToFile(file, data == null ? null : data.toString(), encoding, append);
    }

    public static void write(File file, CharSequence data, String encoding, boolean append) throws IOException {
        write(file, data, Charsets.toCharset(encoding), append);
    }

    public static void writeByteArrayToFile(File file, byte[] data) throws IOException {
        writeByteArrayToFile(file, data, false);
    }

    public static void writeByteArrayToFile(File file, byte[] data, boolean append) throws IOException {
        FileOutputStream fileOutputStream = null;
        try {
            fileOutputStream = openOutputStream(file, append);
            fileOutputStream.write(data);
            fileOutputStream.close();
        } finally {
            IOUtils.closeQuietly((OutputStream) fileOutputStream);
        }
    }

    public static void writeLines(File file, String encoding, Collection<?> lines) throws IOException {
        writeLines(file, encoding, lines, null, false);
    }

    public static void writeLines(File file, String encoding, Collection<?> lines, boolean append) throws IOException {
        writeLines(file, encoding, lines, null, append);
    }

    public static void writeLines(File file, Collection<?> lines) throws IOException {
        writeLines(file, null, lines, null, false);
    }

    public static void writeLines(File file, Collection<?> lines, boolean append) throws IOException {
        writeLines(file, null, lines, null, append);
    }

    public static void writeLines(File file, String encoding, Collection<?> lines, String lineEnding) throws IOException {
        writeLines(file, encoding, lines, lineEnding, false);
    }

    public static void writeLines(File file, String encoding, Collection<?> lines, String lineEnding, boolean append) throws IOException {
        FileOutputStream fileOutputStream = null;
        try {
            fileOutputStream = openOutputStream(file, append);
            BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(fileOutputStream);
            IOUtils.writeLines(lines, lineEnding, bufferedOutputStream, encoding);
            bufferedOutputStream.flush();
            fileOutputStream.close();
        } finally {
            IOUtils.closeQuietly((OutputStream) fileOutputStream);
        }
    }

    public static void writeLines(File file, Collection<?> lines, String lineEnding) throws IOException {
        writeLines(file, null, lines, lineEnding, false);
    }

    public static void writeLines(File file, Collection<?> lines, String lineEnding, boolean append) throws IOException {
        writeLines(file, null, lines, lineEnding, append);
    }

    public static void forceDelete(File file) throws IOException {
        if (file.isDirectory()) {
            deleteDirectory(file);
            return;
        }
        boolean exists = file.exists();
        if (!file.delete()) {
            if (!exists) {
                throw new FileNotFoundException("File does not exist: " + file);
            }
            throw new IOException("Unable to delete file: " + file);
        }
    }

    public static void forceDeleteOnExit(File file) throws IOException {
        if (file.isDirectory()) {
            deleteDirectoryOnExit(file);
        } else {
            file.deleteOnExit();
        }
    }

    private static void deleteDirectoryOnExit(File directory) throws IOException {
        if (directory.exists()) {
            directory.deleteOnExit();
            if (!isSymlink(directory)) {
                cleanDirectoryOnExit(directory);
            }
        }
    }

    private static void cleanDirectoryOnExit(File directory) throws IOException {
        if (!directory.exists()) {
            throw new IllegalArgumentException(directory + " does not exist");
        }
        if (!directory.isDirectory()) {
            throw new IllegalArgumentException(directory + " is not a directory");
        }
        File[] listFiles = directory.listFiles();
        if (listFiles == null) {
            throw new IOException("Failed to list contents of " + directory);
        }
        IOException e = null;
        for (File file : listFiles) {
            try {
                forceDeleteOnExit(file);
            } catch (IOException e2) {
                e = e2;
            }
        }
        if (e != null) {
            throw e;
        }
    }

    public static void forceMkdir(File directory) throws IOException {
        if (directory.exists()) {
            if (!directory.isDirectory()) {
                throw new IOException("File " + directory + " exists and is not a directory. Unable to create directory.");
            }
        } else if (!directory.mkdirs() && !directory.isDirectory()) {
            throw new IOException("Unable to create directory " + directory);
        }
    }

    public static long sizeOf(File file) {
        if (file.exists()) {
            return file.isDirectory() ? sizeOfDirectory(file) : file.length();
        }
        throw new IllegalArgumentException(file + " does not exist");
    }

    public static BigInteger sizeOfAsBigInteger(File file) {
        if (file.exists()) {
            return file.isDirectory() ? sizeOfDirectoryAsBigInteger(file) : BigInteger.valueOf(file.length());
        }
        throw new IllegalArgumentException(file + " does not exist");
    }

    public static long sizeOfDirectory(File directory) {
        checkDirectory(directory);
        File[] listFiles = directory.listFiles();
        if (listFiles == null) {
            return 0L;
        }
        long j = 0;
        for (File file : listFiles) {
            try {
                if (isSymlink(file)) {
                    continue;
                } else {
                    j += sizeOf(file);
                    if (j < 0) {
                        return j;
                    }
                }
            } catch (IOException e) {
            }
        }
        return j;
    }

    public static BigInteger sizeOfDirectoryAsBigInteger(File directory) {
        checkDirectory(directory);
        File[] listFiles = directory.listFiles();
        if (listFiles == null) {
            return BigInteger.ZERO;
        }
        BigInteger bigInteger = BigInteger.ZERO;
        for (File file : listFiles) {
            try {
                if (!isSymlink(file)) {
                    bigInteger = bigInteger.add(BigInteger.valueOf(sizeOf(file)));
                }
            } catch (IOException e) {
            }
        }
        return bigInteger;
    }

    private static void checkDirectory(File directory) {
        if (!directory.exists()) {
            throw new IllegalArgumentException(directory + " does not exist");
        }
        if (!directory.isDirectory()) {
            throw new IllegalArgumentException(directory + " is not a directory");
        }
    }

    public static boolean isFileNewer(File file, File reference) {
        if (reference == null) {
            throw new IllegalArgumentException("No specified reference file");
        }
        if (!reference.exists()) {
            throw new IllegalArgumentException("The reference file '" + reference + "' doesn't exist");
        }
        return isFileNewer(file, reference.lastModified());
    }

    public static boolean isFileNewer(File file, Date date) {
        if (date == null) {
            throw new IllegalArgumentException("No specified date");
        }
        return isFileNewer(file, date.getTime());
    }

    public static boolean isFileNewer(File file, long timeMillis) {
        if (file == null) {
            throw new IllegalArgumentException("No specified file");
        }
        return file.exists() && file.lastModified() > timeMillis;
    }

    public static boolean isFileOlder(File file, File reference) {
        if (reference == null) {
            throw new IllegalArgumentException("No specified reference file");
        }
        if (!reference.exists()) {
            throw new IllegalArgumentException("The reference file '" + reference + "' doesn't exist");
        }
        return isFileOlder(file, reference.lastModified());
    }

    public static boolean isFileOlder(File file, Date date) {
        if (date == null) {
            throw new IllegalArgumentException("No specified date");
        }
        return isFileOlder(file, date.getTime());
    }

    public static boolean isFileOlder(File file, long timeMillis) {
        if (file == null) {
            throw new IllegalArgumentException("No specified file");
        }
        return file.exists() && file.lastModified() < timeMillis;
    }

    public static long checksumCRC32(File file) throws IOException {
        CRC32 crc32 = new CRC32();
        checksum(file, crc32);
        return crc32.getValue();
    }

    public static Checksum checksum(File file, Checksum checksum) throws IOException {
        CheckedInputStream checkedInputStream;
        if (file.isDirectory()) {
            throw new IllegalArgumentException("Checksums can't be computed on directories");
        }
        try {
            checkedInputStream = new CheckedInputStream(new FileInputStream(file), checksum);
        } catch (Throwable th) {
            th = th;
            checkedInputStream = null;
        }
        try {
            IOUtils.copy(checkedInputStream, new NullOutputStream());
            IOUtils.closeQuietly((InputStream) checkedInputStream);
            return checksum;
        } catch (Throwable th2) {
            th = th2;
            IOUtils.closeQuietly((InputStream) checkedInputStream);
            throw th;
        }
    }

    public static void moveDirectory(File srcDir, File destDir) throws IOException {
        if (srcDir == null) {
            throw new NullPointerException("Source must not be null");
        }
        if (destDir == null) {
            throw new NullPointerException("Destination must not be null");
        }
        if (!srcDir.exists()) {
            throw new FileNotFoundException("Source '" + srcDir + "' does not exist");
        }
        if (!srcDir.isDirectory()) {
            throw new IOException("Source '" + srcDir + "' is not a directory");
        }
        if (destDir.exists()) {
            throw new FileExistsException("Destination '" + destDir + "' already exists");
        }
        if (!srcDir.renameTo(destDir)) {
            if (destDir.getCanonicalPath().startsWith(srcDir.getCanonicalPath())) {
                throw new IOException("Cannot move directory: " + srcDir + " to a subdirectory of itself: " + destDir);
            }
            copyDirectory(srcDir, destDir);
            deleteDirectory(srcDir);
            if (srcDir.exists()) {
                throw new IOException("Failed to delete original directory '" + srcDir + "' after copy to '" + destDir + "'");
            }
        }
    }

    public static void moveDirectoryToDirectory(File src, File destDir, boolean createDestDir) throws IOException {
        if (src == null) {
            throw new NullPointerException("Source must not be null");
        }
        if (destDir == null) {
            throw new NullPointerException("Destination directory must not be null");
        }
        if (!destDir.exists() && createDestDir) {
            destDir.mkdirs();
        }
        if (!destDir.exists()) {
            throw new FileNotFoundException("Destination directory '" + destDir + "' does not exist [createDestDir=" + createDestDir + "]");
        }
        if (!destDir.isDirectory()) {
            throw new IOException("Destination '" + destDir + "' is not a directory");
        }
        moveDirectory(src, new File(destDir, src.getName()));
    }

    public static void moveFile(File srcFile, File destFile) throws IOException {
        if (srcFile == null) {
            throw new NullPointerException("Source must not be null");
        }
        if (destFile == null) {
            throw new NullPointerException("Destination must not be null");
        }
        if (!srcFile.exists()) {
            throw new FileNotFoundException("Source '" + srcFile + "' does not exist");
        }
        if (srcFile.isDirectory()) {
            throw new IOException("Source '" + srcFile + "' is a directory");
        }
        if (destFile.exists()) {
            throw new FileExistsException("Destination '" + destFile + "' already exists");
        }
        if (destFile.isDirectory()) {
            throw new IOException("Destination '" + destFile + "' is a directory");
        }
        if (!srcFile.renameTo(destFile)) {
            copyFile(srcFile, destFile);
            if (!srcFile.delete()) {
                deleteQuietly(destFile);
                throw new IOException("Failed to delete original file '" + srcFile + "' after copy to '" + destFile + "'");
            }
        }
    }

    public static void moveFileToDirectory(File srcFile, File destDir, boolean createDestDir) throws IOException {
        if (srcFile == null) {
            throw new NullPointerException("Source must not be null");
        }
        if (destDir == null) {
            throw new NullPointerException("Destination directory must not be null");
        }
        if (!destDir.exists() && createDestDir) {
            destDir.mkdirs();
        }
        if (!destDir.exists()) {
            throw new FileNotFoundException("Destination directory '" + destDir + "' does not exist [createDestDir=" + createDestDir + "]");
        }
        if (!destDir.isDirectory()) {
            throw new IOException("Destination '" + destDir + "' is not a directory");
        }
        moveFile(srcFile, new File(destDir, srcFile.getName()));
    }

    public static void moveToDirectory(File src, File destDir, boolean createDestDir) throws IOException {
        if (src == null) {
            throw new NullPointerException("Source must not be null");
        }
        if (destDir == null) {
            throw new NullPointerException("Destination must not be null");
        }
        if (!src.exists()) {
            throw new FileNotFoundException("Source '" + src + "' does not exist");
        }
        if (src.isDirectory()) {
            moveDirectoryToDirectory(src, destDir, createDestDir);
        } else {
            moveFileToDirectory(src, destDir, createDestDir);
        }
    }

    public static boolean isSymlink(File file) throws IOException {
        if (file == null) {
            throw new NullPointerException("File must not be null");
        }
        if (FilenameUtils.isSystemWindows()) {
            return false;
        }
        if (file.getParent() != null) {
            file = new File(file.getParentFile().getCanonicalFile(), file.getName());
        }
        return !file.getCanonicalFile().equals(file.getAbsoluteFile());
    }
}
