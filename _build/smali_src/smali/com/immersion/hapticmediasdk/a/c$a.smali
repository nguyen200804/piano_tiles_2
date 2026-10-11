.class public Lcom/immersion/hapticmediasdk/a/c$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/immersion/hapticmediasdk/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x3
    name = "a"
.end annotation


# static fields
.field public static b:I = 0x2d

.field public static c:I = 0x1

.field public static d:I = 0x2


# instance fields
.field public final synthetic a:Lcom/immersion/hapticmediasdk/a/c;

.field private final e:[B

.field private final f:J

.field private final g:J

.field private final h:I

.field private final i:J


# direct methods
.method public constructor <init>(Lcom/immersion/hapticmediasdk/a/c;JJ[BIJ)V
    .locals 2

    :try_start_0
    iput-object p1, p0, Lcom/immersion/hapticmediasdk/a/c$a;->a:Lcom/immersion/hapticmediasdk/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p6, p0, Lcom/immersion/hapticmediasdk/a/c$a;->e:[B

    iput-wide p2, p0, Lcom/immersion/hapticmediasdk/a/c$a;->f:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sget v0, Lcom/immersion/hapticmediasdk/a/c$a;->b:I

    sget v1, Lcom/immersion/hapticmediasdk/a/c$a;->c:I

    add-int/2addr v1, v0

    mul-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/a/c$a;->d:I

    rem-int/2addr v0, v1

    packed-switch v0, :pswitch_data_0

    const/16 v0, 0xf

    sput v0, Lcom/immersion/hapticmediasdk/a/c$a;->b:I

    invoke-static {}, Lcom/immersion/hapticmediasdk/a/c$a;->a()I

    move-result v0

    sput v0, Lcom/immersion/hapticmediasdk/a/c$a;->c:I

    :pswitch_0
    :try_start_1
    iput-wide p4, p0, Lcom/immersion/hapticmediasdk/a/c$a;->g:J

    iput p7, p0, Lcom/immersion/hapticmediasdk/a/c$a;->h:I

    iput-wide p8, p0, Lcom/immersion/hapticmediasdk/a/c$a;->i:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public static a()I
    .locals 1

    const/16 v0, 0x20

    return v0
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/a/c$a;->a:Lcom/immersion/hapticmediasdk/a/c;

    invoke-static {v0}, Lcom/immersion/hapticmediasdk/a/c;->l(Lcom/immersion/hapticmediasdk/a/c;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/a/c$a;->a:Lcom/immersion/hapticmediasdk/a/c;

    invoke-static {v0}, Lcom/immersion/hapticmediasdk/a/c;->m(Lcom/immersion/hapticmediasdk/a/c;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/immersion/hapticmediasdk/a/c$a;->a:Lcom/immersion/hapticmediasdk/a/c;

    invoke-static {v0}, Lcom/immersion/hapticmediasdk/a/c;->n(Lcom/immersion/hapticmediasdk/a/c;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-wide v0, p0, Lcom/immersion/hapticmediasdk/a/c$a;->f:J

    iget-wide v2, p0, Lcom/immersion/hapticmediasdk/a/c$a;->g:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/a/c$a;->a:Lcom/immersion/hapticmediasdk/a/c;

    invoke-static {v0}, Lcom/immersion/hapticmediasdk/a/c;->o(Lcom/immersion/hapticmediasdk/a/c;)Lcom/immersion/hapticmediasdk/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/immersion/hapticmediasdk/b/d;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/a/c$a;->a:Lcom/immersion/hapticmediasdk/a/c;

    invoke-static {v0}, Lcom/immersion/hapticmediasdk/a/c;->p(Lcom/immersion/hapticmediasdk/a/c;)Lcom/immersion/content/EndpointWarp;

    move-result-object v1

    :pswitch_0
    const/4 v0, 0x1

    packed-switch v0, :pswitch_data_0

    :goto_0
    const/4 v0, 0x0

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/immersion/hapticmediasdk/a/c$a;->e:[B

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/a/c$a;->e:[B

    array-length v3, v0

    iget-wide v4, p0, Lcom/immersion/hapticmediasdk/a/c$a;->i:J

    iget v0, p0, Lcom/immersion/hapticmediasdk/a/c$a;->h:I

    int-to-long v6, v0

    invoke-virtual/range {v1 .. v7}, Lcom/immersion/content/EndpointWarp;->a([BIJJ)V

    :cond_0
    iget-object v0, p0, Lcom/immersion/hapticmediasdk/a/c$a;->a:Lcom/immersion/hapticmediasdk/a/c;

    invoke-static {v0}, Lcom/immersion/hapticmediasdk/a/c;->q(Lcom/immersion/hapticmediasdk/a/c;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/immersion/hapticmediasdk/a/c$a;->a:Lcom/immersion/hapticmediasdk/a/c;

    iget-object v2, p0, Lcom/immersion/hapticmediasdk/a/c$a;->a:Lcom/immersion/hapticmediasdk/a/c;

    invoke-static {v2}, Lcom/immersion/hapticmediasdk/a/c;->g(Lcom/immersion/hapticmediasdk/a/c;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/immersion/hapticmediasdk/a/c;->e(Lcom/immersion/hapticmediasdk/a/c;I)I

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/a/c$a;->a:Lcom/immersion/hapticmediasdk/a/c;

    iget-object v2, p0, Lcom/immersion/hapticmediasdk/a/c$a;->a:Lcom/immersion/hapticmediasdk/a/c;

    invoke-static {v2}, Lcom/immersion/hapticmediasdk/a/c;->r(Lcom/immersion/hapticmediasdk/a/c;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/immersion/hapticmediasdk/a/c;->f(Lcom/immersion/hapticmediasdk/a/c;I)I

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/a/c$a;->a:Lcom/immersion/hapticmediasdk/a/c;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/immersion/hapticmediasdk/a/c;->a(Lcom/immersion/hapticmediasdk/a/c;J)J

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    iget-object v0, p0, Lcom/immersion/hapticmediasdk/a/c$a;->a:Lcom/immersion/hapticmediasdk/a/c;

    invoke-static {v0}, Lcom/immersion/hapticmediasdk/a/c;->b(Lcom/immersion/hapticmediasdk/a/c;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/immersion/hapticmediasdk/a/c$a;->a:Lcom/immersion/hapticmediasdk/a/c;

    invoke-static {v1}, Lcom/immersion/hapticmediasdk/a/c;->s(Lcom/immersion/hapticmediasdk/a/c;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
