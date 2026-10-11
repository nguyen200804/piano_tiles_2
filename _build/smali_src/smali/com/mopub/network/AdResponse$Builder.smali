.class public Lcom/mopub/network/AdResponse$Builder;
.super Ljava/lang/Object;
.source "AdResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/network/AdResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private A:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/Integer;

.field private j:Z

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/Integer;

.field private q:Ljava/lang/Integer;

.field private r:Ljava/lang/Integer;

.field private s:Ljava/lang/Integer;

.field private t:Ljava/lang/String;

.field private u:Z

.field private v:Ljava/lang/String;

.field private w:Lorg/json/JSONObject;

.field private x:Lcom/mopub/common/event/EventDetails;

.field private y:Ljava/lang/String;

.field private z:Lcom/mopub/common/MoPub$BrowserAgent;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 309
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mopub/network/AdResponse$Builder;->u:Z

    .line 318
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/mopub/network/AdResponse$Builder;->A:Ljava/util/Map;

    return-void
.end method

.method static synthetic A(Lcom/mopub/network/AdResponse$Builder;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/mopub/network/AdResponse$Builder;->A:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic a(Lcom/mopub/network/AdResponse$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/mopub/network/AdResponse$Builder;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/mopub/network/AdResponse$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/mopub/network/AdResponse$Builder;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/mopub/network/AdResponse$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/mopub/network/AdResponse$Builder;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/mopub/network/AdResponse$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/mopub/network/AdResponse$Builder;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/mopub/network/AdResponse$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/mopub/network/AdResponse$Builder;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/mopub/network/AdResponse$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/mopub/network/AdResponse$Builder;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/mopub/network/AdResponse$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/mopub/network/AdResponse$Builder;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lcom/mopub/network/AdResponse$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/mopub/network/AdResponse$Builder;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lcom/mopub/network/AdResponse$Builder;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/mopub/network/AdResponse$Builder;->i:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic j(Lcom/mopub/network/AdResponse$Builder;)Z
    .locals 1

    .prologue
    .line 284
    iget-boolean v0, p0, Lcom/mopub/network/AdResponse$Builder;->j:Z

    return v0
.end method

.method static synthetic k(Lcom/mopub/network/AdResponse$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/mopub/network/AdResponse$Builder;->k:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic l(Lcom/mopub/network/AdResponse$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/mopub/network/AdResponse$Builder;->l:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic m(Lcom/mopub/network/AdResponse$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/mopub/network/AdResponse$Builder;->m:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic n(Lcom/mopub/network/AdResponse$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/mopub/network/AdResponse$Builder;->n:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic o(Lcom/mopub/network/AdResponse$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/mopub/network/AdResponse$Builder;->o:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic p(Lcom/mopub/network/AdResponse$Builder;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/mopub/network/AdResponse$Builder;->p:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic q(Lcom/mopub/network/AdResponse$Builder;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/mopub/network/AdResponse$Builder;->q:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic r(Lcom/mopub/network/AdResponse$Builder;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/mopub/network/AdResponse$Builder;->r:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic s(Lcom/mopub/network/AdResponse$Builder;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/mopub/network/AdResponse$Builder;->s:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic t(Lcom/mopub/network/AdResponse$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/mopub/network/AdResponse$Builder;->t:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic u(Lcom/mopub/network/AdResponse$Builder;)Z
    .locals 1

    .prologue
    .line 284
    iget-boolean v0, p0, Lcom/mopub/network/AdResponse$Builder;->u:Z

    return v0
.end method

.method static synthetic v(Lcom/mopub/network/AdResponse$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/mopub/network/AdResponse$Builder;->v:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic w(Lcom/mopub/network/AdResponse$Builder;)Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/mopub/network/AdResponse$Builder;->w:Lorg/json/JSONObject;

    return-object v0
.end method

.method static synthetic x(Lcom/mopub/network/AdResponse$Builder;)Lcom/mopub/common/event/EventDetails;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/mopub/network/AdResponse$Builder;->x:Lcom/mopub/common/event/EventDetails;

    return-object v0
.end method

.method static synthetic y(Lcom/mopub/network/AdResponse$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/mopub/network/AdResponse$Builder;->y:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic z(Lcom/mopub/network/AdResponse$Builder;)Lcom/mopub/common/MoPub$BrowserAgent;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/mopub/network/AdResponse$Builder;->z:Lcom/mopub/common/MoPub$BrowserAgent;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/mopub/network/AdResponse;
    .locals 2

    .prologue
    .line 460
    new-instance v0, Lcom/mopub/network/AdResponse;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mopub/network/AdResponse;-><init>(Lcom/mopub/network/AdResponse$Builder;Lcom/mopub/network/AdResponse$1;)V

    return-object v0
.end method

.method public setAdTimeoutDelayMilliseconds(Ljava/lang/Integer;)Lcom/mopub/network/AdResponse$Builder;
    .locals 0
    .param p1, "adTimeoutDelayMilliseconds"    # Ljava/lang/Integer;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 406
    iput-object p1, p0, Lcom/mopub/network/AdResponse$Builder;->r:Ljava/lang/Integer;

    .line 407
    return-object p0
.end method

.method public setAdType(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;
    .locals 0
    .param p1, "adType"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 321
    iput-object p1, p0, Lcom/mopub/network/AdResponse$Builder;->a:Ljava/lang/String;

    .line 322
    return-object p0
.end method

.method public setAdUnitId(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;
    .locals 0
    .param p1, "adUnitId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 326
    iput-object p1, p0, Lcom/mopub/network/AdResponse$Builder;->b:Ljava/lang/String;

    .line 327
    return-object p0
.end method

.method public setBrowserAgent(Lcom/mopub/common/MoPub$BrowserAgent;)Lcom/mopub/network/AdResponse$Builder;
    .locals 0
    .param p1, "browserAgent"    # Lcom/mopub/common/MoPub$BrowserAgent;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 446
    iput-object p1, p0, Lcom/mopub/network/AdResponse$Builder;->z:Lcom/mopub/common/MoPub$BrowserAgent;

    .line 447
    return-object p0
.end method

.method public setClickTrackingUrl(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;
    .locals 0
    .param p1, "clickTrackingUrl"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 379
    iput-object p1, p0, Lcom/mopub/network/AdResponse$Builder;->l:Ljava/lang/String;

    .line 380
    return-object p0
.end method

.method public setCustomEventClassName(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;
    .locals 0
    .param p1, "customEventClassName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 441
    iput-object p1, p0, Lcom/mopub/network/AdResponse$Builder;->y:Ljava/lang/String;

    .line 442
    return-object p0
.end method

.method public setDimensions(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/mopub/network/AdResponse$Builder;
    .locals 0
    .param p1, "width"    # Ljava/lang/Integer;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "height"    # Ljava/lang/Integer;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 400
    iput-object p1, p0, Lcom/mopub/network/AdResponse$Builder;->p:Ljava/lang/Integer;

    .line 401
    iput-object p2, p0, Lcom/mopub/network/AdResponse$Builder;->q:Ljava/lang/Integer;

    .line 402
    return-object p0
.end method

.method public setDspCreativeId(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;
    .locals 0
    .param p1, "dspCreativeId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 421
    iput-object p1, p0, Lcom/mopub/network/AdResponse$Builder;->t:Ljava/lang/String;

    .line 422
    return-object p0
.end method

.method public setEventDetails(Lcom/mopub/common/event/EventDetails;)Lcom/mopub/network/AdResponse$Builder;
    .locals 0
    .param p1, "eventDetails"    # Lcom/mopub/common/event/EventDetails;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 436
    iput-object p1, p0, Lcom/mopub/network/AdResponse$Builder;->x:Lcom/mopub/common/event/EventDetails;

    .line 437
    return-object p0
.end method

.method public setFailoverUrl(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;
    .locals 0
    .param p1, "failoverUrl"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 389
    iput-object p1, p0, Lcom/mopub/network/AdResponse$Builder;->n:Ljava/lang/String;

    .line 390
    return-object p0
.end method

.method public setFullAdType(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;
    .locals 0
    .param p1, "fullAdType"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 331
    iput-object p1, p0, Lcom/mopub/network/AdResponse$Builder;->c:Ljava/lang/String;

    .line 332
    return-object p0
.end method

.method public setImpressionTrackingUrl(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;
    .locals 0
    .param p1, "impressionTrackingUrl"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 384
    iput-object p1, p0, Lcom/mopub/network/AdResponse$Builder;->m:Ljava/lang/String;

    .line 385
    return-object p0
.end method

.method public setJsonBody(Lorg/json/JSONObject;)Lcom/mopub/network/AdResponse$Builder;
    .locals 0
    .param p1, "jsonBody"    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 431
    iput-object p1, p0, Lcom/mopub/network/AdResponse$Builder;->w:Lorg/json/JSONObject;

    .line 432
    return-object p0
.end method

.method public setNetworkType(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;
    .locals 0
    .param p1, "networkType"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 336
    iput-object p1, p0, Lcom/mopub/network/AdResponse$Builder;->d:Ljava/lang/String;

    .line 337
    return-object p0
.end method

.method public setRedirectUrl(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;
    .locals 0
    .param p1, "redirectUrl"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 374
    iput-object p1, p0, Lcom/mopub/network/AdResponse$Builder;->k:Ljava/lang/String;

    .line 375
    return-object p0
.end method

.method public setRefreshTimeMilliseconds(Ljava/lang/Integer;)Lcom/mopub/network/AdResponse$Builder;
    .locals 0
    .param p1, "refreshTimeMilliseconds"    # Ljava/lang/Integer;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 411
    iput-object p1, p0, Lcom/mopub/network/AdResponse$Builder;->s:Ljava/lang/Integer;

    .line 412
    return-object p0
.end method

.method public setRequestId(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;
    .locals 0
    .param p1, "requestId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 394
    iput-object p1, p0, Lcom/mopub/network/AdResponse$Builder;->o:Ljava/lang/String;

    .line 395
    return-object p0
.end method

.method public setResponseBody(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;
    .locals 0
    .param p1, "responseBody"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 426
    iput-object p1, p0, Lcom/mopub/network/AdResponse$Builder;->v:Ljava/lang/String;

    .line 427
    return-object p0
.end method

.method public setRewardedCurrencies(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;
    .locals 0
    .param p1, "rewardedCurrencies"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 353
    iput-object p1, p0, Lcom/mopub/network/AdResponse$Builder;->g:Ljava/lang/String;

    .line 354
    return-object p0
.end method

.method public setRewardedDuration(Ljava/lang/Integer;)Lcom/mopub/network/AdResponse$Builder;
    .locals 0
    .param p1, "rewardedDuration"    # Ljava/lang/Integer;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 364
    iput-object p1, p0, Lcom/mopub/network/AdResponse$Builder;->i:Ljava/lang/Integer;

    .line 365
    return-object p0
.end method

.method public setRewardedVideoCompletionUrl(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;
    .locals 0
    .param p1, "rewardedVideoCompletionUrl"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 359
    iput-object p1, p0, Lcom/mopub/network/AdResponse$Builder;->h:Ljava/lang/String;

    .line 360
    return-object p0
.end method

.method public setRewardedVideoCurrencyAmount(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;
    .locals 0
    .param p1, "rewardedVideoCurrencyAmount"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 348
    iput-object p1, p0, Lcom/mopub/network/AdResponse$Builder;->f:Ljava/lang/String;

    .line 349
    return-object p0
.end method

.method public setRewardedVideoCurrencyName(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;
    .locals 0
    .param p1, "rewardedVideoCurrencyName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 342
    iput-object p1, p0, Lcom/mopub/network/AdResponse$Builder;->e:Ljava/lang/String;

    .line 343
    return-object p0
.end method

.method public setScrollable(Ljava/lang/Boolean;)Lcom/mopub/network/AdResponse$Builder;
    .locals 1
    .param p1, "scrollable"    # Ljava/lang/Boolean;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 416
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/mopub/network/AdResponse$Builder;->u:Z

    :goto_0
    iput-boolean v0, p0, Lcom/mopub/network/AdResponse$Builder;->u:Z

    .line 417
    return-object p0

    .line 416
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public setServerExtras(Ljava/util/Map;)Lcom/mopub/network/AdResponse$Builder;
    .locals 1
    .param p1    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/mopub/network/AdResponse$Builder;"
        }
    .end annotation

    .prologue
    .line 451
    .local p1, "serverExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 452
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/mopub/network/AdResponse$Builder;->A:Ljava/util/Map;

    .line 456
    :goto_0
    return-object p0

    .line 454
    :cond_0
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0, p1}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/mopub/network/AdResponse$Builder;->A:Ljava/util/Map;

    goto :goto_0
.end method

.method public setShouldRewardOnClick(Z)Lcom/mopub/network/AdResponse$Builder;
    .locals 0
    .param p1, "shouldRewardOnClick"    # Z

    .prologue
    .line 369
    iput-boolean p1, p0, Lcom/mopub/network/AdResponse$Builder;->j:Z

    .line 370
    return-object p0
.end method
