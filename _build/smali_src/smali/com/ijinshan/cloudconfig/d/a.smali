.class public Lcom/ijinshan/cloudconfig/d/a;
.super Ljava/lang/Object;
.source "CloudLog.java"


# static fields
.field public static a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6
    const/4 v0, 0x0

    sput-boolean v0, Lcom/ijinshan/cloudconfig/d/a;->a:Z

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 14
    sget-boolean v0, Lcom/ijinshan/cloudconfig/d/a;->a:Z

    if-eqz v0, :cond_2

    .line 15
    const/4 v0, 0x0

    .line 16
    const/16 v3, 0xfa0

    .line 17
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    move v2, v0

    .line 19
    :goto_0
    if-ge v2, v1, :cond_2

    .line 20
    add-int v0, v2, v3

    if-gt v1, v0, :cond_0

    .line 21
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 27
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "___index:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    add-int v0, v2, v3

    move v2, v0

    goto :goto_0

    .line 23
    :cond_0
    add-int v0, v2, v3

    .line 24
    if-le v0, v1, :cond_1

    move v0, v1

    .line 25
    :cond_1
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 31
    :cond_2
    return-void
.end method
