.class public Lcom/cmplay/ad/h/a;
.super Lcom/cmplay/ad/b;
.source "ApplovinVideoADS.java"


# static fields
.field private static a:Lcom/cmplay/ad/h/a;


# instance fields
.field private b:Lcom/cmplay/ad/c;

.field private c:Lcom/applovin/adview/AppLovinIncentivizedInterstitial;

.field private d:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/cmplay/ad/b;-><init>()V

    .line 36
    const/4 v0, 0x1

    iput v0, p0, Lcom/cmplay/ad/h/a;->d:I

    .line 40
    return-void
.end method

.method static synthetic a(Lcom/cmplay/ad/h/a;)I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/cmplay/ad/h/a;->d:I

    return v0
.end method

.method static synthetic a(Lcom/cmplay/ad/h/a;I)I
    .locals 0

    .prologue
    .line 31
    iput p1, p0, Lcom/cmplay/ad/h/a;->d:I

    return p1
.end method

.method public static a()Lcom/cmplay/ad/h/a;
    .locals 2

    .prologue
    .line 43
    sget-object v0, Lcom/cmplay/ad/h/a;->a:Lcom/cmplay/ad/h/a;

    if-nez v0, :cond_1

    .line 44
    const-class v1, Lcom/cmplay/ad/h/a;

    monitor-enter v1

    .line 45
    :try_start_0
    sget-object v0, Lcom/cmplay/ad/h/a;->a:Lcom/cmplay/ad/h/a;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcom/cmplay/ad/h/a;

    invoke-direct {v0}, Lcom/cmplay/ad/h/a;-><init>()V

    sput-object v0, Lcom/cmplay/ad/h/a;->a:Lcom/cmplay/ad/h/a;

    .line 48
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    :cond_1
    sget-object v0, Lcom/cmplay/ad/h/a;->a:Lcom/cmplay/ad/h/a;

    return-object v0

    .line 48
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic b(Lcom/cmplay/ad/h/a;)Lcom/cmplay/ad/c;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/cmplay/ad/h/a;->b:Lcom/cmplay/ad/c;

    return-object v0
.end method

.method static synthetic c(Lcom/cmplay/ad/h/a;)Lcom/applovin/adview/AppLovinIncentivizedInterstitial;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/cmplay/ad/h/a;->c:Lcom/applovin/adview/AppLovinIncentivizedInterstitial;

    return-object v0
.end method


# virtual methods
.method public canShow(I)Z
    .locals 1
    .param p1, "reportFrom"    # I

    .prologue
    .line 76
    iget-object v0, p0, Lcom/cmplay/ad/h/a;->c:Lcom/applovin/adview/AppLovinIncentivizedInterstitial;

    if-nez v0, :cond_0

    .line 77
    invoke-static {}, Lcom/cmplay/tile2/ui/AppActivity;->c()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/adview/AppLovinIncentivizedInterstitial;->create(Landroid/content/Context;)Lcom/applovin/adview/AppLovinIncentivizedInterstitial;

    move-result-object v0

    iput-object v0, p0, Lcom/cmplay/ad/h/a;->c:Lcom/applovin/adview/AppLovinIncentivizedInterstitial;

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/cmplay/ad/h/a;->c:Lcom/applovin/adview/AppLovinIncentivizedInterstitial;

    invoke-virtual {v0}, Lcom/applovin/adview/AppLovinIncentivizedInterstitial;->isAdReadyToDisplay()Z

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/app/Activity;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v1, 0x1

    .line 55
    invoke-super {p0, p1}, Lcom/cmplay/ad/b;->onCreate(Landroid/app/Activity;)V

    .line 56
    invoke-static {p1}, Lcom/applovin/adview/AppLovinIncentivizedInterstitial;->create(Landroid/content/Context;)Lcom/applovin/adview/AppLovinIncentivizedInterstitial;

    move-result-object v0

    iput-object v0, p0, Lcom/cmplay/ad/h/a;->c:Lcom/applovin/adview/AppLovinIncentivizedInterstitial;

    .line 57
    iget-object v0, p0, Lcom/cmplay/ad/h/a;->c:Lcom/applovin/adview/AppLovinIncentivizedInterstitial;

    new-instance v2, Lcom/cmplay/ad/h/a$1;

    invoke-direct {v2, p0}, Lcom/cmplay/ad/h/a$1;-><init>(Lcom/cmplay/ad/h/a;)V

    invoke-virtual {v0, v2}, Lcom/applovin/adview/AppLovinIncentivizedInterstitial;->preload(Lcom/applovin/sdk/AppLovinAdLoadListener;)V

    .line 70
    iput v1, p0, Lcom/cmplay/ad/h/a;->d:I

    .line 71
    new-instance v0, Lcom/cmplay/util/c/a/e;

    invoke-direct {v0}, Lcom/cmplay/util/c/a/e;-><init>()V

    const/4 v2, 0x0

    iget v3, p0, Lcom/cmplay/ad/h/a;->d:I

    const/4 v4, 0x4

    sget v5, Lcom/cmplay/ad/a;->f:I

    invoke-virtual/range {v0 .. v5}, Lcom/cmplay/util/c/a/e;->a(IIIII)V

    .line 72
    return-void
.end method

.method public setListener(Lcom/cmplay/ad/c;)V
    .locals 0
    .param p1, "l"    # Lcom/cmplay/ad/c;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/cmplay/ad/h/a;->b:Lcom/cmplay/ad/c;

    .line 117
    return-void
.end method

.method public show(I)Z
    .locals 5
    .param p1, "reportFrom"    # I

    .prologue
    .line 85
    :try_start_0
    iget-object v0, p0, Lcom/cmplay/ad/h/a;->c:Lcom/applovin/adview/AppLovinIncentivizedInterstitial;

    invoke-static {}, Lcom/cmplay/tile2/ui/AppActivity;->c()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Lcom/cmplay/ad/h/a$2;

    invoke-direct {v3, p0}, Lcom/cmplay/ad/h/a$2;-><init>(Lcom/cmplay/ad/h/a;)V

    new-instance v4, Lcom/cmplay/ad/h/a$3;

    invoke-direct {v4, p0}, Lcom/cmplay/ad/h/a$3;-><init>(Lcom/cmplay/ad/h/a;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/applovin/adview/AppLovinIncentivizedInterstitial;->show(Landroid/app/Activity;Lcom/applovin/sdk/AppLovinAdRewardListener;Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;Lcom/applovin/sdk/AppLovinAdDisplayListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 110
    :catch_0
    move-exception v0

    goto :goto_0
.end method
