.class public Lcom/cmplay/webview/ui/WebViewActivity;
.super Landroid/app/Activity;
.source "WebViewActivity.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# static fields
.field public static a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/cmplay/webview/ui/WebViewActivity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Lcom/facebook/e;

.field private c:Lcom/cmplay/webview/ui/WebViewLayout;

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:I

.field private g:Landroid/hardware/SensorManager;

.field private h:Landroid/hardware/Sensor;

.field private i:Landroid/hardware/SensorEvent;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cmplay/webview/ui/WebViewActivity;->d:Z

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 42
    sget-object v0, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmplay/webview/ipc/a/b;->a(Landroid/content/Context;)Lcom/cmplay/webview/ipc/a/b;

    move-result-object v0

    const-string v1, "sharepic_loading"

    const-string v2, "sharepic_loading"

    invoke-static {v2}, Lcom/cmplay/util/NativeUtil;->getLanguageTextByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/cmplay/webview/ipc/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    sget-object v0, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmplay/webview/ipc/a/b;->a(Landroid/content/Context;)Lcom/cmplay/webview/ipc/a/b;

    move-result-object v0

    const-string v1, "diamond_count"

    invoke-static {v3}, Lcom/cmplay/util/NativeUtil;->getDiamond(Z)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/cmplay/webview/ipc/a/b;->b(Ljava/lang/String;I)V

    .line 46
    sget-object v0, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmplay/webview/ipc/a/b;->a(Landroid/content/Context;)Lcom/cmplay/webview/ipc/a/b;

    move-result-object v0

    const-string v1, "coin_count"

    invoke-static {v3}, Lcom/cmplay/util/NativeUtil;->getCurCoin(Z)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/cmplay/webview/ipc/a/b;->b(Ljava/lang/String;I)V

    .line 47
    sget-object v0, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmplay/webview/ipc/a/b;->a(Landroid/content/Context;)Lcom/cmplay/webview/ipc/a/b;

    move-result-object v0

    const-string v1, "life_count"

    invoke-static {v3}, Lcom/cmplay/util/NativeUtil;->getCurHP(Z)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/cmplay/webview/ipc/a/b;->b(Ljava/lang/String;I)V

    .line 48
    invoke-static {}, Lcom/cmplay/util/b/b;->b()Ljava/util/ArrayList;

    .line 49
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/cmplay/webview/ui/WebViewActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 50
    const-string v1, "webview_url"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    const-string v1, "webview_type"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 52
    invoke-static {p0, v0}, Lcom/cmplay/util/e;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 53
    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 106
    const-string v0, "webview_url"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmplay/webview/ui/WebViewActivity;->e:Ljava/lang/String;

    .line 107
    const-string v0, "webview_type"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/cmplay/webview/ui/WebViewActivity;->f:I

    .line 108
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 144
    iget-object v0, p0, Lcom/cmplay/webview/ui/WebViewActivity;->b:Lcom/facebook/e;

    if-nez v0, :cond_0

    .line 145
    invoke-static {}, Lcom/facebook/e$a;->a()Lcom/facebook/e;

    move-result-object v0

    iput-object v0, p0, Lcom/cmplay/webview/ui/WebViewActivity;->b:Lcom/facebook/e;

    .line 146
    invoke-static {}, Lcom/facebook/login/e;->a()Lcom/facebook/login/e;

    move-result-object v0

    iget-object v1, p0, Lcom/cmplay/webview/ui/WebViewActivity;->b:Lcom/facebook/e;

    new-instance v2, Lcom/cmplay/webview/ui/WebViewActivity$1;

    invoke-direct {v2, p0}, Lcom/cmplay/webview/ui/WebViewActivity$1;-><init>(Lcom/cmplay/webview/ui/WebViewActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/facebook/login/e;->a(Lcom/facebook/e;Lcom/facebook/g;)V

    .line 176
    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 206
    iput-boolean p1, p0, Lcom/cmplay/webview/ui/WebViewActivity;->d:Z

    .line 207
    return-void
.end method

.method public b()Lcom/cmplay/webview/ui/WebViewLayout;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/cmplay/webview/ui/WebViewActivity;->c:Lcom/cmplay/webview/ui/WebViewLayout;

    return-object v0
.end method

.method public c()Landroid/hardware/SensorEvent;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/cmplay/webview/ui/WebViewActivity;->i:Landroid/hardware/SensorEvent;

    return-object v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 218
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 112
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 113
    invoke-static {}, Lcom/cmplay/h/f;->b()Lcom/cmplay/h/f;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/cmplay/h/f;->a(IILandroid/content/Intent;)V

    .line 114
    iget v0, p0, Lcom/cmplay/webview/ui/WebViewActivity;->f:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 116
    iget-object v0, p0, Lcom/cmplay/webview/ui/WebViewActivity;->b:Lcom/facebook/e;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/cmplay/webview/ui/WebViewActivity;->b:Lcom/facebook/e;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/e;->a(IILandroid/content/Intent;)Z

    .line 120
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 192
    iget-boolean v0, p0, Lcom/cmplay/webview/ui/WebViewActivity;->d:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 195
    :cond_1
    iget-object v0, p0, Lcom/cmplay/webview/ui/WebViewActivity;->c:Lcom/cmplay/webview/ui/WebViewLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cmplay/webview/ui/WebViewActivity;->c:Lcom/cmplay/webview/ui/WebViewLayout;

    invoke-virtual {v0}, Lcom/cmplay/webview/ui/WebViewLayout;->g()Z

    move-result v0

    if-nez v0, :cond_0

    .line 198
    :cond_2
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v4, 0x800

    const/16 v2, 0x400

    const/4 v3, 0x1

    .line 74
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 75
    invoke-virtual {p0, v3}, Lcom/cmplay/webview/ui/WebViewActivity;->requestWindowFeature(I)Z

    .line 76
    invoke-virtual {p0}, Lcom/cmplay/webview/ui/WebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cmplay/webview/ui/WebViewActivity;->a(Landroid/content/Intent;)V

    .line 78
    iget v0, p0, Lcom/cmplay/webview/ui/WebViewActivity;->f:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 79
    invoke-virtual {p0}, Lcom/cmplay/webview/ui/WebViewActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v4, v4}, Landroid/view/Window;->setFlags(II)V

    .line 86
    :goto_0
    invoke-static {p0}, Lorg/cocos2dx/lib/Cocos2dxHelper;->initByService(Landroid/content/Context;)V

    .line 88
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/cmplay/webview/ui/WebViewActivity;->a:Ljava/lang/ref/WeakReference;

    .line 89
    const-string v0, "key_h5_login"

    invoke-static {v0, v3}, Lcom/cmplay/util/aa;->a(Ljava/lang/String;Z)V

    .line 91
    new-instance v0, Lcom/cmplay/webview/ui/WebViewLayout;

    iget-object v1, p0, Lcom/cmplay/webview/ui/WebViewActivity;->e:Ljava/lang/String;

    iget v2, p0, Lcom/cmplay/webview/ui/WebViewActivity;->f:I

    invoke-direct {v0, p0, v1, v2}, Lcom/cmplay/webview/ui/WebViewLayout;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/cmplay/webview/ui/WebViewActivity;->c:Lcom/cmplay/webview/ui/WebViewLayout;

    .line 93
    iget-object v0, p0, Lcom/cmplay/webview/ui/WebViewActivity;->c:Lcom/cmplay/webview/ui/WebViewLayout;

    invoke-virtual {p0, v0}, Lcom/cmplay/webview/ui/WebViewActivity;->setContentView(Landroid/view/View;)V

    .line 95
    invoke-static {p0}, Lcom/cmplay/tile2/NullProvider;->a(Landroid/content/Context;)V

    .line 97
    iget v0, p0, Lcom/cmplay/webview/ui/WebViewActivity;->f:I

    if-ne v0, v3, :cond_0

    .line 98
    invoke-virtual {p0}, Lcom/cmplay/webview/ui/WebViewActivity;->a()V

    .line 101
    :cond_0
    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Lcom/cmplay/webview/ui/WebViewActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/cmplay/webview/ui/WebViewActivity;->g:Landroid/hardware/SensorManager;

    .line 102
    iget-object v0, p0, Lcom/cmplay/webview/ui/WebViewActivity;->g:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/cmplay/webview/ui/WebViewActivity;->h:Landroid/hardware/Sensor;

    .line 103
    return-void

    .line 82
    :cond_1
    invoke-virtual {p0}, Lcom/cmplay/webview/ui/WebViewActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 180
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 181
    const/4 v0, 0x0

    sput-object v0, Lcom/cmplay/webview/ui/WebViewActivity;->a:Ljava/lang/ref/WeakReference;

    .line 182
    invoke-static {p0}, Lcom/cmplay/tile2/NullProvider;->b(Landroid/content/Context;)V

    .line 183
    const-string v0, "key_h5_login"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/cmplay/util/aa;->a(Ljava/lang/String;Z)V

    .line 184
    iget-object v0, p0, Lcom/cmplay/webview/ui/WebViewActivity;->c:Lcom/cmplay/webview/ui/WebViewLayout;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/cmplay/webview/ui/WebViewActivity;->c:Lcom/cmplay/webview/ui/WebViewLayout;

    invoke-virtual {v0}, Lcom/cmplay/webview/ui/WebViewLayout;->e()V

    .line 187
    :cond_0
    sget-object v0, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v0, v1}, Lcom/cmplay/webview/broadcast/GameBroadcast;->a(Landroid/content/Context;I)V

    .line 188
    return-void
