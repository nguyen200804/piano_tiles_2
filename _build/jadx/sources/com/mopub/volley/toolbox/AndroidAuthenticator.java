package com.mopub.volley.toolbox;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.accounts.AccountManagerFuture;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.mopub.common.Constants;
import com.mopub.volley.AuthFailureError;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class AndroidAuthenticator implements Authenticator {

    /* renamed from: a, reason: collision with root package name */
    private final Context f4773a;

    /* renamed from: b, reason: collision with root package name */
    private final Account f4774b;
    private final String c;
    private final boolean d;

    public AndroidAuthenticator(Context context, Account account, String authTokenType) {
        this(context, account, authTokenType, false);
    }

    public AndroidAuthenticator(Context context, Account account, String authTokenType, boolean notifyAuthFailure) {
        this.f4773a = context;
        this.f4774b = account;
        this.c = authTokenType;
        this.d = notifyAuthFailure;
    }

    public Account getAccount() {
        return this.f4774b;
    }

    @Override // com.mopub.volley.toolbox.Authenticator
    public String getAuthToken() throws AuthFailureError {
        String str = null;
        AccountManagerFuture<Bundle> authToken = AccountManager.get(this.f4773a).getAuthToken(this.f4774b, this.c, this.d, null, null);
        try {
            Bundle result = authToken.getResult();
            if (authToken.isDone() && !authToken.isCancelled()) {
                if (result.containsKey(Constants.INTENT_SCHEME)) {
                    throw new AuthFailureError((Intent) result.getParcelable(Constants.INTENT_SCHEME));
                }
                str = result.getString("authtoken");
            }
            if (str == null) {
                throw new AuthFailureError("Got null auth token for type: " + this.c);
            }
            return str;
        } catch (Exception e) {
            throw new AuthFailureError("Error while retrieving auth token", e);
        }
    }

    @Override // com.mopub.volley.toolbox.Authenticator
    public void invalidateAuthToken(String authToken) {
        AccountManager.get(this.f4773a).invalidateAuthToken(this.f4774b.type, authToken);
    }
}
