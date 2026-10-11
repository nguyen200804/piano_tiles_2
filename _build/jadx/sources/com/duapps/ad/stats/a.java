package com.duapps.ad.stats;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.text.TextUtils;
import android.util.Base64;
import com.applovin.sdk.AppLovinEventTypes;
import com.duapps.ad.base.m;
import com.duapps.ad.base.p;
import com.duapps.ad.base.r;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.URI;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.List;
import java.util.zip.GZIPInputStream;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.NameValuePair;
import org.apache.http.client.utils.URLEncodedUtils;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.util.CharArrayBuffer;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONStringer;

/* compiled from: ToolStatsCore.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class a implements Handler.Callback {

    /* renamed from: b, reason: collision with root package name */
    private static a f2250b;
    private static String c = "http://api.mobula.sdk.duapps.col/adunion/slot/getSrcPrio?";
    private static String d = "http://rts.mobula.sdk.duapps.col/orts/rp?";
    private static String e = "http://rts.mobula.sdk.duapps.col/orts/rpb?";

    /* renamed from: a, reason: collision with root package name */
    int f2251a = 0;
    private Context f;
    private Handler g;

    public static synchronized void a(Context context) {
        synchronized (a.class) {
            if (f2250b == null) {
                f2250b = new a(context.getApplicationContext());
            }
        }
    }

    public static a b(Context context) {
        a(context);
        return f2250b;
    }

    private a(Context context) {
        this.f = context;
        HandlerThread handlerThread = new HandlerThread("stts", 10);
        handlerThread.start();
        this.g = new Handler(handlerThread.getLooper(), this);
        this.g.sendEmptyMessage(4);
    }

    public void a(String str, String str2, int i) {
        String b2 = p.b(this.f);
        if (TextUtils.isEmpty(b2) || TextUtils.isEmpty(str2)) {
            if (com.duapps.ad.base.h.a()) {
                com.duapps.ad.base.h.c("ToolStatsCore", "Discard ls=" + b2 + ";rp=" + str2);
                return;
            }
            return;
        }
        if (com.duapps.ad.base.h.a()) {
            com.duapps.ad.base.h.c("ToolStatsCore", "rept = " + str2);
        }
        ContentValues contentValues = new ContentValues(3);
        contentValues.put("ts", Long.valueOf(System.currentTimeMillis()));
        contentValues.put(AppLovinEventTypes.USER_VIEWED_CONTENT, Base64.encode(str2.getBytes(), 3));
        contentValues.put("ls", b2);
        contentValues.put("stype", str);
        try {
            this.f.getContentResolver().insert(DuAdCacheProvider.a(this.f, 4), contentValues);
        } catch (Exception e2) {
            com.duapps.ad.base.h.b("ToolStatsCore", "mDatabase reportEvent() exception: ", e2);
        }
        if (i == 0) {
            this.g.sendEmptyMessageDelayed(3, 5000L);
        }
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        switch (message.what) {
            case 3:
                this.g.removeMessages(3);
                a(message);
                this.f2251a++;
                if (3 > this.f2251a) {
                    this.g.sendEmptyMessage(3);
                    return true;
                }
                this.f2251a = 0;
                return true;
            case 4:
                this.g.removeMessages(4);
                this.g.sendEmptyMessage(3);
                this.g.sendEmptyMessageDelayed(4, 3600000L);
                return true;
            default:
                return false;
        }
    }

    private void a(Message message) {
        Cursor cursor;
        String str;
        String str2;
        boolean z;
        String str3;
        boolean z2;
        long currentTimeMillis = System.currentTimeMillis();
        JSONStringer jSONStringer = new JSONStringer();
        StringBuilder sb = new StringBuilder();
        long j = currentTimeMillis - 604800000;
        try {
            cursor = this.f.getContentResolver().query(DuAdCacheProvider.a(this.f, 4), new String[]{"ts", AppLovinEventTypes.USER_VIEWED_CONTENT, "ls", "stype", "_id"}, "ts > ?", new String[]{String.valueOf(j)}, "ts DESC LIMIT 100 OFFSET 0");
        } catch (Exception e2) {
            e = e2;
            cursor = null;
            str = null;
            str2 = null;
            z = false;
        } catch (Throwable th) {
            th = th;
            cursor = null;
        }
        if (cursor == null) {
            if (cursor == null || cursor.isClosed()) {
                return;
            }
            cursor.close();
            return;
        }
        try {
            try {
            } catch (Exception e3) {
                e = e3;
                str = null;
                str2 = null;
                z = false;
            }
            if (cursor.getCount() < 1) {
                cursor.close();
                if (cursor == null || cursor.isClosed()) {
                    return;
                }
                cursor.close();
                return;
            }
            jSONStringer.array();
            str = null;
            str2 = null;
            z = false;
            while (cursor.moveToNext()) {
                try {
                    long j2 = cursor.getLong(0);
                    byte[] blob = cursor.getBlob(1);
                    String string = cursor.getString(2);
                    String string2 = cursor.getString(3);
                    if (str2 == null) {
                        str2 = string;
                    }
                    if (str == null) {
                        str = string2;
                    }
                    if (str2.equals(string) && str.equals(string2)) {
                        jSONStringer.value(new JSONObject(new String(Base64.decode(blob, 3))));
                        sb.append(j2).append(",");
                        z = true;
                    }
                } catch (Exception e4) {
                    e = e4;
                    com.duapps.ad.base.h.b("ToolStatsCore", "mDatabase reportEvent() exception: ", e);
                    if (cursor == null || cursor.isClosed()) {
                        str3 = str2;
                        z2 = true;
                    } else {
                        cursor.close();
                        str3 = str2;
                        z2 = true;
                    }
                    if (z) {
                        return;
                    } else {
                        return;
                    }
                }
            }
            jSONStringer.endArray();
            if (cursor == null || cursor.isClosed()) {
                str3 = str2;
                z2 = false;
            } else {
                cursor.close();
                str3 = str2;
                z2 = false;
            }
            if (z || z2 || str3 == null || str == null) {
                return;
            }
            sb.deleteCharAt(sb.length() - 1);
            String jSONStringer2 = jSONStringer.toString();
            long a2 = m.a(this.f, "seq");
            if (a(str3, str, jSONStringer2, a2)) {
                try {
                    this.f.getContentResolver().delete(DuAdCacheProvider.a(this.f, 4), "ts <= ? ", new String[]{String.valueOf(j)});
                    com.duapps.ad.base.h.c("ToolStatsCore", "del srecord success :" + this.f.getContentResolver().delete(DuAdCacheProvider.a(this.f, 4), "ts IN (" + sb.toString() + ")", null));
                    m.a(this.f, "seq", 1 + a2);
                } catch (Exception e5) {
                    if (com.duapps.ad.base.h.a()) {
                        com.duapps.ad.base.h.b("ToolStatsCore", "mDatabase reportEvent() del exception: ", e5);
                    }
                }
            }
        } catch (Throwable th2) {
            th = th2;
            if (cursor != null && !cursor.isClosed()) {
                cursor.close();
            }
            throw th;
        }
    }

    private boolean a(String str, String str2, String str3, long j) {
        URI uri;
        HttpResponse httpResponse = null;
        List<NameValuePair> a2 = com.duapps.ad.base.g.a(this.f, str, false);
        String valueOf = String.valueOf(System.currentTimeMillis());
        a2.add(new BasicNameValuePair("mdu", "adsdk"));
        a2.add(new BasicNameValuePair("rv", "1.0"));
        a2.add(new BasicNameValuePair("ts", valueOf));
        a2.add(new BasicNameValuePair("seq", Long.toString(j)));
        a2.add(new BasicNameValuePair("stype", str2));
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.update(str3.getBytes());
            messageDigest.update(valueOf.getBytes());
            messageDigest.update(str.getBytes());
            a2.add(new BasicNameValuePair("s", com.duapps.ad.c.b.c.a(messageDigest.digest())));
            String format = URLEncodedUtils.format(a2, "UTF-8");
            try {
                if (str2.equalsIgnoreCase("behavior")) {
                    uri = new URI(e + format);
                } else {
                    uri = new URI(d + format);
                }
                httpResponse = r.a(uri, str3, (List<Header>) null);
                int statusCode = httpResponse.getStatusLine().getStatusCode();
                com.duapps.ad.base.h.c("ToolStatsCore", "status code = " + statusCode);
                if (statusCode != 200) {
                    return false;
                }
                if (com.duapps.ad.base.h.a()) {
                    a(httpResponse);
                }
                return true;
            } catch (Exception e2) {
                com.duapps.ad.base.h.b("ToolStatsCore", "post failed.", e2);
                return false;
            } finally {
                r.a(httpResponse);
            }
        } catch (NoSuchAlgorithmException e3) {
            return false;
        }
    }

    private static void a(HttpResponse httpResponse) {
        HttpEntity entity = httpResponse.getEntity();
        InputStream content = entity.getContent();
        Header contentEncoding = entity.getContentEncoding();
        InputStream gZIPInputStream = (contentEncoding == null || contentEncoding.getValue().indexOf("gzip") == -1) ? content : new GZIPInputStream(content);
        InputStreamReader inputStreamReader = new InputStreamReader(gZIPInputStream, "UTF-8");
        CharArrayBuffer charArrayBuffer = new CharArrayBuffer(1024);
        char[] cArr = new char[1024];
        while (true) {
            int read = inputStreamReader.read(cArr);
            if (read == -1) {
                break;
            } else {
                charArrayBuffer.append(cArr, 0, read);
            }
        }
        com.duapps.ad.c.b.c.a(gZIPInputStream);
        String charArrayBuffer2 = charArrayBuffer.toString();
        com.duapps.ad.base.h.c("ToolStatsCore", "result = " + charArrayBuffer2);
        try {
            JSONObject jSONObject = new JSONObject(charArrayBuffer2).getJSONObject("responseHeader");
            if (jSONObject.getInt("status") != 200) {
                throw new IOException(jSONObject.getString("msg"));
            }
        } catch (JSONException e2) {
        }
    }
}
