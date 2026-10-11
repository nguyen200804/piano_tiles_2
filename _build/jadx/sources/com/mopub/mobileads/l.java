package com.mopub.mobileads;

import android.content.Context;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.view.View;
import com.facebook.ads.AudienceNetworkActivity;
import com.mopub.common.Constants;
import com.mopub.common.Preconditions;
import com.mopub.common.util.Utils;
import com.mopub.network.Networking;

/* compiled from: VastWebView.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class l extends BaseWebView {

    /* renamed from: b, reason: collision with root package name */
    @Nullable
    a f4513b;

    /* compiled from: VastWebView.java */
    interface a {
        void onVastWebViewClick();
    }

    l(Context context) {
        super(context);
        b();
        getSettings().setJavaScriptEnabled(true);
        b(true);
        setBackgroundColor(0);
        setOnTouchListener(new b());
        setId((int) Utils.generateUniqueId());
    }

    void a(String str) {
        loadDataWithBaseURL(Networking.getBaseUrlScheme() + "://" + Constants.HOST + "/", str, AudienceNetworkActivity.WEBVIEW_MIME_TYPE, AudienceNetworkActivity.WEBVIEW_ENCODING, null);
    }

    void a(@NonNull a aVar) {
        this.f4513b = aVar;
    }

    private void b() {
        setHorizontalScrollBarEnabled(false);
        setHorizontalScrollbarOverlay(false);
        setVerticalScrollBarEnabled(false);
        setVerticalScrollbarOverlay(false);
        getSettings().setSupportZoom(false);
        setScrollBarStyle(0);
    }

    @NonNull
    static l a(@NonNull Context context, @NonNull k kVar) {
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(kVar);
        l lVar = new l(context);
        kVar.initializeWebView(lVar);
        return lVar;
    }

    /* compiled from: VastWebView.java */
    class b implements View.OnTouchListener {

        /* renamed from: b, reason: collision with root package name */
        private boolean f4515b;

        b() {
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* JADX WARN: Code restructure failed: missing block: B:3:0x0008, code lost:
        
            return false;
         */
        @Override // android.view.View.OnTouchListener
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean onTouch(android.view.View r3, android.view.MotionEvent r4) {
            /*
                r2 = this;
                r1 = 0
                int r0 = r4.getAction()
                switch(r0) {
                    case 0: goto L9;
                    case 1: goto Ld;
                    default: goto L8;
                }
            L8:
                return r1
            L9:
                r0 = 1
                r2.f4515b = r0
                goto L8
            Ld:
                boolean r0 = r2.f4515b
                if (r0 == 0) goto L8
                r2.f4515b = r1
                com.mopub.mobileads.l r0 = com.mopub.mobileads.l.this
                com.mopub.mobileads.l$a r0 = r0.f4513b
                if (r0 == 0) goto L8
                com.mopub.mobileads.l r0 = com.mopub.mobileads.l.this
                com.mopub.mobileads.l$a r0 = r0.f4513b
                r0.onVastWebViewClick()
                goto L8
            */
            throw new UnsupportedOperationException("Method not decompiled: com.mopub.mobileads.l.b.onTouch(android.view.View, android.view.MotionEvent):boolean");
        }
    }
}
