.class public Lcom/immersion/hapticmediasdk/a/f$a;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/immersion/hapticmediasdk/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x3
    name = "a"
.end annotation


# static fields
.field public static b:I = 0x1

.field public static c:I = 0x0

.field public static d:I = 0x1

.field public static e:I = 0x2


# instance fields
.field public final synthetic a:Lcom/immersion/hapticmediasdk/a/f;


# direct methods
.method public constructor <init>(Lcom/immersion/hapticmediasdk/a/f;Landroid/os/Looper;)V
    .locals 1

    iput-object p1, p0, Lcom/immersion/hapticmediasdk/a/f$a;->a:Lcom/immersion/hapticmediasdk/a/f;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method public static a()I
    .locals 1

    const/16 v0, 0x23

    return v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/immersion/hapticmediasdk/a/f$a;->a:Lcom/immersion/hapticmediasdk/a/f;

    invoke-static {v0}, Lcom/immersion/hapticmediasdk/a/f;->a(Lcom/immersion/hapticmediasdk/a/f;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/a/f$a;->a:Lcom/immersion/hapticmediasdk/a/f;

    invoke-static {v0}, Lcom/immersion/hapticmediasdk/a/f;->b(Lcom/immersion/hapticmediasdk/a/f;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget v1, p1, Landroid/os/Message;->arg2:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-ne v0, v1, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/immersion/hapticmediasdk/a/f$a;->a:Lcom/immersion/hapticmediasdk/a/f;

    invoke-static {v0}, Lcom/immersion/hapticmediasdk/a/f;->c(Lcom/immersion/hapticmediasdk/a/f;)Lcom/immersion/hapticmediasdk/d;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    sget v1, Lcom/immersion/hapticmediasdk/a/f$a;->b:I

    sget v2, Lcom/immersion/hapticmediasdk/a/f$a;->d:I

    add-int/2addr v2, v1

    mul-int/2addr v1, v2

    sget v2, Lcom/immersion/hapticmediasdk/a/f$a;->e:I

    rem-int/2addr v1, v2

    packed-switch v1, :pswitch_data_1

    const/16 v1, 0x37

    sput v1, Lcom/immersion/hapticmediasdk/a/f$a;->b:I

    invoke-static {}, Lcom/immersion/hapticmediasdk/a/f$a;->a()I

    move-result v1

    sput v1, Lcom/immersion/hapticmediasdk/a/f$a;->c:I

    :pswitch_1
    :try_start_2
    invoke-virtual {v0}, Lcom/immersion/hapticmediasdk/d;->g()Lcom/immersion/hapticmediasdk/a$a;

    move-result-object v0

    sget-object v1, Lcom/immersion/hapticmediasdk/a$a;->h:Lcom/immersion/hapticmediasdk/a$a;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/a/f$a;->a:Lcom/immersion/hapticmediasdk/a/f;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    invoke-static {v0}, Lcom/immersion/hapticmediasdk/a/f;->c(Lcom/immersion/hapticmediasdk/a/f;)Lcom/immersion/hapticmediasdk/d;

    move-result-object v0

    sget-object v1, Lcom/immersion/hapticmediasdk/a$a;->c:Lcom/immersion/hapticmediasdk/a$a;

    invoke-virtual {v0, v1}, Lcom/immersion/hapticmediasdk/d;->a(Lcom/immersion/hapticmediasdk/a$a;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    throw v0

    :cond_1
    :try_start_4
    iget-object v0, p0, Lcom/immersion/hapticmediasdk/a/f$a;->a:Lcom/immersion/hapticmediasdk/a/f;

    iget-object v1, p0, Lcom/immersion/hapticmediasdk/a/f$a;->a:Lcom/immersion/hapticmediasdk/a/f;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :try_start_5
    invoke-static {v1}, Lcom/immersion/hapticmediasdk/a/f;->a(Lcom/immersion/hapticmediasdk/a/f;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/immersion/hapticmediasdk/a/f;->a(Lcom/immersion/hapticmediasdk/a/f;IJ)V

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/a/f$a;->a:Lcom/immersion/hapticmediasdk/a/f;

    invoke-virtual {v0}, Lcom/immersion/hapticmediasdk/a/f;->e()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    throw v0

    :pswitch_2
    :try_start_6
    iget-object v0, p0, Lcom/immersion/hapticmediasdk/a/f$a;->a:Lcom/immersion/hapticmediasdk/a/f;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/immersion/hapticmediasdk/a/f;->a(Lcom/immersion/hapticmediasdk/a/f;I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_0

    :pswitch_3
    :try_start_7
    iget-object v0, p0, Lcom/immersion/hapticmediasdk/a/f$a;->a:Lcom/immersion/hapticmediasdk/a/f;

    invoke-static {v0, p1}, Lcom/immersion/hapticmediasdk/a/f;->a(Lcom/immersion/hapticmediasdk/a/f;Landroid/os/Message;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method
