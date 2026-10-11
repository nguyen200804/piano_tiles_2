.class public final enum Lcom/mnt/MntAdType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mnt/MntAdType$Banner;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mnt/MntAdType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum INTERSTITIAL_320X480:Lcom/mnt/MntAdType;

.field public static final enum NATIVE:Lcom/mnt/MntAdType;

.field private static final synthetic b:[Lcom/mnt/MntAdType;


# instance fields
.field private a:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 14
    new-instance v0, Lcom/mnt/MntAdType;

    const-string v1, "NATIVE"

    invoke-direct {v0, v1, v3, v3}, Lcom/mnt/MntAdType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mnt/MntAdType;->NATIVE:Lcom/mnt/MntAdType;

    .line 15
    new-instance v0, Lcom/mnt/MntAdType;

    const-string v1, "INTERSTITIAL_320X480"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v4, v2}, Lcom/mnt/MntAdType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mnt/MntAdType;->INTERSTITIAL_320X480:Lcom/mnt/MntAdType;

    .line 8
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/mnt/MntAdType;

    sget-object v1, Lcom/mnt/MntAdType;->NATIVE:Lcom/mnt/MntAdType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mnt/MntAdType;->INTERSTITIAL_320X480:Lcom/mnt/MntAdType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/mnt/MntAdType;->b:[Lcom/mnt/MntAdType;

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
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 20
    iput p3, p0, Lcom/mnt/MntAdType;->a:I

    .line 21
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mnt/MntAdType;
    .locals 1

    .prologue
    .line 8
    const-class v0, Lcom/mnt/MntAdType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mnt/MntAdType;

    return-object v0
.end method

.method public static values()[Lcom/mnt/MntAdType;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/mnt/MntAdType;->b:[Lcom/mnt/MntAdType;

    invoke-virtual {v0}, [Lcom/mnt/MntAdType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mnt/MntAdType;

    return-object v0
.end method


# virtual methods
.method public final getType()I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/mnt/MntAdType;->a:I

    return v0
.end method
