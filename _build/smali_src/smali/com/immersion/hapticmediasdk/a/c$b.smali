.class public Lcom/immersion/hapticmediasdk/a/c$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/immersion/hapticmediasdk/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# static fields
.field public static b:I = 0x30

.field public static c:I = 0x0

.field public static d:I = 0x1

.field public static e:I = 0x2


# instance fields
.field public final synthetic a:Lcom/immersion/hapticmediasdk/a/c;


# direct methods
.method public constructor <init>(Lcom/immersion/hapticmediasdk/a/c;)V
    .locals 2

    iput-object p1, p0, Lcom/immersion/hapticmediasdk/a/c$b;->a:Lcom/immersion/hapticmediasdk/a/c;

    sget v0, Lcom/immersion/hapticmediasdk/a/c$b;->b:I

    sget v1, Lcom/immersion/hapticmediasdk/a/c$b;->d:I

    add-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/a/c$b;->b:I

    mul-int/2addr v0, v1

    invoke-static {}, Lcom/immersion/hapticmediasdk/a/c$b;->a()I

    move-result v1

    rem-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/a/c$b;->c:I

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/immersion/hapticmediasdk/a/c$b;->b()I

    move-result v0

    sput v0, Lcom/immersion/hapticmediasdk/a/c$b;->b:I

    invoke-static {}, Lcom/immersion/hapticmediasdk/a/c$b;->b()I

    move-result v0

    sput v0, Lcom/immersion/hapticmediasdk/a/c$b;->c:I

    :cond_0
    :pswitch_0
    const/4 v0, 0x0

    packed-switch v0, :pswitch_data_0

    :goto_0
    const/4 v0, 0x1

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static a()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public static b()I
    .locals 1

    const/16 v0, 0xf

    return v0
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/immersion/hapticmediasdk/a/c$b;->a:Lcom/immersion/hapticmediasdk/a/c;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    sget v1, Lcom/immersion/hapticmediasdk/a/c$b;->b:I

    sget v2, Lcom/immersion/hapticmediasdk/a/c$b;->d:I

    add-int/2addr v1, v2

    sget v2, Lcom/immersion/hapticmediasdk/a/c$b;->b:I

    mul-int/2addr v1, v2

    sget v2, Lcom/immersion/hapticmediasdk/a/c$b;->e:I

    rem-int/2addr v1, v2

    sget v2, Lcom/immersion/hapticmediasdk/a/c$b;->c:I

    if-eq v1, v2, :cond_0

    invoke-static {}, Lcom/immersion/hapticmediasdk/a/c$b;->b()I

    move-result v1

    sput v1, Lcom/immersion/hapticmediasdk/a/c$b;->b:I

    const/16 v1, 0x28

    sput v1, Lcom/immersion/hapticmediasdk/a/c$b;->c:I

    :cond_0
    :try_start_1
    invoke-static {v0}, Lcom/immersion/hapticmediasdk/a/c;->k(Lcom/immersion/hapticmediasdk/a/c;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    throw v0
.end method
