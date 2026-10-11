.class public final enum Lcom/mnt/impl/b/b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mnt/impl/b/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/mnt/impl/b/b;

.field public static final enum b:Lcom/mnt/impl/b/b;

.field private static enum d:Lcom/mnt/impl/b/b;

.field private static enum e:Lcom/mnt/impl/b/b;

.field private static enum f:Lcom/mnt/impl/b/b;

.field private static enum g:Lcom/mnt/impl/b/b;

.field private static enum h:Lcom/mnt/impl/b/b;

.field private static enum i:Lcom/mnt/impl/b/b;

.field private static enum j:Lcom/mnt/impl/b/b;

.field private static enum k:Lcom/mnt/impl/b/b;

.field private static enum l:Lcom/mnt/impl/b/b;

.field private static enum m:Lcom/mnt/impl/b/b;

.field private static enum n:Lcom/mnt/impl/b/b;

.field private static enum o:Lcom/mnt/impl/b/b;

.field private static final synthetic p:[Lcom/mnt/impl/b/b;


# instance fields
.field public c:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 29
    new-instance v0, Lcom/mnt/impl/b/b;

    const-string v1, "FLOAT_ICON"

    const/4 v2, 0x0

    sget-object v3, Lcom/mnt/impl/e;->pe:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v5}, Lcom/mnt/impl/b/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mnt/impl/b/b;->d:Lcom/mnt/impl/b/b;

    .line 30
    new-instance v0, Lcom/mnt/impl/b/b;

    const-string v1, "SMALL_BANNER"

    sget-object v2, Lcom/mnt/impl/e;->pf:Ljava/lang/String;

    invoke-direct {v0, v1, v5, v6}, Lcom/mnt/impl/b/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mnt/impl/b/b;->a:Lcom/mnt/impl/b/b;

    .line 31
    new-instance v0, Lcom/mnt/impl/b/b;

    const-string v1, "FULL_SCREEN"

    sget-object v2, Lcom/mnt/impl/e;->pg:Ljava/lang/String;

    invoke-direct {v0, v1, v6, v7}, Lcom/mnt/impl/b/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mnt/impl/b/b;->e:Lcom/mnt/impl/b/b;

    .line 32
    new-instance v0, Lcom/mnt/impl/b/b;

    const-string v1, "HALF_SCREEN"

    sget-object v2, Lcom/mnt/impl/e;->ph:Ljava/lang/String;

    invoke-direct {v0, v1, v7, v8}, Lcom/mnt/impl/b/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mnt/impl/b/b;->f:Lcom/mnt/impl/b/b;

    .line 33
    new-instance v0, Lcom/mnt/impl/b/b;

    const-string v1, "SIDEBAR"

    sget-object v2, Lcom/mnt/impl/e;->pi:Ljava/lang/String;

    invoke-direct {v0, v1, v8, v9}, Lcom/mnt/impl/b/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mnt/impl/b/b;->g:Lcom/mnt/impl/b/b;

    .line 34
    new-instance v0, Lcom/mnt/impl/b/b;

    const-string v1, "INSTALL_DETAIL"

    const/4 v2, 0x6

    sget-object v3, Lcom/mnt/impl/e;->pj:Ljava/lang/String;

    invoke-direct {v0, v1, v9, v2}, Lcom/mnt/impl/b/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mnt/impl/b/b;->h:Lcom/mnt/impl/b/b;

    .line 35
    new-instance v0, Lcom/mnt/impl/b/b;

    const-string v1, "FULL_SCREEN_MULTI_IMG"

    const/4 v2, 0x6

    const/4 v3, 0x7

    sget-object v4, Lcom/mnt/impl/e;->pk:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/mnt/impl/b/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mnt/impl/b/b;->i:Lcom/mnt/impl/b/b;

    .line 36
    new-instance v0, Lcom/mnt/impl/b/b;

    const-string v1, "UNINSTALL_DETAIL"

    const/4 v2, 0x7

    const/16 v3, 0x8

    sget-object v4, Lcom/mnt/impl/e;->pl:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/mnt/impl/b/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mnt/impl/b/b;->j:Lcom/mnt/impl/b/b;

    .line 37
    new-instance v0, Lcom/mnt/impl/b/b;

    const-string v1, "FB_BANNER"

    const/16 v2, 0x8

    const/16 v3, 0x9

    sget-object v4, Lcom/mnt/impl/e;->pm:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/mnt/impl/b/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mnt/impl/b/b;->k:Lcom/mnt/impl/b/b;

    .line 38
    new-instance v0, Lcom/mnt/impl/b/b;

    const-string v1, "FB_HALF_SCREEN"

    const/16 v2, 0x9

    const/16 v3, 0xa

    sget-object v4, Lcom/mnt/impl/e;->pn:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/mnt/impl/b/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mnt/impl/b/b;->l:Lcom/mnt/impl/b/b;

    .line 39
    new-instance v0, Lcom/mnt/impl/b/b;

    const-string v1, "BIG_BANNER"

    const/16 v2, 0xa

    const/16 v3, 0xb

    sget-object v4, Lcom/mnt/impl/e;->po:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/mnt/impl/b/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mnt/impl/b/b;->m:Lcom/mnt/impl/b/b;

    .line 40
    new-instance v0, Lcom/mnt/impl/b/b;

    const-string v1, "INTERSTITIAL"

    const/16 v2, 0xb

    const/16 v3, 0xc

    sget-object v4, Lcom/mnt/impl/e;->pp:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/mnt/impl/b/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mnt/impl/b/b;->n:Lcom/mnt/impl/b/b;

    .line 41
    new-instance v0, Lcom/mnt/impl/b/b;

    const-string v1, "RECTANGLE_BANNER"

    const/16 v2, 0xc

    const/16 v3, 0xd

    sget-object v4, Lcom/mnt/impl/e;->pq:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/mnt/impl/b/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mnt/impl/b/b;->b:Lcom/mnt/impl/b/b;

    .line 42
    new-instance v0, Lcom/mnt/impl/b/b;

    const-string v1, "NOTIFICATION"

    const/16 v2, 0xd

    const/16 v3, 0xe

    sget-object v4, Lcom/mnt/impl/e;->pr:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/mnt/impl/b/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mnt/impl/b/b;->o:Lcom/mnt/impl/b/b;

    .line 5
    const/16 v0, 0xe

    new-array v0, v0, [Lcom/mnt/impl/b/b;

    const/4 v1, 0x0

    sget-object v2, Lcom/mnt/impl/b/b;->d:Lcom/mnt/impl/b/b;

    aput-object v2, v0, v1

    sget-object v1, Lcom/mnt/impl/b/b;->a:Lcom/mnt/impl/b/b;

    aput-object v1, v0, v5

    sget-object v1, Lcom/mnt/impl/b/b;->e:Lcom/mnt/impl/b/b;

    aput-object v1, v0, v6

    sget-object v1, Lcom/mnt/impl/b/b;->f:Lcom/mnt/impl/b/b;

    aput-object v1, v0, v7

    sget-object v1, Lcom/mnt/impl/b/b;->g:Lcom/mnt/impl/b/b;

    aput-object v1, v0, v8

    sget-object v1, Lcom/mnt/impl/b/b;->h:Lcom/mnt/impl/b/b;

    aput-object v1, v0, v9

    const/4 v1, 0x6

    sget-object v2, Lcom/mnt/impl/b/b;->i:Lcom/mnt/impl/b/b;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/mnt/impl/b/b;->j:Lcom/mnt/impl/b/b;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/mnt/impl/b/b;->k:Lcom/mnt/impl/b/b;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/mnt/impl/b/b;->l:Lcom/mnt/impl/b/b;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/mnt/impl/b/b;->m:Lcom/mnt/impl/b/b;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/mnt/impl/b/b;->n:Lcom/mnt/impl/b/b;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/mnt/impl/b/b;->b:Lcom/mnt/impl/b/b;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/mnt/impl/b/b;->o:Lcom/mnt/impl/b/b;

    aput-object v2, v0, v1

    sput-object v0, Lcom/mnt/impl/b/b;->p:[Lcom/mnt/impl/b/b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 48
    iput p3, p0, Lcom/mnt/impl/b/b;->c:I

    .line 50
    return-void
.end method

.method public static a(I)Lcom/mnt/impl/b/b;
    .locals 5

    .prologue
    .line 1005
    sget-object v0, Lcom/mnt/impl/b/b;->p:[Lcom/mnt/impl/b/b;

    invoke-virtual {v0}, [Lcom/mnt/impl/b/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mnt/impl/b/b;

    .line 62
    array-length v3, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 1053
    iget v4, v1, Lcom/mnt/impl/b/b;->c:I

    .line 63
    if-ne v4, p0, :cond_0

    move-object v0, v1

    .line 66
    :goto_1
    return-object v0

    .line 62
    :cond_0
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 66
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
