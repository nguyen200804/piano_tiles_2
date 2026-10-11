.class public Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/immersion/hapticmediasdk/models/HapticFileInformation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static a:I = 0x42

.field public static b:I = 0x1

.field public static c:I = 0x2

.field public static d:I


# instance fields
.field private e:Ljava/lang/String;

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:[I

.field private n:I

.field private o:I

.field private p:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    sget v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->a:I

    sget v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->b:I

    add-int/2addr v1, v0

    mul-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->c:I

    rem-int/2addr v0, v1

    packed-switch v0, :pswitch_data_0

    const/16 v0, 0x2f

    sput v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->a:I

    const/16 v0, 0x3c

    sput v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->b:I

    :pswitch_0
    packed-switch v2, :pswitch_data_1

    :goto_0
    packed-switch v2, :pswitch_data_2

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static a()I
    .locals 1

    const/16 v0, 0x3d

    return v0
.end method

.method public static synthetic a(Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->e:Ljava/lang/String;

    sget v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->a:I

    sget v2, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->b:I

    add-int/2addr v1, v2

    sget v2, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->a:I

    mul-int/2addr v1, v2

    sget v2, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->c:I

    rem-int/2addr v1, v2

    sget v2, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->d:I

    if-eq v1, v2, :cond_0

    invoke-static {}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->a()I

    move-result v1

    sput v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->a:I

    const/16 v1, 0x3a

    sput v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->d:I

    :cond_0
    return-object v0
.end method

.method public static b()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public static synthetic b(Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;)I
    .locals 2

    sget v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->a:I

    sget v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->b:I

    add-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->a:I

    mul-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->c:I

    rem-int/2addr v0, v1

    invoke-static {}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->d()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/16 v0, 0x29

    sput v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->a:I

    const/16 v0, 0x24

    sput v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->d:I

    :cond_0
    :try_start_0
    iget v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->f:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    throw v0
.end method

.method public static c()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static synthetic c(Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;)I
    .locals 2

    const/4 v0, 0x0

    :pswitch_0
    packed-switch v0, :pswitch_data_0

    :goto_0
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->a()I

    move-result v0

    sget v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->b:I

    add-int/2addr v0, v1

    invoke-static {}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->a()I

    move-result v1

    mul-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->c:I

    rem-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->d:I

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->a()I

    move-result v0

    sput v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->a:I

    invoke-static {}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->a()I

    move-result v0

    sput v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->d:I

    :cond_0
    iget v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->g:I

    return v0

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
.end method

.method public static d()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static synthetic d(Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;)I
    .locals 2

    :pswitch_0
    const/4 v0, 0x0

    packed-switch v0, :pswitch_data_0

    :goto_0
    const/4 v0, 0x1

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    sget v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->a:I

    sget v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->b:I

    add-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->a:I

    mul-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->c:I

    rem-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->d:I

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->a()I

    move-result v0

    sput v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->a:I

    invoke-static {}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->a()I

    move-result v0

    sput v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->d:I

    :cond_0
    iget v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->h:I

    return v0

    nop

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

.method public static synthetic e(Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;)I
    .locals 3

    :pswitch_0
    const/4 v0, 0x0

    packed-switch v0, :pswitch_data_0

    :goto_0
    const/4 v0, 0x1

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    iget v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->i:I

    sget v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->a:I

    invoke-static {}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->c()I

    move-result v2

    add-int/2addr v2, v1

    mul-int/2addr v1, v2

    sget v2, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->c:I

    rem-int/2addr v1, v2

    packed-switch v1, :pswitch_data_2

    const/16 v1, 0x4c

    sput v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->a:I

    const/16 v1, 0x5d

    sput v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->d:I

    :pswitch_2
    return v0

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

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch
.end method

.method public static synthetic f(Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;)I
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    :pswitch_0
    packed-switch v0, :pswitch_data_0

    :goto_0
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :goto_1
    :pswitch_1
    :try_start_0
    div-int/2addr v0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->a()I

    move-result v0

    sput v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->a:I

    iget v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->j:I

    return v0

    nop

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
.end method

.method public static synthetic g(Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;)I
    .locals 1

    iget v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->k:I

    return v0
.end method

.method public static synthetic h(Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;)I
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x4

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    div-int/2addr v0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->a()I

    move-result v0

    sput v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->a:I

    iget v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->l:I

    :pswitch_0
    packed-switch v2, :pswitch_data_0

    :goto_1
    packed-switch v2, :pswitch_data_1

    goto :goto_1

    :pswitch_1
    return v0

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
.end method

.method public static synthetic i(Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;)[I
    .locals 2

    sget v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->a:I

    sget v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->b:I

    add-int/2addr v1, v0

    mul-int/2addr v0, v1

    invoke-static {}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->b()I

    move-result v1

    rem-int/2addr v0, v1

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->a()I

    move-result v0

    sput v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->a:I

    invoke-static {}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->a()I

    move-result v0

    sput v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->d:I

    :pswitch_0
    iget-object v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->m:[I

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic j(Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;)I
    .locals 3

    const/4 v0, 0x1

    :pswitch_0
    packed-switch v0, :pswitch_data_0

    :goto_0
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    iget v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->n:I

    sget v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->a:I

    invoke-static {}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->c()I

    move-result v2

    add-int/2addr v2, v1

    mul-int/2addr v1, v2

    sget v2, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->c:I

    rem-int/2addr v1, v2

    packed-switch v1, :pswitch_data_2

    const/16 v1, 0x54

    sput v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->a:I

    invoke-static {}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->a()I

    move-result v1

    sput v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->d:I

    :pswitch_2
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch
.end method

.method public static synthetic k(Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;)I
    .locals 2

    sget v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->a:I

    sget v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->b:I

    add-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->a:I

    mul-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->c:I

    rem-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->d:I

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->a()I

    move-result v0

    sput v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->a:I

    const/16 v0, 0xd

    sput v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->d:I

    :cond_0
    :try_start_0
    iget v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->o:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    throw v0
.end method

.method public static synthetic l(Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;)I
    .locals 3

    const/4 v2, 0x0

    sget v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->a:I

    sget v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->b:I

    add-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->a:I

    mul-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->c:I

    rem-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->d:I

    if-eq v0, v1, :cond_0

    const/16 v0, 0x37

    sput v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->a:I

    const/16 v0, 0x13

    sput v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->d:I

    :cond_0
    :pswitch_0
    packed-switch v2, :pswitch_data_0

    :goto_0
    packed-switch v2, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    iget v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->p:I

    return v0

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
.end method


# virtual methods
.method public a(I)Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;
    .locals 2

    sget v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->a:I

    sget v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->b:I

    add-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->a:I

    mul-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->c:I

    rem-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->d:I

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->a()I

    move-result v0

    sput v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->a:I

    invoke-static {}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->a()I

    move-result v0

    sput v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->d:I

    :cond_0
    :try_start_0
    iput p1, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->f:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    throw v0
.end method

.method public a(Ljava/lang/String;)Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;
    .locals 1

    :try_start_0
    iput-object p1, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->e:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    throw v0
.end method

.method public a([I)Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;
    .locals 2

    :pswitch_0
    const/4 v0, 0x1

    packed-switch v0, :pswitch_data_0

    :goto_0
    const/4 v0, 0x0

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    sget v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->a:I

    invoke-static {}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->c()I

    move-result v1

    add-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->a:I

    mul-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->c:I

    rem-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->d:I

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->a()I

    move-result v0

    sput v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->a:I

    const/16 v0, 0x35

    sput v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->d:I

    :cond_0
    iput-object p1, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->m:[I

    return-object p0

    nop

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

.method public b(I)Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;
    .locals 3

    const/16 v2, 0x12

    iput p1, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->g:I

    sget v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->a:I

    sget v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->b:I

    add-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->a:I

    mul-int/2addr v0, v1

    invoke-static {}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->b()I

    move-result v1

    rem-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->d:I

    if-eq v0, v1, :cond_0

    sput v2, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->a:I

    sput v2, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->d:I

    :cond_0
    return-object p0
.end method

.method public c(I)Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;
    .locals 3

    const/4 v2, 0x1

    invoke-static {}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->a()I

    move-result v0

    sget v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->b:I

    add-int/2addr v1, v0

    mul-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->c:I

    rem-int/2addr v0, v1

    packed-switch v0, :pswitch_data_0

    const/16 v0, 0x29

    sput v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->a:I

    invoke-static {}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->a()I

    move-result v0

    sput v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->d:I

    :pswitch_0
    iput p1, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->h:I

    :pswitch_1
    packed-switch v2, :pswitch_data_1

    :goto_0
    packed-switch v2, :pswitch_data_2

    goto :goto_0

    :pswitch_2
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public d(I)Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;
    .locals 3

    const/4 v2, 0x1

    invoke-static {}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->a()I

    move-result v0

    sget v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->b:I

    add-int/2addr v0, v1

    invoke-static {}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->a()I

    move-result v1

    mul-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->c:I

    rem-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->d:I

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->a()I

    move-result v0

    sput v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->a:I

    const/16 v0, 0x62

    sput v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->d:I

    :cond_0
    :pswitch_0
    packed-switch v2, :pswitch_data_0

    :goto_0
    packed-switch v2, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    iput p1, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->i:I

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public e(I)Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, -0x1

    :goto_0
    :try_start_0
    new-array v2, v1, [I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    const/16 v0, 0x35

    sput v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->a:I

    iput p1, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->j:I

    return-object p0

    :catch_1
    move-exception v1

    invoke-static {}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->a()I

    move-result v1

    sput v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->a:I

    :goto_1
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public e()Lcom/immersion/hapticmediasdk/models/HapticFileInformation;
    .locals 4

    new-instance v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;

    const/4 v1, 0x0

    sget v2, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->a:I

    sget v3, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->b:I

    add-int/2addr v2, v3

    sget v3, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->a:I

    mul-int/2addr v2, v3

    sget v3, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->c:I

    rem-int/2addr v2, v3

    sget v3, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->d:I

    if-eq v2, v3, :cond_0

    invoke-static {}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->a()I

    move-result v2

    sput v2, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->a:I

    invoke-static {}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->a()I

    move-result v2

    sput v2, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->d:I

    :cond_0
    invoke-direct {v0, p0, v1}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;-><init>(Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;Lcom/immersion/hapticmediasdk/models/HapticFileInformation$b;)V

    return-object v0
.end method

.method public f(I)Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;
    .locals 2

    sget v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->a:I

    invoke-static {}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->c()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/2addr v0, v1

    invoke-static {}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->b()I

    move-result v1

    rem-int/2addr v0, v1

    packed-switch v0, :pswitch_data_0

    const/16 v0, 0x47

    sput v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->a:I

    const/16 v0, 0x29

    sput v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->d:I

    :pswitch_0
    :try_start_0
    iput p1, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->k:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public g(I)Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;
    .locals 2

    sget v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->a:I

    sget v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->b:I

    add-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->a:I

    mul-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->c:I

    rem-int/2addr v0, v1

    invoke-static {}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->d()I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->a()I

    move-result v0

    sput v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->a:I

    const/16 v0, 0x20

    sput v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->d:I

    :cond_0
    iput p1, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->l:I

    :pswitch_0
    const/4 v0, 0x1

    packed-switch v0, :pswitch_data_0

    :goto_0
    const/4 v0, 0x0

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    return-object p0

    nop

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

.method public h(I)Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;
    .locals 2

    sget v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->a:I

    invoke-static {}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->c()I

    move-result v1

    add-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->a:I

    mul-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->c:I

    rem-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->d:I

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->a()I

    move-result v0

    sput v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->a:I

    invoke-static {}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->a()I

    move-result v0

    sput v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->d:I

    :cond_0
    iput p1, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->n:I

    return-object p0
.end method

.method public i(I)Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;
    .locals 2

    sget v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->a:I

    sget v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->b:I

    add-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->a:I

    mul-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->c:I

    rem-int/2addr v0, v1

    invoke-static {}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->d()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/16 v0, 0xe

    sput v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->a:I

    invoke-static {}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->a()I

    move-result v0

    sput v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->d:I

    :cond_0
    :try_start_0
    iput p1, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->o:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    throw v0
.end method

.method public j(I)Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;
    .locals 2

    sget v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->a:I

    sget v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->b:I

    add-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->a:I

    mul-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->c:I

    rem-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->d:I

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->a()I

    move-result v0

    sput v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->a:I

    invoke-static {}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->a()I

    move-result v0

    sput v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->d:I

    :cond_0
    :try_start_0
    iput p1, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->p:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    throw v0
.end method
