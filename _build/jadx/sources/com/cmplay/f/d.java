package com.cmplay.f;

import com.cmplay.tile2.GameApp;
import com.cmplay.util.aa;
import com.google.android.gms.auth.GoogleAuthException;
import com.google.android.gms.auth.GoogleAuthUtil;
import com.google.android.gms.auth.UserRecoverableAuthException;
import java.io.IOException;

/* compiled from: GetInfoInForeground.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class d extends a {
    public d(b bVar, String str, String str2) {
        super(bVar, str, str2);
    }

    @Override // com.cmplay.f.a
    protected String a() throws IOException {
        try {
            return GoogleAuthUtil.getToken(GameApp.f1598a, this.c, this.f1354b);
        } catch (UserRecoverableAuthException e) {
            this.f1353a.a(e);
            this.f1353a.b(true);
            aa.a("key_req_grant_access_account_count", aa.b("key_req_grant_access_account_count") + 1);
            return null;
        } catch (GoogleAuthException e2) {
            a("Unrecoverable error " + e2.getMessage(), e2);
            return null;
        }
    }
}
