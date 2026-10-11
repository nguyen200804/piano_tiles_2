.class public final Lcom/cmcm/dmc/sdk/a/m;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmcm/dmc/sdk/a/m$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/cmcm/dmc/sdk/a/m;->a:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method synthetic constructor <init>(Lcom/cmcm/dmc/sdk/a/m$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/cmcm/dmc/sdk/a/m;-><init>()V

    return-void
.end method

.method public static final a()Lcom/cmcm/dmc/sdk/a/m;
    .locals 1

    invoke-static {}, Lcom/cmcm/dmc/sdk/a/m$a;->a()Lcom/cmcm/dmc/sdk/a/m;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Runnable;JJJ)V
    .locals 8

    :try_start_0
    iget-object v0, p0, Lcom/cmcm/dmc/sdk/a/m;->a:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p6

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, p4, p5, v1}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
