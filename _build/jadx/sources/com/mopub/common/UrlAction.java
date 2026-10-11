package com.mopub.common;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.mopub.common.MoPub;
import com.mopub.common.UrlHandler;
import com.mopub.common.event.BaseEvent;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.Intents;
import com.mopub.exceptions.IntentNotResolvableException;
import com.mopub.exceptions.UrlParseException;
import com.mopub.network.TrackingRequest;
import java.net.URISyntaxException;
import java.util.List;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public enum UrlAction {
    HANDLE_MOPUB_SCHEME(0 == true ? 1 : 0) { // from class: com.mopub.common.UrlAction.1
        @Override // com.mopub.common.UrlAction
        public boolean shouldTryHandlingUrl(@NonNull Uri uri) {
            return "mopub".equalsIgnoreCase(uri.getScheme());
        }

        @Override // com.mopub.common.UrlAction
        protected void a(@NonNull Context context, @NonNull Uri uri, @NonNull UrlHandler urlHandler, @Nullable String str) throws IntentNotResolvableException {
            String host = uri.getHost();
            UrlHandler.MoPubSchemeListener a2 = urlHandler.a();
            if ("finishLoad".equalsIgnoreCase(host)) {
                a2.onFinishLoad();
            } else if ("close".equalsIgnoreCase(host)) {
                a2.onClose();
            } else {
                if ("failLoad".equalsIgnoreCase(host)) {
                    a2.onFailLoad();
                    return;
                }
                throw new IntentNotResolvableException("Could not handle MoPub Scheme url: " + uri);
            }
        }
    },
    IGNORE_ABOUT_SCHEME(0 == true ? 1 : 0) { // from class: com.mopub.common.UrlAction.3
        @Override // com.mopub.common.UrlAction
        public boolean shouldTryHandlingUrl(@NonNull Uri uri) {
            return "about".equalsIgnoreCase(uri.getScheme());
        }

        @Override // com.mopub.common.UrlAction
        protected void a(@NonNull Context context, @NonNull Uri uri, @NonNull UrlHandler urlHandler, @Nullable String str) throws IntentNotResolvableException {
            MoPubLog.d("Link to about page ignored.");
        }
    },
    HANDLE_PHONE_SCHEME(1 == true ? 1 : 0) { // from class: com.mopub.common.UrlAction.4
        @Override // com.mopub.common.UrlAction
        public boolean shouldTryHandlingUrl(@NonNull Uri uri) {
            String scheme = uri.getScheme();
            return "tel".equalsIgnoreCase(scheme) || "voicemail".equalsIgnoreCase(scheme) || "sms".equalsIgnoreCase(scheme) || "mailto".equalsIgnoreCase(scheme) || "geo".equalsIgnoreCase(scheme) || "google.streetview".equalsIgnoreCase(scheme);
        }

        @Override // com.mopub.common.UrlAction
        protected void a(@NonNull Context context, @NonNull Uri uri, @NonNull UrlHandler urlHandler, @Nullable String str) throws IntentNotResolvableException {
            Intents.launchActionViewIntent(context, uri, "Could not handle intent with URI: " + uri + "\n\tIs this intent supported on your phone?");
        }
    },
    OPEN_NATIVE_BROWSER(1 == true ? 1 : 0) { // from class: com.mopub.common.UrlAction.5
        @Override // com.mopub.common.UrlAction
        public boolean shouldTryHandlingUrl(@NonNull Uri uri) {
            String scheme = uri.getScheme();
            if (Constants.HTTP.equalsIgnoreCase(scheme) || Constants.HTTPS.equalsIgnoreCase(scheme)) {
                return MoPub.getBrowserAgent() == MoPub.BrowserAgent.NATIVE;
            }
            return "mopubnativebrowser".equalsIgnoreCase(scheme);
        }

        @Override // com.mopub.common.UrlAction
        protected void a(@NonNull Context context, @NonNull Uri uri, @NonNull UrlHandler urlHandler, @Nullable String str) throws IntentNotResolvableException {
            String str2 = "Unable to load mopub native browser url: " + uri;
            try {
                Intents.launchIntentForUserClick(context, Intents.intentForNativeBrowserScheme(uri), str2);
            } catch (UrlParseException e) {
                throw new IntentNotResolvableException(str2 + "\n\t" + e.getMessage());
            }
        }
    },
    OPEN_APP_MARKET(1 == true ? 1 : 0) { // from class: com.mopub.common.UrlAction.6
        @Override // com.mopub.common.UrlAction
        public boolean shouldTryHandlingUrl(@NonNull Uri uri) {
            String scheme = uri.getScheme();
            String host = uri.getHost();
            return "play.google.com".equalsIgnoreCase(host) || "market.android.com".equalsIgnoreCase(host) || "market".equalsIgnoreCase(scheme) || uri.toString().toLowerCase().startsWith("play.google.com/") || uri.toString().toLowerCase().startsWith("market.android.com/");
        }

        @Override // com.mopub.common.UrlAction
        protected void a(@NonNull Context context, @NonNull Uri uri, @NonNull UrlHandler urlHandler, @Nullable String str) throws IntentNotResolvableException {
            Intents.launchApplicationUrl(context, uri);
        }
    },
    OPEN_IN_APP_BROWSER(1 == true ? 1 : 0) { // from class: com.mopub.common.UrlAction.7
        @Override // com.mopub.common.UrlAction
        public boolean shouldTryHandlingUrl(@NonNull Uri uri) {
            String scheme = uri.getScheme();
            return Constants.HTTP.equalsIgnoreCase(scheme) || Constants.HTTPS.equalsIgnoreCase(scheme);
        }

        @Override // com.mopub.common.UrlAction
        protected void a(@NonNull Context context, @NonNull Uri uri, @NonNull UrlHandler urlHandler, @Nullable String str) throws IntentNotResolvableException {
            if (!urlHandler.b()) {
                Intents.showMoPubBrowserForUrl(context, uri, str);
            }
        }
    },
    HANDLE_SHARE_TWEET(1 == true ? 1 : 0) { // from class: com.mopub.common.UrlAction.8
        @Override // com.mopub.common.UrlAction
        public boolean shouldTryHandlingUrl(@NonNull Uri uri) {
            Preconditions.checkNotNull(uri);
            return "mopubshare".equalsIgnoreCase(uri.getScheme()) && "tweet".equalsIgnoreCase(uri.getHost());
        }

        @Override // com.mopub.common.UrlAction
        protected void a(@NonNull Context context, @NonNull Uri uri, @NonNull UrlHandler urlHandler, @Nullable String str) throws IntentNotResolvableException {
            Preconditions.checkNotNull(context);
            Preconditions.checkNotNull(uri);
            String str2 = "Could not handle share tweet intent with URI " + uri;
            try {
                Intents.launchIntentForUserClick(context, Intent.createChooser(Intents.intentForShareTweet(uri), "Share via"), str2);
            } catch (UrlParseException e) {
                throw new IntentNotResolvableException(str2 + "\n\t" + e.getMessage());
            }
        }
    },
    FOLLOW_DEEP_LINK_WITH_FALLBACK(1 == true ? 1 : 0) { // from class: com.mopub.common.UrlAction.9
        @Override // com.mopub.common.UrlAction
        public boolean shouldTryHandlingUrl(@NonNull Uri uri) {
            return "deeplink+".equalsIgnoreCase(uri.getScheme());
        }

        @Override // com.mopub.common.UrlAction
        protected void a(@NonNull Context context, @NonNull Uri uri, @NonNull UrlHandler urlHandler, @Nullable String str) throws IntentNotResolvableException {
            if (!"navigate".equalsIgnoreCase(uri.getHost())) {
                throw new IntentNotResolvableException("Deeplink+ URL did not have 'navigate' as the host.");
            }
            try {
                String queryParameter = uri.getQueryParameter("primaryUrl");
                List<String> queryParameters = uri.getQueryParameters("primaryTrackingUrl");
                String queryParameter2 = uri.getQueryParameter("fallbackUrl");
                List<String> queryParameters2 = uri.getQueryParameters("fallbackTrackingUrl");
                if (queryParameter == null) {
                    throw new IntentNotResolvableException("Deeplink+ did not have 'primaryUrl' query param.");
                }
                Uri parse = Uri.parse(queryParameter);
                if (shouldTryHandlingUrl(parse)) {
                    throw new IntentNotResolvableException("Deeplink+ had another Deeplink+ as the 'primaryUrl'.");
                }
                try {
                    Intents.launchApplicationUrl(context, parse);
                    TrackingRequest.makeTrackingHttpRequest(queryParameters, context, BaseEvent.Name.CLICK_REQUEST);
                } catch (IntentNotResolvableException e) {
                    if (queryParameter2 == null) {
                        throw new IntentNotResolvableException("Unable to handle 'primaryUrl' for Deeplink+ and 'fallbackUrl' was missing.");
                    }
                    if (shouldTryHandlingUrl(Uri.parse(queryParameter2))) {
                        throw new IntentNotResolvableException("Deeplink+ URL had another Deeplink+ URL as the 'fallbackUrl'.");
                    }
                    urlHandler.handleUrl(context, queryParameter2, true, queryParameters2);
                }
            } catch (UnsupportedOperationException e2) {
                throw new IntentNotResolvableException("Deeplink+ URL was not a hierarchical URI.");
            }
        }
    },
    FOLLOW_DEEP_LINK(1 == true ? 1 : 0) { // from class: com.mopub.common.UrlAction.10
        @Override // com.mopub.common.UrlAction
        public boolean shouldTryHandlingUrl(@NonNull Uri uri) {
            return !TextUtils.isEmpty(uri.getScheme());
        }

        @Override // com.mopub.common.UrlAction
        protected void a(@NonNull Context context, @NonNull Uri uri, @NonNull UrlHandler urlHandler, @Nullable String str) throws IntentNotResolvableException {
            if (Constants.INTENT_SCHEME.equalsIgnoreCase(uri.getScheme())) {
                try {
                    Intents.launchApplicationIntent(context, Intent.parseUri(uri.toString(), 1));
                } catch (URISyntaxException e) {
                    throw new IntentNotResolvableException("Intent uri had invalid syntax: " + uri.toString());
                }
            } else {
                Intents.launchApplicationUrl(context, uri);
            }
        }
    },
    NOOP(0 == true ? 1 : 0) { // from class: com.mopub.common.UrlAction.2
        @Override // com.mopub.common.UrlAction
        public boolean shouldTryHandlingUrl(@NonNull Uri uri) {
            return false;
        }

        @Override // com.mopub.common.UrlAction
        protected void a(@NonNull Context context, @NonNull Uri uri, @NonNull UrlHandler urlHandler, @Nullable String str) throws IntentNotResolvableException {
        }
    };


    /* renamed from: a, reason: collision with root package name */
    private final boolean f4175a;

    protected abstract void a(@NonNull Context context, @NonNull Uri uri, @NonNull UrlHandler urlHandler, @Nullable String str) throws IntentNotResolvableException;

    public abstract boolean shouldTryHandlingUrl(@NonNull Uri uri);

    public void handleUrl(UrlHandler urlHandler, @NonNull Context context, @NonNull Uri destinationUri, boolean fromUserInteraction, @Nullable String creativeId) throws IntentNotResolvableException {
        MoPubLog.d("Ad event URL: " + destinationUri);
        if (this.f4175a && !fromUserInteraction) {
            throw new IntentNotResolvableException("Attempted to handle action without user interaction.");
        }
        a(context, destinationUri, urlHandler, creativeId);
    }

    UrlAction(boolean requiresUserInteraction) {
        this.f4175a = requiresUserInteraction;
    }
}
