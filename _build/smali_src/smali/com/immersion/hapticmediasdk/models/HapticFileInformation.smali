.class public Lcom/immersion/hapticmediasdk/models/HapticFileInformation;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field public static a:I = 0x51

.field public static b:I = 0x0

.field public static c:I = 0x2

.field public static d:I = 0x1


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
.method public static constructor <clinit>()V
    .locals 3

    :pswitch_0
    const/4 v0, 0x0

    packed-switch v0, :pswitch_data_0

    :goto_0
    const/4 v0, 0x1

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    new-instance v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$b;

    invoke-static {}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->b()I

    move-result v1

    invoke-static {}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->a()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->b()I

    move-result v2

    mul-int/2addr v1, v2

    sget v2, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->c:I

    rem-int/2addr v1, v2

    sget v2, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->b:I

    if-eq v1, v2, :cond_0

    const/16 v1, 0x51

    sput v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->a:I

    const/16 v1, 0x4f

    sput v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->b:I

    :cond_0
    invoke-direct {v0}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$b;-><init>()V

    sput-object v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->CREATOR:Landroid/os/Parcelable$Creator;

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

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x1

    sget v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->a:I

    invoke-static {}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->a()I

    move-result v1

    add-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->a:I

    mul-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->c:I

    rem-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->b:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x6

    sput v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->a:I

    const/16 v0, 0x17

    sput v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->b:I

    :cond_0
    :pswitch_0
    packed-switch v2, :pswitch_data_0

    :goto_0
    packed-switch v2, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

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

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    :try_start_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->e:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->f:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->g:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->h:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->j:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->k:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->l:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sget v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->a:I

    sget v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->d:I

    add-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->a:I

    mul-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->c:I

    rem-int/2addr v0, v1

    invoke-static {}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->c()I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->b()I

    move-result v0

    sput v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->a:I

    invoke-static {}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->b()I

    move-result v0

    sput v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->b:I

    :cond_0
    :try_start_1
    iget v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->l:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->m:[I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v0, 0x0

    :goto_0
    :try_start_2
    iget v1, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->l:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->m:[I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->n:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :try_start_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->o:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->p:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    return-void

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    throw v0
.end method

.method private constructor <init>(Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->a(Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->e:Ljava/lang/String;

    invoke-static {p1}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->b(Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;)I

    move-result v0

    iput v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->f:I

    invoke-static {p1}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->c(Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;)I

    move-result v0

    iput v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->g:I

    invoke-static {p1}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->d(Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;)I

    move-result v0

    iput v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->h:I

    invoke-static {p1}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->e(Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;)I

    move-result v0

    iput v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->i:I

    invoke-static {p1}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->f(Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;)I

    move-result v0

    iput v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->j:I

    invoke-static {p1}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->g(Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;)I

    move-result v0

    iput v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->k:I

    :pswitch_0
    packed-switch v1, :pswitch_data_0

    :goto_0
    packed-switch v1, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    sget v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->a:I

    sget v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->d:I

    add-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->a:I

    mul-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->c:I

    rem-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->b:I

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->b()I

    move-result v0

    sput v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->a:I

    invoke-static {}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->b()I

    move-result v0

    sput v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->b:I

    :cond_0
    invoke-static {p1}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->h(Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;)I

    move-result v0

    iput v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->l:I

    invoke-static {p1}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->i(Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->m:[I

    invoke-static {p1}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->j(Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;)I

    move-result v0

    iput v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->n:I

    invoke-static {p1}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->k(Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;)I

    move-result v0

    iput v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->o:I

    invoke-static {p1}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->l(Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;)I

    move-result v0

    iput v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->p:I

    return-void

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

.method public synthetic constructor <init>(Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;Lcom/immersion/hapticmediasdk/models/HapticFileInformation$b;)V
    .locals 2

    sget v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->a:I

    sget v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->d:I

    add-int/2addr v1, v0

    mul-int/2addr v0, v1

    invoke-static {}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->d()I

    move-result v1

    rem-int/2addr v0, v1

    packed-switch v0, :pswitch_data_0

    const/16 v0, 0x2a

    sput v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->a:I

    invoke-static {}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->b()I

    move-result v0

    sput v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->b:I

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;-><init>(Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public static a()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static b()I
    .locals 1

    const/16 v0, 0x17

    return v0
.end method

.method public static c()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static d()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method


# virtual methods
.method public describeContents()I
    .locals 2

    sget v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->a:I

    sget v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->d:I

    add-int/2addr v1, v0

    mul-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->c:I

    rem-int/2addr v0, v1

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->b()I

    move-result v0

    sput v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->a:I

    const/16 v0, 0x48

    sput v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->b:I

    :pswitch_0
    const/4 v0, 0x0

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public e()I
    .locals 2

    sget v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->a:I

    invoke-static {}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->a()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->c:I

    rem-int/2addr v0, v1

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->b()I

    move-result v0

    sput v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->a:I

    invoke-static {}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->b()I

    move-result v0

    sput v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->b:I

    :pswitch_0
    const/4 v0, 0x0

    packed-switch v0, :pswitch_data_1

    :goto_0
    const/4 v0, 0x1

    packed-switch v0, :pswitch_data_2

    goto :goto_0

    :pswitch_1
    iget v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->j:I

    return v0

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
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public f()I
    .locals 2

    sget v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->a:I

    invoke-static {}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->a()I

    move-result v1

    add-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->a:I

    mul-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->c:I

    rem-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->b:I

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->b()I

    move-result v0

    sput v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->a:I

    const/16 v0, 0x42

    sput v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->b:I

    :cond_0
    :try_start_0
    iget v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->k:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    throw v0
.end method

.method public g()I
    .locals 3

    :try_start_0
    iget v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->l:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sget v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->a:I

    sget v2, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->d:I

    add-int/2addr v1, v2

    sget v2, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->a:I

    mul-int/2addr v1, v2

    sget v2, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->c:I

    rem-int/2addr v1, v2

    sget v2, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->b:I

    if-eq v1, v2, :cond_0

    const/16 v1, 0x42

    sput v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->a:I

    const/16 v1, 0xb

    sput v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->b:I

    :cond_0
    return v0

    :catch_0
    move-exception v0

    throw v0
.end method

.method public h()I
    .locals 1

    iget v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->o:I

    return v0
.end method

.method public i()I
    .locals 3

    const/4 v0, -0x1

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const/16 v2, 0x52

    sput v2, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->a:I

    :goto_1
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    invoke-static {}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->b()I

    move-result v1

    sput v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->a:I

    :goto_2
    :try_start_2
    new-array v1, v0, [I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    invoke-static {}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->b()I

    move-result v0

    sput v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->a:I

    :try_start_3
    iget v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->p:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    return v0

    :catch_3
    move-exception v0

    throw v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->f:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->g:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->h:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    sget v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->a:I

    invoke-static {}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->a()I

    move-result v1

    add-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->a:I

    mul-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->c:I

    rem-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->b:I

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->b()I

    move-result v0

    sput v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->a:I

    const/16 v0, 0x52

    sput v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->b:I

    :cond_0
    iget v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->i:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->j:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->k:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->l:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->l:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->m:[I

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->n:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->o:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->p:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
