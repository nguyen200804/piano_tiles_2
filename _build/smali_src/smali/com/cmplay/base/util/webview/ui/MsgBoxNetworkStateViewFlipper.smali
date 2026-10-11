.class public Lcom/cmplay/base/util/webview/ui/MsgBoxNetworkStateViewFlipper;
.super Lcom/cmplay/base/util/webview/ui/MsgBoxViewAnimator;
.source "MsgBoxNetworkStateViewFlipper.java"


# static fields
.field private static final LAYOUT_SHOW_NO_NET_CHOOSE_WIFI:I = 0x1

.field private static final LAYOUT_SHOW_NO_NET_OPEN_WIFI:I = 0x2

.field private static final LAYOUT_SHOW_NO_WAITING:I = 0x4

.field private static final LAYOUT_SHOW_RETYR:I = 0x3

.field private static final LAYOUT_SHOW_WAITING:I


# instance fields
.field private mBtnChooseNetwork:Landroid/view/View;

.field private mBtnOpenWifi:Landroid/view/View;

.field private mBtnRetry:Landroid/view/View;

.field private mLoadingView:Lcom/cmplay/base/util/webview/ui/LoadingView;

.field private mRequestLoad:Lcom/cmplay/base/util/webview/ui/IRequestLoad;

.field private mWifiReceiver:Lcom/cmplay/base/util/webview/util/NetStatReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/cmplay/base/util/webview/ui/MsgBoxViewAnimator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    iput-object v0, p0, Lcom/cmplay/base/util/webview/ui/MsgBoxNetworkStateViewFlipper;->mWifiReceiver:Lcom/cmplay/base/util/webview/util/NetStatReceiver;

    .line 21
    iput-object v0, p0, Lcom/cmplay/base/util/webview/ui/MsgBoxNetworkStateViewFlipper;->mRequestLoad:Lcom/cmplay/base/util/webview/ui/IRequestLoad;

    .line 37
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/cmplay/base/util/R$layout;->com_cmplay_message_tag_network_viewflip_layout:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 38
    invoke-direct {p0}, Lcom/cmplay/base/util/webview/ui/MsgBoxNetworkStateViewFlipper;->initView()V

    .line 39
    iget-object v0, p0, Lcom/cmplay/base/util/webview/ui/MsgBoxNetworkStateViewFlipper;->mBtnOpenWifi:Landroid/view/View;

    new-instance v1, Lcom/cmplay/base/util/webview/ui/MsgBoxNetworkStateViewFlipper$1;

    invoke-direct {v1, p0}, Lcom/cmplay/base/util/webview/ui/MsgBoxNetworkStateViewFlipper$1;-><init>(Lcom/cmplay/base/util/webview/ui/MsgBoxNetworkStateViewFlipper;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    iget-object v0, p0, Lcom/cmplay/base/util/webview/ui/MsgBoxNetworkStateViewFlipper;->mBtnRetry:Landroid/view/View;

    new-instance v1, Lcom/cmplay/base/util/webview/ui/MsgBoxNetworkStateViewFlipper$2;

    invoke-direct {v1, p0}, Lcom/cmplay/base/util/webview/ui/MsgBoxNetworkStateViewFlipper$2;-><init>(Lcom/cmplay/base/util/webview/ui/MsgBoxNetworkStateViewFlipper;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    iget-object v0, p0, Lcom/cmplay/base/util/webview/ui/MsgBoxNetworkStateViewFlipper;->mBtnChooseNetwork:Landroid/view/View;

    new-instance v1, Lcom/cmplay/base/util/webview/ui/MsgBoxNetworkStateViewFlipper$3;

    invoke-direct {v1, p0}, Lcom/cmplay/base/util/webview/ui/MsgBoxNetworkStateViewFlipper$3;-><init>(Lcom/cmplay/base/util/webview/ui/MsgBoxNetworkStateViewFlipper;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    return-void
.end method

.method static synthetic access$000(Lcom/cmplay/base/util/webview/ui/MsgBoxNetworkStateViewFlipper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/cmplay/base/util/webview/ui/MsgBoxNetworkStateViewFlipper;

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/cmplay/base/util/webview/ui/MsgBoxNetworkStateViewFlipper;->onChooseNetwork()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/cmplay/base/util/webview/ui/MsgBoxNetworkStateViewFlipper;)V
    .locals 0
    .param p0, "x0"    # Lcom/cmplay/base/util/webview/ui/MsgBoxNetworkStateViewFlipper;

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/cmplay/base/util/webview/ui/MsgBoxNetworkStateViewFlipper;->onRetry()V

    return-void
.end method

.method static synthetic access$200(Lcom/cmplay/base/util/webview/ui/MsgBoxNetworkStateViewFlipper;)V
    .locals 0
    .param p0, "x0"    # Lcom/cmplay/base/util/webview/ui/MsgBoxNetworkStateViewFlipper;

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/cmplay/base/util/webview/ui/MsgBoxNetworkStateViewFlipper;->chooseWifiView()V

    return-void
.end method

.method static synthetic access$300(Lcom/cmplay/base/util/webview/ui/MsgBoxNetworkStateViewFlipper;)V
    .locals 0
    .param p0, "x0"    # Lcom/cmplay/base/util/webview/ui/MsgBoxNetworkStateViewFlipper;

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/cmplay/base/util/webview/ui/MsgBoxNetworkStateViewFlipper;->openWifiView()V

    return-void
.end method

.method static synthetic access$400(Lcom/cmplay/base/util/webview/ui/MsgBoxNetworkStateViewFlipper;)V
    .locals 0
    .param p0, "x0"    # Lcom/cmplay/base/util/webview/ui/MsgBoxNetworkStateViewFlipper;

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/cmplay/base/util/webview/ui/MsgBoxNetworkStateViewFlipper;->loadingView()V

    return-void
.end method

.method static synthetic access$500(Lcom/cmplay/base/util/webview/ui/MsgBoxNetworkStateViewFlipper;)V
    .locals 0
    .param p0, "x0"    # Lcom/cmplay/base/util/webview/ui/MsgBoxNetworkStateViewFlipper;

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/cmplay/base/util/webview/ui/MsgBoxNetworkStateViewFlipper;->unregistNetReceiver()V

    return-void
.end method

.method static synthetic access$600(Lcom/cmplay/base/util/webview/ui/MsgBoxNetworkStateViewFlipper;)Lcom/cmplay/base/util/webview/ui/IRequestLoad;
    .locals 1
    .param p0, "x0"    # Lcom/cmplay/base/util/webview/ui/MsgBoxNetworkStateViewFlipper;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/cmplay/base/util/webview/ui/MsgBoxNetworkStateViewFlipper;->mRequestLoad:Lcom/cmplay/base/util/webview/ui/IRequestLoad;

    return-object v0
.end method

.method private chooseWifiView()V
    .locals 0

    .prologue
    .line 197
    invoke-virtual {p0}, Lcom/cmplay/base/util/webview/ui/MsgBoxNetworkStateViewFlipper;->toNoNetModeChooseWifi()V

    .line 198
    return-void
.end method

.method private getWifiEnabled()Z
    .locals 2

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/cmplay/base/util/webview/ui/MsgBoxNetworkStateViewFlipper;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 144
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    return v0
.end method

.method private initView()V
    .locals 1

    .prologue
    .line 65
    sget v0, Lcom/cmplay/base/util/R$id;->btn_open_wifi:I

    invoke-virtual {p0, v0}, Lcom/cmplay/base/util/webview/ui/MsgBoxNetworkStateViewFlipper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/cmplay/base/util/webview/ui/MsgBoxNetworkStateViewFlipper;->mBtnOpenWifi:Landroid/view/View;

    .line 66
    sget v0, Lcom/cmplay/base/util/R$id;->btn_retry:I

    invoke-virtual {p0, v0}, Lcom/cmplay/base/util/webview/ui/MsgBoxNetworkStateViewFlipper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/cmplay/base/util/webview/ui/MsgBoxNetworkStateViewFlipper;->mBtnRetry:Landroid/view/View;

    .line 67
    sget v0, Lcom/cmplay/base/util/R$id;->btn_choose_network:I

    invoke-virtual {p0, v0}, Lcom/cmplay/base/util/webview/ui/MsgBoxNetworkStateViewFlipper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/cmplay/base/util/webview/ui/MsgBoxNetworkStateViewFlipper;->mBtnChooseNetwork:Landroid/view/View;

    .line 68
    sget v0, Lcom/cmplay/base/util/R$id;->loading_view:I

    invoke-virtual {p0, v0}, Lcom/cmplay/base/util/webview/ui/MsgBoxNetworkStateViewFlipper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cmplay/base/util/webview/ui/LoadingView;

    iput-object v0, p0, Lcom/cmplay/base/util/webview/ui/MsgBoxNetworkStateViewFlipper;->mLoadingView:Lcom/cmplay/base/util/webview/ui/LoadingView;

    .line 69
    return-void
.end method

.method private loadingView()V
    .locals 0

    .prologue
    .line 201
    invoke-virtual {p0}, Lcom/cmplay/base/util/webview/ui/MsgBoxNetworkStateViewFlipper;->toLoadingMode()V

    .line 202
    return-void
.end method

.method private onChooseNetwork()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 214
    invoke-virtual {p0}, Lcom/cmplay/base/util/webview/ui/MsgBoxNetworkStateViewFlipper;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 222
    :goto_0
    return v2

    .line 218
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIFI_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 219
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 220
    invoke-virtual {p0}, Lcom/cmplay/base/util/webview/ui/MsgBoxNetworkStateViewFlipper;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private onRetry()V
    .locals 1

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/cmplay/base/util/webview/ui/MsgBoxNetworkStateViewFlipper;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/cmplay/base/util/m;->f(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    invoke-virtual {p0}, Lcom/cmplay/base/util/webview/ui/MsgBoxNetworkStateViewFlipper;->toLoadingMode()V

    .line 207
    iget-object v0, p0, Lcom/cmplay/base/util/webview/ui/MsgBoxNetworkStateViewFlipper;->mRequestLoad:Lcom/cmplay/base/util/webview/ui/IRequestLoad;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/cmplay/base/util/webview/ui/MsgBoxNetworkStateViewFlipper;->mRequestLoad:Lcom/cmplay/base/util/webview/ui/IRequestLoad;

    invoke-interface {v0}, Lcom/cmplay/base/util/webview/ui/IRequestLoad;->load()V

    .line 211
    :cond_0
    return-void
.end method

.method private openWifiView()V
    .locals 0

    .prologue
    .line 193
    invoke-virtual {p0}, Lcom/cmplay/base/util/webview/ui/MsgBoxNetworkStateViewFlipper;->toNoNetModeOpenWifi()V

    .line 194
    return-void
.end method

.method private registNetReceiver()V
    .locals 2

    .prologue
    .line 94
    new-instance v0, Lcom/cmplay/base/util/webview/util/NetStatReceiver;

    invoke-virtual {p0}, Lcom/cmplay/base/util/webview/ui/MsgBoxNetworkStateViewFlipper;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/cmplay/base/util/webview/util/NetStatReceiver;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cmplay/base/util/webview/ui/MsgBoxNetworkStateViewFlipper;->mWifiReceiver:Lcom/cmplay/base/util/webview/util/NetStatReceiver;

    .line 95
    iget-object v0, p0, Lcom/cmplay/base/util/webview/ui/MsgBoxNetworkStateViewFlipper;->mWifiReceiver:Lcom/cmplay/base/util/webview/util/NetStatReceiver;

    new-instance v1, Lcom/cmplay/base/util/webview/ui/MsgBoxNetworkStateViewFlipper$4;

    invoke-direct {v1, p0}, Lcom/cmplay/base/util/webview/ui/MsgBoxNetworkStateViewFlipper$4;-><init>(Lcom/cmplay/base/util/webview/ui/MsgBoxNetworkStateViewFlipper;)V

    invoke-virtual {v0, v1}, Lcom/cmplay/base/util/webview/util/NetStatReceiver;->setOnNetStatListener(Lcom/cmplay/base/util/webview/util/NetStatReceiver$OnNetStatListener;)V

    .line 126
    return-void
.end method

.method private retryView()V
    .locals 0

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/cmplay/base/util/webview/ui/MsgBoxNetworkStateViewFlipper;->toRetry()V

    .line 190
    return-void
.end method

.method private unregistNetReceiver()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 129
    invoke-virtual {p0}, Lcom/cmplay/base/util/webview/ui/MsgBoxNetworkStateViewFlipper;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmplay/base/util/webview/ui/MsgBoxNetworkStateViewFlipper;->mWifiReceiver:Lcom/cmplay/base/util/webview/util/NetStatReceiver;

    if-nez v0, :cond_1

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 133
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/cmplay/base/util/webview/ui/MsgBoxNetworkStateViewFlipper;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/cmplay/base/util/webview/ui/MsgBoxNetworkStateViewFlipper;->mWifiReceiver:Lcom/cmplay/base/util/webview/util/NetStatReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    iput-object v2, p0, Lcom/cmplay/base/util/webview/ui/MsgBoxNetworkStateViewFlipper;->mWifiReceiver:Lcom/cmplay/base/util/webview/util/NetStatReceiver;

    goto :goto_0

    .line 134
    :catch_0
    move-exception v0

    .line 135
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 137
    iput-object v2, p0, Lcom/cmplay/base/util/webview/ui/MsgBoxNetworkStateViewFlipper;->mWifiReceiver:Lcom/cmplay/base/util/webview/util/NetStatReceiver;

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-object v2, p0, Lcom/cmplay/base/util/webview/ui/MsgBoxNetworkStateViewFlipper;->mWifiReceiver:Lcom/cmplay/base/util/webview/util/NetStatReceiver;

    throw v0
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/cmplay/base/util/webview/ui/MsgBoxNetworkStateViewFlipper;->unregistNetReceiver()V

    .line 90
    invoke-super {p0}, Lcom/cmplay/base/util/webview/ui/MsgBoxViewAnimator;->onDetachedFromWindow()V

    .line 91
    return-void
.end method

.method public setLoadingText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/cmplay/base/util/webview/ui/MsgBoxNetworkStateViewFlipper;->mLoadingView:Lcom/cmplay/base/util/webview/ui/LoadingView;

    invoke-virtual {v0, p1}, Lcom/cmplay/base/util/webview/ui/LoadingView;->setLoadingText(Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public setRequestLoadCB(Lcom/cmplay/base/util/webview/ui/IRequestLoad;)V
    .locals 0
    .param p1, "cb"    # Lcom/cmplay/base/util/webview/ui/IRequestLoad;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/cmplay/base/util/webview/ui/MsgBoxNetworkStateViewFlipper;->mRequestLoad:Lcom/cmplay/base/util/webview/ui/IRequestLoad;

    .line 85
    return-void
.end method

.method public setTransparentStyle()V
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/cmplay/base/util/webview/ui/MsgBoxNetworkStateViewFlipper;->mLoadingView:Lcom/cmplay/base/util/webview/ui/LoadingView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/cmplay/base/util/webview/ui/LoadingView;->setLoadingTextColor(I)V

    .line 77
    return-void
.end method

.method public toLoadingMode()V
    .locals 1

    .prologue
    .line 160
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/cmplay/base/util/webview/ui/MsgBoxNetworkStateViewFlipper;->setDisplayedChild(I)V

    .line 161
    return-void
.end method

.method public toNoNetMode()V
    .locals 1

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/cmplay/base/util/webview/ui/MsgBoxNetworkStateViewFlipper;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 186
    :goto_0
    return-void

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/cmplay/base/util/webview/ui/MsgBoxNetworkStateViewFlipper;->mWifiReceiver:Lcom/cmplay/base/util/webview/util/NetStatReceiver;

    if-nez v0, :cond_1

    .line 173
    invoke-direct {p0}, Lcom/cmplay/base/util/webview/ui/MsgBoxNetworkStateViewFlipper;->registNetReceiver()V

    .line 176
    :cond_1
    invoke-virtual {p0}, Lcom/cmplay/base/util/webview/ui/MsgBoxNetworkStateViewFlipper;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/cmplay/base/util/m;->f(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 177
    invoke-direct {p0}, Lcom/cmplay/base/util/webview/ui/MsgBoxNetworkStateViewFlipper;->retryView()V

    goto :goto_0

    .line 181
    :cond_2
    invoke-direct {p0}, Lcom/cmplay/base/util/webview/ui/MsgBoxNetworkStateViewFlipper;->getWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 182
    invoke-direct {p0}, Lcom/cmplay/base/util/webview/ui/MsgBoxNetworkStateViewFlipper;->chooseWifiView()V

    goto :goto_0

    .line 184
    :cond_3
    invoke-direct {p0}, Lcom/cmplay/base/util/webview/ui/MsgBoxNetworkStateViewFlipper;->openWifiView()V

    goto :goto_0
.end method

.method protected toNoNetModeChooseWifi()V
    .locals 1

    .prologue
    .line 148
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/cmplay/base/util/webview/ui/MsgBoxNetworkStateViewFlipper;->setDisplayedChild(I)V

    .line 149
    return-void
.end method

.method protected toNoNetModeOpenWifi()V
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/cmplay/base/util/webview/ui/MsgBoxNetworkStateViewFlipper;->setDisplayedChild(I)V

    .line 153
    return-void
.end method

.method public toNoWaitingMode()V
    .locals 1

    .prologue
    .line 164
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/cmplay/base/util/webview/ui/MsgBoxNetworkStateViewFlipper;->setDisplayedChild(I)V

    .line 165
    return-void
.end method

.method protected toRetry()V
    .locals 1

    .prologue
    .line 156
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/cmplay/base/util/webview/ui/MsgBoxNetworkStateViewFlipper;->setDisplayedChild(I)V

    .line 157
    return-void
.end method
