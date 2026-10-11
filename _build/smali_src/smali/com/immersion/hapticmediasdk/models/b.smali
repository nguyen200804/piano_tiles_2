.class public Lcom/immersion/hapticmediasdk/models/b;
.super Ljava/lang/Exception;


# static fields
.field public static a:I = 0x59

.field public static b:I = 0x0

.field public static c:I = 0x1

.field public static d:I = 0x2


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    sget v0, Lcom/immersion/hapticmediasdk/models/b;->a:I

    sget v1, Lcom/immersion/hapticmediasdk/models/b;->c:I

    add-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/models/b;->a:I

    mul-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/models/b;->d:I

    rem-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/models/b;->b:I

    if-eq v0, v1, :cond_0

    const/16 v0, 0xb

    sput v0, Lcom/immersion/hapticmediasdk/models/b;->a:I

    const/16 v0, 0x46

    sput v0, Lcom/immersion/hapticmediasdk/models/b;->b:I

    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    throw v0
.end method
