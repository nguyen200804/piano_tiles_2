.class public final enum Lcom/mnt/impl/e/e;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mnt/impl/e/e;",
        ">;"
    }
.end annotation


# static fields
.field private static enum a:Lcom/mnt/impl/e/e;

.field private static enum b:Lcom/mnt/impl/e/e;

.field private static enum c:Lcom/mnt/impl/e/e;

.field private static enum d:Lcom/mnt/impl/e/e;

.field private static enum e:Lcom/mnt/impl/e/e;

.field private static enum f:Lcom/mnt/impl/e/e;

.field private static h:Ljava/lang/String;

.field private static final synthetic i:[Lcom/mnt/impl/e/e;


# instance fields
.field private g:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 13
    new-instance v0, Lcom/mnt/impl/e/e;

    const-string v1, "DIRECTING_PAGE"

    invoke-direct {v0, v1, v2, v2}, Lcom/mnt/impl/e/e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mnt/impl/e/e;->a:Lcom/mnt/impl/e/e;

    .line 14
    new-instance v0, Lcom/mnt/impl/e/e;

    const-string v1, "ROUTE_PRELOAD"

    invoke-direct {v0, v1, v5, v5}, Lcom/mnt/impl/e/e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mnt/impl/e/e;->b:Lcom/mnt/impl/e/e;

    .line 15
    new-instance v0, Lcom/mnt/impl/e/e;

    const-string v1, "GP"

    invoke-direct {v0, v1, v6, v6}, Lcom/mnt/impl/e/e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mnt/impl/e/e;->c:Lcom/mnt/impl/e/e;

    .line 16
    new-instance v0, Lcom/mnt/impl/e/e;

    const-string v1, "FTP"

    invoke-direct {v0, v1, v7, v7}, Lcom/mnt/impl/e/e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mnt/impl/e/e;->d:Lcom/mnt/impl/e/e;

    .line 17
    new-instance v0, Lcom/mnt/impl/e/e;

    const-string v1, "GP_DL"

    invoke-direct {v0, v1, v8, v8}, Lcom/mnt/impl/e/e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mnt/impl/e/e;->e:Lcom/mnt/impl/e/e;

    .line 18
    new-instance v0, Lcom/mnt/impl/e/e;

    const-string v1, "NO_PAGE"

    const/4 v3, 0x5

    const/4 v4, 0x5

    invoke-direct {v0, v1, v3, v4}, Lcom/mnt/impl/e/e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mnt/impl/e/e;->f:Lcom/mnt/impl/e/e;

    .line 12
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/mnt/impl/e/e;

    sget-object v1, Lcom/mnt/impl/e/e;->a:Lcom/mnt/impl/e/e;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mnt/impl/e/e;->b:Lcom/mnt/impl/e/e;

    aput-object v1, v0, v5

    sget-object v1, Lcom/mnt/impl/e/e;->c:Lcom/mnt/impl/e/e;

    aput-object v1, v0, v6

    sget-object v1, Lcom/mnt/impl/e/e;->d:Lcom/mnt/impl/e/e;

    aput-object v1, v0, v7

    sget-object v1, Lcom/mnt/impl/e/e;->e:Lcom/mnt/impl/e/e;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v3, Lcom/mnt/impl/e/e;->f:Lcom/mnt/impl/e/e;

    aput-object v3, v0, v1

    sput-object v0, Lcom/mnt/impl/e/e;->i:[Lcom/mnt/impl/e/e;

    .line 35
    const/4 v0, 0x0

    sput-object v0, Lcom/mnt/impl/e/e;->h:Ljava/lang/String;

    .line 1012
    sget-object v0, Lcom/mnt/impl/e/e;->i:[Lcom/mnt/impl/e/e;

    invoke-virtual {v0}, [Lcom/mnt/impl/e/e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mnt/impl/e/e;

    .line 39
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    array-length v4, v0

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v5, v0, v1

    .line 41
    sget-object v6, Lcom/mnt/impl/e/e;->c:Lcom/mnt/impl/e/e;

    if-eq v5, v6, :cond_0

    sget-object v6, Lcom/mnt/impl/e/e;->e:Lcom/mnt/impl/e/e;

    if-eq v5, v6, :cond_0

    .line 44
    const/16 v6, 0x2c

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1032
    iget v5, v5, Lcom/mnt/impl/e/e;->g:I

    .line 44
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 46
    :cond_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mnt/impl/e/e;->h:Ljava/lang/String;

    .line 47
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
    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 28
    iput p3, p0, Lcom/mnt/impl/e/e;->g:I

    .line 29
    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/mnt/impl/e/e;->h:Ljava/lang/String;

    return-object v0
.end method
