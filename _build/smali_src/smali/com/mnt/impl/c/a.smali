.class public final enum Lcom/mnt/impl/c/a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mnt/impl/c/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/mnt/impl/c/a;

.field public static final enum b:Lcom/mnt/impl/c/a;

.field private static enum d:Lcom/mnt/impl/c/a;

.field private static enum e:Lcom/mnt/impl/c/a;


# instance fields
.field public c:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 9
    new-instance v0, Lcom/mnt/impl/c/a;

    const-string v1, "COMMONBANNER"

    invoke-direct {v0, v1, v2, v2}, Lcom/mnt/impl/c/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mnt/impl/c/a;->d:Lcom/mnt/impl/c/a;

    .line 10
    new-instance v0, Lcom/mnt/impl/c/a;

    const-string v1, "RECTANGLEBANNER"

    invoke-direct {v0, v1, v3, v3}, Lcom/mnt/impl/c/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mnt/impl/c/a;->e:Lcom/mnt/impl/c/a;

    .line 11
    new-instance v0, Lcom/mnt/impl/c/a;

    const-string v1, "NATIVEAD"

    invoke-direct {v0, v1, v4, v4}, Lcom/mnt/impl/c/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mnt/impl/c/a;->a:Lcom/mnt/impl/c/a;

    .line 12
    new-instance v0, Lcom/mnt/impl/c/a;

    const-string v1, "INTERSTITIALAD"

    invoke-direct {v0, v1, v5, v5}, Lcom/mnt/impl/c/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mnt/impl/c/a;->b:Lcom/mnt/impl/c/a;

    .line 8
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/mnt/impl/c/a;

    sget-object v1, Lcom/mnt/impl/c/a;->d:Lcom/mnt/impl/c/a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mnt/impl/c/a;->e:Lcom/mnt/impl/c/a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mnt/impl/c/a;->a:Lcom/mnt/impl/c/a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/mnt/impl/c/a;->b:Lcom/mnt/impl/c/a;

    aput-object v1, v0, v5

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
    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 18
    iput p3, p0, Lcom/mnt/impl/c/a;->c:I

    .line 19
    return-void
.end method
