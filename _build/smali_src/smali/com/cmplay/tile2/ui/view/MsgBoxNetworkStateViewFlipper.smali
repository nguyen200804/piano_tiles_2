.class public Lcom/cmplay/tile2/ui/view/MsgBoxNetworkStateViewFlipper;
.super Lcom/cmplay/tile2/ui/view/MsgBoxViewAnimator;
.source "MsgBoxNetworkStateViewFlipper.java"


# instance fields
.field private a:Lcom/cmplay/tile2/ui/view/NetStatReceiver;

.field private b:Lcom/cmplay/tile2/ui/view/b;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Lcom/cmplay/tile2/ui/view/LoadingView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/cmplay/tile2/ui/view/MsgBoxViewAnimator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    iput-object v0, p0, Lcom/cmplay/tile2/ui/view/MsgBoxNetworkStateViewFlipper;->a:Lcom/cmplay/tile2/ui/view/NetStatReceiver;

    .line 18
    iput-object v0, p0, Lcom/cmplay/tile2/ui/view/MsgBoxNetworkStateViewFlipper;->b:Lcom/cmplay/tile2/ui/view/b;

    .line 34
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030052

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 35
    invoke-direct {p0}, Lcom/cmplay/tile2/ui/view/MsgBoxNetworkStateViewFlipper;->f()V

    .line 36
    iget-object v0, p0, Lcom/cmplay/tile2/ui/view/MsgBoxNetworkStateViewFlipper;->c:Landroid/view/View;

    new-instance v1, Lcom/cmplay/tile2/ui/view/MsgBoxNetworkStateViewFlipper$1;

    invoke-direct {v1, p0}, Lcom/cmplay/tile2/ui/view/MsgBoxNetworkStateViewFlipper$1;-><init>(Lcom/cmplay/tile2/ui/view/MsgBoxNetworkStateViewFlipper;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    iget-object v0, p0, Lcom/cmplay/tile2/ui/view/MsgBoxNetworkStateViewFlipper;->d:Landroid/view/View;

    new-instance v1, Lcom/cmplay/tile2/ui/view/MsgBoxNetworkStateViewFlipper$2;

    invoke-direct {v1, p0}, Lcom/cmplay/tile2/ui/view/MsgBoxNetworkStateViewFlipper$2;-><init>(Lcom/cmplay/tile2/ui/view/MsgBoxNetworkStateViewFlipper;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    iget-object v0, p0, Lcom/cmplay/tile2/ui/view/MsgBoxNetworkStateViewFlipper;->e:Landroid/view/View;

    new-instance v1, Lcom/cmplay/tile2/ui/view/MsgBoxNetworkStateViewFlipper$3;

    invoke-direct {v1, p0}, Lcom/cmplay/tile2/ui/view/MsgBoxNetworkStateViewFlipper$3;-><init>(Lcom/cmplay/tile2/ui/view/MsgBoxNetworkStateViewFlipper;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    return-void
.end method

.method static synthetic a(Lcom/cmplay/tile2/ui/view/MsgBoxNetworkStateViewFlipper;)Z
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/cmplay/tile2/ui/view/MsgBoxNetworkStateViewFlipper;->o()Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/cmplay/tile2/ui/view/MsgBoxNetworkStateViewFlipper;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/cmplay/tile2/ui/view/MsgBoxNetworkStateViewFlipper;->n()V

    return-void
.end method

.method static synthetic c(Lcom/cmplay/tile2/ui/view/MsgBoxNetworkStateViewFlipper;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/cmplay/tile2/ui/view/MsgBoxNetworkStateViewFlipper;->k()V

    return-void
.end method

.method static synthetic d(Lcom/cmplay/tile2/ui/view/MsgBoxNetworkStateViewFlipper;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/cmplay/tile2/ui/view/MsgBoxNetworkStateViewFlipper;->m()V

    return-void
.end method

.method static synthetic e(Lcom/cmplay/tile2/ui/view/MsgBoxNetworkStateViewFlipper;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/cmplay/tile2/ui/view/MsgBoxNetworkStateViewFlipper;->h()V

    return-void
.end method

.method static synthetic f(Lcom/cmplay/tile2/ui/view/MsgBoxNetworkStateViewFlipper;)Lcom/cmplay/tile2/ui/view/b;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/cmplay/tile2/ui/view/MsgBoxNetworkStateViewFlipper;->b:Lcom/cmplay/tile2/ui/view/b;

    return-object v0
.end method

.method private f()V
    .locals 1

    .prologue
    .line 62
    const v0, 0x7f08009d

    invoke-virtual {p0, v0}, Lcom/cmplay/tile2/ui/view/MsgBoxNetworkStateViewFlipper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/cmplay/tile2/ui/view/MsgBoxNetworkStateViewFlipper;->c:Landroid/view/View;

    .line 63
    const v0, 0x7f08009e

    invoke-virtual {p0, v0}, Lcom/cmplay/tile2/ui/view/MsgBoxNetworkStateViewFlipper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/cmplay/tile2/ui/view/MsgBoxNetworkStateViewFlipper;->d:Landroid/view/View;

    .line 64
    const v0, 0x7f08009c

    invoke-virtual {p0, v0}, Lcom/cmplay/tile2/ui/view/MsgBoxNetworkStateViewFlipper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/cmplay/tile2/ui/view/MsgBoxNetworkStateViewFlipper;->e:Landroid/view/View;

    .line 65
    const v0, 0x7f080098

    invoke-virtual {p0, v0}, Lcom/cmplay/tile2/ui/view/MsgBoxNetworkStateViewFlipper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cmplay/tile2/ui/view/LoadingView;

    iput-object v0, p0, Lcom/cmplay/tile2/ui/view/MsgBoxNetworkStateViewFlipper;->f:Lcom/cmplay/tile2/ui/view/LoadingView;

    .line 66
    return-void
.end method

.method private g()V
    .locals 2

    .prologue
    .line 91
    new-instance v0, Lcom/cmplay/tile2/ui/view/NetStatReceiver;

    invoke-virtual {p0}, Lcom/cmplay/tile2/ui/view/MsgBoxNetworkStateViewFlipper;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/cmplay/tile2/ui/view/NetStatReceiver;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cmplay/tile2/ui/view/MsgBoxNetworkStateViewFlipper;->a:Lcom/cmplay/tile2/ui/view/NetStatReceiver;

    .line 92
    iget-object v0, p0, Lcom/cmplay/tile2/ui/view/MsgBoxNetworkStateViewFlipper;->a:Lcom/cmplay/tile2/ui/view/NetStatReceiver;

    new-instance v1, Lcom/cmplay/tile2/ui/view/MsgBoxNetworkStateViewFlipper$4;

    invoke-direct {v1, p0}, Lcom/cmplay/tile2/ui/view/MsgBoxNetworkStateViewFlipper$4;-><init>(Lcom/cmplay/tile2/ui/view/MsgBoxNetworkStateViewFlipper;)V

    invoke-virtual {v0, v1}, Lcom/cmplay/tile2/ui/view/NetStatReceiver;->a(Lcom/cmplay/tile2/ui/view/NetStatReceiver$a;)V

    .line 123
    return-void
.end method

.method private h()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 126
    invoke-virtual {p0}, Lcom/cmplay/tile2/ui/view/MsgBoxNetworkStateViewFlipper;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmplay/tile2/ui/view/MsgBoxNetworkStateViewFlipper;->a:Lcom/cmplay/tile2/ui/view/NetStatReceiver;

    if-nez v0, :cond_1

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/cmplay/tile2/ui/view/MsgBoxNetworkStateViewFlipper;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/cmplay/tile2/ui/view/MsgBoxNetworkStateViewFlipper;->a:Lcom/cmplay/tile2/ui/view/NetStatReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    iput-object v2, p0, Lcom/cmplay/tile2/ui/view/MsgBoxNetworkStateViewFlipper;->a:Lcom/cmplay/tile2/ui/view/NetStatReceiver;

    goto :goto_0

    .line 131
    :catch_0
    move-exception v0

    .line 132
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 134
    iput-object v2, p0, Lcom/cmplay/tile2/ui/view/MsgBoxNetworkStateViewFlipper;->a:Lcom/cmplay/tile2/ui/view/NetStatReceiver;

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-object v2, p0, Lcom/cmplay/tile2/ui/view/MsgBoxNetworkStateViewFlipper;->a:Lcom/cmplay/tile2/ui/view/NetStatReceiver;

    throw v0
.end method

.method private i()Z
    .locals 2

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/cmplay/tile2/ui/view/MsgBoxNetworkStateViewFlipper;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 140
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    return v0
.end method

.method private j()V
    .locals 0

    .prologue
    .line 185
    invoke-virtual {p0}, Lcom/cmplay/tile2/ui/view/MsgBoxNetworkStateViewFlipper;->c()V

    .line 186
    return-void
.end method

.method private k()V
    .locals 0

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/cmplay/tile2/ui/view/MsgBoxNetworkStateViewFlipper;->b()V

    .line 190
    return-void
.end method

.method private l()V
    .locals 0

    .prologue
    .line 193
    invoke-virtual {p0}, Lcom/cmplay/tile2/ui/view/MsgBoxNetworkStateViewFlipper;->a()V

    .line 194
    return-void
.end method

.method private m()V
    .locals 0

    .prologue
    .line 197
    invoke-virtual {p0}, Lcom/cmplay/tile2/ui/view/MsgBoxNetworkStateViewFlipper;->d()V

    .line 198
    return-void
.end method

.method private n()V
    .locals 1

    .prologue
    .line 201
    invoke-virtual {p0}, Lcom/cmplay/tile2/ui/view/MsgBoxNetworkStateViewFlipper;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/cmplay/util/u;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    invoke-virtual {p0}, Lcom/cmplay/tile2/ui/view/MsgBoxNetworkStateViewFlipper;->d()V

    .line 203
    iget-object v0, p0, Lcom/cmplay/tile2/ui/view/MsgBoxNetworkStateViewFlipper;->b:Lcom/cmplay/tile2/ui/view/b;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/cmplay/tile2/ui/view/MsgBoxNetworkStateViewFlipper;->b:Lcom/cmplay/tile2/ui/view/b;

    invoke-interface {v0}, Lcom/cmplay/tile2/ui/view/b;->a()V

    .line 207
    :cond_0
    return-void
.end method

.method private o()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 210
    invoke-virtual {p0}, Lcom/cmplay/tile2/ui/view/MsgBoxNetworkStateViewFlipper;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 218
    :goto_0
    return v2

    .line 214
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIFI_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 215
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 216
    invoke-virtual {p0}, Lcom/cmplay/tile2/ui/view/MsgBoxNetworkStateViewFlipper;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method protected a()V
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/cmplay/tile2/ui/view/MsgBoxNetworkStateViewFlipper;->setDisplayedChild(I)V

    .line 145
    return-void
.end method

.method public a(Lcom/cmplay/tile2/ui/view/b;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/cmplay/tile2/ui/view/MsgBoxNetworkStateViewFlipper;->b:Lcom/cmplay/tile2/ui/view/b;

    .line 82
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/cmplay/tile2/ui/view/MsgBoxNetworkStateViewFlipper;->f:Lcom/cmplay/tile2/ui/view/LoadingView;

    invoke-virtual {v0, p1}, Lcom/cmplay/tile2/ui/view/LoadingView;->a(Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method protected b()V
    .locals 1

    .prologue
    .line 148
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/cmplay/tile2/ui/view/MsgBoxNetworkStateViewFlipper;->setDisplayedChild(I)V

    .line 149
    return-void
.end method

.method protected c()V
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/cmplay/tile2/ui/view/MsgBoxNetworkStateViewFlipper;->setDisplayedChild(I)V

    .line 153
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 156
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/cmplay/tile2/ui/view/MsgBoxNetworkStateViewFlipper;->setDisplayedChild(I)V

    .line 157
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/cmplay/tile2/ui/view/MsgBoxNetworkStateViewFlipper;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 182
    :goto_0
    return-void

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/cmplay/tile2/ui/view/MsgBoxNetworkStateViewFlipper;->a:Lcom/cmplay/tile2/ui/view/NetStatReceiver;

    if-nez v0, :cond_1

    .line 169
    invoke-direct {p0}, Lcom/cmplay/tile2/ui/view/MsgBoxNetworkStateViewFlipper;->g()V

    .line 172
    :cond_1
    invoke-virtual {p0}, Lcom/cmplay/tile2/ui/view/MsgBoxNetworkStateViewFlipper;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/cmplay/util/u;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 173
    invoke-direct {p0}, Lcom/cmplay/tile2/ui/view/MsgBoxNetworkStateViewFlipper;->j()V

    goto :goto_0

    .line 177
    :cond_2
    invoke-direct {p0}, Lcom/cmplay/tile2/ui/view/MsgBoxNetworkStateViewFlipper;->i()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 178
    invoke-direct {p0}, Lcom/cmplay/tile2/ui/view/MsgBoxNetworkStateViewFlipper;->l()V

    goto :goto_0

    .line 180
    :cond_3
    invoke-direct {p0}, Lcom/cmplay/tile2/ui/view/MsgBoxNetworkStateViewFlipper;->k()V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/cmplay/tile2/ui/view/MsgBoxNetworkStateViewFlipper;->h()V

    .line 87
    invoke-super {p0}, Lcom/cmplay/tile2/ui/view/MsgBoxViewAnimator;->onDetachedFromWindow()V

    .line 88
    return-void
.end method
