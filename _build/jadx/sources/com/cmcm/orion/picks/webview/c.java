package com.cmcm.orion.picks.webview;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.graphics.Bitmap;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.cmcm.orion.picks.a.a.h;
import com.cmcm.orion.picks.impl.a;
import com.facebook.ads.AdError;
import com.facebook.ads.AudienceNetworkActivity;
import java.io.File;

/* compiled from: ParseWebViewUrlUtils.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class c {

    /* renamed from: a, reason: collision with root package name */
    private WebView f1048a;

    /* renamed from: b, reason: collision with root package name */
    private boolean f1049b;
    private Handler c;
    private a.InterfaceC0019a d = null;
    private String e;
    private String f;
    private String g;
    private String h;

    static /* synthetic */ boolean a(c cVar) {
        cVar.f1049b = true;
        return true;
    }

    public final void a(a.InterfaceC0019a interfaceC0019a) {
        this.d = interfaceC0019a;
    }

    public c(Context context) {
        if (!a(context)) {
            try {
                this.f1048a = new WebView(context);
            } catch (Exception e) {
            }
        }
        if (this.f1048a != null) {
            this.c = new Handler(Looper.getMainLooper()) { // from class: com.cmcm.orion.picks.webview.c.1
                @Override // android.os.Handler
                public final void handleMessage(Message msg) {
                    switch (msg.what) {
                        case 1:
                            c.a(c.this);
                            break;
                        case 2:
                            if (c.this.f1048a != null) {
                                c.this.f1048a.stopLoading();
                                break;
                            }
                            break;
                        default:
                            return;
                    }
                    c.this.a((e) msg.obj);
                }
            };
            this.f1048a.getSettings().setJavaScriptEnabled(true);
            this.f1048a.getSettings().setCacheMode(2);
            if (Build.VERSION.SDK_INT < 18) {
                this.f1048a.getSettings().setSavePassword(false);
            }
            this.f1048a.getSettings().setUserAgentString(h.d());
        }
    }

    public final void a(String str, String str2, String str3, String str4) {
        if (this.f1048a == null || TextUtils.isEmpty(str)) {
            a(new e(5, str));
            return;
        }
        if (TextUtils.isEmpty(str)) {
            a(new e(3, str));
            return;
        }
        this.e = str;
        this.f = str2;
        this.g = str3;
        this.h = str4;
        this.f1048a.setWebViewClient(new WebViewClient() { // from class: com.cmcm.orion.picks.webview.c.2
            @Override // android.webkit.WebViewClient
            public final boolean shouldOverrideUrlLoading(WebView view, String url) {
                if (view == null) {
                    return super.shouldOverrideUrlLoading(view, url);
                }
                view.loadUrl(url);
                return true;
            }

            @Override // android.webkit.WebViewClient
            public final void onPageStarted(WebView view, String url, Bitmap favicon) {
                if (!c.this.f1049b) {
                    c.this.c.removeMessages(1);
                    c.this.c.removeMessages(2);
                    if (TextUtils.isEmpty(url)) {
                        if (view != null) {
                            view.stopLoading();
                        }
                        c.a(c.this);
                        c.this.c.sendMessage(c.this.c.obtainMessage(1, new e(3, url)));
                        return;
                    }
                    if (!com.cmcm.orion.utils.b.a(url)) {
                        c.this.c.sendMessageDelayed(c.this.c.obtainMessage(2, new e(4, url)), 10000L);
                        super.onPageStarted(view, url, favicon);
                        return;
                    } else {
                        if (view != null) {
                            view.stopLoading();
                        }
                        c.a(c.this);
                        c.this.c.sendMessage(c.this.c.obtainMessage(1, new e(0, url)));
                        return;
                    }
                }
                if (view != null) {
                    try {
                        view.stopLoading();
                    } catch (Exception e) {
                    }
                }
            }

            @Override // android.webkit.WebViewClient
            public final void onReceivedError(WebView view, int errorCode, String description, String failingUrl) {
                if (!c.this.f1049b) {
                    c.a(c.this);
                    c.this.c.removeMessages(2);
                    c.this.c.sendMessage(c.this.c.obtainMessage(1, new e(errorCode + AdError.SERVER_ERROR_CODE, failingUrl)));
                    super.onReceivedError(view, errorCode, description, failingUrl);
                }
            }

            @Override // android.webkit.WebViewClient
            public final void onPageFinished(WebView view, String url) {
                if (!c.this.f1049b) {
                    c.this.c.removeMessages(2);
                    c.this.c.sendMessageDelayed(com.cmcm.orion.utils.b.a(url) ? c.this.c.obtainMessage(1, new e(0, url)) : c.this.c.obtainMessage(1, new e(6, url)), 4000L);
                    super.onPageFinished(view, url);
                }
            }
        });
        if (str.contains("<html>") && str.contains("</html>")) {
            this.f1048a.loadData(str, AudienceNetworkActivity.WEBVIEW_MIME_TYPE, "UTF-8");
        } else {
            this.f1048a.loadUrl(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(e eVar) {
        if (this.f1048a != null) {
            this.f1048a.destroy();
            this.f1048a = null;
        }
        if (this.d != null) {
            this.d.b(eVar);
        }
    }

    private static boolean a(Context context) {
        SQLiteDatabase sQLiteDatabase;
        SQLiteDatabase sQLiteDatabase2 = null;
        try {
            try {
            } catch (Throwable th) {
                if (0 != 0) {
                    sQLiteDatabase2.close();
                }
                throw th;
            }
        } catch (Exception e) {
            sQLiteDatabase = null;
        }
        if (new File("/data/data/" + context.getPackageName() + "/databases/webviewCache.db").exists()) {
            return false;
        }
        SQLiteDatabase openOrCreateDatabase = context.openOrCreateDatabase("webviewCache.db", 0, null);
        if (openOrCreateDatabase == null) {
            if (openOrCreateDatabase != null) {
                openOrCreateDatabase.close();
            }
            return true;
        }
        try {
            openOrCreateDatabase.close();
            return false;
        } catch (Exception e2) {
            sQLiteDatabase = openOrCreateDatabase;
            if (sQLiteDatabase != null) {
                sQLiteDatabase.close();
            }
            return true;
        }
    }
}
