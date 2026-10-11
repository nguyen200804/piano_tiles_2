package android.support.v4.provider;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.provider.DocumentsContract;
import android.util.Log;
import java.util.ArrayList;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class DocumentsContractApi21 {
    private static final String TAG = "DocumentFile";

    DocumentsContractApi21() {
    }

    public static Uri createFile(Context context, Uri self, String mimeType, String displayName) {
        return DocumentsContract.createDocument(context.getContentResolver(), self, mimeType, displayName);
    }

    public static Uri createDirectory(Context context, Uri self, String displayName) {
        return createFile(context, self, "vnd.android.document/directory", displayName);
    }

    public static Uri prepareTreeUri(Uri treeUri) {
        return DocumentsContract.buildDocumentUriUsingTree(treeUri, DocumentsContract.getTreeDocumentId(treeUri));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [android.content.ContentResolver] */
    /* JADX WARN: Type inference failed for: r1v1, types: [android.net.Uri] */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r1v4, types: [java.lang.AutoCloseable] */
    public static Uri[] listFiles(Context context, Uri self) {
        Cursor cursor;
        ?? contentResolver = context.getContentResolver();
        ?? buildChildDocumentsUriUsingTree = DocumentsContract.buildChildDocumentsUriUsingTree(self, DocumentsContract.getDocumentId(self));
        ArrayList arrayList = new ArrayList();
        try {
            try {
                cursor = contentResolver.query(buildChildDocumentsUriUsingTree, new String[]{"document_id"}, null, null, null);
                while (cursor.moveToNext()) {
                    try {
                        arrayList.add(DocumentsContract.buildDocumentUriUsingTree(self, cursor.getString(0)));
                    } catch (Exception e) {
                        e = e;
                        Log.w(TAG, "Failed query: " + e);
                        closeQuietly(cursor);
                        return (Uri[]) arrayList.toArray(new Uri[arrayList.size()]);
                    }
                }
                closeQuietly(cursor);
            } catch (Throwable th) {
                th = th;
                closeQuietly(buildChildDocumentsUriUsingTree);
                throw th;
            }
        } catch (Exception e2) {
            e = e2;
            cursor = null;
        } catch (Throwable th2) {
            th = th2;
            buildChildDocumentsUriUsingTree = 0;
            closeQuietly(buildChildDocumentsUriUsingTree);
            throw th;
        }
        return (Uri[]) arrayList.toArray(new Uri[arrayList.size()]);
    }

    public static Uri renameTo(Context context, Uri self, String displayName) {
        return DocumentsContract.renameDocument(context.getContentResolver(), self, displayName);
    }

    private static void closeQuietly(AutoCloseable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (RuntimeException e) {
                throw e;
            } catch (Exception e2) {
            }
        }
    }
}
