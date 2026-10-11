.class public synthetic Lcom/immersion/hapticmediasdk/d$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/immersion/hapticmediasdk/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = "a"
.end annotation


# static fields
.field public static final synthetic a:[I

.field public static b:I = 0x58

.field public static c:I = 0x1

.field public static d:I = 0x2


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    invoke-static {}, Lcom/immersion/hapticmediasdk/a$a;->values()[Lcom/immersion/hapticmediasdk/a$a;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/immersion/hapticmediasdk/d$a;->a:[I

    :try_start_0
    sget-object v0, Lcom/immersion/hapticmediasdk/d$a;->a:[I

    sget-object v1, Lcom/immersion/hapticmediasdk/a$a;->a:Lcom/immersion/hapticmediasdk/a$a;

    invoke-virtual {v1}, Lcom/immersion/hapticmediasdk/a$a;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_6

    :goto_0
    :try_start_1
    sget-object v0, Lcom/immersion/hapticmediasdk/d$a;->a:[I

    sget-object v1, Lcom/immersion/hapticmediasdk/a$a;->b:Lcom/immersion/hapticmediasdk/a$a;

    invoke-virtual {v1}, Lcom/immersion/hapticmediasdk/a$a;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_5

    :pswitch_0
    packed-switch v3, :pswitch_data_0

    :goto_1
    const/4 v0, 0x0

    packed-switch v0, :pswitch_data_1

    goto :goto_1

    :goto_2
    :pswitch_1
    :try_start_2
    sget-object v0, Lcom/immersion/hapticmediasdk/d$a;->a:[I

    sget-object v1, Lcom/immersion/hapticmediasdk/a$a;->c:Lcom/immersion/hapticmediasdk/a$a;

    invoke-virtual {v1}, Lcom/immersion/hapticmediasdk/a$a;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_4

    :goto_3
    :try_start_3
    sget-object v0, Lcom/immersion/hapticmediasdk/d$a;->a:[I

    sget-object v1, Lcom/immersion/hapticmediasdk/a$a;->f:Lcom/immersion/hapticmediasdk/a$a;

    invoke-virtual {v1}, Lcom/immersion/hapticmediasdk/a$a;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    sget v0, Lcom/immersion/hapticmediasdk/d$a;->b:I

    sget v1, Lcom/immersion/hapticmediasdk/d$a;->c:I

    add-int/2addr v1, v0

    mul-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/d$a;->d:I

    rem-int/2addr v0, v1

    packed-switch v0, :pswitch_data_2

    const/16 v0, 0x39

    sput v0, Lcom/immersion/hapticmediasdk/d$a;->b:I

    const/16 v0, 0x1a

    sput v0, Lcom/immersion/hapticmediasdk/d$a;->c:I

    :goto_4
    :pswitch_2
    :try_start_4
    sget-object v0, Lcom/immersion/hapticmediasdk/d$a;->a:[I

    sget-object v1, Lcom/immersion/hapticmediasdk/a$a;->g:Lcom/immersion/hapticmediasdk/a$a;

    invoke-virtual {v1}, Lcom/immersion/hapticmediasdk/a$a;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_5
    :try_start_5
    sget-object v0, Lcom/immersion/hapticmediasdk/d$a;->a:[I

    sget-object v1, Lcom/immersion/hapticmediasdk/a$a;->h:Lcom/immersion/hapticmediasdk/a$a;

    invoke-virtual {v1}, Lcom/immersion/hapticmediasdk/a$a;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_1

    :goto_6
    :try_start_6
    sget-object v0, Lcom/immersion/hapticmediasdk/d$a;->a:[I

    sget-object v1, Lcom/immersion/hapticmediasdk/a$a;->d:Lcom/immersion/hapticmediasdk/a$a;

    invoke-virtual {v1}, Lcom/immersion/hapticmediasdk/a$a;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_2

    :goto_7
    return-void

    :catch_0
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    goto :goto_6

    :catch_2
    move-exception v0

    goto :goto_7

    :catch_3
    move-exception v0

    goto :goto_4

    :catch_4
    move-exception v0

    goto :goto_3

    :catch_5
    move-exception v0

    goto :goto_2

    :catch_6
    move-exception v0

    goto :goto_0

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

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch
.end method