.end method

.method protected onPause()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 124
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 126
    :try_start_0
    const-string v0, "android.webkit.WebView"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "onPause"

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iget-object v0, p0, Lcom/cmplay/webview/ui/WebViewActivity;->c:Lcom/cmplay/webview/ui/WebViewLayout;

    invoke-virtual {v0}, Lcom/cmplay/webview/ui/WebViewLayout;->f()Lcom/cmplay/webview/ui/WebViewEx;

    move-result-object v2

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :goto_0
    iget-object v0, p0, Lcom/cmplay/webview/ui/WebViewActivity;->g:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 130
    iput-object v3, p0, Lcom/cmplay/webview/ui/WebViewActivity;->i:Landroid/hardware/SensorEvent;

    .line 131
    return-void

    .line 127
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 135
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 137
    :try_start_0
    const-string v0, "android.webkit.WebView"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "onResume"

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iget-object v0, p0, Lcom/cmplay/webview/ui/WebViewActivity;->c:Lcom/cmplay/webview/ui/WebViewLayout;

    invoke-virtual {v0}, Lcom/cmplay/webview/ui/WebViewLayout;->f()Lcom/cmplay/webview/ui/WebViewEx;

    move-result-object v2

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :goto_0
    iget-object v0, p0, Lcom/cmplay/webview/ui/WebViewActivity;->g:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/cmplay/webview/ui/WebViewActivity;->h:Landroid/hardware/Sensor;

    const/4 v2, 0x3

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 141
    return-void

    .line 138
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 0
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 211
    iput-object p1, p0, Lcom/cmplay/webview/ui/WebViewActivity;->i:Landroid/hardware/SensorEvent;

    .line 213
    return-void
.end method
