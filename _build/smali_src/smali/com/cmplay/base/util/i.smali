.class public Lcom/cmplay/base/util/i;
.super Ljava/lang/Object;
.source "Configure.java"


# static fields
.field public static a:I

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-string v0, ""

    sput-object v0, Lcom/cmplay/base/util/i;->b:Ljava/lang/String;

    .line 26
    const-string v0, ""

    sput-object v0, Lcom/cmplay/base/util/i;->c:Ljava/lang/String;

    .line 46
    const/4 v0, 0x3

    sput v0, Lcom/cmplay/base/util/i;->a:I

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 13
    sget-object v0, Lcom/cmplay/base/util/i;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "PRODUCT_TABLE_NAME_PREFIX must not be null!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 17
    :cond_0
    sget-object v0, Lcom/cmplay/base/util/i;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static a(I)V
    .locals 3

    .prologue
    .line 48
    sput p0, Lcom/cmplay/base/util/i;->a:I

    .line 49
    const-string v0, "internal_push"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCloudFunctionType  CLOUD_FUNCTION_TYPE:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/cmplay/base/util/i;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 21
    sput-object p0, Lcom/cmplay/base/util/i;->b:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public static b()I
    .locals 1

    .prologue
    .line 52
    sget v0, Lcom/cmplay/base/util/i;->a:I

    return v0
.end method

.method public static b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 33
    sput-object p0, Lcom/cmplay/base/util/i;->c:Ljava/lang/String;

    .line 34
    return-void
.end method
