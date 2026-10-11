.class public Lcom/cmplay/tile2/ui/view/NetStatReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NetStatReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmplay/tile2/ui/view/NetStatReceiver$a;
    }
.end annotation


# instance fields
.field private a:Landroid/os/Handler;

.field private b:Landroid/content/Context;

.field private c:Lcom/cmplay/tile2/ui/view/NetStatReceiver$a;

.field private d:Z

.field private e:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cmplay/tile2/ui/view/NetStatReceiver;->d:Z

    .line 32
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/cmplay/tile2/ui/view/NetStatReceiver;->e:J

    .line 52
    iput-object p1, p0, Lcom/cmplay/tile2/ui/view/NetStatReceiver;->b:Landroid/content/Context;

    .line 53
    new-instance v0, Lcom/cmplay/tile2/ui/view/NetStatReceiver$1;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/cmplay/tile2/ui/view/NetStatReceiver$1;-><init>(Lcom/cmplay/tile2/ui/view/NetStatReceiver;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/cmplay/tile2/ui/view/NetStatReceiver;->a:Landroid/os/Handler;

    .line 88
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cmplay/tile2/ui/view/NetStatReceiver;->e:J

    .line 89
    invoke-direct {p0}, Lcom/cmplay/tile2/ui/view/NetStatReceiver;->a()V

    .line 90
    return-void
.end method

.method static synthetic a(Lcom/cmplay/tile2/ui/view/NetStatReceiver;)Lcom/cmplay/tile2/ui/view/NetStatReceiver$a;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/cmplay/tile2/ui/view/NetStatReceiver;->c:Lcom/cmplay/tile2/ui/view/NetStatReceiver$a;

    return-object v0
.end method

.method private a()V
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
    iget-object v1, p0, Lcom/cmplay/tile2/ui/view/NetStatReceiver;->b:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 99
    return-void
.end method

.method static synthetic a(Lcom/cmplay/tile2/ui/view/NetStatReceiver;Z)Z
    .locals 0

    .prologue
    .line 15
    iput-boolean p1, p0, Lcom/cmplay/tile2/ui/view/NetStatReceiver;->d:Z

    return p1
.end method

.method private b()V
    .locals 4

    .prologue
    .line 102
    iget-object v0, p0, Lcom/cmplay/tile2/ui/view/NetStatReceiver;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmplay/tile2/ui/view/NetStatReceiver;->c:Lcom/cmplay/tile2/ui/view/NetStatReceiver$a;

    if-eqz v0, :cond_0

    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cmplay/tile2/ui/view/NetStatReceiver;->d:Z

    .line 104
    iget-object v0, p0, Lcom/cmplay/tile2/ui/view/NetStatReceiver;->c:Lcom/cmplay/tile2/ui/view/NetStatReceiver$a;

    invoke-interface {v0}, Lcom/cmplay/tile2/ui/view/NetStatReceiver$a;->b()V

    .line 105
    iget-object v0, p0, Lcom/cmplay/tile2/ui/view/NetStatReceiver;->a:Landroid/os/Handler;

    const/16 v1, 0x3ec

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 107
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/cmplay/tile2/ui/view/NetStatReceiver;)Z
    .locals 1

    .prologue
    .line 15
    iget-boolean v0, p0, Lcom/cmplay/tile2/ui/view/NetStatReceiver;->d:Z

    return v0
.end method

.method static synthetic c(Lcom/cmplay/tile2/ui/view/NetStatReceiver;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/cmplay/tile2/ui/view/NetStatReceiver;->b()V

    return-void
.end method

.method private c()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 155
    const-string v2, "getMobileDataEnabled"

    .line 156
    sget-object v0, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

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

.method static synthetic d(Lcom/cmplay/tile2/ui/view/NetStatReceiver;)Z
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/cmplay/tile2/ui/view/NetStatReceiver;->c()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a(Lcom/cmplay/tile2/ui/view/NetStatReceiver$a;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/cmplay/tile2/ui/view/NetStatReceiver;->c:Lcom/cmplay/tile2/ui/view/NetStatReceiver$a;

    .line 49
    return-void
.end method

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

    iget-wide v2, p0, Lcom/cmplay/tile2/ui/view/NetStatReceiver;->e:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/cmplay/tile2/ui/view/NetStatReceiver;->b:Landroid/content/Context;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cmplay/tile2/ui/view/NetStatReceiver;->a:Landroid/os/Handler;

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
    iget-object v1, p0, Lcom/cmplay/tile2/ui/view/NetStatReceiver;->a:Landroid/os/Handler;

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
    iget-object v0, p0, Lcom/cmplay/tile2/ui/view/NetStatReceiver;->a:Landroid/os/Handler;

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
    iget-object v0, p0, Lcom/cmplay/tile2/ui/view/NetStatReceiver;->a:Landroid/os/Handler;

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
    iget-object v0, p0, Lcom/cmplay/tile2/ui/view/NetStatReceiver;->a:Landroid/os/Handler;

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
    iget-object v0, p0, Lcom/cmplay/tile2/ui/view/NetStatReceiver;->a:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 148
    iget-object v0, p0, Lcom/cmplay/tile2/ui/view/NetStatReceiver;->a:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0
.end method
