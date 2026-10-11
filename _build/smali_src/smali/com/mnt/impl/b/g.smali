.class public final synthetic Lcom/mnt/impl/b/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x3

    .line 73
    invoke-static {}, Lcom/mnt/impl/b/f$a;->a()[I

    new-array v0, v0, [I

    sput-object v0, Lcom/mnt/impl/b/g;->a:[I

    const/4 v0, 0x0

    :try_start_0
    sget v1, Lcom/mnt/impl/b/f$a;->a:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    const/4 v0, 0x0

    :try_start_1
    sget v1, Lcom/mnt/impl/b/f$a;->b:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    const/4 v0, 0x0

    :try_start_2
    sget v1, Lcom/mnt/impl/b/f$a;->c:I

    const/4 v1, 0x2

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    return-void

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_0
.end method
