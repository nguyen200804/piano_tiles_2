package com.cmplay.f;

import android.os.AsyncTask;
import android.text.TextUtils;
import android.util.Log;
import com.cmplay.tile2.GameApp;
import com.cmplay.util.aa;
import com.google.ads.mediation.facebook.FacebookAdapter;
import com.google.android.gms.auth.GoogleAuthUtil;
import com.unity3d.ads.metadata.MediationMetaData;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: AbstractGetInfoTask.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public abstract class a extends AsyncTask<Void, Void, Void> {

    /* renamed from: a, reason: collision with root package name */
    protected b f1353a;

    /* renamed from: b, reason: collision with root package name */
    protected String f1354b;
    protected String c;

    protected abstract String a() throws IOException;

    a(b bVar, String str, String str2) {
        this.f1353a = bVar;
        this.f1354b = str2;
        this.c = str;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public Void doInBackground(Void... voidArr) {
        try {
            b();
            return null;
        } catch (IOException e) {
            a("Following Error occured, please try again. " + e.getMessage(), e);
            return null;
        } catch (JSONException e2) {
            a("Bad response: " + e2.getMessage(), e2);
            return null;
        }
    }

    protected void a(String str, Exception exc) {
        if (exc != null) {
            Log.e("GameHelper_Task", "Exception: ", exc);
        }
        Log.i("GameHelper_Task", "onError  msg:" + str);
    }

    private void b() throws IOException, JSONException {
        String a2 = a();
        aa.a("gp_auth_token", a2);
        if (a2 == null) {
            aa.a("authAccount", "");
            return;
        }
        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL("https://www.googleapis.com/oauth2/v1/userinfo?access_token=" + a2).openConnection();
        int responseCode = httpURLConnection.getResponseCode();
        if (responseCode == 200) {
            InputStream inputStream = httpURLConnection.getInputStream();
            a(a(inputStream), a2);
            inputStream.close();
        } else {
            if (responseCode == 401) {
                try {
                    GoogleAuthUtil.clearToken(GameApp.f1598a, a2);
                } catch (Exception e) {
                    a("Server auth error, please try again.", e);
                }
                a("Server auth error, please try again.", (Exception) null);
                Log.i("GameHelper_Task", "Server auth error: " + a(httpURLConnection.getErrorStream()));
                this.f1353a.a(responseCode);
                return;
            }
            a("Server returned the following error code: " + responseCode, (Exception) null);
            this.f1353a.a(responseCode);
        }
    }

    private static String a(InputStream inputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[2048];
        while (true) {
            int read = inputStream.read(bArr, 0, bArr.length);
            if (read >= 0) {
                byteArrayOutputStream.write(bArr, 0, read);
            } else {
                return new String(byteArrayOutputStream.toByteArray(), "UTF-8");
            }
        }
    }

    private void a(String str, String str2) throws JSONException {
        if (!TextUtils.isEmpty(str)) {
            JSONObject jSONObject = new JSONObject(str);
            JSONObject jSONObject2 = new JSONObject();
            try {
                jSONObject2.put("platform", 0);
                jSONObject2.put("isLogin", 1);
                jSONObject2.put("ab_test_type", 1);
                if (!jSONObject.isNull(FacebookAdapter.KEY_ID)) {
                    jSONObject2.put("playerId", jSONObject.getString(FacebookAdapter.KEY_ID));
                }
                if (!jSONObject.isNull(MediationMetaData.KEY_NAME)) {
                    jSONObject2.put(MediationMetaData.KEY_NAME, jSONObject.getString(MediationMetaData.KEY_NAME));
                }
                if (!jSONObject.isNull("gender")) {
                    jSONObject2.put("gender", jSONObject.getString("gender"));
                }
                if (!jSONObject.isNull("picture")) {
                    jSONObject2.put("pic", jSONObject.getString("picture"));
                }
                if (!jSONObject.isNull("email")) {
                    jSONObject2.put("email", jSONObject.getString("email"));
                }
                if (!jSONObject.isNull("link")) {
                    jSONObject2.put("link", jSONObject.getString("link"));
                }
                if (!jSONObject.isNull("locale")) {
                    jSONObject2.put("locale", jSONObject.getString("locale"));
                }
                jSONObject2.put("token", str2);
                jSONObject2.put("show_pick_user_account", this.f1353a.c());
                jSONObject2.put("req_authorize", this.f1353a.d());
                this.f1353a.a(true, jSONObject2.toString());
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
    }
}
