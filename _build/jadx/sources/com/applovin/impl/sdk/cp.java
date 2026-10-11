package com.applovin.impl.sdk;

import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdLoadListener;
import com.applovin.sdk.AppLovinAdUpdateListener;
import com.applovin.sdk.AppLovinLogger;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class cp implements AppLovinAdLoadListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ AppLovinAdServiceImpl f501a;

    /* renamed from: b, reason: collision with root package name */
    private final cq f502b;

    private cp(AppLovinAdServiceImpl appLovinAdServiceImpl, cq cqVar) {
        this.f501a = appLovinAdServiceImpl;
        this.f502b = cqVar;
    }

    /* synthetic */ cp(AppLovinAdServiceImpl appLovinAdServiceImpl, cq cqVar, cm cmVar) {
        this(appLovinAdServiceImpl, cqVar);
    }

    @Override // com.applovin.sdk.AppLovinAdLoadListener
    public void adReceived(AppLovinAd appLovinAd) {
        boolean a2;
        HashSet hashSet;
        Collection collection;
        Collection collection2;
        HashSet hashSet2;
        Collection collection3;
        AppLovinLogger appLovinLogger;
        AppLovinLogger appLovinLogger2;
        long b2;
        synchronized (this.f502b.f504b) {
            a2 = this.f501a.a(this.f502b.f503a);
            if (a2) {
                b2 = this.f501a.b(this.f502b.f503a);
                if (b2 > 0) {
                    this.f502b.d = (b2 * 1000) + System.currentTimeMillis();
                } else if (b2 == 0) {
                    this.f502b.d = Long.MAX_VALUE;
                }
                this.f502b.c = appLovinAd;
            } else {
                this.f502b.c = null;
                this.f502b.d = 0L;
            }
            collection = this.f502b.g;
            hashSet = new HashSet(collection);
            collection2 = this.f502b.g;
            collection2.clear();
            collection3 = this.f502b.f;
            hashSet2 = new HashSet(collection3);
            this.f502b.e = false;
        }
        this.f501a.c(this.f502b.f503a);
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            try {
                ((AppLovinAdLoadListener) it.next()).adReceived(appLovinAd);
            } catch (Throwable th) {
                appLovinLogger2 = this.f501a.f395b;
                appLovinLogger2.e("AppLovinAdService", "Unable to notify listener about a newly loaded ad", th);
            }
        }
        Iterator it2 = hashSet2.iterator();
        while (it2.hasNext()) {
            try {
                ((AppLovinAdUpdateListener) it2.next()).adUpdated(appLovinAd);
            } catch (Throwable th2) {
                appLovinLogger = this.f501a.f395b;
                appLovinLogger.e("AppLovinAdService", "Unable to notify listener about an updated loaded ad", th2);
            }
        }
    }

    @Override // com.applovin.sdk.AppLovinAdLoadListener
    public void failedToReceiveAd(int i) {
        HashSet hashSet;
        Collection collection;
        Collection collection2;
        AppLovinLogger appLovinLogger;
        synchronized (this.f502b.f504b) {
            collection = this.f502b.g;
            hashSet = new HashSet(collection);
            collection2 = this.f502b.g;
            collection2.clear();
            this.f502b.e = false;
        }
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            try {
                ((AppLovinAdLoadListener) it.next()).failedToReceiveAd(i);
            } catch (Throwable th) {
                appLovinLogger = this.f501a.f395b;
                appLovinLogger.e("AppLovinAdService", "Unable to notify listener about ad load failure", th);
            }
        }
    }
}
