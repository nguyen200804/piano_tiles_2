.class public Lcom/cmplay/base/util/webview/util/NetStatReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NetStatReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmplay/base/util/webview/util/NetStatReceiver$OnNetStatListener;
    }
.end annotation


# static fields
.field private static final CONNECTING_TIME_OUT:J = 0x2710L

.field public static final MOBILE_NET_ACTION:Ljava/lang/String; = "android.intent.action.ANY_DATA_STATE"

.field private static final MSG_CONNECTING_TIME_OUT:I = 0x3ec

.field private static final MSG_NET_CONNECTED:I = 0x3e8

.field private static final MSG_NET_CONNECTING:I = 0x3e9

.field private static final MSG_NET_DATA_OPEN:I = 0x3eb

.field private static final MSG_NET_DISCONNECTED:I = 0x3ea

.field private static final SPEND_EXTRA_TIME:J = 0x2bcL


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mIsConnecting:Z

.field private mOnNetStatListener:Lcom/cmplay/base/util/webview/util/NetStatReceiver$OnNetStatListener;

.field private mRegistTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cmplay/base/util/webview/util/NetStatReceiver;->mIsConnecting:Z

    .line 32
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/cmplay/base/util/webview/util/NetStatReceiver;->mRegistTime:J

    .line 52
    iput-object p1, p0, Lcom/cmplay/base/util/webview/util/NetStatReceiver;->mContext:Landroid/content/Context;

    .line 53
    new-instance v0, Lcom/cmplay/base/util/webview/util/NetStatReceiver$1;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/cmplay/base/util/webview/util/NetStatReceiver$1;-><init>(Lcom/cmplay/base/util/webview/util/NetStatReceiver;Landroid/os/Looper;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cmplay/base/util/webview/util/NetStatReceiver;->mHandler:Landroid/os/Handler;

    .line 88
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cmplay/base/util/webview/util/NetStatReceiver;->mRegistTime:J

    .line 89
    invoke-direct {p0}, Lcom/cmplay/base/util/webview/util/NetStatReceiver;->registMe()V

    .line 90
    return-void
.end method

.method static synthetic access$000(Lcom/cmplay/base/util/webview/util/NetStatReceiver;)Lcom/cmplay/base/util/webview/util/NetStatReceiver$OnNetStatListener;
    .locals 1
    .param p0, "x0"    # Lcom/cmplay/base/util/webview/util/NetStatReceiver;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/cmplay/base/util/webview/util/NetStatReceiver;->mOnNetStatListener:Lcom/cmplay/base/util/webview/util/NetStatReceiver$OnNetStatListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/cmplay/base/util/webview/util/NetStatReceiver;)Z
    .locals 1
    .param p0, "x0"    # Lcom/cmplay/base/util/webview/util/NetStatReceiver;

    .prologue
    .line 15
    iget-boolean v0, p0, Lcom/cmplay/base/util/webview/util/NetStatReceiver;->mIsConnecting:Z

    return v0
.end method

.method static synthetic access$102(Lcom/cmplay/base/util/webview/util/NetStatReceiver;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/cmplay/base/util/webview/util/NetStatReceiver;
    .param p1, "x1"    # Z

    .prologue
    .line 15
    iput-boolean p1, p0, Lcom/cmplay/base/util/webview/util/NetStatReceiver;->mIsConnecting:Z

    return p1
.end method

.method static synthetic access$200(Lcom/cmplay/base/util/webview/util/NetStatReceiver;)V
    .locals 0
    .param p0, "x0"    # Lcom/cmplay/base/util/webview/util/NetStatReceiver;

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/cmplay/base/util/webview/util/NetStatReceiver;->netConnecting()V

    return-void
.end method

.method static synthetic access$300(Lcom/cmplay/base/util/webview/util/NetStatReceiver;Landroid/content/Context;)Z
    .locals 1
    .param p0, "x0"    # Lcom/cmplay/base/util/webview/util/NetStatReceiver;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/cmplay/base/util/webview/util/NetStatReceiver;->getMobileDataStatus(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private getMobileDataStatus(Landroid/content/Context;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 155
    const-string v2, "getMobileDataEnabled"

    .line 156
    const-string v0, "connectivity"

    .line 157
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 158
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 162
    const/4 v4, 0x0

    :try_start_0
    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v3, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 163
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 167
    :goto_0
    return v0

    .line 164
    :catch_0
    move-exception v0

    .line 165
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v1

    goto :goto_0
.end method

.method private netConnecting()V
    .locals 4

    .prologue
    .line 102
    iget-object v0, p0, Lcom/cmplay/base/util/webview/util/NetStatReceiver;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmplay/base/util/webview/util/NetStatReceiver;->mOnNetStatListener:Lcom/cmplay/base/util/webview/util/NetStatReceiver$OnNetStatListener;

    if-eqz v0, :cond_0

    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cmplay/base/util/webview/util/NetStatReceiver;->mIsConnecting:Z

    .line 104
    iget-object v0, p0, Lcom/cmplay/base/util/webview/util/NetStatReceiver;->mOnNetStatListener:Lcom/cmplay/base/util/webview/util/NetStatReceiver$OnNetStatListener;

    invoke-interface {v0}, Lcom/cmplay/base/util/webview/util/NetStatReceiver$OnNetStatListener;->onNetConnecting()V

    .line 105
    iget-object v0, p0, Lcom/cmplay/base/util/webview/util/NetStatReceiver;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3ec

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 107
    :cond_0
    return-void
.end method

.method private registMe()V
    .locals 2

    .prologue
    .line 93
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 94
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 95
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 96
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 97
    const-string v1, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 98
    iget-object v1, p0, Lcom/cmplay/base/util/webview/util/NetStatReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 99
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v4, 0x3eb

    .line 112
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x2bc

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/cmplay/base/util/webview/util/NetStatReceiver;->mRegistTime:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/cmplay/base/util/webview/util/NetStatReceiver;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cmplay/base/util/webview/util/NetStatReceiver;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_3

    .line 118
    :cond_2
    if-eqz p1, :cond_0

    .line 119
    :try_start_0
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 121
    :catch_0
    move-exception v0

    .line 122
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 126
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 127
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 128
    const-string v0, "wifi_state"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 129
    iget-object v1, p0, Lcom/cmplay/base/util/webview/util/NetStatReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 130
    :cond_4
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 131
    const-string v0, "networkInfo"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 132
    if-eqz v0, :cond_0

    .line 133
    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    if-ne v1, v2, :cond_5

    .line 134
    iget-object v0, p0, Lcom/cmplay/base/util/webview/util/NetStatReceiver;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 135
    :cond_5
    sget-object v1, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    if-ne v1, v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/cmplay/base/util/webview/util/NetStatReceiver;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 139
    :cond_6
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 140
    const-string v0, "networkInfo"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 141
    if-eqz v0, :cond_0

    .line 142
    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    if-ne v1, v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/cmplay/base/util/webview/util/NetStatReceiver;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 146
    :cond_7
    const-string v1, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/cmplay/base/util/webview/util/NetStatReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 148
    iget-object v0, p0, Lcom/cmplay/base/util/webview/util/NetStatReceiver;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0
.end method

.method public setOnNetStatListener(Lcom/cmplay/base/util/webview/util/NetStatReceiver$OnNetStatListener;)V
    .locals 0
    .param p1, "l"    # Lcom/cmplay/base/util/webview/util/NetStatReceiver$OnNetStatListener;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/cmplay/base/util/webview/util/NetStatReceiver;->mOnNetStatListener:Lcom/cmplay/base/util/webview/util/NetStatReceiver$OnNetStatListener;

    .line 49
    return-void
.end method
