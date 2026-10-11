.class public Lcom/cmplay/util/s;
.super Ljava/lang/Object;
.source "NativeInterfaceImpl.java"

# interfaces
.implements Lcom/cmplay/util/r;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private final h:I

.field private final i:I

.field private final j:I

.field private final k:I

.field private final l:I

.field private final m:I

.field private final n:I

.field private final o:I

.field private final p:I

.field private final q:Ljava/lang/String;

.field private final r:Ljava/lang/String;

.field private final s:Ljava/lang/String;

.field private final t:Ljava/lang/String;

.field private final u:Ljava/lang/String;

.field private final v:Ljava/lang/String;

.field private w:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private x:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1095
    const/4 v0, 0x0

    iput v0, p0, Lcom/cmplay/util/s;->h:I

    .line 1096
    iput v1, p0, Lcom/cmplay/util/s;->i:I

    .line 1097
    iput v2, p0, Lcom/cmplay/util/s;->j:I

    .line 1098
    iput v3, p0, Lcom/cmplay/util/s;->k:I

    .line 1099
    iput v4, p0, Lcom/cmplay/util/s;->l:I

    .line 1102
    iput v5, p0, Lcom/cmplay/util/s;->m:I

    .line 1103
    const/4 v0, 0x6

    iput v0, p0, Lcom/cmplay/util/s;->n:I

    .line 1104
    const/4 v0, 0x7

    iput v0, p0, Lcom/cmplay/util/s;->o:I

    .line 1105
    const/16 v0, 0x8

    iput v0, p0, Lcom/cmplay/util/s;->p:I

    .line 1440
    const-string v0, "res/phonecfg.json"

    iput-object v0, p0, Lcom/cmplay/util/s;->q:Ljava/lang/String;

    .line 1441
    const-string v0, "phonecfg.json"

    iput-object v0, p0, Lcom/cmplay/util/s;->r:Ljava/lang/String;

    .line 1442
    const-string v0, "wavemix-info"

    iput-object v0, p0, Lcom/cmplay/util/s;->s:Ljava/lang/String;

    .line 1925
    const-string v0, "com.cmplay.tiles4.soundmix"

    iput-object v0, p0, Lcom/cmplay/util/s;->t:Ljava/lang/String;

    .line 1926
    const-string v0, "user_enable_mix"

    iput-object v0, p0, Lcom/cmplay/util/s;->u:Ljava/lang/String;

    .line 1927
    const-string v0, "decode_simple_time2"

    iput-object v0, p0, Lcom/cmplay/util/s;->v:Ljava/lang/String;

    .line 2165
    iput v1, p0, Lcom/cmplay/util/s;->a:I

    .line 2166
    iput v2, p0, Lcom/cmplay/util/s;->b:I

    .line 2167
    iput v3, p0, Lcom/cmplay/util/s;->c:I

    .line 2168
    iput v4, p0, Lcom/cmplay/util/s;->d:I

    .line 2169
    iput v5, p0, Lcom/cmplay/util/s;->e:I

    .line 2589
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cmplay/util/s;->w:Ljava/util/ArrayList;

    .line 2590
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cmplay/util/s;->x:Ljava/util/ArrayList;

    return-void
.end method

