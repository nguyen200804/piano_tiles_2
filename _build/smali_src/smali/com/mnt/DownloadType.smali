.class public final enum Lcom/mnt/DownloadType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mnt/DownloadType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DDL:Lcom/mnt/DownloadType;

.field public static final enum GP:Lcom/mnt/DownloadType;

.field private static final synthetic b:[Lcom/mnt/DownloadType;


# instance fields
.field private a:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 12
    new-instance v0, Lcom/mnt/DownloadType;

    const-string v1, "DDL"

    invoke-direct {v0, v1, v3, v2}, Lcom/mnt/DownloadType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mnt/DownloadType;->DDL:Lcom/mnt/DownloadType;

    new-instance v0, Lcom/mnt/DownloadType;

    const-string v1, "GP"

    invoke-direct {v0, v1, v2, v4}, Lcom/mnt/DownloadType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mnt/DownloadType;->GP:Lcom/mnt/DownloadType;

    .line 11
    new-array v0, v4, [Lcom/mnt/DownloadType;

    sget-object v1, Lcom/mnt/DownloadType;->DDL:Lcom/mnt/DownloadType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mnt/DownloadType;->GP:Lcom/mnt/DownloadType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/mnt/DownloadType;->b:[Lcom/mnt/DownloadType;

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
    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 16
    iput p3, p0, Lcom/mnt/DownloadType;->a:I

    .line 17
    return-void
.end method

.method public static valueOf(I)Lcom/mnt/DownloadType;
    .locals 5

    .prologue
    .line 24
    invoke-static {}, Lcom/mnt/DownloadType;->values()[Lcom/mnt/DownloadType;

    move-result-object v2

    .line 25
    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 26
    invoke-virtual {v0}, Lcom/mnt/DownloadType;->intValue()I

    move-result v4

    if-ne v4, p0, :cond_0

    .line 29
    :goto_1
    return-object v0

    .line 25
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 29
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mnt/DownloadType;
    .locals 1

    .prologue
    .line 11
    const-class v0, Lcom/mnt/DownloadType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mnt/DownloadType;

    return-object v0
.end method

.method public static values()[Lcom/mnt/DownloadType;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/mnt/DownloadType;->b:[Lcom/mnt/DownloadType;

    invoke-virtual {v0}, [Lcom/mnt/DownloadType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mnt/DownloadType;

    return-object v0
.end method


# virtual methods
.method public final intValue()I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/mnt/DownloadType;->a:I

    return v0
.end method
