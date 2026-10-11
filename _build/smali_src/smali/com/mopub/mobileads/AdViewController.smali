.class public Lcom/mopub/mobileads/AdViewController;
.super Ljava/lang/Object;
.source "AdViewController.java"


# static fields
.field private static final b:Landroid/widget/FrameLayout$LayoutParams;

.field private static final c:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private A:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private B:I

.field private C:Lcom/mopub/network/AdRequest;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private D:Ljava/lang/Integer;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field a:I
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation
.end field

.field private final d:J

.field private e:Landroid/content/Context;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private f:Lcom/mopub/mobileads/MoPubView;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private g:Lcom/mopub/mobileads/WebViewAdUrlGenerator;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private h:Lcom/mopub/network/AdResponse;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private i:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final j:Ljava/lang/Runnable;

.field private final k:Lcom/mopub/network/AdRequest$Listener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private l:Z

.field private m:Landroid/os/Handler;

.field private n:Z

.field private o:Ljava/lang/String;

.field private p:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private q:Z

.field private r:Z

.field private s:Landroid/content/SharedPreferences;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Z

.field private x:Landroid/location/Location;

.field private y:Z

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, -0x2

    .line 76
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x11

    invoke-direct {v0, v2, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    sput-object v0, Lcom/mopub/mobileads/AdViewController;->b:Landroid/widget/FrameLayout$LayoutParams;

    .line 81
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/mopub/mobileads/AdViewController;->c:Ljava/util/WeakHashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/mopub/mobileads/MoPubView;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "view"    # Lcom/mopub/mobileads/MoPubView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x1

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput v1, p0, Lcom/mopub/mobileads/AdViewController;->a:I

    .line 103
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/AdViewController;->p:Ljava/util/Map;

    .line 110
    iput-boolean v1, p0, Lcom/mopub/mobileads/AdViewController;->q:Z

    .line 116
    iput-boolean v1, p0, Lcom/mopub/mobileads/AdViewController;->r:Z

    .line 141
    iput-object p1, p0, Lcom/mopub/mobileads/AdViewController;->e:Landroid/content/Context;

    .line 142
    iput-object p2, p0, Lcom/mopub/mobileads/AdViewController;->f:Lcom/mopub/mobileads/MoPubView;

    .line 145
    const/4 v0, -0x1

    iput v0, p0, Lcom/mopub/mobileads/AdViewController;->B:I

    .line 146
    invoke-static {}, Lcom/mopub/common/util/Utils;->generateUniqueId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mopub/mobileads/AdViewController;->d:J

    .line 148
    new-instance v0, Lcom/mopub/mobileads/WebViewAdUrlGenerator;

    iget-object v1, p0, Lcom/mopub/mobileads/AdViewController;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/mopub/mobileads/AdViewController;->e:Landroid/content/Context;

    .line 149
    invoke-static {v2}, Lcom/mopub/mraid/MraidNativeCommandHandler;->isStorePictureSupported(Landroid/content/Context;)Z

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/mopub/mobileads/WebViewAdUrlGenerator;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/mopub/mobileads/AdViewController;->g:Lcom/mopub/mobileads/WebViewAdUrlGenerator;

    .line 151
    new-instance v0, Lcom/mopub/mobileads/AdViewController$1;

    invoke-direct {v0, p0}, Lcom/mopub/mobileads/AdViewController$1;-><init>(Lcom/mopub/mobileads/AdViewController;)V

    iput-object v0, p0, Lcom/mopub/mobileads/AdViewController;->k:Lcom/mopub/network/AdRequest$Listener;

    .line 163
    new-instance v0, Lcom/mopub/mobileads/AdViewController$3;

    invoke-direct {v0, p0}, Lcom/mopub/mobileads/AdViewController$3;-><init>(Lcom/mopub/mobileads/AdViewController;)V

    iput-object v0, p0, Lcom/mopub/mobileads/AdViewController;->j:Ljava/lang/Runnable;

    .line 168
    const v0, 0xea60

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mobileads/AdViewController;->D:Ljava/lang/Integer;

    .line 169
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/AdViewController;->m:Landroid/os/Handler;

    .line 170
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/mopub/common/SharedPreferencesHelper;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mobileads/AdViewController;->s:Landroid/content/SharedPreferences;

    .line 171
    return-void
.end method

.method static synthetic a(Lcom/mopub/mobileads/AdViewController;Landroid/view/View;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/AdViewController;->c(Landroid/view/View;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method static a(Lcom/mopub/volley/VolleyError;Landroid/content/Context;)Lcom/mopub/mobileads/MoPubErrorCode;
    .locals 2
    .param p0    # Lcom/mopub/volley/VolleyError;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    .line 233
    iget-object v0, p0, Lcom/mopub/volley/VolleyError;->networkResponse:Lcom/mopub/volley/NetworkResponse;

    .line 236
    instance-of v1, p0, Lcom/mopub/network/MoPubNetworkError;

    if-eqz v1, :cond_0

    .line 237
    sget-object v0, Lcom/mopub/mobileads/AdViewController$2;->a:[I

    check-cast p0, Lcom/mopub/network/MoPubNetworkError;

    invoke-virtual {p0}, Lcom/mopub/network/MoPubNetworkError;->getReason()Lcom/mopub/network/MoPubNetworkError$Reason;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mopub/network/MoPubNetworkError$Reason;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 243
    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->UNSPECIFIED:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 258
    :goto_0
    return-object v0

    .line 239
    :pswitch_0
    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->WARMUP:Lcom/mopub/mobileads/MoPubErrorCode;

    goto :goto_0

    .line 241
    :pswitch_1
    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->NO_FILL:Lcom/mopub/mobileads/MoPubErrorCode;

    goto :goto_0

    .line 247
    :cond_0
    if-nez v0, :cond_2

    .line 248
    invoke-static {p1}, Lcom/mopub/common/util/DeviceUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 249
    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->NO_CONNECTION:Lcom/mopub/mobileads/MoPubErrorCode;

    goto :goto_0

    .line 251
    :cond_1
    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->UNSPECIFIED:Lcom/mopub/mobileads/MoPubErrorCode;

    goto :goto_0

    .line 254
    :cond_2
    iget-object v0, p0, Lcom/mopub/volley/VolleyError;->networkResponse:Lcom/mopub/volley/NetworkResponse;

    iget v0, v0, Lcom/mopub/volley/NetworkResponse;->statusCode:I

    const/16 v1, 0x190

    if-lt v0, v1, :cond_3

    .line 255
    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->SERVER_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    goto :goto_0

    .line 258
    :cond_3
    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->UNSPECIFIED:Lcom/mopub/mobileads/MoPubErrorCode;

    goto :goto_0

    .line 237
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic a(Lcom/mopub/mobileads/AdViewController;Lcom/mopub/network/AdResponse;)Lcom/mopub/network/AdResponse;
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/mopub/mobileads/AdViewController;->h:Lcom/mopub/network/AdResponse;

    return-object p1
.end method

.method static synthetic a(Lcom/mopub/mobileads/AdViewController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/mopub/mobileads/AdViewController;->u:Ljava/lang/String;

    return-object p1
.end method

.method private a(Lcom/mopub/common/ClientMetadata;)V
    .locals 6

    .prologue
    .line 331
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->s:Landroid/content/SharedPreferences;

    const-string v1, "cf_expires"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 332
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-lez v0, :cond_0

    .line 333
    new-instance v0, Lcom/mopub/volley/toolbox/JsonObjectRequest;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/mopub/mobileads/AdViewController;->u:Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Lcom/mopub/mobileads/AdViewController$6;

    invoke-direct {v4, p0, p1}, Lcom/mopub/mobileads/AdViewController$6;-><init>(Lcom/mopub/mobileads/AdViewController;Lcom/mopub/common/ClientMetadata;)V

    new-instance v5, Lcom/mopub/mobileads/AdViewController$7;

    invoke-direct {v5, p0}, Lcom/mopub/mobileads/AdViewController$7;-><init>(Lcom/mopub/mobileads/AdViewController;)V

    invoke-direct/range {v0 .. v5}, Lcom/mopub/volley/toolbox/JsonObjectRequest;-><init>(ILjava/lang/String;Lorg/json/JSONObject;Lcom/mopub/volley/Response$Listener;Lcom/mopub/volley/Response$ErrorListener;)V

    .line 375
    iget-object v1, p0, Lcom/mopub/mobileads/AdViewController;->e:Landroid/content/Context;

    invoke-static {v1}, Lcom/mopub/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;)Lcom/mopub/volley/RequestQueue;

    move-result-object v1

    .line 376
    invoke-virtual {v1, v0}, Lcom/mopub/volley/RequestQueue;->add(Lcom/mopub/volley/Request;)Lcom/mopub/volley/Request;

    .line 378
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/mopub/mobileads/AdViewController;)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/mopub/mobileads/AdViewController;->m()V

    return-void
.end method

.method static synthetic a(Lcom/mopub/mobileads/AdViewController;Lcom/mopub/common/ClientMetadata;)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/AdViewController;->a(Lcom/mopub/common/ClientMetadata;)V

    return-void
.end method

.method static synthetic a(Lcom/mopub/mobileads/AdViewController;Z)Z
    .locals 0

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/mopub/mobileads/AdViewController;->w:Z

    return p1
.end method

.method static synthetic b(Lcom/mopub/mobileads/AdViewController;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->A:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/mopub/mobileads/AdViewController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/mopub/mobileads/AdViewController;->v:Ljava/lang/String;

    return-object p1
.end method

.method private b(Lcom/mopub/common/ClientMetadata;)V
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 382
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mopub/mobileads/AdViewController;->v:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mupid=%s&ov=%s&brand=%s&model=%s&nt=%s&gaid=%s&resolution=%s"

    const/4 v4, 0x7

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 383
    invoke-virtual {p1}, Lcom/mopub/common/ClientMetadata;->getDeviceId()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 384
    invoke-virtual {p1}, Lcom/mopub/common/ClientMetadata;->getDeviceOsVersion()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    .line 385
    invoke-virtual {p1}, Lcom/mopub/common/ClientMetadata;->getDeviceManufacturer()Ljava/lang/String;

    move-result-object v6

    const-string v7, "utf-8"

    invoke-static {v6, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    .line 386
    invoke-virtual {p1}, Lcom/mopub/common/ClientMetadata;->getDeviceModel()Ljava/lang/String;

    move-result-object v6

    const-string v7, "utf-8"

    invoke-static {v6, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    .line 387
    invoke-virtual {p1}, Lcom/mopub/common/ClientMetadata;->getActiveNetworkType()Lcom/mopub/common/ClientMetadata$MoPubNetworkType;

    move-result-object v6

    sget-object v7, Lcom/mopub/common/ClientMetadata$MoPubNetworkType;->WIFI:Lcom/mopub/common/ClientMetadata$MoPubNetworkType;

    invoke-virtual {v6, v7}, Lcom/mopub/common/ClientMetadata$MoPubNetworkType;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v0, 0x5

    .line 388
    invoke-virtual {p1}, Lcom/mopub/common/ClientMetadata;->getDeviceId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v0, 0x6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 389
    invoke-virtual {p1}, Lcom/mopub/common/ClientMetadata;->getDeviceScreenHeightDip()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "*"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/mopub/common/ClientMetadata;->getDeviceScreenWidthDip()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    .line 382
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mobileads/AdViewController;->v:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 394
    :goto_1
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/mopub/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;)Lcom/mopub/volley/RequestQueue;

    move-result-object v6

    .line 395
    new-instance v0, Lcom/mopub/volley/toolbox/JsonObjectRequest;

    iget-object v2, p0, Lcom/mopub/mobileads/AdViewController;->v:Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Lcom/mopub/mobileads/AdViewController$8;

    invoke-direct {v4, p0}, Lcom/mopub/mobileads/AdViewController$8;-><init>(Lcom/mopub/mobileads/AdViewController;)V

    new-instance v5, Lcom/mopub/mobileads/AdViewController$9;

    invoke-direct {v5, p0}, Lcom/mopub/mobileads/AdViewController$9;-><init>(Lcom/mopub/mobileads/AdViewController;)V

    invoke-direct/range {v0 .. v5}, Lcom/mopub/volley/toolbox/JsonObjectRequest;-><init>(ILjava/lang/String;Lorg/json/JSONObject;Lcom/mopub/volley/Response$Listener;Lcom/mopub/volley/Response$ErrorListener;)V

    .line 428
    invoke-virtual {v6, v0}, Lcom/mopub/volley/RequestQueue;->add(Lcom/mopub/volley/Request;)Lcom/mopub/volley/Request;

    .line 429
    return-void

    :cond_0
    move v0, v1

    .line 387
    goto :goto_0

    .line 391
    :catch_0
    move-exception v0

    .line 392
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad HB URL:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/mopub/mobileads/AdViewController;->v:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic b(Lcom/mopub/mobileads/AdViewController;Lcom/mopub/common/ClientMetadata;)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/AdViewController;->b(Lcom/mopub/common/ClientMetadata;)V

    return-void
.end method

.method private b(Z)V
    .locals 3

    .prologue
    .line 584
    iget-boolean v0, p0, Lcom/mopub/mobileads/AdViewController;->z:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/mopub/mobileads/AdViewController;->q:Z

    if-eq v0, p1, :cond_2

    const/4 v0, 0x1

    .line 586
    :goto_0
    if-eqz v0, :cond_0

    .line 587
    if-eqz p1, :cond_3

    const-string v0, "enabled"

    .line 588
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Refresh "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " for ad unit ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/AdViewController;->A:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 591
    :cond_0
    iput-boolean p1, p0, Lcom/mopub/mobileads/AdViewController;->q:Z

    .line 592
    iget-boolean v0, p0, Lcom/mopub/mobileads/AdViewController;->z:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/mopub/mobileads/AdViewController;->q:Z

    if-eqz v0, :cond_4

    .line 593
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->j()V

    .line 597
    :cond_1
    :goto_2
    return-void

    .line 584
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 587
    :cond_3
    const-string v0, "disabled"

    goto :goto_1

    .line 594
    :cond_4
    iget-boolean v0, p0, Lcom/mopub/mobileads/AdViewController;->q:Z

    if-nez v0, :cond_1

    .line 595
    invoke-direct {p0}, Lcom/mopub/mobileads/AdViewController;->n()V

    goto :goto_2
.end method

.method private static b(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 137
    sget-object v0, Lcom/mopub/mobileads/AdViewController;->c:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Lcom/mopub/mobileads/AdViewController;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->e:Landroid/content/Context;

    return-object v0
.end method

.method private c(Landroid/view/View;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 774
    .line 776
    iget-object v1, p0, Lcom/mopub/mobileads/AdViewController;->h:Lcom/mopub/network/AdResponse;

    if-eqz v1, :cond_1

    .line 777
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->h:Lcom/mopub/network/AdResponse;

    invoke-virtual {v0}, Lcom/mopub/network/AdResponse;->getWidth()Ljava/lang/Integer;

    move-result-object v1

    .line 778
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->h:Lcom/mopub/network/AdResponse;

    invoke-virtual {v0}, Lcom/mopub/network/AdResponse;->getHeight()Ljava/lang/Integer;

    move-result-object v0

    .line 781
    :goto_0
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/mopub/mobileads/AdViewController;->b(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_0

    .line 782
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/mopub/mobileads/AdViewController;->e:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/mopub/common/util/Dips;->asIntPixels(FLandroid/content/Context;)I

    move-result v1

    .line 783
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, Lcom/mopub/mobileads/AdViewController;->e:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/mopub/common/util/Dips;->asIntPixels(FLandroid/content/Context;)I

    move-result v2

    .line 785
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x11

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 787
    :goto_1
    return-object v0

    :cond_0
    sget-object v0, Lcom/mopub/mobileads/AdViewController;->b:Landroid/widget/FrameLayout$LayoutParams;

    goto :goto_1

    :cond_1
    move-object v1, v0

    goto :goto_0
.end method

.method static synthetic d(Lcom/mopub/mobileads/AdViewController;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->u:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/mopub/mobileads/AdViewController;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->v:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/mopub/mobileads/AdViewController;)Z
    .locals 1

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/mopub/mobileads/AdViewController;->w:Z

    return v0
.end method

.method static synthetic g(Lcom/mopub/mobileads/AdViewController;)Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->s:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic h(Lcom/mopub/mobileads/AdViewController;)Lcom/mopub/mobileads/MoPubView;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->f:Lcom/mopub/mobileads/MoPubView;

    return-object v0
.end method

.method private l()V
    .locals 7

    .prologue
    .line 291
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/mopub/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;)Lcom/mopub/volley/RequestQueue;

    move-result-object v6

    .line 292
    new-instance v0, Lcom/mopub/volley/toolbox/JsonObjectRequest;

    const/4 v1, 0x0

    const-string v2, "http://mpc.cmcm.com/conf"

    const/4 v3, 0x0

    new-instance v4, Lcom/mopub/mobileads/AdViewController$4;

    invoke-direct {v4, p0}, Lcom/mopub/mobileads/AdViewController$4;-><init>(Lcom/mopub/mobileads/AdViewController;)V

    new-instance v5, Lcom/mopub/mobileads/AdViewController$5;

    invoke-direct {v5, p0}, Lcom/mopub/mobileads/AdViewController$5;-><init>(Lcom/mopub/mobileads/AdViewController;)V

    invoke-direct/range {v0 .. v5}, Lcom/mopub/volley/toolbox/JsonObjectRequest;-><init>(ILjava/lang/String;Lorg/json/JSONObject;Lcom/mopub/volley/Response$Listener;Lcom/mopub/volley/Response$ErrorListener;)V

    .line 327
    invoke-virtual {v6, v0}, Lcom/mopub/volley/RequestQueue;->add(Lcom/mopub/volley/Request;)Lcom/mopub/volley/Request;

    .line 328
    return-void
.end method

.method private m()V
    .locals 1

    .prologue
    .line 433
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mopub/mobileads/AdViewController;->z:Z

    .line 434
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->A:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 435
    const-string v0, "Can\'t load an ad in this ad view because the ad unit ID is not set. Did you forget to call setAdUnitId()?"

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 448
    :goto_0
    return-void

    .line 440
    :cond_0
    invoke-direct {p0}, Lcom/mopub/mobileads/AdViewController;->o()Z

    move-result v0

    if-nez v0, :cond_1

    .line 441
    const-string v0, "Can\'t load an ad because there is no network connectivity."

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 442
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->j()V

    goto :goto_0

    .line 446
    :cond_1
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->i()Ljava/lang/String;

    move-result-object v0

    .line 447
    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/AdViewController;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private n()V
    .locals 2

    .prologue
    .line 737
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->m:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mopub/mobileads/AdViewController;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 738
    return-void
.end method

.method private o()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 741
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->e:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 753
    :goto_0
    return v2

    .line 745
    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->e:Landroid/content/Context;

    const-string v3, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {v0, v3}, Lcom/mopub/common/util/DeviceUtils;->isPermissionGranted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    move v2, v1

    .line 746
    goto :goto_0

    .line 750
    :cond_1
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->e:Landroid/content/Context;

    const-string v3, "connectivity"

    .line 751
    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 752
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    const/4 v0, 0x0

    .line 753
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    move v2, v0

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method public static setShouldHonorServerDimensions(Landroid/view/View;)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 133
    sget-object v0, Lcom/mopub/mobileads/AdViewController;->c:Ljava/util/WeakHashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    .prologue
    .line 498
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mopub/mobileads/AdViewController;->n:Z

    .line 499
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->C:Lcom/mopub/network/AdRequest;

    if-eqz v0, :cond_1

    .line 500
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->C:Lcom/mopub/network/AdRequest;

    invoke-virtual {v0}, Lcom/mopub/network/AdRequest;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 501
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->C:Lcom/mopub/network/AdRequest;

    invoke-virtual {v0}, Lcom/mopub/network/AdRequest;->cancel()V

    .line 503
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mopub/mobileads/AdViewController;->C:Lcom/mopub/network/AdRequest;

    .line 505
    :cond_1
    return-void
.end method

.method a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 760
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->m:Landroid/os/Handler;

    new-instance v1, Lcom/mopub/mobileads/AdViewController$10;

    invoke-direct {v1, p0, p1}, Lcom/mopub/mobileads/AdViewController$10;-><init>(Lcom/mopub/mobileads/AdViewController;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 771
    return-void
.end method

.method a(Lcom/mopub/mobileads/MoPubView;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p1    # Lcom/mopub/mobileads/MoPubView;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mopub/mobileads/MoPubView;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 219
    invoke-static {p3}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 221
    if-nez p1, :cond_0

    .line 222
    const-string v0, "Can\'t load an ad in this ad view because it was destroyed."

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 227
    :goto_0
    return-void

    .line 226
    :cond_0
    invoke-virtual {p1, p2, p3}, Lcom/mopub/mobileads/MoPubView;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method a(Lcom/mopub/network/AdResponse;)V
    .locals 3
    .param p1    # Lcom/mopub/network/AdResponse;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    .line 175
    const/4 v0, 0x1

    iput v0, p0, Lcom/mopub/mobileads/AdViewController;->a:I

    .line 176
    iput-object p1, p0, Lcom/mopub/mobileads/AdViewController;->h:Lcom/mopub/network/AdResponse;

    .line 177
    invoke-virtual {p1}, Lcom/mopub/network/AdResponse;->getCustomEventClassName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mobileads/AdViewController;->i:Ljava/lang/String;

    .line 179
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->h:Lcom/mopub/network/AdResponse;

    invoke-virtual {v0}, Lcom/mopub/network/AdResponse;->getAdTimeoutMillis()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/mopub/mobileads/AdViewController;->B:I

    .line 181
    :goto_0
    iput v0, p0, Lcom/mopub/mobileads/AdViewController;->B:I

    .line 182
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->h:Lcom/mopub/network/AdResponse;

    invoke-virtual {v0}, Lcom/mopub/network/AdResponse;->getRefreshTimeMillis()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mobileads/AdViewController;->D:Ljava/lang/Integer;

    .line 183
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->a()V

    .line 185
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->f:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {p1}, Lcom/mopub/network/AdResponse;->getCustomEventClassName()Ljava/lang/String;

    move-result-object v1

    .line 186
    invoke-virtual {p1}, Lcom/mopub/network/AdResponse;->getServerExtras()Ljava/util/Map;

    move-result-object v2

    .line 185
    invoke-virtual {p0, v0, v1, v2}, Lcom/mopub/mobileads/AdViewController;->a(Lcom/mopub/mobileads/MoPubView;Ljava/lang/String;Ljava/util/Map;)V

    .line 188
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->j()V

    .line 189
    return-void

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->h:Lcom/mopub/network/AdResponse;

    .line 181
    invoke-virtual {v0}, Lcom/mopub/network/AdResponse;->getAdTimeoutMillis()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method a(Lcom/mopub/volley/VolleyError;)V
    .locals 2
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    .line 193
    instance-of v0, p1, Lcom/mopub/network/MoPubNetworkError;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 200
    check-cast v0, Lcom/mopub/network/MoPubNetworkError;

    .line 201
    invoke-virtual {v0}, Lcom/mopub/network/MoPubNetworkError;->getRefreshTimeMillis()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 202
    invoke-virtual {v0}, Lcom/mopub/network/MoPubNetworkError;->getRefreshTimeMillis()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mobileads/AdViewController;->D:Ljava/lang/Integer;

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->e:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/mopub/mobileads/AdViewController;->a(Lcom/mopub/volley/VolleyError;Landroid/content/Context;)Lcom/mopub/mobileads/MoPubErrorCode;

    move-result-object v0

    .line 207
    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->SERVER_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    if-ne v0, v1, :cond_1

    .line 208
    iget v1, p0, Lcom/mopub/mobileads/AdViewController;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/mopub/mobileads/AdViewController;->a:I

    .line 211
    :cond_1
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->a()V

    .line 212
    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/AdViewController;->b(Lcom/mopub/mobileads/MoPubErrorCode;)V

    .line 213
    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 451
    if-nez p1, :cond_1

    .line 470
    :cond_0
    :goto_0
    return-void

    .line 455
    :cond_1
    const-string v0, "javascript:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 456
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Loading url: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 459
    :cond_2
    iget-boolean v0, p0, Lcom/mopub/mobileads/AdViewController;->n:Z

    if-eqz v0, :cond_3

    .line 460
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->A:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 461
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Already loading an ad for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/AdViewController;->A:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", wait to finish."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->i(Ljava/lang/String;)V

    goto :goto_0

    .line 466
    :cond_3
    iput-object p1, p0, Lcom/mopub/mobileads/AdViewController;->o:Ljava/lang/String;

    .line 467
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mopub/mobileads/AdViewController;->n:Z

    .line 469
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->o:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/AdViewController;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method a(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 722
    if-eqz p1, :cond_0

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0, p1}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    :goto_0
    iput-object v0, p0, Lcom/mopub/mobileads/AdViewController;->p:Ljava/util/Map;

    .line 725
    return-void

    .line 722
    :cond_0
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    goto :goto_0
.end method

.method a(Z)V
    .locals 0

    .prologue
    .line 579
    iput-boolean p1, p0, Lcom/mopub/mobileads/AdViewController;->r:Z

    .line 580
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/AdViewController;->b(Z)V

    .line 581
    return-void
.end method

.method a(Lcom/mopub/mobileads/MoPubErrorCode;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 481
    iput-boolean v1, p0, Lcom/mopub/mobileads/AdViewController;->n:Z

    .line 483
    const-string v2, "MoPub"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MoPubErrorCode: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->h:Lcom/mopub/network/AdResponse;

    if-nez v0, :cond_1

    const-string v0, ""

    .line 486
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 487
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loading failover url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 488
    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/AdViewController;->a(Ljava/lang/String;)V

    .line 489
    const/4 v0, 0x1

    .line 493
    :goto_2
    return v0

    .line 483
    :cond_0
    invoke-virtual {p1}, Lcom/mopub/mobileads/MoPubErrorCode;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 485
    :cond_1
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->h:Lcom/mopub/network/AdResponse;

    invoke-virtual {v0}, Lcom/mopub/network/AdResponse;->getFailoverUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 492
    :cond_2
    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->NO_FILL:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/AdViewController;->b(Lcom/mopub/mobileads/MoPubErrorCode;)V

    move v0, v1

    .line 493
    goto :goto_2
.end method

.method b()V
    .locals 1

    .prologue
    .line 569
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mopub/mobileads/AdViewController;->b(Z)V

    .line 570
    return-void
.end method

.method b(Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 1

    .prologue
    .line 699
    const-string v0, "Ad failed to load."

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->i(Ljava/lang/String;)V

    .line 700
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->a()V

    .line 702
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->getMoPubView()Lcom/mopub/mobileads/MoPubView;

    move-result-object v0

    .line 703
    if-nez v0, :cond_0

    .line 709
    :goto_0
    return-void

    .line 707
    :cond_0
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->j()V

    .line 708
    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/MoPubView;->a(Lcom/mopub/mobileads/MoPubErrorCode;)V

    goto :goto_0
.end method

.method b(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 666
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->getMoPubView()Lcom/mopub/mobileads/MoPubView;

    move-result-object v1

    .line 667
    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->e:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 668
    :cond_0
    const-string v0, "Can\'t load an ad in this ad view because it was destroyed."

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 669
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->a()V

    .line 682
    :goto_0
    return-void

    .line 673
    :cond_1
    new-instance v0, Lcom/mopub/network/AdRequest;

    .line 674
    invoke-virtual {v1}, Lcom/mopub/mobileads/MoPubView;->getAdFormat()Lcom/mopub/common/AdFormat;

    move-result-object v2

    iget-object v3, p0, Lcom/mopub/mobileads/AdViewController;->A:Ljava/lang/String;

    iget-object v4, p0, Lcom/mopub/mobileads/AdViewController;->e:Landroid/content/Context;

    iget-object v5, p0, Lcom/mopub/mobileads/AdViewController;->k:Lcom/mopub/network/AdRequest$Listener;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/mopub/network/AdRequest;-><init>(Ljava/lang/String;Lcom/mopub/common/AdFormat;Ljava/lang/String;Landroid/content/Context;Lcom/mopub/network/AdRequest$Listener;)V

    .line 679
    iget-object v1, p0, Lcom/mopub/mobileads/AdViewController;->e:Landroid/content/Context;

    invoke-static {v1}, Lcom/mopub/network/Networking;->getRequestQueue(Landroid/content/Context;)Lcom/mopub/network/MoPubRequestQueue;

    move-result-object v1

    .line 680
    invoke-virtual {v1, v0}, Lcom/mopub/volley/RequestQueue;->add(Lcom/mopub/volley/Request;)Lcom/mopub/volley/Request;

    .line 681
    iput-object v0, p0, Lcom/mopub/mobileads/AdViewController;->C:Lcom/mopub/network/AdRequest;

    goto :goto_0
.end method

.method c()V
    .locals 1

    .prologue
    .line 573
    iget-boolean v0, p0, Lcom/mopub/mobileads/AdViewController;->r:Z

    if-eqz v0, :cond_0

    .line 574
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mopub/mobileads/AdViewController;->b(Z)V

    .line 576
    :cond_0
    return-void
.end method

.method d()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 623
    iget-boolean v0, p0, Lcom/mopub/mobileads/AdViewController;->l:Z

    if-eqz v0, :cond_0

    .line 644
    :goto_0
    return-void

    .line 627
    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->C:Lcom/mopub/network/AdRequest;

    if-eqz v0, :cond_1

    .line 628
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->C:Lcom/mopub/network/AdRequest;

    invoke-virtual {v0}, Lcom/mopub/network/AdRequest;->cancel()V

    .line 629
    iput-object v1, p0, Lcom/mopub/mobileads/AdViewController;->C:Lcom/mopub/network/AdRequest;

    .line 632
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mopub/mobileads/AdViewController;->b(Z)V

    .line 633
    invoke-direct {p0}, Lcom/mopub/mobileads/AdViewController;->n()V

    .line 638
    iput-object v1, p0, Lcom/mopub/mobileads/AdViewController;->f:Lcom/mopub/mobileads/MoPubView;

    .line 639
    iput-object v1, p0, Lcom/mopub/mobileads/AdViewController;->e:Landroid/content/Context;

    .line 640
    iput-object v1, p0, Lcom/mopub/mobileads/AdViewController;->g:Lcom/mopub/mobileads/WebViewAdUrlGenerator;

    .line 643
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mopub/mobileads/AdViewController;->l:Z

    goto :goto_0
.end method

.method e()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 647
    iget v0, p0, Lcom/mopub/mobileads/AdViewController;->B:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method f()V
    .locals 3

    .prologue
    .line 651
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->h:Lcom/mopub/network/AdResponse;

    if-eqz v0, :cond_0

    .line 652
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->h:Lcom/mopub/network/AdResponse;

    invoke-virtual {v0}, Lcom/mopub/network/AdResponse;->getImpressionTrackingUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/AdViewController;->e:Landroid/content/Context;

    sget-object v2, Lcom/mopub/common/event/BaseEvent$Name;->IMPRESSION_REQUEST:Lcom/mopub/common/event/BaseEvent$Name;

    invoke-static {v0, v1, v2}, Lcom/mopub/network/TrackingRequest;->makeTrackingHttpRequest(Ljava/lang/String;Landroid/content/Context;Lcom/mopub/common/event/BaseEvent$Name;)V

    .line 655
    :cond_0
    return-void
.end method

.method g()V
    .locals 3

    .prologue
    .line 658
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->h:Lcom/mopub/network/AdResponse;

    if-eqz v0, :cond_0

    .line 660
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->h:Lcom/mopub/network/AdResponse;

    invoke-virtual {v0}, Lcom/mopub/network/AdResponse;->getClickTrackingUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/AdViewController;->e:Landroid/content/Context;

    sget-object v2, Lcom/mopub/common/event/BaseEvent$Name;->CLICK_REQUEST:Lcom/mopub/common/event/BaseEvent$Name;

    invoke-static {v0, v1, v2}, Lcom/mopub/network/TrackingRequest;->makeTrackingHttpRequest(Ljava/lang/String;Landroid/content/Context;Lcom/mopub/common/event/BaseEvent$Name;)V

    .line 663
    :cond_0
    return-void
.end method

.method public getAdHeight()I
    .locals 1

    .prologue
    .line 549
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->h:Lcom/mopub/network/AdResponse;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->h:Lcom/mopub/network/AdResponse;

    invoke-virtual {v0}, Lcom/mopub/network/AdResponse;->getHeight()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 550
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->h:Lcom/mopub/network/AdResponse;

    invoke-virtual {v0}, Lcom/mopub/network/AdResponse;->getHeight()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 553
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAdReport()Lcom/mopub/common/AdReport;
    .locals 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 601
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->A:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->h:Lcom/mopub/network/AdResponse;

    if-eqz v0, :cond_0

    .line 602
    new-instance v0, Lcom/mopub/common/AdReport;

    iget-object v1, p0, Lcom/mopub/mobileads/AdViewController;->A:Ljava/lang/String;

    iget-object v2, p0, Lcom/mopub/mobileads/AdViewController;->e:Landroid/content/Context;

    invoke-static {v2}, Lcom/mopub/common/ClientMetadata;->getInstance(Landroid/content/Context;)Lcom/mopub/common/ClientMetadata;

    move-result-object v2

    iget-object v3, p0, Lcom/mopub/mobileads/AdViewController;->h:Lcom/mopub/network/AdResponse;

    invoke-direct {v0, v1, v2, v3}, Lcom/mopub/common/AdReport;-><init>(Ljava/lang/String;Lcom/mopub/common/ClientMetadata;Lcom/mopub/network/AdResponse;)V

    .line 604
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAdUnitId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 524
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->A:Ljava/lang/String;

    return-object v0
.end method

.method public getAdWidth()I
    .locals 1

    .prologue
    .line 541
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->h:Lcom/mopub/network/AdResponse;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->h:Lcom/mopub/network/AdResponse;

    invoke-virtual {v0}, Lcom/mopub/network/AdResponse;->getWidth()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 542
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->h:Lcom/mopub/network/AdResponse;

    invoke-virtual {v0}, Lcom/mopub/network/AdResponse;->getWidth()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 545
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAutorefreshEnabled()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 561
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->getCurrentAutoRefreshStatus()Z

    move-result v0

    return v0
.end method

.method public getBroadcastIdentifier()J
    .locals 2

    .prologue
    .line 537
    iget-wide v0, p0, Lcom/mopub/mobileads/AdViewController;->d:J

    return-wide v0
.end method

.method public getCurrentAutoRefreshStatus()Z
    .locals 1

    .prologue
    .line 565
    iget-boolean v0, p0, Lcom/mopub/mobileads/AdViewController;->q:Z

    return v0
.end method

.method public getCustomEventClassName()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 529
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getKeywords()Ljava/lang/String;
    .locals 1

    .prologue
    .line 508
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->t:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 1

    .prologue
    .line 516
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->x:Landroid/location/Location;

    return-object v0
.end method

.method public getMoPubView()Lcom/mopub/mobileads/MoPubView;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 263
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->f:Lcom/mopub/mobileads/MoPubView;

    return-object v0
.end method

.method public getTesting()Z
    .locals 1

    .prologue
    .line 608
    iget-boolean v0, p0, Lcom/mopub/mobileads/AdViewController;->y:Z

    return v0
.end method

.method h()V
    .locals 0

    .prologue
    .line 685
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->a()V

    .line 686
    nop

    nop

    nop

    .line 687
    return-void
.end method

.method i()Ljava/lang/String;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 691
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->g:Lcom/mopub/mobileads/WebViewAdUrlGenerator;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->g:Lcom/mopub/mobileads/WebViewAdUrlGenerator;

    iget-object v1, p0, Lcom/mopub/mobileads/AdViewController;->A:Ljava/lang/String;

    .line 692
    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/WebViewAdUrlGenerator;->withAdUnitId(Ljava/lang/String;)Lcom/mopub/common/AdUrlGenerator;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/AdViewController;->t:Ljava/lang/String;

    .line 693
    invoke-virtual {v0, v1}, Lcom/mopub/common/AdUrlGenerator;->withKeywords(Ljava/lang/String;)Lcom/mopub/common/AdUrlGenerator;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/AdViewController;->x:Landroid/location/Location;

    .line 694
    invoke-virtual {v0, v1}, Lcom/mopub/common/AdUrlGenerator;->withLocation(Landroid/location/Location;)Lcom/mopub/common/AdUrlGenerator;

    move-result-object v0

    const-string v1, "ads.mopub.com"

    .line 695
    invoke-virtual {v0, v1}, Lcom/mopub/common/AdUrlGenerator;->generateUrlString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method j()V
    .locals 10

    .prologue
    .line 712
    invoke-direct {p0}, Lcom/mopub/mobileads/AdViewController;->n()V

    .line 713
    iget-boolean v0, p0, Lcom/mopub/mobileads/AdViewController;->q:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->D:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->D:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    .line 715
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->m:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mopub/mobileads/AdViewController;->j:Ljava/lang/Runnable;

    const-wide/32 v2, 0x927c0

    iget-object v4, p0, Lcom/mopub/mobileads/AdViewController;->D:Ljava/lang/Integer;

    .line 717
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v4, v4

    const-wide/high16 v6, 0x3ff8000000000000L    # 1.5

    iget v8, p0, Lcom/mopub/mobileads/AdViewController;->a:I

    int-to-double v8, v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-long v6, v6

    mul-long/2addr v4, v6

    .line 716
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 715
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 719
    :cond_0
    return-void
.end method

.method k()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 731
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->p:Ljava/util/Map;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/TreeMap;

    iget-object v1, p0, Lcom/mopub/mobileads/AdViewController;->p:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    goto :goto_0
.end method

.method public loadAd()V
    .locals 4

    .prologue
    .line 267
    const/4 v0, 0x1

    iput v0, p0, Lcom/mopub/mobileads/AdViewController;->a:I

    .line 268
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->f:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubView;->getAdFormat()Lcom/mopub/common/AdFormat;

    move-result-object v0

    sget-object v1, Lcom/mopub/common/AdFormat;->INTERSTITIAL:Lcom/mopub/common/AdFormat;

    if-ne v0, v1, :cond_2

    .line 269
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->s:Landroid/content/SharedPreferences;

    const-string v1, "expires"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 270
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-gez v0, :cond_1

    .line 271
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->s:Landroid/content/SharedPreferences;

    const-string v1, "hb_url"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mobileads/AdViewController;->v:Ljava/lang/String;

    .line 272
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->s:Landroid/content/SharedPreferences;

    const-string v1, "enable"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mopub/mobileads/AdViewController;->w:Z

    .line 273
    iget-boolean v0, p0, Lcom/mopub/mobileads/AdViewController;->w:Z

    if-eqz v0, :cond_0

    .line 274
    const-string v0, "MEnabled=true"

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 275
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/mopub/common/ClientMetadata;->getInstance(Landroid/content/Context;)Lcom/mopub/common/ClientMetadata;

    move-result-object v0

    .line 276
    invoke-direct {p0, v0}, Lcom/mopub/mobileads/AdViewController;->a(Lcom/mopub/common/ClientMetadata;)V

    .line 277
    invoke-direct {p0, v0}, Lcom/mopub/mobileads/AdViewController;->b(Lcom/mopub/common/ClientMetadata;)V

    .line 288
    :cond_0
    :goto_0
    return-void

    .line 280
    :cond_1
    const-string v0, "Load remote config"

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 281
    invoke-direct {p0}, Lcom/mopub/mobileads/AdViewController;->l()V

    goto :goto_0

    .line 285
    :cond_2
    const-string v0, "Not interstitial - calling internal loadAd"

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 286
    invoke-direct {p0}, Lcom/mopub/mobileads/AdViewController;->m()V

    goto :goto_0
.end method

.method public reload()V
    .locals 2

    .prologue
    .line 473
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reload ad: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/AdViewController;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 474
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->o:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/AdViewController;->a(Ljava/lang/String;)V

    .line 475
    return-void
.end method

.method public setAdUnitId(Ljava/lang/String;)V
    .locals 0
    .param p1, "adUnitId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 533
    iput-object p1, p0, Lcom/mopub/mobileads/AdViewController;->A:Ljava/lang/String;

    .line 534
    return-void
.end method

.method public setKeywords(Ljava/lang/String;)V
    .locals 0
    .param p1, "keywords"    # Ljava/lang/String;

    .prologue
    .line 512
    iput-object p1, p0, Lcom/mopub/mobileads/AdViewController;->t:Ljava/lang/String;

    .line 513
    return-void
.end method

.method public setLocation(Landroid/location/Location;)V
    .locals 0
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 520
    iput-object p1, p0, Lcom/mopub/mobileads/AdViewController;->x:Landroid/location/Location;

    .line 521
    return-void
.end method

.method public setTesting(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 612
    iput-boolean p1, p0, Lcom/mopub/mobileads/AdViewController;->y:Z

    .line 613
    return-void
.end method
