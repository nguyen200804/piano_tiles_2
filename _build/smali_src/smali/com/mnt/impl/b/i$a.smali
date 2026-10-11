.class public final enum Lcom/mnt/impl/b/i$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mnt/impl/b/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mnt/impl/b/i$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/mnt/impl/b/i$a;

.field public static final enum b:Lcom/mnt/impl/b/i$a;

.field private static enum d:Lcom/mnt/impl/b/i$a;

.field private static enum e:Lcom/mnt/impl/b/i$a;

.field private static enum f:Lcom/mnt/impl/b/i$a;

.field private static enum g:Lcom/mnt/impl/b/i$a;


# instance fields
.field public c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 194
    new-instance v0, Lcom/mnt/impl/b/i$a;

    const-string v1, "NATIVE"

    sget-object v2, Lcom/mnt/impl/e;->nf:Ljava/lang/String;

    invoke-direct {v0, v1, v4, v2}, Lcom/mnt/impl/b/i$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mnt/impl/b/i$a;->d:Lcom/mnt/impl/b/i$a;

    .line 195
    new-instance v0, Lcom/mnt/impl/b/i$a;

    const-string v1, "REALTIME"

    sget-object v2, Lcom/mnt/impl/e;->ng:Ljava/lang/String;

    invoke-direct {v0, v1, v5, v2}, Lcom/mnt/impl/b/i$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mnt/impl/b/i$a;->e:Lcom/mnt/impl/b/i$a;

    .line 196
    new-instance v0, Lcom/mnt/impl/b/i$a;

    const-string v1, "OEM"

    sget-object v2, Lcom/mnt/impl/e;->nh:Ljava/lang/String;

    invoke-direct {v0, v1, v6, v2}, Lcom/mnt/impl/b/i$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mnt/impl/b/i$a;->f:Lcom/mnt/impl/b/i$a;

    .line 197
    new-instance v0, Lcom/mnt/impl/b/i$a;

    const-string v1, "SCENECONFIG"

    sget-object v2, Lcom/mnt/impl/e;->ni:Ljava/lang/String;

    invoke-direct {v0, v1, v7, v2}, Lcom/mnt/impl/b/i$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mnt/impl/b/i$a;->a:Lcom/mnt/impl/b/i$a;

    .line 198
    new-instance v0, Lcom/mnt/impl/b/i$a;

    const-string v1, "LOCALRECOMEND"

    sget-object v2, Lcom/mnt/impl/e;->nj:Ljava/lang/String;

    invoke-direct {v0, v1, v8, v2}, Lcom/mnt/impl/b/i$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mnt/impl/b/i$a;->g:Lcom/mnt/impl/b/i$a;

    .line 201
    new-instance v0, Lcom/mnt/impl/b/i$a;

    const-string v1, "NATIVE_NEW"

    const/4 v2, 0x5

    sget-object v3, Lcom/mnt/impl/e;->nk:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/mnt/impl/b/i$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mnt/impl/b/i$a;->b:Lcom/mnt/impl/b/i$a;

    .line 191
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/mnt/impl/b/i$a;

    sget-object v1, Lcom/mnt/impl/b/i$a;->d:Lcom/mnt/impl/b/i$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/mnt/impl/b/i$a;->e:Lcom/mnt/impl/b/i$a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/mnt/impl/b/i$a;->f:Lcom/mnt/impl/b/i$a;

    aput-object v1, v0, v6

    sget-object v1, Lcom/mnt/impl/b/i$a;->a:Lcom/mnt/impl/b/i$a;

    aput-object v1, v0, v7

    sget-object v1, Lcom/mnt/impl/b/i$a;->g:Lcom/mnt/impl/b/i$a;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/mnt/impl/b/i$a;->b:Lcom/mnt/impl/b/i$a;

    aput-object v2, v0, v1

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 205
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 206
    iput-object p3, p0, Lcom/mnt/impl/b/i$a;->c:Ljava/lang/String;

    .line 208
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/mnt/impl/b/i$a;->c:Ljava/lang/String;

    return-object v0
.end method
