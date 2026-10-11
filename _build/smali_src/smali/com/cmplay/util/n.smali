.class public Lcom/cmplay/util/n;
.super Ljava/lang/Object;
.source "MarketUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmplay/util/n$a;
    }
.end annotation


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/cmplay/util/n$a;)V
    .locals 3

    .prologue
    .line 75
    if-eqz p0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 77
    invoke-static {p1}, Lcom/cmplay/util/n;->a(Ljava/lang/String;)Z

    move-result v1

    .line 78
    if-eqz v1, :cond_2

    .line 80
    const/4 v0, 0x0

    .line 81
    invoke-static {p0}, Lcom/cmplay/util/v;->a(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 82
    invoke-static {p1, p0}, Lcom/cmplay/util/f;->a(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    .line 85
    :cond_0
    if-eqz v0, :cond_2

    .line 94
    :cond_1
    :goto_0
    return-void

    .line 90
    :cond_2
    if-eqz p2, :cond_1

    .line 91
    invoke-interface {p2, p1, v1}, Lcom/cmplay/util/n$a;->a(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 16
    if-nez p0, :cond_1

    .line 57
    :cond_0
    :goto_0
    return v0

    .line 19
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 23
    invoke-static {p1}, Lcom/cmplay/util/n;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 24
    const/4 v1, 0x0

    invoke-static {p0, p1, v1}, Lcom/cmplay/util/n;->a(Landroid/content/Context;Ljava/lang/String;Lcom/cmplay/util/n$a;)V

    goto :goto_0

    .line 29
    :cond_2
    new-instance v2, Lcom/cmplay/util/w;

    invoke-direct {v2, p0}, Lcom/cmplay/util/w;-><init>(Landroid/content/Context;)V

    .line 31
    const/16 v3, 0x2710

    invoke-static {v3, v0, v1}, Lcom/cmplay/tile2/ui/view/a;->a(IZZ)V

    .line 33
    new-instance v0, Lcom/cmplay/util/n$1;

    invoke-direct {v0, p0}, Lcom/cmplay/util/n$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Lcom/cmplay/util/w;->a(Lcom/cmplay/util/w$b;)V

    .line 46
    invoke-virtual {v2, p1}, Lcom/cmplay/util/w;->b(Ljava/lang/String;)Lcom/cmplay/util/w$a;

    move v0, v1

    .line 47
    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 61
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 66
    :cond_0
    :goto_0
    return v0

    .line 63
    :cond_1
    const-string v1, "https://play.google.com"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "http://play.google.com"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "market:"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method
