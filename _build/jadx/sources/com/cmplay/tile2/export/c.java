package com.cmplay.tile2.export;

import com.mopub.common.Constants;
import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Map;
import org.apache.commons.io.IOUtils;

/* compiled from: KHttpPoster.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class c {
    public static String a(String str, Map<String, String> map, b[] bVarArr) {
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
            httpURLConnection.setDoInput(true);
            httpURLConnection.setDoOutput(true);
            httpURLConnection.setUseCaches(false);
            httpURLConnection.setConnectTimeout(Constants.TEN_SECONDS_MILLIS);
            httpURLConnection.setReadTimeout(20000);
            httpURLConnection.setRequestMethod("POST");
            httpURLConnection.setRequestProperty("connection", "Keep-Alive");
            httpURLConnection.setRequestProperty("Charsert", "UTF-8");
            httpURLConnection.setRequestProperty("Content-Type", "multipart/form-data; boundary=---------7d4a6d158c9");
            DataOutputStream dataOutputStream = new DataOutputStream(httpURLConnection.getOutputStream());
            for (String str2 : map.keySet()) {
                String str3 = map.get(str2);
                dataOutputStream.writeBytes("-----------7d4a6d158c9" + IOUtils.LINE_SEPARATOR_WINDOWS);
                dataOutputStream.writeBytes("Content-Disposition: form-data; name=\"" + str2 + "\"" + IOUtils.LINE_SEPARATOR_WINDOWS);
                dataOutputStream.writeBytes(IOUtils.LINE_SEPARATOR_WINDOWS);
                dataOutputStream.write(str3.getBytes("UTF-8"));
                dataOutputStream.writeBytes(IOUtils.LINE_SEPARATOR_WINDOWS);
            }
            if (bVarArr != null) {
                for (b bVar : bVarArr) {
                    if (bVar != null) {
                        dataOutputStream.writeBytes("-----------7d4a6d158c9" + IOUtils.LINE_SEPARATOR_WINDOWS);
                        dataOutputStream.writeBytes("Content-Disposition: form-data; name=\"" + bVar.a() + "\"; filename=\"" + bVar.b() + "\"" + IOUtils.LINE_SEPARATOR_WINDOWS);
                        dataOutputStream.writeBytes("Content-Type: application/octet-stream");
                        dataOutputStream.writeBytes(IOUtils.LINE_SEPARATOR_WINDOWS);
                        dataOutputStream.writeBytes(IOUtils.LINE_SEPARATOR_WINDOWS);
                        dataOutputStream.write(bVar.c());
                        dataOutputStream.writeBytes(IOUtils.LINE_SEPARATOR_WINDOWS);
                    }
                }
            }
            dataOutputStream.writeBytes("-----------7d4a6d158c9--" + IOUtils.LINE_SEPARATOR_WINDOWS);
            dataOutputStream.flush();
            InputStream inputStream = httpURLConnection.getInputStream();
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            byte[] bArr = new byte[1024];
            while (true) {
                int read = inputStream.read(bArr, 0, 1024);
                if (read != -1) {
                    byteArrayOutputStream.write(bArr, 0, read);
                } else {
                    dataOutputStream.close();
                    inputStream.close();
                    return byteArrayOutputStream.toString();
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }
}
