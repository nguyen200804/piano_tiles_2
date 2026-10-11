.class public final enum Lcom/mnt/MntAdType$Banner;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mnt/MntAdType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Banner"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mnt/MntAdType$Banner;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BANNER_320X50:Lcom/mnt/MntAdType$Banner;

.field public static final enum MEDIUM_300X250:Lcom/mnt/MntAdType$Banner;

.field private static final synthetic b:[Lcom/mnt/MntAdType$Banner;


# instance fields
.field private a:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 28
    new-instance v0, Lcom/mnt/MntAdType$Banner;

    const-string v1, "BANNER_320X50"

    invoke-direct {v0, v1, v3, v2}, Lcom/mnt/MntAdType$Banner;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mnt/MntAdType$Banner;->BANNER_320X50:Lcom/mnt/MntAdType$Banner;

    .line 29
    new-instance v0, Lcom/mnt/MntAdType$Banner;

    const-string v1, "MEDIUM_300X250"

    invoke-direct {v0, v1, v2, v4}, Lcom/mnt/MntAdType$Banner;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mnt/MntAdType$Banner;->MEDIUM_300X250:Lcom/mnt/MntAdType$Banner;

    .line 27
    new-array v0, v4, [Lcom/mnt/MntAdType$Banner;

    sget-object v1, Lcom/mnt/MntAdType$Banner;->BANNER_320X50:Lcom/mnt/MntAdType$Banner;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mnt/MntAdType$Banner;->MEDIUM_300X250:Lcom/mnt/MntAdType$Banner;

    aput-object v1, v0, v2

    sput-object v0, Lcom/mnt/MntAdType$Banner;->b:[Lcom/mnt/MntAdType$Banner;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 33
    iput p3, p0, Lcom/mnt/MntAdType$Banner;->a:I

    .line 34
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mnt/MntAdType$Banner;
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/mnt/MntAdType$Banner;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mnt/MntAdType$Banner;

    return-object v0
.end method

.method public static values()[Lcom/mnt/MntAdType$Banner;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/mnt/MntAdType$Banner;->b:[Lcom/mnt/MntAdType$Banner;

    invoke-virtual {v0}, [Lcom/mnt/MntAdType$Banner;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mnt/MntAdType$Banner;

    return-object v0
.end method


# virtual methods
.method public final getType()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/mnt/MntAdType$Banner;->a:I

    return v0
.end method