.method private O(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit16 v1, p1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v1, p1, 0x10

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v1, p1, 0x18

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/cmplay/util/s;)Landroid/app/PendingIntent;
    .locals 1

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/cmplay/util/s;->cb()Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v5, 0x400

    const/4 v4, 0x0

    .line 2742
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2743
    new-array v1, v5, [B

    .line 2745
    :goto_0
    invoke-virtual {p0, v1, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 2746
    invoke-virtual {v0, v1, v4, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 2749
    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const-string v2, "UTF-8"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v1
.end method

.method private ca()V
    .locals 3

    .prologue
    .line 2235
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    const-class v2, Lcom/cmplay/tile2/ui/ReportService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2236
    const-string v1, "command_start_report"

    const-string v2, "command_schedule_all_notifications"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2237
    sget-object v1, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 2238
    return-void
.end method

.method private cb()Landroid/app/PendingIntent;
    .locals 4

    .prologue
    .line 2879
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    const-class v2, Lcom/cmplay/tile2/ui/ReportService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2880
    const-string v1, "command_start_report"

    const-string v2, "command_start_show_get_week_race_diamond"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2881
    sget-object v1, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    const/16 v2, 0x3f2

    const/high16 v3, 0x8000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 2882
    return-object v0
.end method


# virtual methods
.method public A()I
    .locals 1

    .prologue
    .line 155
    sget v0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->mPositionY:F

    float-to-int v0, v0

    return v0
.end method

.method public A(I)V
    .locals 0

    .prologue
    .line 1093
    return-void
.end method

.method public A(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 2962
    new-instance v0, Lcom/cmplay/util/s$35;

    invoke-direct {v0, p0, p1}, Lcom/cmplay/util/s$35;-><init>(Lcom/cmplay/util/s;Ljava/lang/String;)V

    const-wide/16 v2, 0xa

    invoke-static {v0, v2, v3}, Lcom/cmplay/util/i;->a(Ljava/lang/Runnable;J)V

    .line 2988
    return-void
.end method

.method public B()V
    .locals 0

    .prologue
    .line 386
    return-void
.end method

.method public B(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 2992
    new-instance v0, Lcom/cmplay/util/s$36;

    invoke-direct {v0, p0, p1}, Lcom/cmplay/util/s$36;-><init>(Lcom/cmplay/util/s;Ljava/lang/String;)V

    const-wide/16 v2, 0xa

    invoke-static {v0, v2, v3}, Lcom/cmplay/util/i;->a(Ljava/lang/Runnable;J)V

    .line 3017
    return-void
.end method

.method public B(I)Z
    .locals 1

    .prologue
    .line 2496
    const/4 v0, 0x0

    return v0
.end method

.method public C()Ljava/lang/String;
    .locals 1

    .prologue
    .line 395
    invoke-static {}, Lcom/cmplay/util/i;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public C(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 3061
    invoke-static {}, Lcom/cmplay/d/b;->a()Lcom/cmplay/d/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cmplay/d/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public C(I)Z
    .locals 1

    .prologue
    .line 2501
    const/4 v0, 0x0

    return v0
.end method

.method public D()V
    .locals 1

    .prologue
    .line 456
    invoke-static {}, Lcom/cmplay/h/f;->b()Lcom/cmplay/h/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmplay/h/f;->d()V

    .line 457
    return-void
.end method

.method public D(I)V
    .locals 0

    .prologue
    .line 2507
    return-void
.end method

.method public D(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 3075
    sget-object v0, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/cmplay/util/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 3076
    return-void
.end method

.method public E()V
    .locals 2

    .prologue
    .line 590
    invoke-static {}, Lcom/cmplay/h/d;->a()V

    .line 592
    const/4 v0, 0x0

    sput-boolean v0, Lcom/cmplay/h/d;->i:Z

    .line 594
    invoke-static {}, Lcom/cmplay/h/b;->a()Lcom/cmplay/h/b;

    move-result-object v0

    const-string v1, "clk_share_btn_result_pg"

    invoke-virtual {v0, v1}, Lcom/cmplay/h/b;->a(Ljava/lang/String;)V

    .line 598
    return-void
.end method

.method public E(I)V
    .locals 0

    .prologue
    .line 2512
    return-void
.end method

.method public E(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 3081
    return-void
.end method

.method public F()V
    .locals 1

    .prologue
    .line 631
    invoke-static {}, Lcom/cmplay/h/f;->b()Lcom/cmplay/h/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmplay/h/f;->e()V

    .line 632
    return-void
.end method

.method public F(I)V
    .locals 0

    .prologue
    .line 2517
    return-void
.end method

.method public F(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 3294
    sget-object v0, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/cmplay/internalpush/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 3295
    return-void
.end method

.method public G(I)V
    .locals 0

    .prologue
    .line 3111
    return-void
.end method

.method public G(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 3318
    sget-object v0, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/cmplay/internalpush/b;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 3319
    return-void
.end method

.method public G()Z
    .locals 1

    .prologue
    .line 672
    sget-object v0, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmplay/util/v;->a(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public H(I)V
    .locals 0

    .prologue
    .line 2537
    return-void
.end method

.method public H(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 3338
    sget-object v0, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/cmplay/internalpush/b;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 3339
    return-void
.end method

.method public H()Z
    .locals 2

    .prologue
    .line 677
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v0

    .line 678
    sget-object v1, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    .line 679
    if-eqz v0, :cond_0

    .line 680
    const/4 v0, 0x0

    .line 682
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public I(I)V
    .locals 1

    .prologue
    .line 2800
    invoke-static {}, Lcom/cmplay/tile2/ui/AppActivity;->c()Landroid/app/Activity;

    move-result-object v0

    .line 2801
    if-nez v0, :cond_0

    .line 2805
    :goto_0
    return-void

    .line 2804
    :cond_0
    invoke-static {v0, p1}, Lcom/cmplay/tile2/ui/LoveShareActivity;->a(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public I()Z
    .locals 1

    .prologue
    .line 748
    const-string v0, "com.facebook.katana"

    invoke-static {v0}, Lcom/cmplay/util/e;->b(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public I(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 3343
    sget-object v0, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/cmplay/internalpush/b;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public J(I)V
    .locals 1

    .prologue
    .line 3051
    invoke-static {}, Lcom/cmplay/notification/b;->a()Lcom/cmplay/notification/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cmplay/notification/b;->a(I)V

    .line 3052
    return-void
.end method

.method public J(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 3416
    invoke-static {}, Lcom/cmplay/tile2/ui/AppActivity;->c()Landroid/app/Activity;

    move-result-object v0

    .line 3417
    if-eqz v0, :cond_0

    .line 3418
    new-instance v1, Lcom/cmplay/util/s$41;

    invoke-direct {v1, p0, p1}, Lcom/cmplay/util/s$41;-><init>(Lcom/cmplay/util/s;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 3426
    :cond_0
    return-void
.end method

.method public J()Z
    .locals 1

    .prologue
    .line 755
    const-string v0, "com.facebook.orca"

    invoke-static {v0}, Lcom/cmplay/util/e;->b(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public K(I)V
    .locals 1

    .prologue
    .line 3056
    invoke-static {}, Lcom/cmplay/notification/b;->a()Lcom/cmplay/notification/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cmplay/notification/b;->b(I)V

    .line 3057
    return-void
.end method

.method public K()Z
    .locals 1

    .prologue
    .line 762
    const-string v0, "com.twitter.android"

    invoke-static {v0}, Lcom/cmplay/util/e;->b(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public L(I)V
    .locals 0

    .prologue
    .line 3121
    return-void
.end method

.method public L()Z
    .locals 2

    .prologue
    .line 769
    invoke-static {}, Lcom/cmplay/h/f;->b()Lcom/cmplay/h/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmplay/h/f;->a()Z

    move-result v0

    .line 770
    const-string v1, "com.tencent.mm"

    invoke-static {v1}, Lcom/cmplay/util/e;->b(Ljava/lang/String;)Z

    move-result v1

    .line 774
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public M()Z
    .locals 1

    .prologue
    .line 790
    const-string v0, "com.sina.weibo"

    invoke-static {v0}, Lcom/cmplay/util/e;->b(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public M(I)Z
    .locals 1

    .prologue
    .line 3204
    invoke-static {p1}, Lcom/cmplay/util/q;->c(I)Z

    move-result v0

    return v0
.end method

.method public N(I)I
    .locals 1

    .prologue
    .line 3209
    invoke-static {p1}, Lcom/cmplay/util/q;->a(I)I

    move-result v0

    return v0
.end method

.method public N()Z
    .locals 1

    .prologue
    .line 778
    const/4 v0, 0x0

    return v0
.end method

.method public O()Z
    .locals 1

    .prologue
    .line 783
    const/4 v0, 0x0

    return v0
.end method

.method public P()V
    .locals 0

    .prologue
    .line 729
    return-void
.end method

.method public Q()V
    .locals 1

    .prologue
    .line 844
    sget-object v0, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmplay/util/e;->b(Landroid/content/Context;)V

    .line 845
    return-void
.end method

.method public R()Ljava/lang/String;
    .locals 1

    .prologue
    .line 970
    sget-object v0, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    .line 971
    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public S()V
    .locals 1

    .prologue
    .line 1046
    new-instance v0, Lcom/cmplay/util/s$6;

    invoke-direct {v0, p0}, Lcom/cmplay/util/s$6;-><init>(Lcom/cmplay/util/s;)V

    invoke-static {v0}, Lcom/cmplay/util/i;->a(Ljava/lang/Runnable;)V

    .line 1053
    return-void
.end method

.method public T()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1235
    invoke-static {}, Lcom/cmplay/util/NativeUtil;->getAndroidId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public U()V
    .locals 3

    .prologue
    .line 1280
    const-string v0, "cfg"

    const-string v1, "UI process onCLanguage, pull cloud config"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1281
    invoke-static {}, Lcom/cmplay/cloud/a;->a()Lcom/cmplay/cloud/a;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/cmplay/cloud/a;->a(Landroid/content/Context;Z)V

    .line 1282
    return-void
.end method

.method public V()I
    .locals 1

    .prologue
    .line 1310
    const/4 v0, 0x1

    return v0
.end method

.method public W()Z
    .locals 11

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1378
    sget-object v4, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    .line 1380
    const-string v0, "window"

    invoke-virtual {v4, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v5

    .line 1381
    const-string v0, "window"

    invoke-virtual {v4, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 1382
    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1386
    :try_start_0
    const-string v6, "android.view.Display"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 1388
    const-string v7, "getRealMetrics"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Landroid/util/DisplayMetrics;

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 1389
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    invoke-virtual {v6, v0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1390
    iget v0, v4, Landroid/util/DisplayMetrics;->heightPixels:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1394
    :goto_0
    if-ne v0, v3, :cond_0

    move v0, v1

    .line 1399
    :goto_1
    return v0

    .line 1391
    :catch_0
    move-exception v0

    move v0, v3

    .line 1392
    goto :goto_0

    .line 1396
    :cond_0
    if-eq v0, v5, :cond_1

    move v0, v2

    .line 1397
    goto :goto_1

    :cond_1
    move v0, v1

    .line 1399
    goto :goto_1
.end method

.method public X()I
    .locals 9

    .prologue
    const/4 v1, -0x1

    .line 1403
    sget-object v2, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    .line 1405
    const-string v0, "window"

    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v3

    .line 1406
    const-string v0, "window"

    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 1407
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1411
    :try_start_0
    const-string v4, "android.view.Display"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 1413
    const-string v5, "getRealMetrics"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/util/DisplayMetrics;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 1414
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-virtual {v4, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1415
    iget v0, v2, Landroid/util/DisplayMetrics;->heightPixels:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1419
    :goto_0
    if-ne v0, v1, :cond_0

    move v0, v1

    .line 1424
    :goto_1
    return v0

    .line 1416
    :catch_0
    move-exception v0

    move v0, v1

    .line 1417
    goto :goto_0

    .line 1421
    :cond_0
    if-eq v0, v3, :cond_1

    .line 1422
    sub-int/2addr v0, v3

    goto :goto_1

    :cond_1
    move v0, v1

    .line 1424
    goto :goto_1
.end method

.method public final Y()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1429
    sget-object v0, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    .line 1430
    const-string v0, "1635899819990716"

    .line 1431
    invoke-static {}, Lcom/cmplay/util/h;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1432
    const-string v0, "1027486350646867"

    .line 1436
    :cond_0
    :goto_0
    return-object v0

    .line 1433
    :cond_1
    invoke-static {}, Lcom/cmplay/util/h;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1434
    const-string v0, "435291046667403"

    goto :goto_0
.end method

.method public Z()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 1471
    const-string v0, ""

    .line 1472
    sget-object v1, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    .line 1473
    const/4 v4, 0x0

    .line 1474
    const/4 v5, 0x0

    .line 1477
    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "res/phonecfg.json"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_a
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 1479
    const/16 v1, 0x400

    :try_start_1
    new-array v1, v1, [B

    .line 1480
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1482
    :goto_0
    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_3

    .line 1483
    const/4 v8, 0x0

    invoke-virtual {v6, v1, v8, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 1487
    :catch_0
    move-exception v1

    .line 1489
    :goto_1
    :try_start_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1491
    if-eqz v2, :cond_0

    .line 1493
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1498
    :cond_0
    :goto_2
    if-eqz v3, :cond_1

    .line 1500
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_8

    .line 1504
    :cond_1
    :goto_3
    if-eqz v3, :cond_2

    .line 1506
    :try_start_5
    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 1512
    :cond_2
    :goto_4
    return-object v0

    .line 1485
    :cond_3
    :try_start_6
    const-string v1, "UTF-8"

    invoke-virtual {v6, v1}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result-object v0

    .line 1491
    if-eqz v2, :cond_4

    .line 1493
    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 1498
    :cond_4
    :goto_5
    if-eqz v3, :cond_5

    .line 1500
    :try_start_8
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    .line 1504
    :cond_5
    :goto_6
    if-eqz v3, :cond_2

    .line 1506
    :try_start_9
    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_4

    .line 1507
    :catch_1
    move-exception v1

    .line 1508
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 1494
    :catch_2
    move-exception v1

    .line 1495
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 1494
    :catch_3
    move-exception v1

    .line 1495
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 1507
    :catch_4
    move-exception v1

    .line 1508
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 1491
    :catchall_0
    move-exception v0

    move-object v2, v3

    :goto_7
    if-eqz v2, :cond_6

    .line 1493
    :try_start_a
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    .line 1498
    :cond_6
    :goto_8
    if-eqz v3, :cond_7

    .line 1500
    :try_start_b
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9

    .line 1504
    :cond_7
    :goto_9
    if-eqz v3, :cond_8

    .line 1506
    :try_start_c
    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6

    .line 1509
    :cond_8
    :goto_a
    throw v0

    .line 1494
    :catch_5
    move-exception v1

    .line 1495
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 1507
    :catch_6
    move-exception v1

    .line 1508
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    .line 1501
    :catch_7
    move-exception v1

    goto :goto_6

    :catch_8
    move-exception v1

    goto :goto_3

    :catch_9
    move-exception v1

    goto :goto_9

    .line 1491
    :catchall_1
    move-exception v0

    goto :goto_7

    .line 1487
    :catch_a
    move-exception v1

    move-object v2, v3

    goto :goto_1
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;D)D
    .locals 6

    .prologue
    .line 1994
    invoke-static {}, Lcom/cmplay/cloud/a;->a()Lcom/cmplay/cloud/a;

    move-result-object v0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/cmplay/cloud/a;->a(ILjava/lang/String;Ljava/lang/String;D)D

    move-result-wide v0

    return-wide v0
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;I)I
    .locals 1

    .prologue
    .line 1979
    invoke-static {}, Lcom/cmplay/cloud/a;->a()Lcom/cmplay/cloud/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/cmplay/cloud/a;->a(ILjava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;J)J
    .locals 6

    .prologue
    .line 1984
    invoke-static {}, Lcom/cmplay/cloud/a;->a()Lcom/cmplay/cloud/a;

    move-result-object v0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/cmplay/cloud/a;->a(ILjava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public a(Landroid/content/Context;)Ljava/io/File;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 2691
    .line 2692
    if-nez p1, :cond_0

    .line 2693
    sget-object p1, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    .line 2694
    :cond_0
    if-nez p1, :cond_2

    .line 2695
    const-string v1, "feedback"

    const-string v2, "context is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2719
    :cond_1
    :goto_0
    return-object v0

    .line 2699
    :cond_2
    invoke-static {p1}, Lcom/cmplay/i/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 2700
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/logcat.txt"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2701
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2702
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2703
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 2705
    :cond_3
    const-string v3, "feedback"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getting logcat to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2707
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "logcat -v threadtime -d -f "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 2709
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Process;->waitFor()I

    move-result v2

    .line 2710
    const-string v4, "feedback"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "get adb log finished at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2712
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Process;->destroy()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 2717
    :goto_1
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v0, v1

    .line 2718
    goto :goto_0

    .line 2712
    :catchall_0
    move-exception v2

    :try_start_3
    invoke-virtual {v3}, Ljava/lang/Process;->destroy()V

    throw v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 2714
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public a()Ljava/lang/String;
    .locals 3

    .prologue
    .line 131
    const-string v0, "ymym"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " uuid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/cmplay/kinfoc/report/c;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    sget-object v0, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmplay/kinfoc/report/c;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 640
    invoke-static {}, Lcom/cmplay/h/f;->b()Lcom/cmplay/h/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cmplay/h/f;->a(I)V

    .line 641
    return-void
.end method

.method public a(II)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 466
    invoke-static {}, Lcom/cmplay/h/d;->a()V

    .line 468
    const/4 v0, 0x0

    sput-boolean v0, Lcom/cmplay/h/d;->i:Z

    .line 470
    sput p1, Lcom/cmplay/h/d;->m:I

    .line 472
    sput p2, Lcom/cmplay/h/d;->n:I

    .line 474
    invoke-static {}, Lcom/cmplay/util/NativeUtil;->getSongName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cmplay/h/d;->e:Ljava/lang/String;

    .line 476
    invoke-static {}, Lcom/cmplay/util/NativeUtil;->getScore()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cmplay/h/d;->f:Ljava/lang/String;

    .line 484
    const-string v0, ""

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/cmplay/util/j;->a(Ljava/lang/String;Lcom/cmplay/util/j$a;)V

    .line 486
    sget v0, Lcom/cmplay/h/d;->n:I

    if-ne v6, v0, :cond_3

    .line 488
    invoke-static {}, Lcom/cmplay/util/NativeUtil;->getScore()Ljava/lang/String;

    move-result-object v1

    .line 489
    sget v0, Lcom/cmplay/h/d;->m:I

    packed-switch v0, :pswitch_data_0

    .line 582
    :cond_0
    :goto_0
    :pswitch_0
    invoke-static {}, Lcom/cmplay/h/b;->a()Lcom/cmplay/h/b;

    move-result-object v0

    const-string v1, "clk_share_btn_result_pg"

    invoke-virtual {v0, v1}, Lcom/cmplay/h/b;->a(Ljava/lang/String;)V

    .line 583
    return-void

    .line 492
    :pswitch_1
    invoke-static {}, Lcom/cmplay/util/NativeUtil;->getChallengeStatus()I

    move-result v0

    .line 493
    invoke-static {}, Lcom/cmplay/util/NativeUtil;->getSongName()Ljava/lang/String;

    move-result-object v1

    .line 494
    invoke-static {}, Lcom/cmplay/util/i;->e()I

    move-result v2

    .line 495
    invoke-static {}, Lcom/cmplay/util/NativeUtil;->getChallengeLevel()I

    move-result v3

    .line 496
    invoke-static {v0, v1, v2, v3}, Lcom/cmplay/util/j;->a(ILjava/lang/String;II)V

    goto :goto_0

    .line 502
    :pswitch_2
    invoke-static {}, Lcom/cmplay/util/NativeUtil;->getChallengeStatus()I

    move-result v0

    .line 503
    invoke-static {}, Lcom/cmplay/util/NativeUtil;->getSongName()Ljava/lang/String;

    move-result-object v1

    .line 504
    invoke-static {}, Lcom/cmplay/util/i;->e()I

    move-result v2

    .line 505
    invoke-static {}, Lcom/cmplay/util/NativeUtil;->getChallengeLevel()I

    move-result v3

    .line 506
    invoke-static {}, Lcom/cmplay/util/NativeUtil;->getChallengeCurrentScore()I

    move-result v4

    .line 507
    invoke-static {}, Lcom/cmplay/util/NativeUtil;->getChallengePassScore()I

    move-result v5

    .line 508
    if-nez v5, :cond_1

    .line 509
    :goto_1
    invoke-static/range {v0 .. v6}, Lcom/cmplay/util/j;->a(ILjava/lang/String;IIIII)V

    goto :goto_0

    .line 508
    :cond_1
    const/4 v6, 0x2

    goto :goto_1

    .line 514
    :pswitch_3
    invoke-static {}, Lcom/cmplay/util/NativeUtil;->getRanking()I

    move-result v0

    .line 515
    invoke-static {}, Lcom/cmplay/util/NativeUtil;->getHighestAchievement()F

    move-result v2

    .line 520
    invoke-static {v1, v0, v2}, Lcom/cmplay/util/j;->a(Ljava/lang/String;IF)V

    goto :goto_0

    .line 525
    :pswitch_4
    const-string v0, ""

    const-string v1, ""

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/cmplay/util/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 531
    :pswitch_5
    invoke-static {}, Lcom/cmplay/util/i;->f()I

    move-result v2

    .line 532
    const/16 v0, 0xa

    if-le v2, v0, :cond_2

    .line 534
    invoke-static {}, Lcom/cmplay/util/NativeUtil;->getSongName()Ljava/lang/String;

    move-result-object v0

    .line 543
    :goto_2
    invoke-static {v6, v0, v1, v2}, Lcom/cmplay/util/j;->a(ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 537
    :cond_2
    const-string v0, "sharepic_screenshot"

    invoke-static {v0}, Lcom/cmplay/util/NativeUtil;->getLanguageTextByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 549
    :cond_3
    sget v0, Lcom/cmplay/h/d;->n:I

    if-eqz v0, :cond_0

    .line 555
    const/4 v0, 0x3

    sget v1, Lcom/cmplay/h/d;->n:I

    if-ne v0, v1, :cond_0

    .line 559
    sget v0, Lcom/cmplay/h/d;->m:I

    packed-switch v0, :pswitch_data_1

    .line 573
    const-string v0, ""

    const-string v1, ""

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/cmplay/util/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 489
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 559
    :pswitch_data_1
    .packed-switch 0x7
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(III)V
    .locals 3

    .prologue
    .line 2038
    const-string v0, "liuyong"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Nativeutil showAd adType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  reportFrom:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmplay/util/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2039
    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    .line 2040
    sput p2, Lcom/cmplay/ad/a;->f:I

    .line 2042
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/cmplay/ad/a;->g:Z

    .line 2044
    invoke-static {}, Lcom/cmplay/tile2/ui/AppActivity;->c()Landroid/app/Activity;

    move-result-object v0

    .line 2045
    if-nez v0, :cond_1

    .line 2149
    :goto_0
    return-void

    .line 2048
    :cond_1
    new-instance v1, Lcom/cmplay/util/s$26;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/cmplay/util/s$26;-><init>(Lcom/cmplay/util/s;III)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public a(IILjava/lang/String;)V
    .locals 1

    .prologue
    .line 1607
    new-instance v0, Lcom/cmplay/util/s$14;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/cmplay/util/s$14;-><init>(Lcom/cmplay/util/s;IILjava/lang/String;)V

    invoke-static {v0}, Lcom/cmplay/util/i;->a(Ljava/lang/Runnable;)V

    .line 1614
    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 814
    new-instance v0, Lcom/cmplay/util/s$42;

    invoke-direct {v0, p0, p1, p2}, Lcom/cmplay/util/s$42;-><init>(Lcom/cmplay/util/s;ILjava/lang/String;)V

    invoke-static {v0}, Lcom/cmplay/util/i;->a(Ljava/lang/Runnable;)V

    .line 820
    return-void
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1867
    invoke-static {}, Lcom/cmplay/h/f;->b()Lcom/cmplay/h/f;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/cmplay/h/f;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1868
    return-void
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 428
    invoke-static {}, Lcom/cmplay/h/d;->a()V

    .line 430
    const/4 v0, 0x0

    sput-boolean v0, Lcom/cmplay/h/d;->i:Z

    .line 432
    const/4 v0, 0x3

    sput v0, Lcom/cmplay/h/d;->n:I

    .line 434
    sput-object p2, Lcom/cmplay/h/d;->e:Ljava/lang/String;

    .line 435
    sput p1, Lcom/cmplay/h/d;->d:I

    .line 436
    sput-object p4, Lcom/cmplay/h/d;->g:Ljava/lang/String;

    .line 438
    invoke-static {}, Lcom/cmplay/util/NativeUtil;->getScore()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cmplay/h/d;->f:Ljava/lang/String;

    .line 447
    const-string v0, "collection_system"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/cmplay/util/j;->a(Ljava/lang/String;Lcom/cmplay/util/j$a;)V

    .line 448
    const-string v0, "collection_system"

    invoke-static {v0, p3}, Lcom/cmplay/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    invoke-static {}, Lcom/cmplay/h/b;->a()Lcom/cmplay/h/b;

    move-result-object v0

    const-string v1, "clk_col_wall_share_btn"

    invoke-virtual {v0, v1}, Lcom/cmplay/h/b;->a(Ljava/lang/String;)V

    .line 452
    return-void
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7

    .prologue
    .line 3035
    invoke-static {}, Lcom/cmplay/notification/b;->a()Lcom/cmplay/notification/b;

    move-result-object v0

    mul-int/lit16 v6, p6, 0x3e8

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/cmplay/notification/b;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 3037
    return-void
.end method

.method public a(ILjava/lang/String;Z)V
    .locals 1

    .prologue
    .line 1674
    new-instance v0, Lcom/cmplay/util/s$16;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/cmplay/util/s$16;-><init>(Lcom/cmplay/util/s;ILjava/lang/String;Z)V

    invoke-static {v0}, Lcom/cmplay/util/i;->a(Ljava/lang/Runnable;)V

    .line 1680
    return-void
.end method

.method public a(IZ)V
    .locals 3

    .prologue
    .line 2395
    const-string v0, "ymym"

    const-string v1, "ymym notifyPublicDataChange  "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2396
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    const-class v2, Lcom/cmplay/tile2/ui/ReportService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2397
    const-string v1, "command_start_report"

    const-string v2, "command_notify_public"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2398
    sget-object v1, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 2399
    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 707
    invoke-static {}, Lcom/cmplay/tile2/GameApp;->g()Lcom/cmplay/tile2/GameApp;

    move-result-object v0

    new-instance v1, Lcom/cmplay/util/s$12;

    invoke-direct {v1, p0, p2, p1}, Lcom/cmplay/util/s$12;-><init>(Lcom/cmplay/util/s;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/cmplay/tile2/GameApp;->a(Ljava/lang/Runnable;)V

    .line 726
    return-void
.end method

.method public a(Ljava/lang/String;J)V
    .locals 4

    .prologue
    .line 2890
    new-instance v0, Lcom/cmplay/util/s$34;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/cmplay/util/s$34;-><init>(Lcom/cmplay/util/s;Ljava/lang/String;J)V

    const-wide/16 v2, 0xa

    invoke-static {v0, v2, v3}, Lcom/cmplay/util/i;->a(Ljava/lang/Runnable;J)V

    .line 2954
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 985
    new-instance v0, Lcom/cmplay/util/s$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/cmplay/util/s$2;-><init>(Lcom/cmplay/util/s;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/cmplay/util/i;->a(Ljava/lang/Runnable;)V

    .line 992
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 944
    const/16 v0, 0x7d1

    invoke-static {p1, p2, p3, v0}, Lcom/cmplay/util/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 945
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6

    .prologue
    .line 609
    new-instance v0, Lcom/cmplay/util/s$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/cmplay/util/s$1;-><init>(Lcom/cmplay/util/s;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    const-wide/16 v2, 0x3e8

    invoke-static {v0, v2, v3}, Lcom/cmplay/base/util/d;->a(Ljava/lang/Runnable;J)V

    .line 627
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    .prologue
    .line 3377
    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 925
    invoke-static {}, Lcom/cmplay/tile2/ui/AppActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 926
    new-instance v1, Lcom/cmplay/util/s$45;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/cmplay/util/s$45;-><init>(Lcom/cmplay/util/s;Landroid/app/Activity;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 934
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 953
    if-eqz p1, :cond_0

    .line 954
    invoke-static {}, Lcom/cmplay/util/i;->b()V

    .line 958
    :goto_0
    return-void

    .line 956
    :cond_0
    invoke-static {}, Lcom/cmplay/util/i;->a()V

    goto :goto_0
.end method

.method public a(ZI)V
    .locals 2

    .prologue
    .line 2358
    invoke-static {}, Lcom/cmplay/tile2/GameApp;->g()Lcom/cmplay/tile2/GameApp;

    move-result-object v0

    new-instance v1, Lcom/cmplay/util/s$28;

    invoke-direct {v1, p0}, Lcom/cmplay/util/s$28;-><init>(Lcom/cmplay/util/s;)V

    invoke-virtual {v0, v1}, Lcom/cmplay/tile2/GameApp;->a(Ljava/lang/Runnable;)V

    .line 2364
    return-void
.end method

.method public a(IIIZ)Z
    .locals 3

    .prologue
    .line 2027
    const-string v0, "liuyong"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Nativeutil canAdShow adType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  reportFrom:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "    isClicked:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmplay/util/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2028
    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    .line 2029
    sput p2, Lcom/cmplay/ad/a;->f:I

    .line 2031
    :cond_0
    sput-boolean p4, Lcom/cmplay/ad/a;->g:Z

    .line 2033
    invoke-static {p1, p2}, Lcom/cmplay/ad/a;->a(II)Z

    move-result v0

    return v0
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;Z)Z
    .locals 1

    .prologue
    .line 1989
    invoke-static {}, Lcom/cmplay/cloud/a;->a()Lcom/cmplay/cloud/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/cmplay/cloud/a;->a(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 668
    invoke-static {p1}, Lcom/cmplay/util/e;->b(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;II)Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 406
    sput-object p1, Lcom/cmplay/h/d;->c:Ljava/lang/String;

    .line 408
    sput p2, Lcom/cmplay/h/d;->d:I

    .line 410
    sput-boolean v0, Lcom/cmplay/h/d;->j:Z

    .line 414
    return v0
.end method

.method public aA()V
    .locals 0

    .prologue
    .line 177
    return-void
.end method

.method public aB()V
    .locals 0

    .prologue
    .line 182
    return-void
.end method

.method public aC()V
    .locals 0

    .prologue
    .line 187
    return-void
.end method

.method public aD()V
    .locals 0

    .prologue
    .line 192
    return-void
.end method

.method public aE()I
    .locals 1

    .prologue
    .line 320
    const/4 v0, 0x0

    return v0
.end method

.method public aF()I
    .locals 1

    .prologue
    .line 2179
    const/4 v0, 0x0

    return v0
.end method

.method public aG()V
    .locals 0

    .prologue
    .line 2327
    return-void
.end method

.method public aH()Z
    .locals 1

    .prologue
    .line 2331
    const/4 v0, 0x0

    return v0
.end method

.method public aI()V
    .locals 0

    .prologue
    .line 2347
    return-void
.end method

.method public aJ()V
    .locals 0

    .prologue
    .line 2352
    return-void
.end method

.method public aK()Z
    .locals 1

    .prologue
    .line 197
    const/4 v0, 0x0

    return v0
.end method

.method public aL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    const/4 v0, 0x0

    return-object v0
.end method

.method public aM()Ljava/lang/String;
    .locals 1

    .prologue
    .line 207
    const/4 v0, 0x0

    return-object v0
.end method

.method public aN()I
    .locals 1

    .prologue
    .line 212
    const/4 v0, 0x0

    return v0
.end method

.method public aO()I
    .locals 1

    .prologue
    .line 2491
    const/4 v0, 0x0

    return v0
.end method

.method public aP()Landroid/content/res/AssetManager;
    .locals 1

    .prologue
    .line 961
    sget-object v0, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    return-object v0
.end method

.method public aQ()Z
    .locals 1

    .prologue
    .line 966
    const/4 v0, 0x0

    return v0
.end method

.method public aR()Z
    .locals 1

    .prologue
    .line 2521
    const/4 v0, 0x0

    return v0
.end method

.method public aS()I
    .locals 1

    .prologue
    .line 3100
    const/4 v0, 0x0

    return v0
.end method

.method public aT()I
    .locals 1

    .prologue
    .line 3105
    const/4 v0, 0x0

    return v0
.end method

.method public aU()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2543
    invoke-static {}, Lcom/cmplay/tile2/GameApp;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public aV()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2548
    invoke-static {}, Lcom/cmplay/tile2/GameApp;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public aW()Z
    .locals 1

    .prologue
    .line 2553
    sget-boolean v0, Lcom/cmplay/tile2/GameApp;->c:Z

    return v0
.end method

.method public aX()V
    .locals 2

    .prologue
    .line 2558
    invoke-static {}, Lcom/cmplay/tile2/ui/AppActivity;->c()Landroid/app/Activity;

    move-result-object v0

    .line 2559
    if-nez v0, :cond_0

    .line 2569
    :goto_0
    return-void

    .line 2562
    :cond_0
    new-instance v1, Lcom/cmplay/util/s$31;

    invoke-direct {v1, p0, v0}, Lcom/cmplay/util/s$31;-><init>(Lcom/cmplay/util/s;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public aY()Z
    .locals 1

    .prologue
    .line 2686
    invoke-static {}, Lcom/cmplay/i/c;->a()Z

    move-result v0

    return v0
.end method

.method public aZ()V
    .locals 2

    .prologue
    .line 2809
    invoke-static {}, Lcom/cmplay/tile2/ui/AppActivity;->c()Landroid/app/Activity;

    move-result-object v0

    .line 2810
    if-nez v0, :cond_0

    .line 2815
    :goto_0
    return-void

    .line 2813
    :cond_0
    const/4 v1, 0x1

    sput v1, Lcom/cmplay/h/d;->n:I

    .line 2814
    invoke-static {v0}, Lcom/cmplay/tile2/ui/ChristmasShareActivity;->a(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public aa()Z
    .locals 1

    .prologue
    .line 1531
    sget-boolean v0, Lcom/cmplay/util/WiredHeadStateReceiver;->a:Z

    return v0
.end method

.method public ab()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1550
    invoke-virtual {p0}, Lcom/cmplay/util/s;->Z()Ljava/lang/String;

    move-result-object v1

    .line 1551
    invoke-virtual {p0, v1}, Lcom/cmplay/util/s;->l(Ljava/lang/String;)I

    move-result v2

    .line 1552
    invoke-virtual {p0}, Lcom/cmplay/util/s;->ag()Ljava/lang/String;

    move-result-object v0

    .line 1553
    invoke-virtual {p0, v0}, Lcom/cmplay/util/s;->l(Ljava/lang/String;)I

    move-result v3

    .line 1558
    if-le v3, v2, :cond_0

    .line 1563
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public ac()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x3e8

    const/4 v4, 0x1

    .line 1572
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    const-class v2, Lcom/cmplay/tile2/ui/AppActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1573
    sget-object v1, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 1576
    sget-object v0, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1577
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_0

    .line 1578
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, v6

    invoke-virtual {v0, v4, v2, v3, v1}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    .line 1586
    :goto_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 1587
    return-void

    .line 1579
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_1

    .line 1580
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, v6

    invoke-virtual {v0, v4, v2, v3, v1}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 1582
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, v6

    invoke-virtual {v0, v4, v2, v3, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method public ad()V
    .locals 4

    .prologue
    .line 1737
    new-instance v0, Lcom/cmplay/util/s$21;

    invoke-direct {v0, p0}, Lcom/cmplay/util/s$21;-><init>(Lcom/cmplay/util/s;)V

    const-wide/16 v2, 0x64

    invoke-static {v0, v2, v3}, Lcom/cmplay/util/i;->a(Ljava/lang/Runnable;J)V

    .line 1749
    return-void
.end method

.method public ae()Z
    .locals 1

    .prologue
    .line 1775
    invoke-static {}, Lcom/cmplay/a/c;->a()Lcom/cmplay/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmplay/a/c;->b()Z

    move-result v0

    return v0
.end method

.method public af()V
    .locals 2

    .prologue
    .line 1782
    invoke-static {}, Lcom/cmplay/tile2/ui/AppActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/cmplay/tile2/ui/AppActivity;

    .line 1783
    invoke-static {}, Lcom/cmplay/a/a;->a()Lcom/cmplay/a/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/cmplay/a/a;->b(Landroid/app/Activity;)V

    .line 1784
    return-void
.end method

.method public ag()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1922
    const/4 v0, 0x2

    const-string v1, "section_common"

    invoke-virtual {p0, v0, v1}, Lcom/cmplay/util/s;->k(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ah()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1930
    sget-object v0, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    const-string v1, "com.cmplay.tiles4.soundmix"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1931
    const-string v1, "user_enable_mix"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public ai()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1944
    sget-object v0, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    const-string v1, "com.cmplay.tiles4.soundmix"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1945
    const-string v1, "decode_simple_time2"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public aj()I
    .locals 4

    .prologue
    .line 2003
    sget-object v0, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmplay/kinfoc/report/c;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2004
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2005
    invoke-static {}, Lcom/cmplay/util/e;->a()[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 2007
    :cond_0
    new-instance v1, Ljava/util/zip/CRC32;

    invoke-direct {v1}, Ljava/util/zip/CRC32;-><init>()V

    .line 2009
    :try_start_0
    const-string v2, "UTF-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/zip/CRC32;->update([B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2014
    :goto_0
    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v0

    const-wide/16 v2, 0xa

    rem-long/2addr v0, v2

    .line 2015
    long-to-int v0, v0

    return v0

    .line 2010
    :catch_0
    move-exception v0

    .line 2011
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method public ak()V
    .locals 1

    .prologue
    .line 2185
    sget-object v0, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmplay/g/a;->b(Landroid/content/Context;)V

    .line 2186
    return-void
.end method

.method public al()I
    .locals 1

    .prologue
    .line 2207
    const/4 v0, 0x0

    return v0
.end method

.method public am()Z
    .locals 2

    .prologue
    .line 2221
    const-string v0, "key_msg_box_enable"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/cmplay/util/aa;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public an()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2226
    const-string v0, ""

    .line 2227
    return-object v0
.end method

.method public ao()V
    .locals 0

    .prologue
    .line 2232
    return-void
.end method

.method public ap()V
    .locals 13

    .prologue
    const/4 v10, 0x4

    const/4 v1, 0x2

    const/4 v9, 0x3

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 2248
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/cmplay/util/b/b;->b(J)V

    .line 2250
    invoke-direct {p0}, Lcom/cmplay/util/s;->ca()V

    .line 2251
    invoke-static {}, Lcom/cmplay/util/b/b;->c()I

    move-result v3

    .line 2252
    invoke-static {}, Lcom/cmplay/util/b/b;->d()I

    move-result v4

    .line 2253
    invoke-static {}, Lcom/cmplay/util/b/b;->e()I

    move-result v2

    .line 2258
    invoke-static {}, Lcom/cmplay/exitpopup/a;->a()Lcom/cmplay/exitpopup/a;

    move-result-object v0

    sget-object v5, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    invoke-virtual {v0, v5, v8, v8}, Lcom/cmplay/exitpopup/a;->a(Landroid/content/Context;IZ)Z

    move-result v5

    .line 2259
    if-lt v3, v9, :cond_f

    if-lez v4, :cond_f

    if-eqz v5, :cond_f

    move v0, v7

    .line 2262
    :goto_0
    const-string v6, "internal_push_game_exit"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "userLevel:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\nplayCount:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\nmusiCount:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\ncanshowExitGame:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2265
    invoke-static {}, Lcom/cmplay/tile2/ui/AppActivity;->c()Landroid/app/Activity;

    move-result-object v5

    .line 2266
    if-eqz v0, :cond_e

    if-eqz v5, :cond_e

    .line 2267
    const-string v6, "internal_push_game_exit"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\u7ea7\u6570\uff1a"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", \u66f2\u5b50\u6570\uff1a"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v11}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2268
    const-string v6, "internal_push_game_exit"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\u83b7\u53d6\u8bed\u8a00\u8868\u6587\u6848\u4f20\u7ed9\u670d\u52a1\u8fdb\u7a0b\uff1a"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "desktoppopup_played1"

    invoke-static {v12}, Lcom/cmplay/util/NativeUtil;->getLanguageTextByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v11}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2269
    new-array v6, v10, [Ljava/lang/String;

    .line 2270
    const-string v11, "desktoppopup_played1"

    invoke-static {v11}, Lcom/cmplay/util/NativeUtil;->getLanguageTextByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v6, v8

    .line 2271
    const-string v11, "desktoppopup_played2"

    invoke-static {v11}, Lcom/cmplay/util/NativeUtil;->getLanguageTextByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v6, v7

    .line 2272
    const-string v11, "desktoppopup_played1s"

    invoke-static {v11}, Lcom/cmplay/util/NativeUtil;->getLanguageTextByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v6, v1

    .line 2273
    const-string v11, "desktoppopup_played2s"

    invoke-static {v11}, Lcom/cmplay/util/NativeUtil;->getLanguageTextByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v6, v9

    .line 2274
    invoke-static {}, Lcom/cmplay/exitpopup/a;->a()Lcom/cmplay/exitpopup/a;

    move-result-object v11

    invoke-virtual {v11, v5, v2, v6}, Lcom/cmplay/exitpopup/a;->a(Landroid/app/Activity;I[Ljava/lang/String;)V

    move v2, v7

    .line 2278
    :goto_1
    const-string v6, ""

    .line 2280
    if-ne v2, v1, :cond_d

    .line 2281
    const-string v6, "10"

    .line 2283
    invoke-static {}, Lcom/cmplay/exitpopup/a;->a()Lcom/cmplay/exitpopup/a;

    move-result-object v1

    sget-object v5, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    invoke-virtual {v1, v5}, Lcom/cmplay/exitpopup/a;->b(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v1

    .line 2284
    const-string v5, "pop_zzb"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "failMap="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2285
    invoke-static {}, Lcom/cmplay/exitpopup/a;->a()Lcom/cmplay/exitpopup/a;

    move-result-object v5

    sget-object v11, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    invoke-virtual {v5, v11}, Lcom/cmplay/exitpopup/a;->a(Landroid/content/Context;)I

    move-result v5

    .line 2286
    if-ge v3, v9, :cond_2

    const-string v6, "1"

    move v7, v8

    .line 2317
    :cond_0
    :goto_2
    if-nez v7, :cond_1

    .line 2319
    new-instance v0, Lcom/cmplay/exitpopup/d;

    invoke-direct {v0}, Lcom/cmplay/exitpopup/d;-><init>()V

    const/16 v1, 0x411

    move v3, v8

    move v4, v8

    move v5, v8

    invoke-virtual/range {v0 .. v6}, Lcom/cmplay/exitpopup/d;->a(IIIIILjava/lang/String;)V

    .line 2322
    :cond_1
    return-void

    .line 2287
    :cond_2
    if-ge v4, v7, :cond_3

    const-string v6, "2"

    move v7, v8

    goto :goto_2

    .line 2288
    :cond_3
    if-nez v0, :cond_4

    const-string v6, "102"

    move v7, v8

    goto :goto_2

    .line 2289
    :cond_4
    if-eqz v5, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move v7, v8

    goto :goto_2

    .line 2290
    :cond_5
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_d

    .line 2292
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 2293
    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2294
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2295
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ljava/lang/String;

    .line 2296
    const/16 v1, 0xa

    .line 2298
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 2300
    const/4 v0, 0x7

    if-ne v5, v0, :cond_6

    move v0, v9

    .line 2306
    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2307
    const-string v0, "pop_zzb"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "proid="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "failReason="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2309
    :try_start_0
    new-instance v0, Lcom/cmplay/exitpopup/d;

    invoke-direct {v0}, Lcom/cmplay/exitpopup/d;-><init>()V

    const/16 v1, 0x411

    const/4 v3, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual/range {v0 .. v6}, Lcom/cmplay/exitpopup/d;->a(IIIIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 2310
    :catch_0
    move-exception v0

    .line 2311
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 2301
    :cond_6
    if-eq v5, v7, :cond_7

    const/16 v0, 0xc

    if-ne v5, v0, :cond_8

    :cond_7
    move v0, v10

    goto :goto_4

    .line 2302
    :cond_8
    const/16 v0, 0x8

    if-ne v5, v0, :cond_9

    const/4 v0, 0x6

    goto :goto_4

    .line 2303
    :cond_9
    const/16 v0, 0x50

    if-ne v5, v0, :cond_a

    const/16 v0, 0x8

    goto :goto_4

    .line 2304
    :cond_a
    const/16 v0, 0xb

    if-ne v5, v0, :cond_b

    const/4 v0, 0x7

    goto :goto_4

    .line 2305
    :cond_b
    const/16 v0, 0x6e

    if-ne v5, v0, :cond_c

    const/16 v0, 0x9

    goto :goto_4

    :cond_c
    move v0, v1

    goto :goto_4

    :cond_d
    move v7, v8

    goto/16 :goto_2

    :cond_e
    move v2, v1

    goto/16 :goto_1

    :cond_f
    move v0, v8

    goto/16 :goto_0
.end method

.method public aq()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2368
    invoke-static {}, Lcom/cmplay/util/NativeUtil;->isLoginGameCenter()Z

    move-result v0

    .line 2369
    sget-object v1, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/cmplay/webview/ipc/a/b;->a(Landroid/content/Context;)Lcom/cmplay/webview/ipc/a/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/cmplay/webview/ipc/a/b;->a(Z)V

    .line 2370
    sget-object v0, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmplay/webview/ipc/a/b;->a(Landroid/content/Context;)Lcom/cmplay/webview/ipc/a/b;

    move-result-object v0

    invoke-static {}, Lcom/cmplay/util/NativeUtil;->getPlayerInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmplay/webview/ipc/a/b;->a(Ljava/lang/String;)V

    .line 2373
    sget-object v0, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmplay/webview/ipc/a/b;->a(Landroid/content/Context;)Lcom/cmplay/webview/ipc/a/b;

    move-result-object v0

    const-string v1, "diamond_count"

    invoke-static {v3}, Lcom/cmplay/util/NativeUtil;->getDiamond(Z)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/cmplay/webview/ipc/a/b;->b(Ljava/lang/String;I)V

    .line 2374
    sget-object v0, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmplay/webview/ipc/a/b;->a(Landroid/content/Context;)Lcom/cmplay/webview/ipc/a/b;

    move-result-object v0

    const-string v1, "coin_count"

    invoke-static {v3}, Lcom/cmplay/util/NativeUtil;->getCurCoin(Z)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/cmplay/webview/ipc/a/b;->b(Ljava/lang/String;I)V

    .line 2375
    sget-object v0, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmplay/webview/ipc/a/b;->a(Landroid/content/Context;)Lcom/cmplay/webview/ipc/a/b;

    move-result-object v0

    const-string v1, "life_count"

    invoke-static {v3}, Lcom/cmplay/util/NativeUtil;->getCurHP(Z)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/cmplay/webview/ipc/a/b;->b(Ljava/lang/String;I)V

    .line 2376
    const-string v0, "ymymym"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startWebView  : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v3}, Lcom/cmplay/util/NativeUtil;->getDiamond(Z)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v3}, Lcom/cmplay/util/NativeUtil;->getCurCoin(Z)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v3}, Lcom/cmplay/util/NativeUtil;->getCurHP(Z)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2378
    sget-object v0, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmplay/webview/ipc/a/b;->a(Landroid/content/Context;)Lcom/cmplay/webview/ipc/a/b;

    move-result-object v0

    const-string v1, "feed_back_device_json"

    invoke-static {}, Lcom/cmplay/webview/d/d;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/cmplay/webview/ipc/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2380
    invoke-static {}, Lcom/cmplay/tile2/ui/AppActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "http://board.cmcm.com/dttwt2/christmas.html"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/cmplay/webview/ui/WebViewActivity;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 2381
    return-void
.end method

.method public ar()Z
    .locals 1

    .prologue
    .line 2385
    invoke-static {}, Lcom/cmplay/util/h;->d()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/cmplay/util/h;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public as()Z
    .locals 1

    .prologue
    .line 2390
    invoke-static {}, Lcom/cmplay/util/h;->d()Z

    move-result v0

    return v0
.end method

.method public at()Z
    .locals 2

    .prologue
    .line 2402
    const-string v0, "key_h5_login"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/cmplay/util/aa;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public au()V
    .locals 0

    .prologue
    .line 2429
    return-void
.end method

.method public av()J
    .locals 2

    .prologue
    .line 2434
    invoke-static {}, Lcom/cmplay/tile2/GameApp;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method public aw()J
    .locals 2

    .prologue
    .line 2436
    invoke-static {}, Lcom/cmplay/tile2/GameApp;->b()J

    move-result-wide v0

    return-wide v0
.end method

.method public ax()J
    .locals 2

    .prologue
    .line 2438
    invoke-static {}, Lcom/cmplay/tile2/GameApp;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method public ay()V
    .locals 3

    .prologue
    .line 2451
    sget-object v0, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmplay/webview/ipc/a/b;->a(Landroid/content/Context;)Lcom/cmplay/webview/ipc/a/b;

    move-result-object v0

    const-string v1, "feed_back_device_json"

    invoke-static {}, Lcom/cmplay/webview/d/d;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/cmplay/webview/ipc/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2452
    invoke-static {}, Lcom/cmplay/tile2/ui/AppActivity;->c()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "http://board.cmcm.com/feedback/feedback.html?v=a"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/cmplay/webview/ui/WebViewActivity;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 2453
    return-void
.end method

.method public az()V
    .locals 6

    .prologue
    .line 2469
    const-string v0, "key_gameproblem_mess_recommend"

    new-instance v1, Ljava/lang/Long;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x5265c00

    div-long/2addr v2, v4

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/cmplay/util/aa;->a(Ljava/lang/String;I)V

    .line 2470
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x3

    .line 137
    sget-object v0, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    .line 138
    if-nez v0, :cond_0

    move-object v0, v1

    .line 148
    :goto_0
    return-object v0

    .line 140
    :cond_0
    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 141
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    .line 143
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v3, :cond_1

    .line 144
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 145
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 146
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 148
    goto :goto_0
.end method

.method public b(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1067
    const/4 v0, 0x0

    return-object v0
.end method

.method public b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 1108
    invoke-static {}, Lcom/cmplay/pay/PayAdapterGetter;->getInstance()Lcom/cmplay/pay/PayAdapterGetter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmplay/pay/PayAdapterGetter;->getAdapter()Lcom/cmplay/base/a;

    move-result-object v2

    .line 1109
    if-eqz v2, :cond_0

    .line 1110
    new-instance v0, Lcom/cmplay/util/s$10;

    invoke-direct {v0, p0}, Lcom/cmplay/util/s$10;-><init>(Lcom/cmplay/util/s;)V

    invoke-virtual {v2, v0}, Lcom/cmplay/base/a;->setPayCallback(Lcom/cmplay/base/d;)V

    .line 1160
    :cond_0
    invoke-static {}, Lcom/cmplay/util/h;->e()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/cmplay/util/h;->f()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1161
    :cond_1
    invoke-static {}, Lcom/cmplay/cloud/a;->a()Lcom/cmplay/cloud/a;

    move-result-object v0

    const-string v1, "section_common"

    const-string v3, "cloud_key_naranya_pay_row_prefixgpArm"

    invoke-virtual {v0, v5, v1, v3, v4}, Lcom/cmplay/cloud/a;->a(ILjava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 1165
    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1166
    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1167
    invoke-static {}, Lcom/cmplay/pay/PayAdapterGetter;->getInstance()Lcom/cmplay/pay/PayAdapterGetter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cmplay/pay/PayAdapterGetter;->getAdapter()Lcom/cmplay/base/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/cmplay/base/a;->setPriceRowCount(I)V

    .line 1178
    :cond_2
    :goto_0
    invoke-static {}, Lcom/cmplay/tile2/GameApp;->g()Lcom/cmplay/tile2/GameApp;

    move-result-object v7

    new-instance v0, Lcom/cmplay/util/s$11;

    move-object v1, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/cmplay/util/s$11;-><init>(Lcom/cmplay/util/s;Lcom/cmplay/base/a;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Lcom/cmplay/tile2/GameApp;->a(Ljava/lang/Runnable;)V

    .line 1218
    const-string v0, ""

    return-object v0

    .line 1168
    :cond_3
    invoke-static {}, Lcom/cmplay/util/h;->h()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/cmplay/util/h;->g()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1169
    :cond_4
    invoke-static {}, Lcom/cmplay/cloud/a;->a()Lcom/cmplay/cloud/a;

    move-result-object v0

    const-string v1, "section_common"

    const-string v3, "cloud_key_naranya_pay_row_prefixgpArm"

    invoke-virtual {v0, v5, v1, v3, v5}, Lcom/cmplay/cloud/a;->a(ILjava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 1171
    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1172
    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1173
    invoke-static {}, Lcom/cmplay/pay/PayAdapterGetter;->getInstance()Lcom/cmplay/pay/PayAdapterGetter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cmplay/pay/PayAdapterGetter;->getAdapter()Lcom/cmplay/base/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/cmplay/base/a;->setPriceRowCount(I)V

    goto :goto_0

    .line 1174
    :cond_5
    invoke-static {}, Lcom/cmplay/util/h;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1175
    invoke-static {}, Lcom/cmplay/pay/PayAdapterGetter;->getInstance()Lcom/cmplay/pay/PayAdapterGetter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmplay/pay/PayAdapterGetter;->getAdapter()Lcom/cmplay/base/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/cmplay/util/s;->bZ()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmplay/base/a;->setSocialId(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b(I)V
    .locals 1

    .prologue
    .line 648
    const/4 v0, 0x2

    sput v0, Lcom/cmplay/h/d;->n:I

    .line 649
    const/4 v0, 0x6

    if-eq v0, p1, :cond_0

    const/4 v0, 0x7

    if-ne v0, p1, :cond_1

    .line 650
    :cond_0
    invoke-static {}, Lcom/cmplay/h/f;->b()Lcom/cmplay/h/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cmplay/h/f;->c(I)Z

    .line 657
    :goto_0
    return-void

    .line 652
    :cond_1
    invoke-static {}, Lcom/cmplay/h/f;->b()Lcom/cmplay/h/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cmplay/h/f;->b(I)Z

    goto :goto_0
.end method

.method public b(II)V
    .locals 1

    .prologue
    .line 795
    new-instance v0, Lcom/cmplay/util/s$22;

    invoke-direct {v0, p0, p1, p2}, Lcom/cmplay/util/s$22;-><init>(Lcom/cmplay/util/s;II)V

    invoke-static {v0}, Lcom/cmplay/util/i;->a(Ljava/lang/Runnable;)V

    .line 801
    return-void
.end method

.method public b(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1875
    invoke-static {}, Lcom/cmplay/h/f;->b()Lcom/cmplay/h/f;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/cmplay/h/f;->b(ILjava/lang/String;Ljava/lang/String;)V

    .line 1876
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 689
    invoke-static {p1}, Lcom/cmplay/util/i;->a(Ljava/lang/String;)V

    .line 690
    return-void
.end method

.method public b(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 3025
    invoke-static {p1, p2}, Lcom/cmplay/util/aa;->a(Ljava/lang/String;I)V

    .line 3026
    return-void
.end method

.method public b(Ljava/lang/String;J)V
    .locals 0

    .prologue
    .line 3030
    invoke-static {p1, p2, p3}, Lcom/cmplay/util/aa;->a(Ljava/lang/String;J)V

    .line 3031
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 995
    new-instance v0, Lcom/cmplay/util/s$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/cmplay/util/s$3;-><init>(Lcom/cmplay/util/s;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/cmplay/util/i;->a(Ljava/lang/Runnable;)V

    .line 1009
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1082
    new-instance v0, Lcom/cmplay/util/s$9;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/cmplay/util/s$9;-><init>(Lcom/cmplay/util/s;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/cmplay/util/i;->a(Ljava/lang/Runnable;)V

    .line 1088
    return-void
.end method

.method public b(Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 3020
    invoke-static {p1, p2}, Lcom/cmplay/util/aa;->a(Ljava/lang/String;Z)V

    .line 3021
    return-void
.end method

.method public b(Z)V
    .locals 1

    .prologue
    .line 1535
    new-instance v0, Lcom/cmplay/util/s$13;

    invoke-direct {v0, p0, p1}, Lcom/cmplay/util/s$13;-><init>(Lcom/cmplay/util/s;Z)V

    invoke-static {v0}, Lcom/cmplay/util/i;->a(Ljava/lang/Runnable;)V

    .line 1541
    return-void
.end method

.method public b(ZI)Z
    .locals 3

    .prologue
    .line 3232
    const-string v0, "internal_push"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NativeInterfaceImpl.canShowOpenScreen   isNewUrser:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  scence:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3233
    sget-object v0, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    invoke-static {v0, p2, p1}, Lcom/cmplay/internalpush/b;->a(Landroid/content/Context;IZ)Z

    move-result v0

    return v0
.end method

.method public bA()Z
    .locals 1

    .prologue
    .line 3193
    const/4 v0, 0x1

    return v0
.end method

.method public bB()Z
    .locals 1

    .prologue
    .line 3198
    const/4 v0, 0x1

    return v0
.end method

.method public bC()Z
    .locals 1

    .prologue
    .line 895
    const/4 v0, 0x0

    return v0
.end method

.method public bD()V
    .locals 0

    .prologue
    .line 901
    return-void
.end method

.method public bE()Z
    .locals 1

    .prologue
    .line 905
    const/4 v0, 0x0

    return v0
.end method

.method public bF()I
    .locals 1

    .prologue
    .line 3214
    sget-object v0, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmplay/util/o;->a(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public bG()V
    .locals 3

    .prologue
    .line 3225
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    const-class v2, Lcom/cmplay/tile2/ui/ReportService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3226
    const-string v1, "command_start_report"

    const-string v2, "command_notify_leveing_data_changed"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3227
    sget-object v1, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 3228
    return-void
.end method

.method public bH()V
    .locals 4

    .prologue
    .line 3238
    const-string v0, "internal_push"

    const-string v1, "NativeInterfaceImpl.showOpenScreen"

    invoke-static {v0, v1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3239
    new-instance v0, Lcom/cmplay/util/s$37;

    invoke-direct {v0, p0}, Lcom/cmplay/util/s$37;-><init>(Lcom/cmplay/util/s;)V

    const-wide/16 v2, 0xa

    invoke-static {v0, v2, v3}, Lcom/cmplay/util/i;->a(Ljava/lang/Runnable;J)V

    .line 3248
    return-void
.end method

.method public bI()V
    .locals 4

    .prologue
    .line 3252
    const-string v0, "internal_push"

    const-string v1, "NativeInterfaceImpl.closeOpenScreen"

    invoke-static {v0, v1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3253
    new-instance v0, Lcom/cmplay/util/s$38;

    invoke-direct {v0, p0}, Lcom/cmplay/util/s$38;-><init>(Lcom/cmplay/util/s;)V

    const-wide/16 v2, 0xa

    invoke-static {v0, v2, v3}, Lcom/cmplay/util/i;->a(Ljava/lang/Runnable;J)V

    .line 3262
    return-void
.end method

.method public bJ()Z
    .locals 1

    .prologue
    .line 3266
    sget-object v0, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmplay/internalpush/b;->a(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public bK()V
    .locals 4

    .prologue
    .line 3271
    new-instance v0, Lcom/cmplay/util/s$39;

    invoke-direct {v0, p0}, Lcom/cmplay/util/s$39;-><init>(Lcom/cmplay/util/s;)V

    const-wide/16 v2, 0xa

    invoke-static {v0, v2, v3}, Lcom/cmplay/util/i;->a(Ljava/lang/Runnable;J)V

    .line 3280
    return-void
.end method

.method public bL()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3284
    sget-object v0, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    invoke-static {v0, v1, v1}, Lcom/cmplay/internalpush/b;->b(Landroid/content/Context;IZ)Z

    move-result v0

    return v0
.end method

.method public bM()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3289
    sget-object v0, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmplay/internalpush/b;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bN()Z
    .locals 1

    .prologue
    .line 3299
    sget-object v0, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmplay/internalpush/b;->c(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public bO()Z
    .locals 1

    .prologue
    .line 3304
    sget-object v0, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmplay/internalpush/b;->d(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public bP()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3309
    sget-object v0, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmplay/internalpush/b;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 3313
    return-object v0
.end method

.method public bQ()Z
    .locals 1

    .prologue
    .line 3323
    sget-object v0, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmplay/internalpush/b;->f(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public bR()Z
    .locals 1

    .prologue
    .line 3328
    sget-object v0, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmplay/internalpush/b;->g(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public bS()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3333
    sget-object v0, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmplay/internalpush/b;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bT()Z
    .locals 1

    .prologue
    .line 3348
    sget-object v0, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmplay/i/c;->a(Landroid/content/Context;)V

    .line 3349
    invoke-static {}, Lcom/cmplay/i/c;->b()Z

    move-result v0

    return v0
.end method

.method public bU()Z
    .locals 1

    .prologue
    .line 3354
    sget-object v0, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmplay/i/c;->a(Landroid/content/Context;)V

    .line 3355
    invoke-static {}, Lcom/cmplay/i/c;->a()Z

    move-result v0

    return v0
.end method

.method public bV()V
    .locals 3

    .prologue
    .line 3360
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    const-class v2, Lcom/cmplay/tile2/ui/ReportService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3361
    const-string v1, "command_start_report"

    const-string v2, "command_notify_cd_fragment_data_changed"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3362
    sget-object v1, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 3363
    return-void
.end method

.method public bW()Ljava/lang/String;
    .locals 3

    .prologue
    .line 3372
    sget-object v0, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/ijinshan/cloudconfig/c/a;->a(Landroid/content/Context;)V

    .line 3373
    invoke-static {}, Lcom/ijinshan/cloudconfig/b/a;->a()Lcom/ijinshan/cloudconfig/b/a;

    move-result-object v0

    const-string v1, "local_version"

    const-string v2, "none"

    invoke-virtual {v0, v1, v2}, Lcom/ijinshan/cloudconfig/b/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bX()V
    .locals 3

    .prologue
    .line 3381
    const-string v0, "ymym"

    const-string v1, "ymym notifyPublicDataChange  "

    invoke-static {v0, v1}, Lcom/cmplay/util/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 3382
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    const-class v2, Lcom/cmplay/tile2/ui/ReportService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3383
    const-string v1, "command_start_report"

    const-string v2, "command_notify_public"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3384
    sget-object v1, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 3386
    return-void
.end method

.method public bY()V
    .locals 3

    .prologue
    .line 3390
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    const-class v2, Lcom/cmplay/tile2/ui/ReportService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3391
    const-string v1, "command_start_report"

    const-string v2, "command_notify_cloud_data_changed"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3393
    sget-object v1, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 3394
    return-void
.end method

.method public bZ()Ljava/lang/String;
    .locals 4

    .prologue
    .line 271
    invoke-static {}, Lcom/cmplay/util/NativeUtil;->getNetUUid()Ljava/lang/String;

    move-result-object v0

    .line 272
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, ""

    .line 273
    :cond_0
    invoke-static {}, Lcom/cmplay/util/NativeUtil;->getPlatformType()I

    move-result v2

    .line 274
    invoke-static {}, Lcom/cmplay/util/NativeUtil;->getFaceBookId()Ljava/lang/String;

    move-result-object v1

    .line 275
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v1, ""

    .line 277
    :cond_1
    if-eqz v2, :cond_2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 280
    :cond_2
    :goto_0
    return-object v0

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method public ba()V
    .locals 2

    .prologue
    .line 3115
    invoke-static {}, Lcom/cmplay/cloud/a;->a()Lcom/cmplay/cloud/a;

    move-result-object v0

    sget-object v1, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/cmplay/cloud/a;->a(Landroid/content/Context;)V

    .line 3116
    return-void
.end method

.method public bb()V
    .locals 1

    .prologue
    .line 2724
    const-string v0, "game1"

    invoke-static {v0}, Lcom/b/a/a/a;->a(Ljava/lang/String;)V

    .line 2725
    return-void
.end method

.method public bc()V
    .locals 1

    .prologue
    .line 2729
    const-string v0, "game1"

    invoke-static {v0}, Lcom/b/a/a/a;->b(Ljava/lang/String;)V

    .line 2730
    return-void
.end method

.method public bd()Ljava/lang/String;
    .locals 2

    .prologue
    .line 288
    sget-object v0, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 289
    const-string v0, ""

    .line 300
    :goto_0
    return-object v0

    .line 292
    :cond_0
    sget-object v0, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 294
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 295
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 297
    :cond_1
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 298
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v0

    .line 299
    invoke-direct {p0, v0}, Lcom/cmplay/util/s;->O(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public be()Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v0, 0x0

    .line 2753
    const/4 v2, 0x0

    .line 2754
    const-string v1, ""

    .line 2756
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    .line 2757
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "lsof "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    .line 2758
    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 2759
    const-string v4, ""

    invoke-static {v3, v4}, Lcom/cmplay/util/s;->a(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2761
    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 2762
    if-eqz v4, :cond_2

    .line 2764
    array-length v5, v4

    move v3, v0

    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v6, v4, v3

    .line 2765
    const-string v7, "game"

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2766
    const/4 v7, -0x1

    const-string v8, "kinfoc"

    invoke-virtual {v6, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-eq v7, v6, :cond_0

    .line 2767
    add-int/lit8 v0, v0, 0x1

    .line 2764
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2770
    :cond_1
    const-string v3, "game"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "open file list total "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v4, v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " files, has "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " infoc files"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2778
    :cond_2
    if-eqz v2, :cond_5

    .line 2779
    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    move-object v0, v1

    .line 2782
    :cond_3
    :goto_1
    return-object v0

    .line 2773
    :catch_0
    move-exception v0

    move-object v9, v0

    move-object v0, v1

    move-object v1, v9

    .line 2774
    :try_start_1
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2778
    if-eqz v2, :cond_3

    .line 2779
    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    goto :goto_1

    .line 2775
    :catch_1
    move-exception v0

    move-object v9, v0

    move-object v0, v1

    move-object v1, v9

    .line 2776
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2778
    if-eqz v2, :cond_3

    .line 2779
    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    goto :goto_1

    .line 2778
    :catchall_0
    move-exception v0

    if-eqz v2, :cond_4

    .line 2779
    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    :cond_4
    throw v0

    :cond_5
    move-object v0, v1

    goto :goto_1
.end method

.method public bf()I
    .locals 2

    .prologue
    .line 2830
    sget-object v0, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 2831
    sget-object v0, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 2832
    const-string v1, "android.media.property.OUTPUT_SAMPLE_RATE"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2833
    invoke-static {v0}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2835
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bg()I
    .locals 1

    .prologue
    .line 2845
    invoke-static {}, Lcom/cmplay/util/i;->c()I

    move-result v0

    return v0
.end method

.method public bh()I
    .locals 2

    .prologue
    .line 2850
    invoke-static {}, Lcom/cmplay/tile2/GameApp;->g()Lcom/cmplay/tile2/GameApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmplay/tile2/GameApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2851
    if-eqz v0, :cond_0

    .line 2852
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 2853
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 2859
    :goto_0
    return v0

    .line 2855
    :cond_0
    sget-object v0, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 2856
    if-nez v0, :cond_1

    .line 2857
    const/4 v0, 0x0

    goto :goto_0

    .line 2859
    :cond_1
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    goto :goto_0
.end method

.method public bi()I
    .locals 2

    .prologue
    .line 2865
    invoke-static {}, Lcom/cmplay/tile2/GameApp;->g()Lcom/cmplay/tile2/GameApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmplay/tile2/GameApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2866
    if-eqz v0, :cond_0

    .line 2867
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 2868
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 2874
    :goto_0
    return v0

    .line 2870
    :cond_0
    sget-object v0, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 2871
    if-nez v0, :cond_1

    .line 2872
    const/4 v0, 0x0

    goto :goto_0

    .line 2874
    :cond_1
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    goto :goto_0
.end method

.method public bj()Z
    .locals 2

    .prologue
    .line 3066
    sget-object v0, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 3067
    if-eqz v0, :cond_0

    .line 3068
    const-string v1, "android.hardware.sensor.accelerometer"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    .line 3070
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bk()Z
    .locals 1

    .prologue
    .line 3085
    const/4 v0, 0x0

    return v0
.end method

.method public bl()Z
    .locals 1

    .prologue
    .line 3090
    const/4 v0, 0x0

    return v0
.end method

.method public bm()V
    .locals 0

    .prologue
    .line 3096
    return-void
.end method

.method public bn()V
    .locals 0

    .prologue
    .line 3126
    return-void
.end method

.method public bo()I
    .locals 1

    .prologue
    .line 3130
    const/4 v0, 0x0

    return v0
.end method

.method public bp()V
    .locals 0

    .prologue
    .line 3136
    return-void
.end method

.method public bq()V
    .locals 0

    .prologue
    .line 3146
    return-void
.end method

.method public br()Z
    .locals 1

    .prologue
    .line 3150
    const/4 v0, 0x0

    return v0
.end method

.method public bs()Z
    .locals 1

    .prologue
    .line 3155
    const/4 v0, 0x0

    return v0
.end method

.method public bt()Z
    .locals 1

    .prologue
    .line 3160
    const/4 v0, 0x0

    return v0
.end method

.method public bu()Z
    .locals 1

    .prologue
    .line 3165
    const/4 v0, 0x0

    return v0
.end method

.method public bv()Z
    .locals 1

    .prologue
    .line 3170
    const/4 v0, 0x0

    return v0
.end method

.method public bw()Z
    .locals 1

    .prologue
    .line 3175
    const/4 v0, 0x0

    return v0
.end method

.method public bx()Z
    .locals 1

    .prologue
    .line 3180
    const/4 v0, 0x0

    return v0
.end method

.method public by()Z
    .locals 1

    .prologue
    .line 3184
    const/4 v0, 0x0

    return v0
.end method

.method public bz()V
    .locals 0

    .prologue
    .line 3189
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x5

    .line 160
    sget-object v0, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    .line 161
    if-nez v0, :cond_0

    move-object v0, v1

    .line 171
    :goto_0
    return-object v0

    .line 163
    :cond_0
    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 164
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    .line 166
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v3, :cond_1

    .line 167
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 168
    const/4 v2, 0x3

    invoke-virtual {v1, v0, v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 169
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 171
    goto :goto_0
.end method

.method public c(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1974
    invoke-static {}, Lcom/cmplay/cloud/a;->a()Lcom/cmplay/cloud/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/cmplay/cloud/a;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c(I)V
    .locals 0

    .prologue
    .line 662
    return-void
.end method

.method public c(II)V
    .locals 1

    .prologue
    .line 805
    new-instance v0, Lcom/cmplay/util/s$33;

    invoke-direct {v0, p0, p1, p2}, Lcom/cmplay/util/s$33;-><init>(Lcom/cmplay/util/s;II)V

    invoke-static {v0}, Lcom/cmplay/util/i;->a(Ljava/lang/Runnable;)V

    .line 811
    return-void
.end method

.method public c(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 1057
    new-instance v0, Lcom/cmplay/util/s$7;

    invoke-direct {v0, p0, p1, p2}, Lcom/cmplay/util/s$7;-><init>(Lcom/cmplay/util/s;ILjava/lang/String;)V

    invoke-static {v0}, Lcom/cmplay/util/i;->a(Ljava/lang/Runnable;)V

    .line 1063
    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1250
    sget-object v0, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/cmplay/util/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1252
    const-string v0, "key_language_selected"

    invoke-static {v0, p1}, Lcom/cmplay/util/aa;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1253
    const-string v0, "key_country_selected"

    invoke-static {v0, p2}, Lcom/cmplay/util/aa;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1260
    invoke-static {p1, p2}, Lcom/cmplay/ipc/SyncIpcProvider;->setLanguage(Ljava/lang/String;Ljava/lang/String;)V

    .line 1263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1264
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1265
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1266
    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1267
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1269
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cmplay/internalpush/a;->a(Ljava/lang/String;)V

    .line 1273
    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 2421
    sget-object v0, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    invoke-static {v0, p1, p2, p3}, Lcom/cmplay/c/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2422
    return-void
.end method

.method public c(Z)V
    .locals 1

    .prologue
    .line 2465
    const-string v0, "key_gameproblem_adshowed"

    invoke-static {v0, p1}, Lcom/cmplay/util/aa;->a(Ljava/lang/String;Z)V

    .line 2466
    return-void
.end method

.method public c(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 698
    const-string v0, "https://play.google.com/store/apps/details?id=com.cleanmaster.mguard&referrer=utm_source%3D204122"

    invoke-virtual {p0, v0}, Lcom/cmplay/util/s;->b(Ljava/lang/String;)V

    .line 699
    const/4 v0, 0x1

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 217
    sget-object v0, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    .line 218
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d(I)V
    .locals 1

    .prologue
    .line 823
    new-instance v0, Lcom/cmplay/util/s$43;

    invoke-direct {v0, p0, p1}, Lcom/cmplay/util/s$43;-><init>(Lcom/cmplay/util/s;I)V

    invoke-static {v0}, Lcom/cmplay/util/i;->a(Ljava/lang/Runnable;)V

    .line 829
    return-void
.end method

.method public d(II)V
    .locals 1

    .prologue
    .line 1846
    invoke-static {}, Lcom/cmplay/h/d;->a()V

    .line 1847
    sput p1, Lcom/cmplay/h/d;->p:I

    .line 1848
    sput p2, Lcom/cmplay/h/d;->q:I

    .line 1849
    const/4 v0, 0x1

    sput v0, Lcom/cmplay/h/d;->n:I

    .line 1853
    invoke-static {p1, p2}, Lcom/cmplay/util/j;->a(II)V

    .line 1854
    return-void
.end method

.method public d(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 1705
    new-instance v0, Lcom/cmplay/util/s$18;

    invoke-direct {v0, p0, p1, p2}, Lcom/cmplay/util/s$18;-><init>(Lcom/cmplay/util/s;ILjava/lang/String;)V

    invoke-static {v0}, Lcom/cmplay/util/i;->a(Ljava/lang/Runnable;)V

    .line 1711
    return-void
.end method

.method public d(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 3041
    invoke-static {}, Lcom/cmplay/notification/b;->a()Lcom/cmplay/notification/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/cmplay/notification/b;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3042
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 703
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/cmplay/util/s;->a(Ljava/lang/String;I)V

    .line 704
    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 2819
    invoke-static {}, Lcom/cmplay/tile2/ui/AppActivity;->c()Landroid/app/Activity;

    move-result-object v0

    .line 2820
    if-nez v0, :cond_0

    .line 2826
    :goto_0
    return-void

    .line 2824
    :cond_0
    const-string v1, "key_share_cd_file_url"

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/cmplay/util/aa;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2825
    invoke-static {v0, p1, p2}, Lcom/cmplay/tile2/ui/SongMixShareActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public d(Z)V
    .locals 0

    .prologue
    .line 2337
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 223
    sget-object v0, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    .line 224
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e(I)V
    .locals 2

    .prologue
    .line 872
    const/4 v0, 0x0

    sput v0, Lcom/cmplay/h/d;->n:I

    .line 873
    invoke-static {}, Lcom/cmplay/util/NativeUtil;->getSongName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cmplay/h/d;->e:Ljava/lang/String;

    .line 877
    invoke-static {}, Lcom/cmplay/tile2/ui/AppActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 878
    const-string v1, "click share button"

    invoke-static {v1, v0}, Lcom/cmplay/util/o;->a(Ljava/lang/String;Landroid/content/Context;)V

    .line 879
    invoke-static {}, Lcom/cmplay/util/NativeUtil;->getScore()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/cmplay/h/d;->f:Ljava/lang/String;

    .line 880
    invoke-static {v0}, Lcom/cmplay/util/t;->c(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 881
    invoke-static {v0, p1}, Lcom/cmplay/tile2/ui/ShareActivity;->a(Landroid/content/Context;I)V

    .line 886
    :goto_0
    return-void

    .line 884
    :cond_0
    const-string v0, "share_fb_have_no_network"

    invoke-static {v0}, Lcom/cmplay/util/NativeUtil;->getLanguageTextByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cmplay/util/s;->h(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public e(II)V
    .locals 0

    .prologue
    .line 2586
    return-void
.end method

.method public e(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 1727
    new-instance v0, Lcom/cmplay/util/s$20;

    invoke-direct {v0, p0, p1, p2}, Lcom/cmplay/util/s$20;-><init>(Lcom/cmplay/util/s;ILjava/lang/String;)V

    invoke-static {v0}, Lcom/cmplay/util/i;->a(Ljava/lang/Runnable;)V

    .line 1733
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 733
    :try_start_0
    sget-object v0, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    .line 734
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 735
    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 736
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 737
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 741
    :goto_0
    return-void

    .line 738
    :catch_0
    move-exception v0

    .line 739
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 3367
    sget-object v0, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/cmplay/g/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 3368
    return-void
.end method

.method public e(Z)V
    .locals 0

    .prologue
    .line 2342
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 229
    sget-object v0, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    .line 230
    invoke-static {v0}, Lcom/cmplay/kinfoc/report/c;->g(Landroid/content/Context;)Lcom/cmplay/kinfoc/report/a;

    move-result-object v0

    .line 231
    iget-object v0, v0, Lcom/cmplay/kinfoc/report/a;->j:Ljava/lang/String;

    return-object v0
.end method

.method public f(I)V
    .locals 1

    .prologue
    .line 975
    new-instance v0, Lcom/cmplay/util/s$46;

    invoke-direct {v0, p0, p1}, Lcom/cmplay/util/s$46;-><init>(Lcom/cmplay/util/s;I)V

    invoke-static {v0}, Lcom/cmplay/util/i;->a(Ljava/lang/Runnable;)V

    .line 982
    return-void
.end method

.method public f(II)V
    .locals 2

    .prologue
    .line 2621
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2622
    iget-object v1, p0, Lcom/cmplay/util/s;->x:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2623
    iget-object v1, p0, Lcom/cmplay/util/s;->x:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2626
    :cond_0
    iget-object v0, p0, Lcom/cmplay/util/s;->x:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/cmplay/util/s;->w:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 2638
    iget-object v0, p0, Lcom/cmplay/util/s;->w:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2639
    iget-object v0, p0, Lcom/cmplay/util/s;->x:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2641
    :cond_1
    return-void
.end method

.method public f(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 1795
    invoke-static {}, Lcom/cmplay/h/d;->a()V

    .line 1796
    const/4 v0, 0x6

    if-eq v0, p1, :cond_0

    const/16 v0, 0x8

    if-ne v0, p1, :cond_2

    .line 1797
    :cond_0
    invoke-static {p2}, Lcom/cmplay/util/j;->b(Ljava/lang/String;)V

    .line 1801
    :cond_1
    :goto_0
    return-void

    .line 1798
    :cond_2
    const/4 v0, 0x7

    if-eq v0, p1, :cond_3

    const/16 v0, 0x9

    if-ne v0, p1, :cond_1

    .line 1799
    :cond_3
    invoke-static {p2}, Lcom/cmplay/util/j;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 851
    invoke-static {p1}, Lcom/cmplay/util/i;->b(Ljava/lang/String;)V

    .line 852
    return-void
.end method

.method public f(Z)V
    .locals 0

    .prologue
    .line 2527
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 241
    sget-object v0, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    .line 242
    invoke-static {v0}, Lcom/cmplay/kinfoc/report/c;->g(Landroid/content/Context;)Lcom/cmplay/kinfoc/report/a;

    move-result-object v0

    .line 243
    iget-object v0, v0, Lcom/cmplay/kinfoc/report/a;->t:Ljava/lang/String;

    return-object v0
.end method

.method public g(I)V
    .locals 1

    .prologue
    .line 1036
    new-instance v0, Lcom/cmplay/util/s$5;

    invoke-direct {v0, p0, p1}, Lcom/cmplay/util/s$5;-><init>(Lcom/cmplay/util/s;I)V

    invoke-static {v0}, Lcom/cmplay/util/i;->a(Ljava/lang/Runnable;)V

    .line 1043
    return-void
.end method

.method public g(II)V
    .locals 0

    .prologue
    .line 2681
    return-void
.end method

.method public g(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 1810
    const/4 v0, 0x1

    sput v0, Lcom/cmplay/h/d;->n:I

    .line 1814
    invoke-static {}, Lcom/cmplay/h/f;->b()Lcom/cmplay/h/f;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/cmplay/h/f;->a(ILjava/lang/String;)V

    .line 1815
    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 859
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 860
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 861
    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 862
    sget-object v0, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/cmplay/util/e;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 863
    return-void
.end method

.method public g(Z)Z
    .locals 1

    .prologue
    .line 2531
    const/4 v0, 0x1

    return v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1314
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    return-object v0
.end method

.method public h(I)V
    .locals 2

    .prologue
    .line 1596
    invoke-static {}, Lcom/cmplay/tile2/ui/AppActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/cmplay/tile2/ui/AppActivity;

    .line 1597
    invoke-static {}, Lcom/cmplay/a/c;->a()Lcom/cmplay/a/c;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/cmplay/a/c;->a(Landroid/app/Activity;I)V

    .line 1598
    return-void
.end method

.method public h(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 1836
    invoke-static {}, Lcom/cmplay/h/f;->b()Lcom/cmplay/h/f;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/cmplay/h/f;->b(ILjava/lang/String;)V

    .line 1837
    return-void
.end method

.method public h(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 914
    invoke-static {}, Lcom/cmplay/tile2/ui/AppActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 915
    new-instance v1, Lcom/cmplay/util/s$44;

    invoke-direct {v1, p0, v0, p1}, Lcom/cmplay/util/s$44;-><init>(Lcom/cmplay/util/s;Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 921
    return-void
.end method

.method public h(Z)V
    .locals 0

    .prologue
    .line 3141
    return-void
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1318
    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    return-object v0
.end method

.method public i(I)V
    .locals 1

    .prologue
    .line 1621
    invoke-static {}, Lcom/cmplay/a/c;->a()Lcom/cmplay/a/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cmplay/a/c;->a(I)V

    .line 1622
    return-void
.end method

.method public i(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 1918
    invoke-static {}, Lcom/cmplay/h/f;->b()Lcom/cmplay/h/f;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/cmplay/h/f;->d(ILjava/lang/String;)Z

    .line 1919
    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1026
    new-instance v0, Lcom/cmplay/util/s$4;

    invoke-direct {v0, p0, p1}, Lcom/cmplay/util/s$4;-><init>(Lcom/cmplay/util/s;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/cmplay/util/i;->a(Ljava/lang/Runnable;)V

    .line 1033
    return-void
.end method

.method public i(Z)V
    .locals 0

    .prologue
    .line 891
    return-void
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1322
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    return-object v0
.end method

.method public j(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1072
    new-instance v0, Lcom/cmplay/util/s$8;

    invoke-direct {v0, p0, p1}, Lcom/cmplay/util/s$8;-><init>(Lcom/cmplay/util/s;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/cmplay/util/i;->a(Ljava/lang/Runnable;)V

    .line 1078
    return-void
.end method

.method public j(I)Z
    .locals 1

    .prologue
    .line 1629
    invoke-static {}, Lcom/cmplay/a/c;->a()Lcom/cmplay/a/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cmplay/a/c;->b(I)Z

    move-result v0

    return v0
.end method

.method public j(ILjava/lang/String;)[Ljava/lang/String;
    .locals 2

    .prologue
    .line 1964
    invoke-static {}, Lcom/cmplay/cloud/a;->a()Lcom/cmplay/cloud/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/cmplay/cloud/a;->a(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 1965
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1966
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 1969
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    goto :goto_0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1326
    sget-object v0, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    return-object v0
.end method

.method public k(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1638
    invoke-static {}, Lcom/cmplay/a/c;->a()Lcom/cmplay/a/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cmplay/a/c;->c(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public k(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1959
    invoke-static {}, Lcom/cmplay/cloud/a;->a()Lcom/cmplay/cloud/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/cmplay/cloud/a;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public k(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    .line 1445
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1446
    const/4 v2, 0x0

    .line 1449
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 1450
    const-wide/16 v0, 0x0

    cmp-long v0, v4, v0

    if-lez v0, :cond_1

    .line 1451
    long-to-int v0, v4

    new-array v3, v0, [B

    .line 1452
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1453
    :try_start_1
    invoke-virtual {v1, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v0

    int-to-long v6, v0

    cmp-long v0, v4, v6

    if-nez v0, :cond_2

    .line 1454
    new-instance v0, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v0, v3, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1460
    if-eqz v1, :cond_0

    .line 1462
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1467
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    move-object v1, v2

    .line 1460
    :cond_2
    if-eqz v1, :cond_3

    .line 1462
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1467
    :cond_3
    :goto_1
    const-string v0, ""

    goto :goto_0

    .line 1457
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 1458
    :goto_2
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1460
    if-eqz v1, :cond_3

    .line 1462
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 1463
    :catch_1
    move-exception v0

    goto :goto_1

    .line 1460
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_3
    if-eqz v1, :cond_4

    .line 1462
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 1464
    :cond_4
    :goto_4
    throw v0

    .line 1463
    :catch_2
    move-exception v1

    goto :goto_0

    :catch_3
    move-exception v0

    goto :goto_1

    :catch_4
    move-exception v1

    goto :goto_4

    .line 1460
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 1457
    :catch_5
    move-exception v0

    goto :goto_2
.end method

.method public l(Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 1516
    const/4 v0, 0x0

    .line 1518
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1519
    if-eqz v1, :cond_0

    .line 1520
    const-string v2, "phone_cfg_version"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1521
    const-string v2, "phone_cfg_version"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1526
    :cond_0
    :goto_0
    return v0

    .line 1523
    :catch_0
    move-exception v1

    .line 1524
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1330
    sget-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    return-object v0
.end method

.method public l(I)V
    .locals 2

    .prologue
    .line 1664
    invoke-static {}, Lcom/cmplay/tile2/ui/AppActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/cmplay/tile2/ui/AppActivity;

    .line 1665
    new-instance v1, Lcom/cmplay/util/s$15;

    invoke-direct {v1, p0, p1}, Lcom/cmplay/util/s$15;-><init>(Lcom/cmplay/util/s;I)V

    invoke-virtual {v0, v1}, Lcom/cmplay/tile2/ui/AppActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1671
    return-void
.end method

.method public l(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 3046
    invoke-static {}, Lcom/cmplay/notification/b;->a()Lcom/cmplay/notification/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/cmplay/notification/b;->a(ILjava/lang/String;)V

    .line 3047
    return-void
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1334
    sget-object v0, Landroid/os/Build;->ID:Ljava/lang/String;

    return-object v0
.end method

.method public m(I)V
    .locals 2

    .prologue
    .line 1695
    invoke-static {}, Lcom/cmplay/tile2/ui/AppActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/cmplay/tile2/ui/AppActivity;

    .line 1696
    new-instance v1, Lcom/cmplay/util/s$17;

    invoke-direct {v1, p0, p1}, Lcom/cmplay/util/s$17;-><init>(Lcom/cmplay/util/s;I)V

    invoke-virtual {v0, v1}, Lcom/cmplay/tile2/ui/AppActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1702
    return-void
.end method

.method public m(ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 3398
    invoke-static {}, Lcom/cmplay/tile2/ui/AppActivity;->c()Landroid/app/Activity;

    move-result-object v0

    .line 3399
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3400
    new-instance v1, Lcom/cmplay/util/s$40;

    invoke-direct {v1, p0, p1, v0, p2}, Lcom/cmplay/util/s$40;-><init>(Lcom/cmplay/util/s;ILandroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 3408
    :cond_0
    return-void
.end method

.method public m(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1753
    new-instance v0, Lcom/cmplay/util/s$23;

    invoke-direct {v0, p0, p1}, Lcom/cmplay/util/s$23;-><init>(Lcom/cmplay/util/s;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/cmplay/util/i;->a(Ljava/lang/Runnable;)V

    .line 1759
    return-void
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1338
    sget-object v0, Landroid/os/Build;->BOARD:Ljava/lang/String;

    return-object v0
.end method

.method public n(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1767
    invoke-static {}, Lcom/cmplay/a/c;->a()Lcom/cmplay/a/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cmplay/a/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public n(I)V
    .locals 2

    .prologue
    .line 1717
    invoke-static {}, Lcom/cmplay/tile2/ui/AppActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/cmplay/tile2/ui/AppActivity;

    .line 1718
    new-instance v1, Lcom/cmplay/util/s$19;

    invoke-direct {v1, p0, p1}, Lcom/cmplay/util/s$19;-><init>(Lcom/cmplay/util/s;I)V

    invoke-virtual {v0, v1}, Lcom/cmplay/tile2/ui/AppActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1724
    return-void
.end method

.method public o()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1342
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    return-object v0
.end method

.method public o(I)V
    .locals 0

    .prologue
    .line 1823
    invoke-static {}, Lcom/cmplay/h/d;->a()V

    .line 1827
    invoke-static {p1}, Lcom/cmplay/util/j;->a(I)V

    .line 1828
    return-void
.end method

.method public o(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 2433
    return-void
.end method

.method public p()Ljava/lang/String;
    .locals 1

    .prologue
    .line 236
    sget-object v0, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmplay/util/e;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public p(I)V
    .locals 2

    .prologue
    .line 1884
    invoke-static {}, Lcom/cmplay/tile2/ui/AppActivity;->c()Landroid/app/Activity;

    move-result-object v0

    .line 1885
    if-eqz v0, :cond_0

    .line 1886
    new-instance v1, Lcom/cmplay/util/s$24;

    invoke-direct {v1, p0, p1}, Lcom/cmplay/util/s$24;-><init>(Lcom/cmplay/util/s;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1895
    :cond_0
    return-void
.end method

.method public p(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 2445
    sget-object v0, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmplay/webview/ipc/a/b;->a(Landroid/content/Context;)Lcom/cmplay/webview/ipc/a/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cmplay/webview/ipc/a/b;->c(Ljava/lang/String;)V

    .line 2446
    sget-object v0, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmplay/webview/broadcast/WebBroadcast;->a(Landroid/content/Context;)V

    .line 2447
    return-void
.end method

.method public q()I
    .locals 1

    .prologue
    .line 1374
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method public q(I)V
    .locals 2

    .prologue
    .line 1899
    invoke-static {}, Lcom/cmplay/tile2/ui/AppActivity;->c()Landroid/app/Activity;

    move-result-object v0

    .line 1900
    if-eqz v0, :cond_0

    .line 1901
    new-instance v1, Lcom/cmplay/util/s$25;

    invoke-direct {v1, p0, p1}, Lcom/cmplay/util/s$25;-><init>(Lcom/cmplay/util/s;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1910
    :cond_0
    return-void
.end method

.method public q(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 2456
    new-instance v0, Lcom/cmplay/util/s$30;

    invoke-direct {v0, p0, p1}, Lcom/cmplay/util/s$30;-><init>(Lcom/cmplay/util/s;Ljava/lang/String;)V

    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxHelper;->runOnGLThread(Ljava/lang/Runnable;)V

    .line 2462
    return-void
.end method

.method public r(I)I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1935
    sget-object v0, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    const-string v1, "com.cmplay.tiles4.soundmix"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1936
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1937
    const-string v1, "user_enable_mix"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1938
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1939
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1940
    return v2
.end method

.method public r()Ljava/lang/String;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/cmplay/util/s;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    sget-object v0, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmplay/kinfoc/report/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmplay/util/s;->f:Ljava/lang/String;

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/cmplay/util/s;->f:Ljava/lang/String;

    return-object v0
.end method

.method public r(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 2485
    invoke-static {}, Lcom/cmplay/b/b;->a()Lcom/cmplay/b/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cmplay/b/b;->a(Ljava/lang/String;)V

    .line 2486
    invoke-static {}, Lcom/cmplay/b/b;->a()Lcom/cmplay/b/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cmplay/b/b;->b(Ljava/lang/String;)V

    .line 2487
    return-void
.end method

.method public s(I)I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1949
    sget-object v0, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    const-string v1, "com.cmplay.tiles4.soundmix"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1950
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1951
    const-string v1, "decode_simple_time2"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1952
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1953
    return v2
.end method

.method public s()Ljava/lang/String;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/cmplay/util/s;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    sget-object v0, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmplay/kinfoc/report/c;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmplay/util/s;->g:Ljava/lang/String;

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/cmplay/util/s;->g:Ljava/lang/String;

    return-object v0
.end method

.method public s(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 420
    return-void
.end method

.method public t()Ljava/lang/String;
    .locals 1

    .prologue
    .line 313
    sget-object v0, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    .line 314
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 315
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public t(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1648
    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public t(I)V
    .locals 2

    .prologue
    .line 2153
    invoke-static {}, Lcom/cmplay/tile2/ui/AppActivity;->c()Landroid/app/Activity;

    move-result-object v0

    .line 2154
    if-nez v0, :cond_0

    .line 2163
    :goto_0
    return-void

    .line 2157
    :cond_0
    new-instance v1, Lcom/cmplay/util/s$27;

    invoke-direct {v1, p0, p1}, Lcom/cmplay/util/s$27;-><init>(Lcom/cmplay/util/s;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public u()Ljava/lang/String;
    .locals 1

    .prologue
    .line 325
    sget-object v0, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    .line 326
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1657
    invoke-static {p1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u(I)V
    .locals 1

    .prologue
    .line 2174
    sget-object v0, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/cmplay/g/a;->b(Landroid/content/Context;I)V

    .line 2175
    return-void
.end method

.method public v()Ljava/lang/String;
    .locals 1

    .prologue
    .line 337
    invoke-static {}, Lcom/cmplay/util/h;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 338
    const-string v0, "amazon"

    .line 344
    :goto_0
    return-object v0

    .line 341
    :cond_0
    invoke-static {}, Lcom/cmplay/util/h;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 342
    const-string v0, "naranya"

    goto :goto_0

    .line 344
    :cond_1
    sget-object v0, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmplay/i/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public v(I)V
    .locals 2

    .prologue
    .line 2192
    invoke-static {}, Lcom/cmplay/d/a;->a()Lcom/cmplay/d/a;

    move-result-object v0

    invoke-static {p1}, Lcom/cmplay/d/a$a;->a(I)Lcom/cmplay/d/a$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmplay/d/a;->a(Lcom/cmplay/d/a$a;)V

    .line 2193
    invoke-static {}, Lcom/cmplay/d/a;->a()Lcom/cmplay/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmplay/d/a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2194
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/cmplay/ipc/SyncIpcProvider;->setDmcSdkEnabled(Z)V

    .line 2198
    :goto_0
    return-void

    .line 2196
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/cmplay/ipc/SyncIpcProvider;->setDmcSdkEnabled(Z)V

    goto :goto_0
.end method

.method public v(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 2581
    return-void
.end method

.method public w()Ljava/lang/String;
    .locals 2

    .prologue
    .line 355
    :try_start_0
    sget-object v0, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/appsflyer/AppsFlyerLib;->b(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    .line 356
    if-eqz v0, :cond_0

    .line 357
    const-string v1, "media_source"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 358
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    .line 376
    :goto_0
    return-object v0

    .line 362
    :catch_0
    move-exception v0

    .line 363
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 365
    :cond_0
    invoke-static {}, Lcom/cmplay/util/h;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 366
    const-string v0, "1"

    goto :goto_0

    .line 367
    :cond_1
    invoke-static {}, Lcom/cmplay/util/h;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 368
    const-string v0, "2"

    goto :goto_0

    .line 369
    :cond_2
    invoke-static {}, Lcom/cmplay/util/h;->f()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 370
    const-string v0, "3"

    goto :goto_0

    .line 371
    :cond_3
    invoke-static {}, Lcom/cmplay/util/h;->h()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 372
    const-string v0, "4"

    goto :goto_0

    .line 373
    :cond_4
    invoke-static {}, Lcom/cmplay/util/h;->g()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 374
    const-string v0, "5"

    goto :goto_0

    .line 376
    :cond_5
    const-string v0, "0"

    goto :goto_0
.end method

.method public w(I)V
    .locals 0

    .prologue
    .line 2217
    return-void
.end method

.method public w(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 2594
    iget-object v0, p0, Lcom/cmplay/util/s;->w:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 2617
    :cond_0
    :goto_0
    return-void

    .line 2598
    :cond_1
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 2599
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 2600
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 2601
    iget-object v3, p0, Lcom/cmplay/util/s;->w:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2602
    const-string v3, "songId"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    .line 2603
    const-string v4, "moneyType"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    .line 2604
    const-string v5, "moneyNum"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 2605
    new-instance v5, Lcom/cmplay/util/s$32;

    invoke-direct {v5, p0, v3, v2, v4}, Lcom/cmplay/util/s$32;-><init>(Lcom/cmplay/util/s;III)V

    invoke-static {v5}, Lcom/cmplay/util/d;->a(Lcom/cmplay/util/d$a;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2599
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2614
    :catch_0
    move-exception v0

    .line 2615
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public x()Ljava/lang/String;
    .locals 1

    .prologue
    .line 266
    sget-object v0, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    .line 267
    invoke-static {v0}, Lcom/cmplay/util/t;->a(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public x(I)V
    .locals 1

    .prologue
    .line 2406
    new-instance v0, Lcom/cmplay/util/s$29;

    invoke-direct {v0, p0, p1}, Lcom/cmplay/util/s$29;-><init>(Lcom/cmplay/util/s;I)V

    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxHelper;->runOnGLThread(Ljava/lang/Runnable;)V

    .line 2412
    return-void
.end method

.method public x(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 2647
    :try_start_0
    const-string v0, "\\["

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2648
    const-string v1, "]"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2649
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2651
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2653
    const-string v0, "{"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2654
    const/4 v0, 0x0

    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_2

    .line 2655
    aget-object v3, v1, v0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2656
    aget-object v3, v1, v0

    .line 2657
    const-string v4, "\""

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2658
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Lcom/cmplay/util/NativeUtil;->isUnlockMusicByMid(I)Z

    move-result v3

    .line 2659
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, v1, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2660
    add-int/lit8 v4, v0, 0x1

    array-length v5, v1

    if-ge v4, v5, :cond_1

    .line 2661
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2654
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2663
    :cond_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2672
    :catch_0
    move-exception v0

    .line 2673
    const-string v1, "Web"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2674
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2676
    :goto_2
    return-void

    .line 2667
    :cond_2
    :try_start_1
    const-string v0, "}"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2668
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2669
    sget-object v1, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/cmplay/webview/ipc/a/b;->a(Landroid/content/Context;)Lcom/cmplay/webview/ipc/a/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/cmplay/webview/ipc/a/b;->b(Ljava/lang/String;)V

    .line 2670
    const-string v0, "Web"

    const-string v1, "WebBroadcast.updateSongLockCallback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2671
    sget-object v0, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmplay/webview/broadcast/WebBroadcast;->b(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public y(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 2477
    invoke-static {}, Lcom/cmplay/b/b;->a()Lcom/cmplay/b/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cmplay/b/b;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public y(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 2796
    return-void
.end method

.method public y()Z
    .locals 1

    .prologue
    .line 837
    sget-object v0, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmplay/util/t;->c(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public z()I
    .locals 1

    .prologue
    .line 152
    sget v0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->mPositionX:F

    float-to-int v0, v0

    return v0
.end method

.method public z(I)V
    .locals 1

    .prologue
    .line 2481
    invoke-static {}, Lcom/cmplay/b/b;->a()Lcom/cmplay/b/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cmplay/b/b;->b(I)V

    .line 2482
    return-void
.end method

.method public z(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 2840
    sget-object v0, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/cmplay/notification/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 2841
    return-void
.end method
