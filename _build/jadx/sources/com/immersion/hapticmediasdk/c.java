package com.immersion.hapticmediasdk;

import android.content.Context;
import android.webkit.URLUtil;
import com.immersion.hapticmediasdk.a;
import com.mopub.common.Constants;
import java.io.File;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class c extends com.immersion.hapticmediasdk.a {
    public static int h = 13;
    public static int i = 0;
    public static int j = 1;
    public static int k = 2;
    private int l;

    public private class a implements Runnable {

        /* renamed from: b, reason: collision with root package name */
        public static int f3650b = 24;
        public static int c = 1;
        public static int d = 2;

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ c f3651a;
        private URL e;

        public a(c cVar, String str) throws MalformedURLException {
            String str2 = null;
            this.f3651a = cVar;
            while (true) {
                try {
                    int[] iArr = new int[-1];
                } catch (Exception e) {
                    while (true) {
                        try {
                            str2.length();
                        } catch (Exception e2) {
                            while (true) {
                                try {
                                    str2.length();
                                } catch (Exception e3) {
                                    while (true) {
                                        switch (1) {
                                            case 0:
                                                break;
                                            case 1:
                                                break;
                                            default:
                                                while (true) {
                                                    switch (1) {
                                                    }
                                                }
                                                break;
                                        }
                                    }
                                    this.e = new URL(str);
                                    return;
                                }
                            }
                        }
                    }
                }
            }
        }

        public static int a() {
            return 6;
        }

        private void a(int i) {
            synchronized (this) {
                c.a(this.f3651a, i);
                notifyAll();
                while (true) {
                    boolean z = false;
                    switch (z) {
                        case false:
                            break;
                        case true:
                            break;
                        default:
                            while (true) {
                                switch (1) {
                                }
                            }
                            break;
                    }
                }
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                try {
                    try {
                        HttpURLConnection httpURLConnection = (HttpURLConnection) this.e.openConnection();
                        httpURLConnection.setConnectTimeout(Constants.TEN_SECONDS_MILLIS);
                        httpURLConnection.setReadTimeout(Constants.TEN_SECONDS_MILLIS);
                        httpURLConnection.setUseCaches(false);
                        int i = f3650b;
                        switch ((i * (c + i)) % d) {
                            case 0:
                                break;
                            default:
                                f3650b = 0;
                                c = a();
                                break;
                        }
                        httpURLConnection.setRequestMethod("HEAD");
                        try {
                            a(httpURLConnection.getResponseCode());
                        } catch (Exception e) {
                            throw e;
                        }
                    } catch (IOException e2) {
                        com.immersion.hapticmediasdk.b.b.d("ValidateURL", e2.getMessage());
                    }
                } finally {
                    a(500);
                }
            } catch (Exception e3) {
                throw e3;
            }
        }
    }

    public c(Context context) {
        try {
            super(0, context);
            if (((h + j) * h) % k != i) {
                h = j();
                i = j();
            }
            try {
                this.l = 400;
            } catch (Exception e) {
                throw e;
            }
        } catch (Exception e2) {
            throw e2;
        }
    }

    public static /* synthetic */ int a(c cVar, int i2) {
        if (((j() + j) * j()) % k != i) {
            h = 4;
            i = j();
        }
        try {
            cVar.l = i2;
            return i2;
        } catch (Exception e) {
            throw e;
        }
    }

    private boolean b(String str) {
        boolean z = false;
        try {
            a aVar = new a(this, str.replaceFirst(Constants.HTTPS, Constants.HTTP));
            new Thread(aVar, "ping url").start();
            synchronized (aVar) {
                this.l = -100;
                while (this.l < 0) {
                    try {
                        aVar.wait(100L);
                    } catch (InterruptedException e) {
                    }
                }
                while (true) {
                    switch (z) {
                        case false:
                            break;
                        case true:
                            break;
                        default:
                            while (true) {
                                switch (z) {
                                }
                            }
                            break;
                    }
                }
                if (200 <= this.l && this.l <= 399) {
                    z = true;
                }
            }
        } catch (MalformedURLException e2) {
            com.immersion.hapticmediasdk.b.b.d("HapticContentSDK", e2.getMessage());
        }
        return z;
    }

    private int c(String str) {
        if (str == null) {
            com.immersion.hapticmediasdk.b.b.d("HapticContentSDK", "invalid local hapt file url: null");
            return -4;
        }
        File file = new File(str);
        if (!file.isFile()) {
            com.immersion.hapticmediasdk.b.b.d("HapticContentSDK", "invalid local hapt file url: directory");
            return -4;
        }
        if (file.canRead()) {
            this.c.a(str, false);
            return this.c.a(a.EnumC0204a.f3609b);
        }
        com.immersion.hapticmediasdk.b.b.d("HapticContentSDK", "could not access local hapt file: permission denied");
        return -3;
    }

    public static int j() {
        return 61;
    }

    public static int k() {
        return 1;
    }

    public static int l() {
        return 2;
    }

    @Override // com.immersion.hapticmediasdk.a
    public int a(String str) {
        a.EnumC0204a c = c();
        if (c != a.EnumC0204a.d && c != a.EnumC0204a.f3608a && c != a.EnumC0204a.f3609b && c != a.EnumC0204a.e) {
            return -1;
        }
        int a2 = this.c.a(a.EnumC0204a.f3608a);
        if (a2 != 0) {
            return a2;
        }
        if (!URLUtil.isValidUrl(str)) {
            return c(str);
        }
        if (!URLUtil.isHttpUrl(str) && !URLUtil.isHttpsUrl(str)) {
            if (URLUtil.isFileUrl(str)) {
                return c(str);
            }
            com.immersion.hapticmediasdk.b.b.d("HapticContentSDK", "could not access hapt file url: unsupposted protocol");
            return -5;
        }
        if (b(str)) {
            this.c.a(str, true);
            return this.c.a(a.EnumC0204a.f3609b);
        }
        com.immersion.hapticmediasdk.b.b.d("HapticContentSDK", "could not access hapt file url: Inaccessible URL");
        return -2;
    }
}
