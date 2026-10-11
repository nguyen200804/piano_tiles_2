.class public Lcom/cmplay/base/util/o$a;
.super Lcom/cmplay/base/util/c;
.source "ParseUrlUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmplay/base/util/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/cmplay/base/util/c",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field g:Ljava/lang/String;

.field final synthetic h:Lcom/cmplay/base/util/o;


# direct methods
.method public constructor <init>(Lcom/cmplay/base/util/o;)V
    .locals 1

    .prologue
    .line 153
    iput-object p1, p0, Lcom/cmplay/base/util/o$a;->h:Lcom/cmplay/base/util/o;

    invoke-direct {p0}, Lcom/cmplay/base/util/c;-><init>()V

    .line 154
    const-string v0, ""

    iput-object v0, p0, Lcom/cmplay/base/util/o$a;->e:Ljava/lang/String;

    .line 155
    const-string v0, ""

    iput-object v0, p0, Lcom/cmplay/base/util/o$a;->f:Ljava/lang/String;

    .line 156
    const-string v0, ""

    iput-object v0, p0, Lcom/cmplay/base/util/o$a;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 153
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/cmplay/base/util/o$a;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs a([Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 159
    const/4 v0, 0x0

    aget-object v0, p1, v0

    .line 175
    :cond_0
    iget-object v1, p0, Lcom/cmplay/base/util/o$a;->h:Lcom/cmplay/base/util/o;

    invoke-virtual {v1, v0}, Lcom/cmplay/base/util/o;->a(Ljava/lang/String;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 176
    if-nez v1, :cond_2

    .line 214
    :cond_1
    :goto_0
    return-object v0

    .line 178
    :cond_2
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    .line 179
    if-eqz v2, :cond_1

    .line 181
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    .line 188
    const/16 v3, 0x12d

    if-eq v2, v3, :cond_3

    const/16 v3, 0x12e

    if-ne v2, v3, :cond_1

    .line 189
    :cond_3
    const-string v2, "Location"

    invoke-interface {v1, v2}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v1

    .line 190
    if-eqz v1, :cond_1

    .line 191
    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 199
    if-eqz v0, :cond_1

    .line 201
    invoke-static {v0}, Lcom/cmplay/base/util/k;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 153
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/cmplay/base/util/o$a;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 220
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/cmplay/base/util/k;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/cmplay/base/util/o$a;->h:Lcom/cmplay/base/util/o;

    invoke-static {v0, p1}, Lcom/cmplay/base/util/o;->a(Lcom/cmplay/base/util/o;Ljava/lang/String;)V

    .line 234
    :goto_0
    return-void

    .line 224
    :cond_1
    iget-object v0, p0, Lcom/cmplay/base/util/o$a;->h:Lcom/cmplay/base/util/o;

    invoke-static {v0, p1}, Lcom/cmplay/base/util/o;->a(Lcom/cmplay/base/util/o;Ljava/lang/String;)V

    goto :goto_0
.end method
