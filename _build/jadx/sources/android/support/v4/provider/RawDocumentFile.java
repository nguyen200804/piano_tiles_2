package android.support.v4.provider;

import android.net.Uri;
import android.util.Log;
import android.webkit.MimeTypeMap;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class RawDocumentFile extends DocumentFile {
    private File mFile;

    RawDocumentFile(DocumentFile parent, File file) {
        super(parent);
        this.mFile = file;
    }

    @Override // android.support.v4.provider.DocumentFile
    public DocumentFile createFile(String mimeType, String displayName) {
        String extensionFromMimeType = MimeTypeMap.getSingleton().getExtensionFromMimeType(mimeType);
        if (extensionFromMimeType != null) {
            displayName = displayName + "." + extensionFromMimeType;
        }
        File file = new File(this.mFile, displayName);
        try {
            file.createNewFile();
            return new RawDocumentFile(this, file);
        } catch (IOException e) {
            Log.w("DocumentFile", "Failed to createFile: " + e);
            return null;
        }
    }

    @Override // android.support.v4.provider.DocumentFile
    public DocumentFile createDirectory(String displayName) {
        File file = new File(this.mFile, displayName);
        if (file.isDirectory() || file.mkdir()) {
            return new RawDocumentFile(this, file);
        }
        return null;
    }

    @Override // android.support.v4.provider.DocumentFile
    public Uri getUri() {
        return Uri.fromFile(this.mFile);
    }

    @Override // android.support.v4.provider.DocumentFile
    public String getName() {
        return this.mFile.getName();
    }

    @Override // android.support.v4.provider.DocumentFile
    public String getType() {
        if (this.mFile.isDirectory()) {
            return null;
        }
        return getTypeForName(this.mFile.getName());
    }

    @Override // android.support.v4.provider.DocumentFile
    public boolean isDirectory() {
        return this.mFile.isDirectory();
    }

    @Override // android.support.v4.provider.DocumentFile
    public boolean isFile() {
        return this.mFile.isFile();
    }

    @Override // android.support.v4.provider.DocumentFile
    public long lastModified() {
        return this.mFile.lastModified();
    }

    @Override // android.support.v4.provider.DocumentFile
    public long length() {
        return this.mFile.length();
    }

    @Override // android.support.v4.provider.DocumentFile
    public boolean canRead() {
        return this.mFile.canRead();
    }

    @Override // android.support.v4.provider.DocumentFile
    public boolean canWrite() {
        return this.mFile.canWrite();
    }

    @Override // android.support.v4.provider.DocumentFile
    public boolean delete() {
        deleteContents(this.mFile);
        return this.mFile.delete();
    }

    @Override // android.support.v4.provider.DocumentFile
    public boolean exists() {
        return this.mFile.exists();
    }

    @Override // android.support.v4.provider.DocumentFile
    public DocumentFile[] listFiles() {
        ArrayList arrayList = new ArrayList();
        File[] listFiles = this.mFile.listFiles();
        if (listFiles != null) {
            for (File file : listFiles) {
                arrayList.add(new RawDocumentFile(this, file));
            }
        }
        return (DocumentFile[]) arrayList.toArray(new DocumentFile[arrayList.size()]);
    }

    @Override // android.support.v4.provider.DocumentFile
    public boolean renameTo(String displayName) {
        File file = new File(this.mFile.getParentFile(), displayName);
        if (!this.mFile.renameTo(file)) {
            return false;
        }
        this.mFile = file;
        return true;
    }

    private static String getTypeForName(String name) {
        int lastIndexOf = name.lastIndexOf(46);
        if (lastIndexOf >= 0) {
            String mimeTypeFromExtension = MimeTypeMap.getSingleton().getMimeTypeFromExtension(name.substring(lastIndexOf + 1).toLowerCase());
            if (mimeTypeFromExtension != null) {
                return mimeTypeFromExtension;
            }
        }
        return "application/octet-stream";
    }

    private static boolean deleteContents(File dir) {
        File[] listFiles = dir.listFiles();
        boolean z = true;
        if (listFiles != null) {
            for (File file : listFiles) {
                if (file.isDirectory()) {
                    z &= deleteContents(file);
                }
                if (!file.delete()) {
                    Log.w("DocumentFile", "Failed to delete " + file);
                    z = false;
                }
            }
        }
        return z;
    }
}
