.class public Lcom/cmplay/tile2/ui/AppActivity;
.super Lorg/cocos2dx/lib/Cocos2dxActivity;
.source "AppActivity.java"

# interfaces
.implements Lcom/cmplay/h/f$a;


# static fields
.field public static c:Z

.field private static p:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Z

.field b:Lcom/cmplay/util/ConnectionChangedReceiver$a;

.field protected d:Lcom/cmplay/f/c;

.field e:Lcom/cmplay/f/c$a;

.field private f:Z

.field private g:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

.field private h:Ljava/lang/Runnable;

.field private i:Landroid/media/AudioManager;

.field private j:Landroid/os/Handler;

.field private k:Lcom/cmplay/util/z;

.field private l:Lcom/cmplay/util/WiredHeadStateReceiver;

.field private m:Lcom/facebook/e;

.field private n:Landroid/support/v4/content/LocalBroadcastManager;

.field private o:Lcom/cmplay/tile2/ui/AccessTokenChangedReceiver;

.field private q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cmplay/ad/d;",
            ">;"
        }
    .end annotation
.end field

.field private r:Landroid/content/BroadcastReceiver;

.field private s:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1036
    const/4 v0, 0x1

    sput-boolean v0, Lcom/cmplay/tile2/ui/AppActivity;->c:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 172
    invoke-direct {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;-><init>()V

    .line 138
    iput-boolean v0, p0, Lcom/cmplay/tile2/ui/AppActivity;->f:Z

    .line 141
    iput-boolean v0, p0, Lcom/cmplay/tile2/ui/AppActivity;->a:Z

    .line 143
    new-instance v0, Lcom/cmplay/tile2/ui/AppActivity$1;

    invoke-direct {v0, p0}, Lcom/cmplay/tile2/ui/AppActivity$1;-><init>(Lcom/cmplay/tile2/ui/AppActivity;)V

    iput-object v0, p0, Lcom/cmplay/tile2/ui/AppActivity;->h:Ljava/lang/Runnable;

    .line 151
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/cmplay/tile2/ui/AppActivity;->j:Landroid/os/Handler;

    .line 153
    iput-object v1, p0, Lcom/cmplay/tile2/ui/AppActivity;->k:Lcom/cmplay/util/z;

    .line 154
    new-instance v0, Lcom/cmplay/tile2/ui/AppActivity$9;

    invoke-direct {v0, p0}, Lcom/cmplay/tile2/ui/AppActivity$9;-><init>(Lcom/cmplay/tile2/ui/AppActivity;)V

    iput-object v0, p0, Lcom/cmplay/tile2/ui/AppActivity;->b:Lcom/cmplay/util/ConnectionChangedReceiver$a;

    .line 162
    new-instance v0, Lcom/cmplay/util/WiredHeadStateReceiver;

    invoke-direct {v0}, Lcom/cmplay/util/WiredHeadStateReceiver;-><init>()V

    iput-object v0, p0, Lcom/cmplay/tile2/ui/AppActivity;->l:Lcom/cmplay/util/WiredHeadStateReceiver;

    .line 167
    iput-object v1, p0, Lcom/cmplay/tile2/ui/AppActivity;->n:Landroid/support/v4/content/LocalBroadcastManager;

    .line 168
    iput-object v1, p0, Lcom/cmplay/tile2/ui/AppActivity;->o:Lcom/cmplay/tile2/ui/AccessTokenChangedReceiver;

    .line 181
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cmplay/tile2/ui/AppActivity;->q:Ljava/util/List;

    .line 612
    new-instance v0, Lcom/cmplay/tile2/ui/AppActivity$16;

    invoke-direct {v0, p0}, Lcom/cmplay/tile2/ui/AppActivity$16;-><init>(Lcom/cmplay/tile2/ui/AppActivity;)V

    iput-object v0, p0, Lcom/cmplay/tile2/ui/AppActivity;->r:Landroid/content/BroadcastReceiver;

    .line 1016
    new-instance v0, Lcom/cmplay/tile2/ui/AppActivity$6;

    invoke-direct {v0, p0}, Lcom/cmplay/tile2/ui/AppActivity$6;-><init>(Lcom/cmplay/tile2/ui/AppActivity;)V

    iput-object v0, p0, Lcom/cmplay/tile2/ui/AppActivity;->s:Landroid/content/BroadcastReceiver;

    .line 1037
    iput-object v1, p0, Lcom/cmplay/tile2/ui/AppActivity;->d:Lcom/cmplay/f/c;

    .line 1042
    new-instance v0, Lcom/cmplay/tile2/ui/AppActivity$7;

    invoke-direct {v0, p0}, Lcom/cmplay/tile2/ui/AppActivity$7;-><init>(Lcom/cmplay/tile2/ui/AppActivity;)V

    iput-object v0, p0, Lcom/cmplay/tile2/ui/AppActivity;->e:Lcom/cmplay/f/c$a;

    .line 174
    return-void
.end method

.method private A()V
    .locals 4

    .prologue
    .line 1137
    invoke-static {}, Lcom/example/luckywheel/b/g;->a()Lcom/example/luckywheel/b/g;

    move-result-object v0

    const-string v1, "A61E6C59480049FD"

    invoke-static {}, Lcom/cmplay/util/NativeUtil;->getAppId()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/cmplay/tile2/ui/AppActivity$8;

    invoke-direct {v3, p0}, Lcom/cmplay/tile2/ui/AppActivity$8;-><init>(Lcom/cmplay/tile2/ui/AppActivity;)V

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/example/luckywheel/b/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/example/luckywheel/c/a;)V

    .line 1162
    invoke-static {}, Lcom/cmplay/util/NativeUtil;->isFacebookInstalled()Z

    move-result v0

    .line 1163
    const-string v1, "LuckyWheel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initLuckyWheel      LUCK_WHEEL_APPKEY:A61E6C59480049FD  fb Appid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/cmplay/util/NativeUtil;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "    fb installed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1164
    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 12

    .prologue
    const-wide/16 v10, 0x12c

    const/4 v8, 0x0

    .line 850
    if-nez p1, :cond_1

    .line 947
    :cond_0
    :goto_0
    return-void

    .line 853
    :cond_1
    const-string v0, "notification"

    invoke-virtual {p1, v0, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 854
    const-string v0, "notification_version"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 855
    const-string v0, "notify_cloud_id"

    invoke-virtual {p1, v0, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 856
    const-string v0, "notify_action"

    invoke-virtual {p1, v0, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 857
    const-string v0, "notify_img_style"

    invoke-virtual {p1, v0, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 858
    const-string v0, "notify_data"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 859
    const-string v1, "notify_text_id"

    invoke-virtual {p1, v1, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 862
    :try_start_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 863
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 867
    :goto_1
    const-string v7, "notification_version"

    invoke-virtual {v1, v7, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 868
    const-string v2, "notify_img_style"

    invoke-virtual {v1, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 869
    const-string v2, "notify_cloud_id"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 870
    const-string v2, "notify_text_id"

    invoke-virtual {v1, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 871
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 874
    :goto_2
    if-eqz v4, :cond_2

    .line 876
    new-instance v1, Lcom/cmplay/tile2/ui/AppActivity$2;

    invoke-direct {v1, p0, v4, v0}, Lcom/cmplay/tile2/ui/AppActivity$2;-><init>(Lcom/cmplay/tile2/ui/AppActivity;ILjava/lang/String;)V

    invoke-static {v1}, Lorg/cocos2dx/lib/Cocos2dxHelper;->runOnGLThread(Ljava/lang/Runnable;)V

    .line 886
    :cond_2
    const-string v0, "week_race"

    invoke-virtual {p1, v0, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 887
    iget-object v0, p0, Lcom/cmplay/tile2/ui/AppActivity;->j:Landroid/os/Handler;

    new-instance v1, Lcom/cmplay/tile2/ui/AppActivity$3;

    invoke-direct {v1, p0}, Lcom/cmplay/tile2/ui/AppActivity$3;-><init>(Lcom/cmplay/tile2/ui/AppActivity;)V

    invoke-virtual {v0, v1, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 903
    :cond_3
    invoke-static {p0}, Lcom/facebook/notifications/a;->a(Landroid/app/Activity;)Z

    .line 905
    const-string v0, "push"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 906
    if-eqz v1, :cond_0

    .line 908
    const-string v0, "function_id"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 909
    const/4 v0, -0x1

    .line 910
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 912
    :try_start_1
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    .line 920
    :cond_4
    :goto_3
    packed-switch v0, :pswitch_data_0

    .line 936
    :try_start_2
    invoke-static {p0, v1}, Lcom/facebook/notifications/a;->a(Landroid/app/Activity;Landroid/os/Bundle;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 944
    :goto_4
    invoke-static {}, Lcom/cmplay/h/f;->b()Lcom/cmplay/h/f;

    move-result-object v0

    invoke-static {v1}, Lcom/cmplay/gcmPush/a;->b(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v0, v3, v2, v4}, Lcom/cmplay/h/f;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 945
    invoke-static {}, Lcom/cmplay/h/b;->a()Lcom/cmplay/h/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmplay/h/b;->b()Lcom/facebook/appevents/a;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/appevents/a;->a(Landroid/os/Bundle;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 865
    :cond_5
    :try_start_3
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 872
    :catch_0
    move-exception v1

    goto :goto_2

    .line 913
    :catch_1
    move-exception v3

    .line 914
    invoke-virtual {v3}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_3

    .line 923
    :pswitch_0
    iget-object v0, p0, Lcom/cmplay/tile2/ui/AppActivity;->j:Landroid/os/Handler;

    new-instance v3, Lcom/cmplay/tile2/ui/AppActivity$4;

    invoke-direct {v3, p0}, Lcom/cmplay/tile2/ui/AppActivity$4;-><init>(Lcom/cmplay/tile2/ui/AppActivity;)V

    invoke-virtual {v0, v3, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4

    .line 937
    :catch_2
    move-exception v0

    .line 938
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 920
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic a(Lcom/cmplay/tile2/ui/AppActivity;)V
    .locals 0

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/cmplay/tile2/ui/AppActivity;->u()V

    return-void
.end method

.method static synthetic b(Lcom/cmplay/tile2/ui/AppActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/cmplay/tile2/ui/AppActivity;->q:Ljava/util/List;

    return-object v0
.end method

.method public static c()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 842
    sget-object v0, Lcom/cmplay/tile2/ui/AppActivity;->p:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    .line 843
    const/4 v0, 0x0

    .line 846
    :goto_0
    return-object v0

    .line 845
    :cond_0
    sget-object v0, Lcom/cmplay/tile2/ui/AppActivity;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    goto :goto_0
.end method

.method private f()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 199
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/cmplay/tile2/ui/AppActivity;->p:Ljava/lang/ref/WeakReference;

    .line 201
    invoke-virtual {p0}, Lcom/cmplay/tile2/ui/AppActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cmplay/tile2/ui/AppActivity;->a(Landroid/content/Intent;)V

    .line 203
    const-string v0, "key_gameproblem_adshowed"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/cmplay/util/aa;->a(Ljava/lang/String;Z)V

    .line 205
    invoke-virtual {p0}, Lcom/cmplay/tile2/ui/AppActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AppsFlyerLib;->a(Landroid/content/Context;)V

    .line 206
    invoke-static {p0, v3}, Lcom/cmplay/g/a;->a(Landroid/content/Context;I)V

    .line 208
    iget-object v0, p0, Lcom/cmplay/tile2/ui/AppActivity;->b:Lcom/cmplay/util/ConnectionChangedReceiver$a;

    invoke-static {v0}, Lcom/cmplay/util/ConnectionChangedReceiver;->a(Lcom/cmplay/util/ConnectionChangedReceiver$a;)V

    .line 210
    invoke-direct {p0}, Lcom/cmplay/tile2/ui/AppActivity;->x()V

    .line 212
    invoke-direct {p0}, Lcom/cmplay/tile2/ui/AppActivity;->v()V

    .line 213
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->getInstance()Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    move-result-object v0

    invoke-static {v0}, Lcom/cmplay/util/i;->a(Landroid/opengl/GLSurfaceView;)V

    .line 215
    invoke-static {}, Lcom/cmplay/pay/PayAdapterGetter;->getInstance()Lcom/cmplay/pay/PayAdapterGetter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/cmplay/pay/PayAdapterGetter;->init(Landroid/content/Context;)V

    .line 217
    invoke-static {}, Lcom/cmplay/h/f;->b()Lcom/cmplay/h/f;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/cmplay/h/f;->a(Lcom/cmplay/h/f$a;)V

    .line 219
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/cmplay/tile2/ui/AppActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/cmplay/tile2/ui/AppActivity;->i:Landroid/media/AudioManager;

    .line 220
    iget-object v0, p0, Lcom/cmplay/tile2/ui/AppActivity;->i:Landroid/media/AudioManager;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 224
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 225
    iget-object v1, p0, Lcom/cmplay/tile2/ui/AppActivity;->r:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/cmplay/tile2/ui/AppActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 226
    invoke-direct {p0}, Lcom/cmplay/tile2/ui/AppActivity;->g()V

    .line 227
    return-void
.end method

.method private g()V
    .locals 3

    .prologue
    .line 230
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/cmplay/tile2/ui/AppActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/cmplay/tile2/ui/ReportService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 231
    const-string v1, "report_channel"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 232
    invoke-virtual {p0, v0}, Lcom/cmplay/tile2/ui/AppActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 234
    return-void
.end method

.method private h()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 240
    const-string v0, "key_language_selected"

    const-string v1, "en"

    invoke-static {v0, v1}, Lcom/cmplay/util/aa;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 241
    const-string v1, "key_country_selected"

    const-string v4, ""

    invoke-static {v1, v4}, Lcom/cmplay/util/aa;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 242
    sget-object v4, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    invoke-static {v4, v0, v1}, Lcom/cmplay/util/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    invoke-static {v3}, Lcom/b/a/a/a;->a(Z)V

    .line 246
    invoke-static {p0}, Lcom/b/a/a/a;->d(Landroid/content/Context;)V

    .line 248
    invoke-static {p0}, Lcom/b/a/b;->c(Landroid/content/Context;)V

    .line 250
    invoke-static {v2}, Lcom/b/a/a;->a(Z)V

    .line 252
    invoke-virtual {p0}, Lcom/cmplay/tile2/ui/AppActivity;->b()V

    .line 254
    const-string v0, "key_gaid"

    invoke-static {v0}, Lcom/cmplay/util/aa;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 255
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    invoke-static {}, Lcom/cmplay/gaid/a;->a()Lcom/cmplay/gaid/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/cmplay/gaid/a;->b(Landroid/content/Context;)V

    .line 259
    :cond_0
    invoke-direct {p0}, Lcom/cmplay/tile2/ui/AppActivity;->z()V

    .line 261
    invoke-virtual {p0}, Lcom/cmplay/tile2/ui/AppActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0500a0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 262
    invoke-static {}, Lcom/cmplay/util/h;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 263
    invoke-virtual {p0}, Lcom/cmplay/tile2/ui/AppActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05009f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 268
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/cmplay/tile2/ui/AppActivity;->y()V

    .line 269
    invoke-direct {p0}, Lcom/cmplay/tile2/ui/AppActivity;->t()V

    .line 271
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/cmplay/tile2/ui/AppActivity$10;

    invoke-direct {v1, p0}, Lcom/cmplay/tile2/ui/AppActivity$10;-><init>(Lcom/cmplay/tile2/ui/AppActivity;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 284
    invoke-static {}, Lcom/cmplay/h/b;->a()Lcom/cmplay/h/b;

    move-result-object v0

    const-string v1, "active_main"

    invoke-virtual {v0, v1}, Lcom/cmplay/h/b;->a(Ljava/lang/String;)V

    .line 285
    invoke-static {}, Lcom/cmplay/h/b;->a()Lcom/cmplay/h/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmplay/h/b;->c()V

    .line 287
    new-instance v0, Lcom/cmplay/tile2/ui/AppActivity$11;

    invoke-direct {v0, p0}, Lcom/cmplay/tile2/ui/AppActivity$11;-><init>(Lcom/cmplay/tile2/ui/AppActivity;)V

    invoke-static {v0}, Lcom/cmplay/util/a/a;->a(Ljava/lang/Runnable;)V

    .line 294
    invoke-static {p0, v3}, Lcom/cmplay/util/e;->a(Landroid/app/Activity;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 296
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/cmplay/tile2/ui/AppActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v4, Lcom/cmplay/gcmPush/RegistrationIntentService;

    invoke-direct {v0, v1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 297
    invoke-static {}, Lcom/cmplay/tile2/ui/AppActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 300
    :cond_2
    invoke-static {}, Lcom/cmplay/internalpush/n;->a()Lcom/cmplay/internalpush/n;

    move-result-object v0

    new-instance v1, Lcom/cmplay/tile2/ui/AppActivity$12;

    invoke-direct {v1, p0}, Lcom/cmplay/tile2/ui/AppActivity$12;-><init>(Lcom/cmplay/tile2/ui/AppActivity;)V

    invoke-virtual {v0, v1}, Lcom/cmplay/internalpush/n;->a(Lcom/cmplay/internalpush/i$a;)V

    .line 330
    invoke-direct {p0}, Lcom/cmplay/tile2/ui/AppActivity;->A()V

    .line 333
    new-instance v0, Lcom/cmplay/exitpopup/d;

    invoke-direct {v0}, Lcom/cmplay/exitpopup/d;-><init>()V

    const/16 v1, 0x410

    invoke-static {}, Lcom/cmplay/util/e;->b()Z

    move-result v4

    if-eqz v4, :cond_4

    :goto_1
    const-string v6, ""

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v6}, Lcom/cmplay/exitpopup/d;->a(IIIIILjava/lang/String;)V

    .line 334
    return-void

    .line 264
    :cond_3
    invoke-static {}, Lcom/cmplay/util/h;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 265
    invoke-virtual {p0}, Lcom/cmplay/tile2/ui/AppActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0500a1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    goto :goto_0

    .line 333
    :cond_4
    const/4 v2, 0x2

    goto :goto_1
.end method

.method private i()V
    .locals 2

    .prologue
    .line 349
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/cmplay/util/b/b;->a(J)V

    .line 350
    return-void
.end method

.method private j()V
    .locals 2

    .prologue
    .line 356
    iget-object v0, p0, Lcom/cmplay/tile2/ui/AppActivity;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmplay/ad/d;

    .line 357
    if-eqz v0, :cond_0

    .line 358
    invoke-interface {v0, p0}, Lcom/cmplay/ad/d;->onStart(Landroid/app/Activity;)V

    goto :goto_0

    .line 363
    :cond_1
    sget-boolean v0, Lcom/cmplay/tile2/ui/AppActivity;->c:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cmplay/tile2/ui/AppActivity;->d:Lcom/cmplay/f/c;

    if-eqz v0, :cond_2

    .line 364
    iget-object v0, p0, Lcom/cmplay/tile2/ui/AppActivity;->d:Lcom/cmplay/f/c;

    invoke-interface {v0, p0}, Lcom/cmplay/f/c;->a(Landroid/support/v4/app/FragmentActivity;)V

    .line 366
    :cond_2
    return-void
.end method

.method private k()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 382
    const-string v0, "AppActivity onResume"

    invoke-static {v0, p0}, Lcom/cmplay/util/o;->a(Ljava/lang/String;Landroid/content/Context;)V

    .line 384
    invoke-direct {p0}, Lcom/cmplay/tile2/ui/AppActivity;->w()V

    .line 386
    invoke-static {}, Lcom/cmplay/h/f;->b()Lcom/cmplay/h/f;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/cmplay/h/f;->a(J)V

    .line 388
    iget-object v0, p0, Lcom/cmplay/tile2/ui/AppActivity;->j:Landroid/os/Handler;

    iget-object v1, p0, Lcom/cmplay/tile2/ui/AppActivity;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 390
    invoke-static {}, Lcom/cmplay/h/f;->b()Lcom/cmplay/h/f;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/cmplay/h/f;->a(Lcom/cmplay/h/f$a;)V

    .line 392
    invoke-virtual {p0}, Lcom/cmplay/tile2/ui/AppActivity;->d()V

    .line 394
    invoke-static {}, Lcom/cmplay/d/a;->a()Lcom/cmplay/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmplay/d/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 395
    invoke-static {}, Lcom/cmplay/b/b;->a()Lcom/cmplay/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmplay/b/b;->e()V

    .line 398
    :cond_0
    new-instance v0, Lcom/cmplay/tile2/ui/AppActivity$13;

    invoke-direct {v0, p0}, Lcom/cmplay/tile2/ui/AppActivity$13;-><init>(Lcom/cmplay/tile2/ui/AppActivity;)V

    invoke-static {v0}, Lcom/cmplay/util/d;->a(Lcom/cmplay/util/d$a;)V

    .line 405
    iget-object v0, p0, Lcom/cmplay/tile2/ui/AppActivity;->j:Landroid/os/Handler;

    new-instance v1, Lcom/cmplay/tile2/ui/AppActivity$14;

    invoke-direct {v1, p0}, Lcom/cmplay/tile2/ui/AppActivity$14;-><init>(Lcom/cmplay/tile2/ui/AppActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 412
    invoke-static {p0}, Lcom/appsflyer/AppsFlyerLib;->a(Landroid/app/Activity;)V

    .line 414
    const-string v0, "key_h5_login"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/cmplay/util/aa;->a(Ljava/lang/String;Z)V

    .line 415
    const-string v0, "key_gameproblem_isresume"

    invoke-static {v0, v4}, Lcom/cmplay/util/aa;->a(Ljava/lang/String;Z)V

    .line 416
    invoke-static {}, Lcom/cmplay/tile2/GameApp;->c()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 418
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/cmplay/tile2/GameApp;->c(J)V

    .line 420
    :cond_1
    iput-boolean v4, p0, Lcom/cmplay/tile2/ui/AppActivity;->a:Z

    .line 421
    const-string v0, "xushengmingaaaa"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shengming----6 time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Lcom/cmplay/tile2/GameApp;->a()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    return-void
.end method

.method private l()V
    .locals 4

    .prologue
    .line 428
    invoke-static {p0}, Lcom/b/a/a/a;->b(Landroid/content/Context;)V

    .line 430
    invoke-virtual {p0}, Lcom/cmplay/tile2/ui/AppActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0500a0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 431
    invoke-static {}, Lcom/cmplay/util/h;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 432
    invoke-virtual {p0}, Lcom/cmplay/tile2/ui/AppActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05009f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 436
    :cond_0
    :goto_0
    invoke-static {p0, v0}, Lcom/facebook/appevents/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 438
    iget-object v0, p0, Lcom/cmplay/tile2/ui/AppActivity;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmplay/ad/d;

    .line 439
    if-eqz v0, :cond_1

    .line 440
    invoke-interface {v0, p0}, Lcom/cmplay/ad/d;->onResume(Landroid/app/Activity;)V

    goto :goto_1

    .line 433
    :cond_2
    invoke-static {}, Lcom/cmplay/util/h;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 434
    invoke-virtual {p0}, Lcom/cmplay/tile2/ui/AppActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0500a1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 444
    :cond_3
    iget-object v0, p0, Lcom/cmplay/tile2/ui/AppActivity;->n:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v1, p0, Lcom/cmplay/tile2/ui/AppActivity;->s:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "registrationComplete"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 446
    return-void
.end method

.method private m()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 459
    const-string v0, "AppActivity onPause"

    invoke-static {v0, p0}, Lcom/cmplay/util/o;->a(Ljava/lang/String;Landroid/content/Context;)V

    .line 460
    invoke-static {p0}, Lcom/facebook/appevents/a;->a(Landroid/content/Context;)V

    .line 461
    invoke-static {p0}, Lcom/appsflyer/AppsFlyerLib;->b(Landroid/app/Activity;)V

    .line 462
    iput-boolean v1, p0, Lcom/cmplay/tile2/ui/AppActivity;->a:Z

    .line 463
    const-string v0, "key_gameproblem_isresume"

    invoke-static {v0, v1}, Lcom/cmplay/util/aa;->a(Ljava/lang/String;Z)V

    .line 464
    return-void
.end method

.method private n()V
    .locals 2

    .prologue
    .line 467
    invoke-static {p0}, Lcom/b/a/a/a;->a(Landroid/content/Context;)V

    .line 468
    iget-object v0, p0, Lcom/cmplay/tile2/ui/AppActivity;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmplay/ad/d;

    .line 469
    if-eqz v0, :cond_0

    .line 470
    invoke-interface {v0, p0}, Lcom/cmplay/ad/d;->onPaused(Landroid/app/Activity;)V

    goto :goto_0

    .line 475
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/cmplay/tile2/ui/AppActivity;->n:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v1, p0, Lcom/cmplay/tile2/ui/AppActivity;->s:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 478
    :goto_1
    return-void

    .line 476
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private o()V
    .locals 6

    .prologue
    .line 491
    const-string v0, "AppActivity onStop"

    invoke-static {v0, p0}, Lcom/cmplay/util/o;->a(Ljava/lang/String;Landroid/content/Context;)V

    .line 492
    invoke-static {}, Lcom/cmplay/cloud/a;->a()Lcom/cmplay/cloud/a;

    move-result-object v0

    const/4 v1, 0x2

    const-string v2, "section_probability"

    const-string v3, "CLOUD_KEY_REPORT_DELAYED_TIME"

    const/16 v4, 0x32

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/cmplay/cloud/a;->a(ILjava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 497
    iget-object v1, p0, Lcom/cmplay/tile2/ui/AppActivity;->j:Landroid/os/Handler;

    iget-object v2, p0, Lcom/cmplay/tile2/ui/AppActivity;->h:Ljava/lang/Runnable;

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 499
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/cmplay/util/b/b;->b(J)V

    .line 501
    invoke-direct {p0}, Lcom/cmplay/tile2/ui/AppActivity;->s()V

    .line 502
    return-void
.end method

.method private p()V
    .locals 2

    .prologue
    .line 505
    iget-object v0, p0, Lcom/cmplay/tile2/ui/AppActivity;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmplay/ad/d;

    .line 506
    if-eqz v0, :cond_0

    .line 507
    invoke-interface {v0, p0}, Lcom/cmplay/ad/d;->onStop(Landroid/app/Activity;)V

    goto :goto_0

    .line 512
    :cond_1
    sget-boolean v0, Lcom/cmplay/tile2/ui/AppActivity;->c:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cmplay/tile2/ui/AppActivity;->d:Lcom/cmplay/f/c;

    if-eqz v0, :cond_2

    .line 513
    iget-object v0, p0, Lcom/cmplay/tile2/ui/AppActivity;->d:Lcom/cmplay/f/c;

    invoke-interface {v0}, Lcom/cmplay/f/c;->a()V

    .line 515
    :cond_2
    return-void
.end method

.method private q()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 527
    iget-object v0, p0, Lcom/cmplay/tile2/ui/AppActivity;->r:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 529
    :try_start_0
    iget-object v0, p0, Lcom/cmplay/tile2/ui/AppActivity;->r:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/cmplay/tile2/ui/AppActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 532
    :goto_0
    iput-object v2, p0, Lcom/cmplay/tile2/ui/AppActivity;->r:Landroid/content/BroadcastReceiver;

    .line 534
    :cond_0
    iget-object v0, p0, Lcom/cmplay/tile2/ui/AppActivity;->o:Lcom/cmplay/tile2/ui/AccessTokenChangedReceiver;

    if-eqz v0, :cond_1

    .line 535
    iget-object v0, p0, Lcom/cmplay/tile2/ui/AppActivity;->n:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v1, p0, Lcom/cmplay/tile2/ui/AppActivity;->o:Lcom/cmplay/tile2/ui/AccessTokenChangedReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 537
    :cond_1
    iget-object v0, p0, Lcom/cmplay/tile2/ui/AppActivity;->b:Lcom/cmplay/util/ConnectionChangedReceiver$a;

    invoke-static {v0}, Lcom/cmplay/util/ConnectionChangedReceiver;->b(Lcom/cmplay/util/ConnectionChangedReceiver$a;)V

    .line 538
    invoke-static {}, Lcom/cmplay/pay/PayAdapterGetter;->getInstance()Lcom/cmplay/pay/PayAdapterGetter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmplay/pay/PayAdapterGetter;->getAdapter()Lcom/cmplay/base/a;

    move-result-object v0

    .line 539
    if-eqz v0, :cond_2

    .line 540
    invoke-virtual {v0}, Lcom/cmplay/base/a;->onDestory()V

    .line 542
    :cond_2
    invoke-static {}, Lcom/cmplay/h/f;->b()Lcom/cmplay/h/f;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/cmplay/h/f;->a(Lcom/cmplay/h/f$a;)V

    .line 543
    invoke-static {}, Lcom/cmplay/h/f;->b()Lcom/cmplay/h/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmplay/h/f;->c()V

    .line 544
    iput-object v2, p0, Lcom/cmplay/tile2/ui/AppActivity;->k:Lcom/cmplay/util/z;

    .line 546
    iget-object v0, p0, Lcom/cmplay/tile2/ui/AppActivity;->i:Landroid/media/AudioManager;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 547
    invoke-static {}, Lcom/cmplay/util/d;->a()V

    .line 548
    return-void

    .line 530
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private r()V
    .locals 2

    .prologue
    .line 551
    iget-object v0, p0, Lcom/cmplay/tile2/ui/AppActivity;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmplay/ad/d;

    .line 552
    if-eqz v0, :cond_0

    .line 553
    invoke-interface {v0, p0}, Lcom/cmplay/ad/d;->onDestroy(Landroid/app/Activity;)V

    goto :goto_0

    .line 557
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/cmplay/tile2/ui/AppActivity;->l:Lcom/cmplay/util/WiredHeadStateReceiver;

    invoke-virtual {p0, v0}, Lcom/cmplay/tile2/ui/AppActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 561
    :goto_1
    return-void

    .line 558
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private s()V
    .locals 3

    .prologue
    .line 607
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/cmplay/tile2/ui/AppActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/cmplay/tile2/ui/ReportService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 608
    const-string v1, "command_start_report"

    const-string v2, "command_schedule_all_notifications"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 609
    invoke-virtual {p0, v0}, Lcom/cmplay/tile2/ui/AppActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 610
    return-void
.end method

.method private t()V
    .locals 3

    .prologue
    .line 640
    sget-object v0, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iput-object v0, p0, Lcom/cmplay/tile2/ui/AppActivity;->n:Landroid/support/v4/content/LocalBroadcastManager;

    .line 641
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.facebook.sdk.ACTION_CURRENT_ACCESS_TOKEN_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 642
    new-instance v1, Lcom/cmplay/tile2/ui/AccessTokenChangedReceiver;

    invoke-direct {v1}, Lcom/cmplay/tile2/ui/AccessTokenChangedReceiver;-><init>()V

    iput-object v1, p0, Lcom/cmplay/tile2/ui/AppActivity;->o:Lcom/cmplay/tile2/ui/AccessTokenChangedReceiver;

    .line 643
    iget-object v1, p0, Lcom/cmplay/tile2/ui/AppActivity;->n:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v2, p0, Lcom/cmplay/tile2/ui/AppActivity;->o:Lcom/cmplay/tile2/ui/AccessTokenChangedReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 644
    return-void
.end method

.method private u()V
    .locals 4

    .prologue
    .line 648
    invoke-static {}, Lcom/cmplay/ad/a;->a()[Ljava/lang/Integer;

    move-result-object v1

    .line 649
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 650
    aget-object v2, v1, v0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/cmplay/ad/a;->a(ILcom/cmplay/ad/c;)Lcom/cmplay/ad/d;

    move-result-object v2

    .line 651
    if-eqz v2, :cond_0

    .line 652
    iget-object v3, p0, Lcom/cmplay/tile2/ui/AppActivity;->q:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 649
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 655
    :cond_1
    return-void
.end method

.method private v()V
    .locals 3

    .prologue
    .line 661
    const-string v0, "key_screen_display_size"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/cmplay/util/aa;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 662
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 663
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 664
    invoke-virtual {p0}, Lcom/cmplay/tile2/ui/AppActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 665
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 666
    const-string v1, "key_screen_display_size"

    invoke-static {v1, v0}, Lcom/cmplay/util/aa;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    :cond_0
    return-void
.end method

.method private w()V
    .locals 2

    .prologue
    .line 774
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-le v0, v1, :cond_0

    .line 775
    invoke-virtual {p0}, Lcom/cmplay/tile2/ui/AppActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 776
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 777
    const/16 v1, 0x1707

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 786
    :cond_0
    return-void
.end method

.method private x()V
    .locals 3

    .prologue
    .line 792
    invoke-virtual {p0}, Lcom/cmplay/tile2/ui/AppActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 793
    if-eqz v0, :cond_1

    .line 794
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 795
    if-eqz v1, :cond_1

    .line 796
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 800
    invoke-static {p0, v0}, La/a;->a(Landroid/content/Context;Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object v0

    .line 801
    if-eqz v0, :cond_0

    .line 810
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 811
    const-string v0, "?"

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 812
    if-ltz v0, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 813
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 814
    const-string v1, "pianotiles2share://story/"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 815
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 816
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "1000"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 826
    :cond_1
    :goto_0
    return-void

    .line 818
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1001"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0
.end method

.method private y()V
    .locals 6

    .prologue
    .line 963
    invoke-static {}, Lcom/facebook/AccessToken;->a()Lcom/facebook/AccessToken;

    move-result-object v0

    .line 964
    if-eqz v0, :cond_0

    .line 965
    invoke-virtual {v0}, Lcom/facebook/AccessToken;->d()Ljava/util/Date;

    move-result-object v0

    .line 966
    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0xa4cb800

    add-long/2addr v2, v4

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 967
    invoke-virtual {v1, v0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 969
    invoke-static {}, Lcom/facebook/AccessToken;->b()V

    .line 972
    :cond_0
    return-void
.end method

.method private z()V
    .locals 3

    .prologue
    .line 976
    invoke-static {}, Lcom/facebook/e$a;->a()Lcom/facebook/e;

    move-result-object v0

    iput-object v0, p0, Lcom/cmplay/tile2/ui/AppActivity;->m:Lcom/facebook/e;

    .line 977
    invoke-static {}, Lcom/facebook/login/e;->a()Lcom/facebook/login/e;

    move-result-object v0

    iget-object v1, p0, Lcom/cmplay/tile2/ui/AppActivity;->m:Lcom/facebook/e;

    new-instance v2, Lcom/cmplay/tile2/ui/AppActivity$5;

    invoke-direct {v2, p0}, Lcom/cmplay/tile2/ui/AppActivity$5;-><init>(Lcom/cmplay/tile2/ui/AppActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/facebook/login/e;->a(Lcom/facebook/e;Lcom/facebook/g;)V

    .line 1013
    return-void
.end method


# virtual methods
.method public ReportGL(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 2
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 951
    invoke-static {}, Lcom/cmplay/util/c/b;->a()Lcom/cmplay/util/c/b;

    move-result-object v0

    const/16 v1, 0x1f02

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmplay/util/c/b;->a(Ljava/lang/String;)V

    .line 952
    invoke-static {}, Lcom/cmplay/util/c/b;->a()Lcom/cmplay/util/c/b;

    move-result-object v0

    const/16 v1, 0x1f00

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmplay/util/c/b;->b(Ljava/lang/String;)V

    .line 953
    invoke-static {}, Lcom/cmplay/util/c/b;->a()Lcom/cmplay/util/c/b;

    move-result-object v0

    const/16 v1, 0x1f01

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmplay/util/c/b;->c(Ljava/lang/String;)V

    .line 954
    return-void
.end method

.method public a()V
    .locals 1

    .prologue
    .line 581
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 582
    invoke-static {}, Lcom/cmplay/tile2/GameApp;->g()Lcom/cmplay/tile2/GameApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmplay/tile2/GameApp;->d()V

    .line 584
    invoke-direct {p0}, Lcom/cmplay/tile2/ui/AppActivity;->h()V

    .line 585
    invoke-direct {p0}, Lcom/cmplay/tile2/ui/AppActivity;->j()V

    .line 586
    invoke-direct {p0}, Lcom/cmplay/tile2/ui/AppActivity;->l()V

    .line 587
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cmplay/tile2/ui/AppActivity;->f:Z

    .line 588
    new-instance v0, Lcom/cmplay/tile2/ui/AppActivity$15;

    invoke-direct {v0, p0}, Lcom/cmplay/tile2/ui/AppActivity$15;-><init>(Lcom/cmplay/tile2/ui/AppActivity;)V

    invoke-static {v0}, Lcom/cmplay/util/i;->a(Ljava/lang/Runnable;)V

    .line 594
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 597
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 598
    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 599
    iget-object v1, p0, Lcom/cmplay/tile2/ui/AppActivity;->l:Lcom/cmplay/util/WiredHeadStateReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/cmplay/tile2/ui/AppActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 600
    return-void
.end method

.method public d()V
    .locals 0

    .prologue
    .line 957
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 766
    invoke-super {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public e()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 1082
    sget-object v0, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmplay/util/t;->c(Landroid/content/Context;)Z

    move-result v0

    .line 1085
    invoke-static {p0, v1}, Lcom/cmplay/util/e;->a(Landroid/app/Activity;Z)Z

    move-result v1

    sput-boolean v1, Lcom/cmplay/tile2/ui/AppActivity;->c:Z

    .line 1086
    sget-boolean v1, Lcom/cmplay/tile2/ui/AppActivity;->c:Z

    if-eqz v1, :cond_0

    .line 1087
    iget-object v1, p0, Lcom/cmplay/tile2/ui/AppActivity;->d:Lcom/cmplay/f/c;

    if-nez v1, :cond_0

    .line 1088
    new-instance v1, Lcom/cmplay/f/b;

    iget-object v2, p0, Lcom/cmplay/tile2/ui/AppActivity;->e:Lcom/cmplay/f/c$a;

    invoke-direct {v1, p0, v2}, Lcom/cmplay/f/b;-><init>(Landroid/support/v4/app/FragmentActivity;Lcom/cmplay/f/c$a;)V

    iput-object v1, p0, Lcom/cmplay/tile2/ui/AppActivity;->d:Lcom/cmplay/f/c;

    .line 1092
    :cond_0
    sget-boolean v1, Lcom/cmplay/tile2/ui/AppActivity;->c:Z

    if-eqz v1, :cond_1

    if-nez v0, :cond_4

    .line 1098
    :cond_1
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1099
    const-string v2, "platform"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1100
    const-string v2, "isLogin"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1101
    const-string v2, "ab_test_type"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1102
    sget-boolean v2, Lcom/cmplay/tile2/ui/AppActivity;->c:Z

    if-nez v2, :cond_3

    .line 1103
    const-string v0, "error_code"

    const v2, 0xc352

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1112
    :cond_2
    :goto_0
    const-string v0, "show_pick_user_account"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1113
    const-string v0, "req_authorize"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1114
    iget-object v0, p0, Lcom/cmplay/tile2/ui/AppActivity;->e:Lcom/cmplay/f/c$a;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/cmplay/f/c$a;->a(Ljava/lang/String;)V

    .line 1129
    :goto_1
    return-void

    .line 1104
    :cond_3
    if-nez v0, :cond_2

    .line 1105
    const-string v0, "error_code"

    const v2, 0xc356

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1107
    const-string v0, "share_fb_have_no_network"

    invoke-static {v0}, Lcom/cmplay/util/NativeUtil;->getLanguageTextByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cmplay/util/NativeUtil;->toastTip(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1115
    :catch_0
    move-exception v0

    .line 1116
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 1124
    :cond_4
    iget-object v0, p0, Lcom/cmplay/tile2/ui/AppActivity;->d:Lcom/cmplay/f/c;

    check-cast v0, Lcom/cmplay/f/b;

    invoke-virtual {v0, v3}, Lcom/cmplay/f/b;->a(Z)V

    .line 1125
    iget-object v0, p0, Lcom/cmplay/tile2/ui/AppActivity;->d:Lcom/cmplay/f/c;

    check-cast v0, Lcom/cmplay/f/b;

    invoke-virtual {v0, v3}, Lcom/cmplay/f/b;->b(Z)V

    .line 1127
    iget-object v0, p0, Lcom/cmplay/tile2/ui/AppActivity;->d:Lcom/cmplay/f/c;

    invoke-interface {v0}, Lcom/cmplay/f/c;->b()V

    goto :goto_1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x1

    .line 695
    :try_start_0
    sget-boolean v0, Lcom/cmplay/tile2/ui/AppActivity;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmplay/tile2/ui/AppActivity;->d:Lcom/cmplay/f/c;

    if-eqz v0, :cond_0

    .line 696
    iget-object v0, p0, Lcom/cmplay/tile2/ui/AppActivity;->d:Lcom/cmplay/f/c;

    invoke-interface {v0, p1, p2, p3}, Lcom/cmplay/f/c;->a(IILandroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 701
    :cond_0
    :goto_0
    invoke-static {}, Lcom/cmplay/h/f;->b()Lcom/cmplay/h/f;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/cmplay/h/f;->a(J)V

    .line 702
    invoke-super {p0, p1, p2, p3}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 704
    invoke-static {}, Lcom/cmplay/pay/PayAdapterGetter;->getInstance()Lcom/cmplay/pay/PayAdapterGetter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmplay/pay/PayAdapterGetter;->getAdapter()Lcom/cmplay/base/a;

    move-result-object v0

    .line 705
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2, p3}, Lcom/cmplay/base/a;->handleResult(IILandroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 706
    invoke-super {p0, p1, p2, p3}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 708
    :cond_1
    invoke-static {}, Lcom/cmplay/h/f;->b()Lcom/cmplay/h/f;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/cmplay/h/f;->a(IILandroid/content/Intent;)V

    .line 709
    iget-object v0, p0, Lcom/cmplay/tile2/ui/AppActivity;->k:Lcom/cmplay/util/z;

    if-eqz v0, :cond_2

    .line 710
    iget-object v0, p0, Lcom/cmplay/tile2/ui/AppActivity;->k:Lcom/cmplay/util/z;

    invoke-virtual {v0, p1, p2, p3}, Lcom/cmplay/util/z;->a(IILandroid/content/Intent;)V

    .line 712
    :cond_2
    const/16 v0, 0x7d1

    if-ne v0, p1, :cond_3

    .line 713
    invoke-static {v1}, Lcom/cmplay/util/NativeUtil;->sendEmailCallbackOnGLThread(I)V

    .line 717
    :cond_3
    iget-boolean v0, p0, Lcom/cmplay/tile2/ui/AppActivity;->f:Z

    if-ne v0, v1, :cond_6

    .line 718
    iget-object v0, p0, Lcom/cmplay/tile2/ui/AppActivity;->m:Lcom/facebook/e;

    if-eqz v0, :cond_4

    .line 719
    iget-object v0, p0, Lcom/cmplay/tile2/ui/AppActivity;->m:Lcom/facebook/e;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/e;->a(IILandroid/content/Intent;)Z

    .line 721
    :cond_4
    iget-object v0, p0, Lcom/cmplay/tile2/ui/AppActivity;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmplay/ad/d;

    .line 722
    if-eqz v0, :cond_5

    .line 723
    invoke-interface {v0, p1, p2, p3}, Lcom/cmplay/ad/d;->activityResult(IILandroid/content/Intent;)Z

    move-result v0

    .line 724
    if-eqz v0, :cond_5

    .line 732
    :cond_6
    invoke-static {p1, p2, p3}, Lcom/facebook/notifications/a;->a(IILandroid/content/Intent;)Lcom/facebook/notifications/NotificationCardResult;

    move-result-object v0

    .line 733
    if-eqz v0, :cond_7

    .line 737
    :cond_7
    return-void

    .line 698
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 570
    .line 571
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/cmplay/tile2/ui/AppActivity;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 572
    iget-object v0, p0, Lcom/cmplay/tile2/ui/AppActivity;->q:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmplay/ad/d;

    .line 573
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/cmplay/ad/d;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 578
    :goto_1
    return-void

    .line 571
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 577
    :cond_1
    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onBackPressed()V

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 186
    invoke-super {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onCreate(Landroid/os/Bundle;)V

    .line 188
    invoke-direct {p0}, Lcom/cmplay/tile2/ui/AppActivity;->f()V

    .line 189
    sget-boolean v0, Lcom/cmplay/tile2/GameApp;->c:Z

    if-nez v0, :cond_0

    .line 190
    invoke-direct {p0}, Lcom/cmplay/tile2/ui/AppActivity;->h()V

    .line 191
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cmplay/tile2/ui/AppActivity;->f:Z

    .line 193
    :cond_0
    return-void
.end method

.method public onCreateView()Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v1, 0x5

    .line 742
    new-instance v0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    invoke-direct {v0, p0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cmplay/tile2/ui/AppActivity;->g:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    .line 744
    invoke-direct {p0}, Lcom/cmplay/tile2/ui/AppActivity;->w()V

    .line 751
    iget-object v0, p0, Lcom/cmplay/tile2/ui/AppActivity;->g:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    const/4 v2, 0x6

    const/4 v4, 0x0

    const/16 v5, 0x10

    const/16 v6, 0x8

    move v3, v1

    invoke-virtual/range {v0 .. v6}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->setEGLConfigChooser(IIIIII)V

    .line 753
    iget-object v0, p0, Lcom/cmplay/tile2/ui/AppActivity;->g:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    return-object v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 519
    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onDestroy()V

    .line 520
    invoke-direct {p0}, Lcom/cmplay/tile2/ui/AppActivity;->q()V

    .line 521
    iget-boolean v0, p0, Lcom/cmplay/tile2/ui/AppActivity;->f:Z

    if-eqz v0, :cond_0

    .line 522
    invoke-direct {p0}, Lcom/cmplay/tile2/ui/AppActivity;->r()V

    .line 524
    :cond_0
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 8
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 673
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {}, Lcom/cmplay/h/f;->b()Lcom/cmplay/h/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cmplay/h/f;->g()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x320

    cmp-long v1, v4, v6

    if-lez v1, :cond_0

    move v1, v2

    .line 674
    :goto_0
    const/4 v3, 0x4

    if-ne p1, v3, :cond_3

    if-eqz v1, :cond_3

    move v1, v0

    .line 676
    :goto_1
    iget-object v0, p0, Lcom/cmplay/tile2/ui/AppActivity;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 677
    iget-object v0, p0, Lcom/cmplay/tile2/ui/AppActivity;->q:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmplay/ad/d;

    .line 678
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/cmplay/ad/d;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    .line 686
    :goto_2
    return v0

    :cond_0
    move v1, v0

    .line 673
    goto :goto_0

    .line 676
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 683
    :cond_2
    invoke-static {}, Lcom/cmplay/util/NativeUtil;->onBackKeyClicked()V

    move v0, v2

    .line 684
    goto :goto_2

    .line 686
    :cond_3
    invoke-super {p0, p1, p2}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_2
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 565
    invoke-direct {p0, p1}, Lcom/cmplay/tile2/ui/AppActivity;->a(Landroid/content/Intent;)V

    .line 566
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 450
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Lcom/cmplay/tile2/GameApp;->a(J)V

    .line 451
    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onPause()V

    .line 452
    invoke-direct {p0}, Lcom/cmplay/tile2/ui/AppActivity;->m()V

    .line 453
    iget-boolean v0, p0, Lcom/cmplay/tile2/ui/AppActivity;->f:Z

    if-eqz v0, :cond_0

    .line 454
    invoke-direct {p0}, Lcom/cmplay/tile2/ui/AppActivity;->n()V

    .line 456
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 370
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 371
    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onResume()V

    .line 372
    invoke-direct {p0}, Lcom/cmplay/tile2/ui/AppActivity;->k()V

    .line 373
    iget-boolean v0, p0, Lcom/cmplay/tile2/ui/AppActivity;->f:Z

    if-eqz v0, :cond_0

    .line 374
    invoke-direct {p0}, Lcom/cmplay/tile2/ui/AppActivity;->l()V

    .line 376
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 338
    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onStart()V

    .line 339
    invoke-direct {p0}, Lcom/cmplay/tile2/ui/AppActivity;->i()V

    .line 340
    iget-boolean v0, p0, Lcom/cmplay/tile2/ui/AppActivity;->f:Z

    if-eqz v0, :cond_0

    .line 341
    invoke-direct {p0}, Lcom/cmplay/tile2/ui/AppActivity;->j()V

    .line 343
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 482
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Lcom/cmplay/tile2/GameApp;->a(J)V

    .line 483
    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onStop()V

    .line 484
    invoke-direct {p0}, Lcom/cmplay/tile2/ui/AppActivity;->o()V

    .line 485
    iget-boolean v0, p0, Lcom/cmplay/tile2/ui/AppActivity;->f:Z

    if-eqz v0, :cond_0

    .line 486
    invoke-direct {p0}, Lcom/cmplay/tile2/ui/AppActivity;->p()V

    .line 488
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasFocus"    # Z

    .prologue
    .line 758
    invoke-super {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onWindowFocusChanged(Z)V

    .line 759
    if-eqz p1, :cond_0

    .line 761
    invoke-direct {p0}, Lcom/cmplay/tile2/ui/AppActivity;->w()V

    .line 763
    :cond_0
    return-void
.end method
