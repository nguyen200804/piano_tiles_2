package com.ijinshan.cloudconfig.d;

import android.text.TextUtils;
import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStream;
import org.json.JSONObject;

/* compiled from: FileUtil.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class b {
    public static JSONObject a(File file) {
        FileReader fileReader;
        Throwable th;
        BufferedReader bufferedReader;
        JSONObject jSONObject = null;
        if (file != null) {
            try {
                StringBuffer stringBuffer = new StringBuffer();
                fileReader = new FileReader(file);
                try {
                    bufferedReader = new BufferedReader(fileReader);
                    while (true) {
                        try {
                            String readLine = bufferedReader.readLine();
                            if (readLine == null) {
                                break;
                            }
                            stringBuffer.append(readLine);
                        } catch (Exception e) {
                            if (fileReader != null) {
                                try {
                                    fileReader.close();
                                } catch (IOException e2) {
                                }
                            }
                            if (bufferedReader != null) {
                                try {
                                    bufferedReader.close();
                                } catch (IOException e3) {
                                }
                            }
                            return jSONObject;
                        } catch (Throwable th2) {
                            th = th2;
                            if (fileReader != null) {
                                try {
                                    fileReader.close();
                                } catch (IOException e4) {
                                }
                            }
                            if (bufferedReader == null) {
                                throw th;
                            }
                            try {
                                bufferedReader.close();
                                throw th;
                            } catch (IOException e5) {
                                throw th;
                            }
                        }
                    }
                    if (stringBuffer != null && stringBuffer.length() > 0) {
                        jSONObject = new JSONObject(stringBuffer.toString());
                    }
                    if (fileReader != null) {
                        try {
                            fileReader.close();
                        } catch (IOException e6) {
                        }
                    }
                    if (bufferedReader != null) {
                        try {
                            bufferedReader.close();
                        } catch (IOException e7) {
                        }
                    }
                } catch (Exception e8) {
                    bufferedReader = null;
                } catch (Throwable th3) {
                    bufferedReader = null;
                    th = th3;
                }
            } catch (Exception e9) {
                bufferedReader = null;
                fileReader = null;
            } catch (Throwable th4) {
                fileReader = null;
                th = th4;
                bufferedReader = null;
            }
        }
        return jSONObject;
    }

    public static JSONObject a(String str) {
        a.a("zzb_cloud", "loadJsonFromFile");
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return a(new File(str));
    }

    public static boolean a(JSONObject jSONObject, File file) {
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(jSONObject.toString().getBytes());
        try {
            return a(byteArrayInputStream, file);
        } finally {
            if (byteArrayInputStream != null) {
                try {
                    byteArrayInputStream.close();
                } catch (Exception e) {
                }
            }
        }
    }

    public static boolean a(JSONObject jSONObject, String str) {
        return a(jSONObject, new File(str));
    }

    public static boolean a(InputStream inputStream, File file) {
        try {
            if (file.exists()) {
                file.delete();
            }
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            try {
                byte[] bArr = new byte[4096];
                while (true) {
                    int read = inputStream.read(bArr);
                    if (read < 0) {
                        break;
                    }
                    fileOutputStream.write(bArr, 0, read);
                }
                return true;
            } finally {
                fileOutputStream.flush();
                try {
                    fileOutputStream.getFD().sync();
                } catch (IOException e) {
                }
                fileOutputStream.close();
            }
        } catch (IOException e2) {
            return false;
        }
    }
}
