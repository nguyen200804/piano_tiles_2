package android.support.v4.provider;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.provider.DocumentsContract;
import android.text.TextUtils;
import android.util.Log;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class DocumentsContractApi19 {
    private static final String TAG = "DocumentFile";

    DocumentsContractApi19() {
    }

    public static boolean isDocumentUri(Context context, Uri self) {
        return DocumentsContract.isDocumentUri(context, self);
    }

    public static String getName(Context context, Uri self) {
        return queryForString(context, self, "_display_name", null);
    }

    private static String getRawType(Context context, Uri self) {
        return queryForString(context, self, "mime_type", null);
    }

    public static String getType(Context context, Uri self) {
        String rawType = getRawType(context, self);
        if ("vnd.android.document/directory".equals(rawType)) {
            return null;
        }
        return rawType;
    }

    public static boolean isDirectory(Context context, Uri self) {
        return "vnd.android.document/directory".equals(getRawType(context, self));
    }

    public static boolean isFile(Context context, Uri self) {
        String rawType = getRawType(context, self);
        return ("vnd.android.document/directory".equals(rawType) || TextUtils.isEmpty(rawType)) ? false : true;
    }

    public static long lastModified(Context context, Uri self) {
        return queryForLong(context, self, "last_modified", 0L);
    }

    public static long length(Context context, Uri self) {
        return queryForLong(context, self, "_size", 0L);
    }

    public static boolean canRead(Context context, Uri self) {
        return context.checkCallingOrSelfUriPermission(self, 1) == 0 && !TextUtils.isEmpty(getRawType(context, self));
    }

    public static boolean canWrite(Context context, Uri self) {
        if (context.checkCallingOrSelfUriPermission(self, 2) != 0) {
            return false;
        }
        String rawType = getRawType(context, self);
        int queryForInt = queryForInt(context, self, "flags", 0);
        if (TextUtils.isEmpty(rawType)) {
            return false;
        }
        if ((queryForInt & 4) != 0) {
            return true;
        }
        if (!"vnd.android.document/directory".equals(rawType) || (queryForInt & 8) == 0) {
            return (TextUtils.isEmpty(rawType) || (queryForInt & 2) == 0) ? false : true;
        }
        return true;
    }

    public static boolean delete(Context context, Uri self) {
        return DocumentsContract.deleteDocument(context.getContentResolver(), self);
    }

    public static boolean exists(Context context, Uri self) {
        Cursor cursor;
        try {
            cursor = context.getContentResolver().query(self, new String[]{"document_id"}, null, null, null);
            try {
                try {
                    boolean z = cursor.getCount() > 0;
                    closeQuietly(cursor);
                    return z;
                } catch (Exception e) {
                    e = e;
                    Log.w(TAG, "Failed query: " + e);
                    closeQuietly(cursor);
                    return false;
                }
            } catch (Throwable th) {
                th = th;
                closeQuietly(cursor);
                throw th;
            }
        } catch (Exception e2) {
            e = e2;
            cursor = null;
        } catch (Throwable th2) {
            th = th2;
            cursor = null;
            closeQuietly(cursor);
            throw th;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v10 */
    /* JADX WARN: Type inference failed for: r1v11 */
    /* JADX WARN: Type inference failed for: r1v12 */
    /* JADX WARN: Type inference failed for: r1v3, types: [java.lang.AutoCloseable] */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r1v6 */
    private static String queryForString(Context context, Uri uri, String str, String str2) {
        Cursor cursor;
        ?? r1 = 1;
        try {
            try {
                cursor = context.getContentResolver().query(uri, new String[]{str}, null, null, null);
                try {
                    if (!cursor.moveToFirst() || cursor.isNull(0)) {
                        closeQuietly(cursor);
                        r1 = cursor;
                    } else {
                        str2 = cursor.getString(0);
                        closeQuietly(cursor);
                        r1 = cursor;
                    }
                } catch (Exception e) {
                    e = e;
                    Log.w(TAG, "Failed query: " + e);
                    closeQuietly(cursor);
                    r1 = cursor;
                    return str2;
                }
            } catch (Throwable th) {
                th = th;
                closeQuietly(r1);
                throw th;
            }
        } catch (Exception e2) {
            e = e2;
            cursor = null;
        } catch (Throwable th2) {
            th = th2;
            r1 = 0;
            closeQuietly(r1);
            throw th;
        }
        return str2;
    }

    private static int queryForInt(Context context, Uri self, String column, int defaultValue) {
        return (int) queryForLong(context, self, column, defaultValue);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v10 */
    /* JADX WARN: Type inference failed for: r1v11 */
    /* JADX WARN: Type inference failed for: r1v12 */
    /* JADX WARN: Type inference failed for: r1v3, types: [java.lang.AutoCloseable] */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r1v6 */
    private static long queryForLong(Context context, Uri uri, String str, long j) {
        Cursor cursor;
        ?? r1 = 1;
        try {
            try {
                cursor = context.getContentResolver().query(uri, new String[]{str}, null, null, null);
                try {
                    if (!cursor.moveToFirst() || cursor.isNull(0)) {
                        closeQuietly(cursor);
                        r1 = cursor;
                    } else {
                        j = cursor.getLong(0);
                        closeQuietly(cursor);
                        r1 = cursor;
                    }
                } catch (Exception e) {
                    e = e;
                    Log.w(TAG, "Failed query: " + e);
                    closeQuietly(cursor);
                    r1 = cursor;
                    return j;
                }
            } catch (Throwable th) {
                th = th;
                closeQuietly(r1);
                throw th;
            }
        } catch (Exception e2) {
            e = e2;
            cursor = null;
        } catch (Throwable th2) {
            th = th2;
            r1 = 0;
            closeQuietly(r1);
            throw th;
        }
        return j;
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
