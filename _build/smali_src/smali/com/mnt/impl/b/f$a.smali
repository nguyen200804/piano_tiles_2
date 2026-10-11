.class public final Lcom/mnt/impl/b/f$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mnt/impl/b/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mnt/impl/b/f$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:I

.field public static final b:I

.field public static final c:I

.field private static final synthetic d:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 164
    const/4 v0, 0x1

    sput v0, Lcom/mnt/impl/b/f$a;->a:I

    const/4 v0, 0x2

    sput v0, Lcom/mnt/impl/b/f$a;->b:I

    sput v1, Lcom/mnt/impl/b/f$a;->c:I

    .line 163
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/mnt/impl/b/f$a;->d:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
    .end array-data
.end method

.method public static a()[I
    .locals 1

    .prologue
    .line 163
    sget-object v0, Lcom/mnt/impl/b/f$a;->d:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method
