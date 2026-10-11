.class public Lcom/cmcm/dmc/sdk/b/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmcm/dmc/sdk/b/a$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/Timer;

.field private b:Ljava/lang/String;

.field private c:I


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/cmcm/dmc/sdk/b/a;->b:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/cmcm/dmc/sdk/b/a;->c:I

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/cmcm/dmc/sdk/b/a;->a:Ljava/util/Timer;

    return-void
.end method

.method synthetic constructor <init>(Lcom/cmcm/dmc/sdk/b/a$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/cmcm/dmc/sdk/b/a;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/cmcm/dmc/sdk/b/a;I)I
    .locals 0

    iput p1, p0, Lcom/cmcm/dmc/sdk/b/a;->c:I

    return p1
.end method

.method private static a(J)J
    .locals 4

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v0

    int-to-long v0, v0

    add-long/2addr v0, p0

    const-wide/32 v2, 0x5265c00

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public static a()Lcom/cmcm/dmc/sdk/b/a;
    .locals 1

    invoke-static {}, Lcom/cmcm/dmc/sdk/b/a$a;->a()Lcom/cmcm/dmc/sdk/b/a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/cmcm/dmc/sdk/b/a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/b/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/cmcm/dmc/sdk/b/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/cmcm/dmc/sdk/b/a;->b:Ljava/lang/String;

    return-object p1
.end method

.method public static a(JJ)Z
    .locals 4

    sub-long v0, p0, p2

    const-wide/32 v2, 0x5265c00

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    const-wide/32 v2, -0x5265c00

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-static {p0, p1}, Lcom/cmcm/dmc/sdk/b/a;->a(J)J

    move-result-wide v0

    invoke-static {p2, p3}, Lcom/cmcm/dmc/sdk/b/a;->a(J)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/cmcm/dmc/sdk/b/a;)I
    .locals 1

    iget v0, p0, Lcom/cmcm/dmc/sdk/b/a;->c:I

    return v0
.end method

.method private c()Ljava/util/TimerTask;
    .locals 1

    new-instance v0, Lcom/cmcm/dmc/sdk/b/a$2;

    invoke-direct {v0, p0}, Lcom/cmcm/dmc/sdk/b/a$2;-><init>(Lcom/cmcm/dmc/sdk/b/a;)V

    return-object v0
.end method


# virtual methods
.method public b()V
    .locals 10

    const-wide/32 v2, 0x6ddd00

    const/4 v7, 0x0

    invoke-static {}, Lcom/cmcm/dmc/sdk/a/c;->c()Landroid/content/Context;

    move-result-object v0

    const-string v1, "sdk_device_id"

    invoke-virtual {v0, v1, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v0, "report_last_time"

    const-wide/16 v4, 0x0

    invoke-interface {v6, v0, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "report_last_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-interface {v4, v5, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v4, p0, Lcom/cmcm/dmc/sdk/b/a;->a:Ljava/util/Timer;

    invoke-direct {p0}, Lcom/cmcm/dmc/sdk/b/a;->c()Ljava/util/TimerTask;

    move-result-object v5

    const-wide/16 v8, 0x2710

    invoke-virtual {v4, v5, v8, v9}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5, v0, v1}, Lcom/cmcm/dmc/sdk/b/a;->a(JJ)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/b/a;->a:Ljava/util/Timer;

    invoke-direct {p0}, Lcom/cmcm/dmc/sdk/b/a;->c()Ljava/util/TimerTask;

    move-result-object v1

    const-wide/32 v4, 0x1fbd0

    invoke-virtual {v0, v1, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/b/a;->a:Ljava/util/Timer;

    invoke-direct {p0}, Lcom/cmcm/dmc/sdk/b/a;->c()Ljava/util/TimerTask;

    move-result-object v1

    const-wide/32 v4, 0x3d090

    invoke-virtual {v0, v1, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :cond_0
    iget-object v0, p0, Lcom/cmcm/dmc/sdk/b/a;->a:Ljava/util/Timer;

    invoke-direct {p0}, Lcom/cmcm/dmc/sdk/b/a;->c()Ljava/util/TimerTask;

    move-result-object v1

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    const-string v0, "sdk_uuid"

    const-string v1, ""

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmcm/dmc/sdk/b/a;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/cmcm/dmc/sdk/b/a;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/b/a;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/cmcm/dmc/sdk/b/a$1;

    invoke-direct {v1, p0, v6}, Lcom/cmcm/dmc/sdk/b/a$1;-><init>(Lcom/cmcm/dmc/sdk/b/a;Landroid/content/SharedPreferences;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :goto_0
    return-void

    :cond_1
    iput v7, p0, Lcom/cmcm/dmc/sdk/b/a;->c:I

    goto :goto_0
.end method
