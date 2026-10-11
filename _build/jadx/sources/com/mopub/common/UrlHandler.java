package com.mopub.common;

import android.content.Context;
import android.net.Uri;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.mopub.common.UrlResolutionTask;
import com.mopub.common.event.BaseEvent;
import com.mopub.common.logging.MoPubLog;
import com.mopub.exceptions.IntentNotResolvableException;
import com.mopub.network.TrackingRequest;
import java.util.EnumSet;
import java.util.Iterator;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class UrlHandler {

    /* renamed from: a, reason: collision with root package name */
    private static final ResultActions f4176a = new ResultActions() { // from class: com.mopub.common.UrlHandler.1
        @Override // com.mopub.common.UrlHandler.ResultActions
        public void urlHandlingSucceeded(@NonNull String url, @NonNull UrlAction urlAction) {
        }

        @Override // com.mopub.common.UrlHandler.ResultActions
        public void urlHandlingFailed(@NonNull String url, @NonNull UrlAction lastFailedUrlAction) {
        }
    };

    /* renamed from: b, reason: collision with root package name */
    private static final MoPubSchemeListener f4177b = new MoPubSchemeListener() { // from class: com.mopub.common.UrlHandler.2
        @Override // com.mopub.common.UrlHandler.MoPubSchemeListener
        public void onFinishLoad() {
        }

        @Override // com.mopub.common.UrlHandler.MoPubSchemeListener
        public void onClose() {
        }

        @Override // com.mopub.common.UrlHandler.MoPubSchemeListener
        public void onFailLoad() {
        }
    };

    @NonNull
    private EnumSet<UrlAction> c;

    @NonNull
    private ResultActions d;

    @NonNull
    private MoPubSchemeListener e;

    @Nullable
    private String f;
    private boolean g;
    private boolean h;
    private boolean i;

    public interface MoPubSchemeListener {
        void onClose();

        void onFailLoad();

        void onFinishLoad();
    }

    public interface ResultActions {
        void urlHandlingFailed(@NonNull String str, @NonNull UrlAction urlAction);

        void urlHandlingSucceeded(@NonNull String str, @NonNull UrlAction urlAction);
    }

    public static class Builder {

        /* renamed from: a, reason: collision with root package name */
        @NonNull
        private EnumSet<UrlAction> f4180a = EnumSet.of(UrlAction.NOOP);

        /* renamed from: b, reason: collision with root package name */
        @NonNull
        private ResultActions f4181b = UrlHandler.f4176a;

        @NonNull
        private MoPubSchemeListener c = UrlHandler.f4177b;
        private boolean d = false;

        @Nullable
        private String e;

        public Builder withSupportedUrlActions(@NonNull UrlAction first, @Nullable UrlAction... others) {
            this.f4180a = EnumSet.of(first, others);
            return this;
        }

        public Builder withSupportedUrlActions(@NonNull EnumSet<UrlAction> supportedUrlActions) {
            this.f4180a = EnumSet.copyOf((EnumSet) supportedUrlActions);
            return this;
        }

        public Builder withResultActions(@NonNull ResultActions resultActions) {
            this.f4181b = resultActions;
            return this;
        }

        public Builder withMoPubSchemeListener(@NonNull MoPubSchemeListener moPubSchemeListener) {
            this.c = moPubSchemeListener;
            return this;
        }

        public Builder withoutMoPubBrowser() {
            this.d = true;
            return this;
        }

        public Builder withDspCreativeId(@Nullable String creativeId) {
            this.e = creativeId;
            return this;
        }

        public UrlHandler build() {
            return new UrlHandler(this.f4180a, this.f4181b, this.c, this.d, this.e);
        }
    }

    private UrlHandler(@NonNull EnumSet<UrlAction> supportedUrlActions, @NonNull ResultActions resultActions, @NonNull MoPubSchemeListener moPubSchemeListener, boolean skipShowMoPubBrowser, @Nullable String dspCreativeId) {
        this.c = EnumSet.copyOf((EnumSet) supportedUrlActions);
        this.d = resultActions;
        this.e = moPubSchemeListener;
        this.g = skipShowMoPubBrowser;
        this.f = dspCreativeId;
        this.h = false;
        this.i = false;
    }

    @NonNull
    MoPubSchemeListener a() {
        return this.e;
    }

    boolean b() {
        return this.g;
    }

    public void handleUrl(@NonNull Context context, @NonNull String destinationUrl) {
        Preconditions.checkNotNull(context);
        handleUrl(context, destinationUrl, true);
    }

    public void handleUrl(@NonNull Context context, @NonNull String destinationUrl, boolean fromUserInteraction) {
        Preconditions.checkNotNull(context);
        handleUrl(context, destinationUrl, fromUserInteraction, null);
    }

    public void handleUrl(@NonNull final Context context, @NonNull final String destinationUrl, final boolean fromUserInteraction, @Nullable final Iterable<String> trackingUrls) {
        Preconditions.checkNotNull(context);
        if (TextUtils.isEmpty(destinationUrl)) {
            a(destinationUrl, null, "Attempted to handle empty url.", null);
        } else {
            UrlResolutionTask.getResolvedUrl(destinationUrl, new UrlResolutionTask.a() { // from class: com.mopub.common.UrlHandler.3
                @Override // com.mopub.common.UrlResolutionTask.a
                public void onSuccess(@NonNull String resolvedUrl) {
                    UrlHandler.this.i = false;
                    UrlHandler.this.handleResolvedUrl(context, resolvedUrl, fromUserInteraction, trackingUrls);
                }

                @Override // com.mopub.common.UrlResolutionTask.a
                public void onFailure(@NonNull String message, @Nullable Throwable throwable) {
                    UrlHandler.this.i = false;
                    UrlHandler.this.a(destinationUrl, null, message, throwable);
                }
            });
            this.i = true;
        }
    }

    public boolean handleResolvedUrl(@NonNull Context context, @NonNull String url, boolean fromUserInteraction, @Nullable Iterable<String> trackingUrls) {
        if (TextUtils.isEmpty(url)) {
            a(url, null, "Attempted to handle empty url.", null);
            return false;
        }
        UrlAction urlAction = UrlAction.NOOP;
        Uri parse = Uri.parse(url);
        Iterator it = this.c.iterator();
        while (true) {
            UrlAction urlAction2 = urlAction;
            if (it.hasNext()) {
                urlAction = (UrlAction) it.next();
                if (urlAction.shouldTryHandlingUrl(parse)) {
                    try {
                        urlAction.handleUrl(this, context, parse, fromUserInteraction, this.f);
                        if (!this.h && !this.i && !UrlAction.IGNORE_ABOUT_SCHEME.equals(urlAction) && !UrlAction.HANDLE_MOPUB_SCHEME.equals(urlAction)) {
                            TrackingRequest.makeTrackingHttpRequest(trackingUrls, context, BaseEvent.Name.CLICK_REQUEST);
                            this.d.urlHandlingSucceeded(parse.toString(), urlAction);
                            this.h = true;
                            break;
                        }
                        break;
                    } catch (IntentNotResolvableException e) {
                        MoPubLog.d(e.getMessage(), e);
                    }
                } else {
                    urlAction = urlAction2;
                }
            } else {
                a(url, urlAction2, "Link ignored. Unable to handle url: " + url, null);
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(@Nullable String str, @Nullable UrlAction urlAction, @NonNull String str2, @Nullable Throwable th) {
        Preconditions.checkNotNull(str2);
        if (urlAction == null) {
            urlAction = UrlAction.NOOP;
        }
        MoPubLog.d(str2, th);
        this.d.urlHandlingFailed(str, urlAction);
    }
}
