package com.cmplay.h.a;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import com.cmplay.tile2.GameApp;
import com.cmplay.util.NativeUtil;
import com.cmplay.webview.broadcast.WebBroadcast;
import com.facebook.AccessToken;
import com.facebook.GraphRequest;
import com.facebook.e;
import com.facebook.g;
import com.facebook.i;
import com.facebook.l;
import com.facebook.q;
import com.facebook.share.model.AppInviteContent;
import com.facebook.share.model.GameRequestContent;
import com.facebook.share.model.ShareContent;
import com.facebook.share.model.ShareLinkContent;
import com.facebook.share.model.SharePhoto;
import com.facebook.share.model.SharePhotoContent;
import com.facebook.share.widget.d;
import com.unity3d.ads.metadata.MediationMetaData;
import java.io.File;
import org.json.JSONObject;

/* compiled from: FaceBookPlatform.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class b extends c implements com.cmplay.h.c {
    private int c;
    private int d;
    private com.facebook.e e;
    private int f;
    private int g;
    private int h;
    private InterfaceC0045b i;
    private com.cmplay.h.e j;
    private String k;
    private int l;
    private int m;
    private int n;

    /* compiled from: FaceBookPlatform.java */
    /* renamed from: com.cmplay.h.a.b$b, reason: collision with other inner class name */
    public interface InterfaceC0045b {
        void a(String str);

        void a(boolean z, String str, String str2);
    }

    static /* synthetic */ int g(b bVar) {
        int i = bVar.c;
        bVar.c = i + 1;
        return i;
    }

    public b(Activity activity, int i) {
        this(activity, i == 3 ? com.cmplay.h.a.Messenger : com.cmplay.h.a.Facebook, i);
    }

    b(Context context, com.cmplay.h.a aVar, int i) {
        super(context, aVar);
        this.c = 0;
        this.f = 0;
        this.g = 1;
        this.h = 2;
        l.a(context.getApplicationContext());
        this.c = 0;
        this.d = i;
        this.e = e.a.a();
    }

    @Override // com.cmplay.h.a.c
    public void a(com.cmplay.h.e eVar) {
        this.j = eVar;
        this.k = com.cmplay.h.b.a(this.j.g());
        this.l = com.cmplay.h.b.b(this.j.g());
        this.n = com.cmplay.h.b.e();
        this.m = com.cmplay.h.b.a(this.j.g(), this.j.f());
        switch (this.d) {
            case 1:
                c(eVar);
                break;
            case 2:
                switch (eVar.h()) {
                    case 1:
                        d(eVar);
                        break;
                    case 2:
                        e(eVar);
                        break;
                }
            case 3:
                switch (eVar.h()) {
                    case 1:
                        f(eVar);
                        break;
                    case 2:
                        g(eVar);
                        break;
                }
            case 4:
                b(eVar);
                break;
        }
    }

    private void c(com.cmplay.h.e eVar) {
        this.j = eVar;
        this.k = com.cmplay.h.b.a(this.j.g());
        this.l = com.cmplay.h.b.b(this.j.g());
        this.n = com.cmplay.h.b.e();
        this.m = com.cmplay.h.b.a(this.j.g(), this.j.f());
        String a2 = com.cmplay.h.b.a(eVar.g());
        com.cmplay.h.b.a().a("clk_fb_invite");
        com.cmplay.h.b.a().a("clk_fb_invite" + a2);
        com.cmplay.h.f.b().a(this.l, this.n, this.m, 2);
        if (com.facebook.share.widget.a.e()) {
            AppInviteContent a3 = new AppInviteContent.a().a("https://fb.me/1638125309768167").b("http://board.cmcm.com/beta/tmp/006.jpg").a();
            com.facebook.share.widget.a aVar = new com.facebook.share.widget.a((Activity) this.f1379b);
            this.f = aVar.a();
            aVar.a(this.e, (g) new a(this, null));
            aVar.b((com.facebook.share.widget.a) a3);
        }
    }

    private void d(com.cmplay.h.e eVar) {
        this.j = eVar;
        this.k = com.cmplay.h.b.a(this.j.g());
        this.l = com.cmplay.h.b.b(this.j.g());
        this.n = com.cmplay.h.b.e();
        this.m = com.cmplay.h.b.a(this.j.g(), this.j.f());
        String a2 = com.cmplay.h.b.a(eVar.g());
        com.cmplay.h.b.a().a("clk_fb_timeline");
        com.cmplay.h.b.a().a("clk_fb_timeline" + a2);
        com.cmplay.h.f.b().a(this.l, this.n, this.m, 2);
        if (com.facebook.share.widget.d.a((Class<? extends ShareContent>) ShareLinkContent.class)) {
            ShareLinkContent a3 = new ShareLinkContent.a().b(eVar.d()).a(eVar.b()).a(Uri.parse(eVar.a())).b(Uri.parse(eVar.e())).a();
            com.facebook.share.widget.d dVar = new com.facebook.share.widget.d((Activity) this.f1379b);
            this.g = dVar.a();
            dVar.a(this.e, (g) new a(this, null));
            dVar.a((ShareContent) a3, d.b.NATIVE);
        }
    }

    private void e(com.cmplay.h.e eVar) {
        Uri uri;
        AnonymousClass1 anonymousClass1 = null;
        this.j = eVar;
        this.k = com.cmplay.h.b.a(this.j.g());
        this.l = com.cmplay.h.b.b(this.j.g());
        this.n = com.cmplay.h.b.e();
        this.m = com.cmplay.h.b.a(this.j.g(), this.j.f());
        String a2 = com.cmplay.h.b.a(eVar.g());
        com.cmplay.h.b.a().a("clk_fb_timeline");
        com.cmplay.h.b.a().a("clk_fb_timeline" + a2);
        com.cmplay.h.f.b().a(this.l, this.n, this.m, 2);
        if (com.facebook.share.widget.d.a((Class<? extends ShareContent>) SharePhotoContent.class)) {
            try {
                File file = new File(eVar.c());
                uri = Uri.fromFile(file);
                com.cmplay.util.c.a("deep_link", "sharePhotoToFaceBookTimeLine   file.exists():" + file.exists());
            } catch (Exception e) {
                uri = null;
            }
            SharePhotoContent a3 = new SharePhotoContent.a().a(new SharePhoto.a().a(uri).c()).a();
            com.facebook.share.widget.d dVar = new com.facebook.share.widget.d((Activity) this.f1379b);
            this.g = dVar.a();
            dVar.a(this.e, (g) new a(this, anonymousClass1));
            dVar.a((ShareContent) a3, d.b.NATIVE);
        }
    }

    private void f(com.cmplay.h.e eVar) {
        this.j = eVar;
        this.k = com.cmplay.h.b.a(this.j.g());
        this.l = com.cmplay.h.b.b(this.j.g());
        this.n = com.cmplay.h.b.e();
        this.m = com.cmplay.h.b.a(this.j.g(), this.j.f());
        String a2 = com.cmplay.h.b.a(eVar.g());
        com.cmplay.h.b.a().a("clk_fb_messenger");
        com.cmplay.h.b.a().a("clk_fb_messenger" + a2);
        com.cmplay.h.f.b().a(this.l, this.n, this.m, 2);
        if (com.facebook.share.widget.c.a((Class<? extends ShareContent>) ShareLinkContent.class)) {
            ShareLinkContent a3 = new ShareLinkContent.a().b(eVar.d()).a(eVar.b()).a(Uri.parse(eVar.a())).b(Uri.parse("http://board.cmcm.com/beta/tmp/005.png")).a();
            com.facebook.share.widget.c cVar = new com.facebook.share.widget.c((Activity) this.f1379b);
            this.h = cVar.a();
            cVar.a(this.e, (g) new a(this, null));
            cVar.b((com.facebook.share.widget.c) a3);
        }
    }

    private void g(com.cmplay.h.e eVar) {
        Uri uri;
        AnonymousClass1 anonymousClass1 = null;
        this.j = eVar;
        this.k = com.cmplay.h.b.a(this.j.g());
        this.l = com.cmplay.h.b.b(this.j.g());
        this.n = com.cmplay.h.b.e();
        this.m = com.cmplay.h.b.a(this.j.g(), this.j.f());
        String a2 = com.cmplay.h.b.a(eVar.g());
        com.cmplay.h.b.a().a("clk_fb_messenger");
        com.cmplay.h.b.a().a("clk_fb_messenger" + a2);
        com.cmplay.h.f.b().a(this.l, this.n, this.m, 2);
        if (com.facebook.share.widget.c.a((Class<? extends ShareContent>) SharePhotoContent.class)) {
            try {
                uri = Uri.fromFile(new File(eVar.c()));
            } catch (Exception e) {
                uri = null;
            }
            SharePhotoContent a3 = new SharePhotoContent.a().a(new SharePhoto.a().a(uri).c()).a();
            com.facebook.share.widget.c cVar = new com.facebook.share.widget.c((Activity) this.f1379b);
            this.h = cVar.a();
            cVar.a(this.e, (g) new a(this, anonymousClass1));
            cVar.b((com.facebook.share.widget.c) a3);
        }
    }

    public void b(com.cmplay.h.e eVar) {
        this.j = eVar;
        this.k = com.cmplay.h.b.a(this.j.g());
        this.l = com.cmplay.h.b.b(this.j.g());
        this.n = com.cmplay.h.b.e();
        this.m = com.cmplay.h.b.a(this.j.g(), this.j.f());
        String a2 = com.cmplay.h.b.a(eVar.g());
        com.cmplay.h.b.a().a("clk_fb_game_req");
        com.cmplay.h.b.a().a("clk_fb_game_req" + a2);
        com.cmplay.h.f.b().a(this.l, this.n, this.m, 2);
        new com.facebook.share.widget.b((Activity) this.f1379b).a(this.e, (g) new a(this, null));
        com.facebook.share.widget.b.a((Activity) this.f1379b, new GameRequestContent.b().c(eVar.d()).a(eVar.b()).b(eVar.i()).a());
    }

    @Override // com.cmplay.h.c
    public void a(int i, int i2, Intent intent) {
        this.e.a(i, i2, intent);
        if (this.f == i) {
            com.cmplay.h.b.a().a("at_fb_invite_req");
        } else if (this.g == i) {
            com.cmplay.h.b.a().a("at_fb_timeline_req");
        } else if (this.h == i) {
            com.cmplay.h.b.a().a("at_fb_messenger_req");
        }
    }

    /* compiled from: FaceBookPlatform.java */
    private class a<RESULT> implements g<RESULT> {
        private a() {
        }

        /* synthetic */ a(b bVar, AnonymousClass1 anonymousClass1) {
            this();
        }

        @Override // com.facebook.g
        public void a(RESULT result) {
            com.cmplay.util.c.a("deep_link", "FBCallback   onSuccess");
            com.cmplay.h.b.a().a(a(1));
            com.cmplay.h.b.a().a(a(1) + b.this.k);
            if (9 != b.this.j.f()) {
                com.cmplay.h.f.b().a(b.this.l, b.this.n, b.this.m, 3);
                b.this.a(b(), 1);
            } else {
                NativeUtil.gameRequestCallbackOnGLThread(b(), 1);
            }
            com.cmplay.h.f.b().b(b.this);
            WebBroadcast.a(GameApp.f1598a, 1);
            b.this.b();
        }

        @Override // com.facebook.g
        public void a() {
            com.cmplay.util.c.a("deep_link", "FBCallback   onCancel");
            com.cmplay.h.b.a().a(a(2));
            com.cmplay.h.b.a().a(a(2) + b.this.k);
            if (9 != b.this.j.f()) {
                com.cmplay.h.f.b().a(b.this.l, b.this.n, b.this.m, 5);
                b.this.a(b(), 2);
            } else {
                NativeUtil.gameRequestCallbackOnGLThread(b(), 2);
            }
            com.cmplay.h.f.b().b(b.this);
            WebBroadcast.a(GameApp.f1598a, -1);
            b.this.b();
        }

        @Override // com.facebook.g
        public void a(i iVar) {
            com.cmplay.util.c.a("deep_link", "FBCallback   onError" + iVar.getMessage());
            if (b.this.c < 1) {
                b.this.a(b.this.j);
                b.g(b.this);
                return;
            }
            com.cmplay.h.b.a().a(a(3));
            com.cmplay.h.b.a().a(a(3) + b.this.k);
            if (9 != b.this.j.f()) {
                com.cmplay.h.f.b().a(b.this.l, b.this.n, b.this.m, 4);
                b.this.a(b(), 0);
            } else {
                NativeUtil.gameRequestCallbackOnGLThread(b(), 0);
            }
            com.cmplay.h.f.b().b(b.this);
            WebBroadcast.a(GameApp.f1598a, -2);
            b.this.b();
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* JADX WARN: Removed duplicated region for block: B:2:0x0003 A[ORIG_RETURN, RETURN] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private java.lang.String a(int r2) {
            /*
                r1 = this;
                switch(r2) {
                    case 1: goto L6;
                    case 2: goto L1c;
                    case 3: goto L32;
                    default: goto L3;
                }
            L3:
                java.lang.String r0 = "unknow"
            L5:
                return r0
            L6:
                com.cmplay.h.a.b r0 = com.cmplay.h.a.b.this
                int r0 = com.cmplay.h.a.b.h(r0)
                switch(r0) {
                    case 1: goto L10;
                    case 2: goto L13;
                    case 3: goto L16;
                    case 4: goto L19;
                    default: goto Lf;
                }
            Lf:
                goto L3
            L10:
                java.lang.String r0 = "at_fb_invite_success"
                goto L5
            L13:
                java.lang.String r0 = "at_fb_timeline_success"
                goto L5
            L16:
                java.lang.String r0 = "at_fb_messenger_success"
                goto L5
            L19:
                java.lang.String r0 = "at_fb_game_req_success"
                goto L5
            L1c:
                com.cmplay.h.a.b r0 = com.cmplay.h.a.b.this
                int r0 = com.cmplay.h.a.b.h(r0)
                switch(r0) {
                    case 1: goto L26;
                    case 2: goto L29;
                    case 3: goto L2c;
                    case 4: goto L2f;
                    default: goto L25;
                }
            L25:
                goto L3
            L26:
                java.lang.String r0 = "at_fb_invite_cancel"
                goto L5
            L29:
                java.lang.String r0 = "at_fb_timeline_cancel"
                goto L5
            L2c:
                java.lang.String r0 = "at_fb_messenger_cancel"
                goto L5
            L2f:
                java.lang.String r0 = "at_fb_game_req_cancel"
                goto L5
            L32:
                com.cmplay.h.a.b r0 = com.cmplay.h.a.b.this
                int r0 = com.cmplay.h.a.b.h(r0)
                switch(r0) {
                    case 1: goto L3c;
                    case 2: goto L3f;
                    case 3: goto L42;
                    case 4: goto L45;
                    default: goto L3b;
                }
            L3b:
                goto L3
            L3c:
                java.lang.String r0 = "at_fb_invite_faild"
                goto L5
            L3f:
                java.lang.String r0 = "at_fb_timeline_faild"
                goto L5
            L42:
                java.lang.String r0 = "at_fb_messenger_faild"
                goto L5
            L45:
                java.lang.String r0 = "at_fb_game_req_faild"
                goto L5
            */
            throw new UnsupportedOperationException("Method not decompiled: com.cmplay.h.a.b.a.a(int):java.lang.String");
        }

        private int b() {
            switch (b.this.d) {
                case 1:
                    return 1;
                case 2:
                    return 2;
                case 3:
                    return 3;
                case 4:
                    return 9;
                default:
                    return -1;
            }
        }
    }

    /* compiled from: FaceBookPlatform.java */
    /* renamed from: com.cmplay.h.a.b$1, reason: invalid class name */
    class AnonymousClass1 implements g<com.facebook.login.f> {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ b f1374a;

        @Override // com.facebook.g
        public void a(com.facebook.login.f fVar) {
            AccessToken a2 = AccessToken.a();
            if (a2 != null) {
                final String str = "https://graph.facebook-com/me/picture?access_token=" + a2.c() + "&type=large";
                GraphRequest.b(GraphRequest.a(a2, new GraphRequest.c() { // from class: com.cmplay.h.a.b.1.1
                    @Override // com.facebook.GraphRequest.c
                    public void a(JSONObject jSONObject, q qVar) {
                        if (jSONObject != null && AnonymousClass1.this.f1374a.i != null) {
                            AnonymousClass1.this.f1374a.i.a(true, jSONObject.optString(MediationMetaData.KEY_NAME), str);
                        }
                    }
                }));
            }
        }

        @Override // com.facebook.g
        public void a() {
            if (this.f1374a.i != null) {
                this.f1374a.i.a(false, null, null);
            }
        }

        @Override // com.facebook.g
        public void a(i iVar) {
            if (this.f1374a.i != null) {
                this.f1374a.i.a(iVar.toString());
            }
        }
    }
}
