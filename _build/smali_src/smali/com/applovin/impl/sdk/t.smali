.class Lcom/applovin/impl/sdk/t;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

.field private final b:Lcom/applovin/impl/sdk/z;

.field private c:Landroid/app/Activity;

.field private d:Lcom/applovin/sdk/AppLovinAdDisplayListener;

.field private e:Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;

.field private f:Lcom/applovin/sdk/AppLovinAdClickListener;

.field private g:Lcom/applovin/sdk/AppLovinAdRewardListener;

.field private final h:Ljava/util/Timer;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/AppLovinSdkImpl;Lcom/applovin/impl/sdk/z;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Timer;

    const-string v1, "IncentivizedAdLauncher"

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/t;->h:Ljava/util/Timer;

    iput-object p1, p0, Lcom/applovin/impl/sdk/t;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    iput-object p2, p0, Lcom/applovin/impl/sdk/t;->b:Lcom/applovin/impl/sdk/z;

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/t;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/t;->c:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic b(Lcom/applovin/impl/sdk/t;)Lcom/applovin/impl/sdk/AppLovinSdkImpl;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/t;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    return-object v0
.end method

.method private b()V
    .locals 6

    iget-object v0, p0, Lcom/applovin/impl/sdk/t;->b:Lcom/applovin/impl/sdk/z;

    iget-object v1, p0, Lcom/applovin/impl/sdk/t;->c:Landroid/app/Activity;

    iget-object v2, p0, Lcom/applovin/impl/sdk/t;->g:Lcom/applovin/sdk/AppLovinAdRewardListener;

    iget-object v3, p0, Lcom/applovin/impl/sdk/t;->e:Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;

    iget-object v4, p0, Lcom/applovin/impl/sdk/t;->d:Lcom/applovin/sdk/AppLovinAdDisplayListener;

    iget-object v5, p0, Lcom/applovin/impl/sdk/t;->f:Lcom/applovin/sdk/AppLovinAdClickListener;

    invoke-virtual/range {v0 .. v5}, Lcom/applovin/impl/sdk/z;->b(Landroid/app/Activity;Lcom/applovin/sdk/AppLovinAdRewardListener;Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;Lcom/applovin/sdk/AppLovinAdDisplayListener;Lcom/applovin/sdk/AppLovinAdClickListener;)V

    return-void
.end method

.method static synthetic c(Lcom/applovin/impl/sdk/t;)V
    .locals 0

    invoke-direct {p0}, Lcom/applovin/impl/sdk/t;->b()V

    return-void
.end method

.method static synthetic d(Lcom/applovin/impl/sdk/t;)Ljava/util/Timer;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/t;->h:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic e(Lcom/applovin/impl/sdk/t;)Lcom/applovin/sdk/AppLovinAdRewardListener;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/t;->g:Lcom/applovin/sdk/AppLovinAdRewardListener;

    return-object v0
.end method

.method static synthetic f(Lcom/applovin/impl/sdk/t;)Lcom/applovin/impl/sdk/z;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/t;->b:Lcom/applovin/impl/sdk/z;

    return-object v0
.end method


# virtual methods
.method a()V
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/t;->c:Landroid/app/Activity;

    new-instance v1, Lcom/applovin/impl/sdk/u;

    invoke-direct {v1, p0}, Lcom/applovin/impl/sdk/u;-><init>(Lcom/applovin/impl/sdk/t;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/t;->c:Landroid/app/Activity;

    return-void
.end method

.method public a(Lcom/applovin/sdk/AppLovinAdClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/t;->f:Lcom/applovin/sdk/AppLovinAdClickListener;

    return-void
.end method

.method public a(Lcom/applovin/sdk/AppLovinAdDisplayListener;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/t;->d:Lcom/applovin/sdk/AppLovinAdDisplayListener;

    return-void
.end method

.method public a(Lcom/applovin/sdk/AppLovinAdRewardListener;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/t;->g:Lcom/applovin/sdk/AppLovinAdRewardListener;

    return-void
.end method

.method public a(Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/t;->e:Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;

    return-void
.end method
