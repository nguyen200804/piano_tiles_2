.class public Lcom/immersion/hapticmediasdk/a/h$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/immersion/hapticmediasdk/a/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xb
    name = "b"
.end annotation


# static fields
.field public static c:I = 0x63

.field public static d:I = 0x0

.field public static e:I = 0x1

.field public static f:I = 0x2


# instance fields
.field public a:I

.field public b:Ljava/nio/MappedByteBuffer;


# direct methods
.method private constructor <init>()V
    .locals 2

    sget v0, Lcom/immersion/hapticmediasdk/a/h$b;->c:I

    sget v1, Lcom/immersion/hapticmediasdk/a/h$b;->e:I

    add-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/a/h$b;->c:I

    mul-int/2addr v0, v1

    invoke-static {}, Lcom/immersion/hapticmediasdk/a/h$b;->a()I

    move-result v1

    rem-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/a/h$b;->d:I

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/immersion/hapticmediasdk/a/h$b;->b()I

    move-result v0

    sput v0, Lcom/immersion/hapticmediasdk/a/h$b;->c:I

    const/16 v0, 0x4d

    sput v0, Lcom/immersion/hapticmediasdk/a/h$b;->d:I

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/immersion/hapticmediasdk/a/h$a;)V
    .locals 2

    sget v0, Lcom/immersion/hapticmediasdk/a/h$b;->c:I

    sget v1, Lcom/immersion/hapticmediasdk/a/h$b;->e:I

    add-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/a/h$b;->c:I

    mul-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/a/h$b;->f:I

    rem-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/a/h$b;->d:I

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/immersion/hapticmediasdk/a/h$b;->b()I

    move-result v0

    sput v0, Lcom/immersion/hapticmediasdk/a/h$b;->c:I

    const/16 v0, 0x3e

    sput v0, Lcom/immersion/hapticmediasdk/a/h$b;->d:I

    :cond_0
    invoke-direct {p0}, Lcom/immersion/hapticmediasdk/a/h$b;-><init>()V

    return-void
.end method

.method public static a()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public static b()I
    .locals 1

    const/16 v0, 0x44

    return v0
.end method
