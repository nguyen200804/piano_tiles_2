.class public Lcom/immersion/hapticmediasdk/a/c$d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/immersion/hapticmediasdk/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# static fields
.field public static b:I = 0x2

.field public static c:I = 0x1

.field public static d:I = 0x2

.field public static e:I


# instance fields
.field public final synthetic a:Lcom/immersion/hapticmediasdk/a/c;


# direct methods
.method public constructor <init>(Lcom/immersion/hapticmediasdk/a/c;)V
    .locals 2

    const/4 v0, 0x0

    :pswitch_0
    packed-switch v0, :pswitch_data_0

    :goto_0
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    sget v0, Lcom/immersion/hapticmediasdk/a/c$d;->b:I

    sget v1, Lcom/immersion/hapticmediasdk/a/c$d;->c:I

    add-int/2addr v1, v0

    mul-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/a/c$d;->d:I

    rem-int/2addr v0, v1

    packed-switch v0, :pswitch_data_2

    invoke-static {}, Lcom/immersion/hapticmediasdk/a/c$d;->a()I

    move-result v0

    sput v0, Lcom/immersion/hapticmediasdk/a/c$d;->b:I

    invoke-static {}, Lcom/immersion/hapticmediasdk/a/c$d;->a()I

    move-result v0

    sput v0, Lcom/immersion/hapticmediasdk/a/c$d;->c:I

    :pswitch_2
    iput-object p1, p0, Lcom/immersion/hapticmediasdk/a/c$d;->a:Lcom/immersion/hapticmediasdk/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch
.end method

.method public static a()I
    .locals 1

    const/16 v0, 0x36

    return v0
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/a/c$d;->a:Lcom/immersion/hapticmediasdk/a/c;

    invoke-static {v0}, Lcom/immersion/hapticmediasdk/a/c;->c(Lcom/immersion/hapticmediasdk/a/c;)V

    return-void
.end method
