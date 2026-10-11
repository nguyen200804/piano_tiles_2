.class public Lcom/cmplay/util/w$a;
.super Lcom/cmplay/util/b;
.source "ParseUrlUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmplay/util/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/cmplay/util/b",
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

.field final synthetic h:Lcom/cmplay/util/w;


# direct methods
.method public constructor <init>(Lcom/cmplay/util/w;)V
    .locals 1

    .prologue
    .line 149
    iput-object p1, p0, Lcom/cmplay/util/w$a;->h:Lcom/cmplay/util/w;

    invoke-direct {p0}, Lcom/cmplay/util/b;-><init>()V

    .line 150
    const-string v0, ""

    iput-object v0, p0, Lcom/cmplay/util/w$a;->e:Ljava/lang/String;

    .line 151
    const-string v0, ""

    iput-object v0, p0, Lcom/cmplay/util/w$a;->f:Ljava/lang/String;

    .line 152
    const-string v0, ""

    iput-object v0, p0, Lcom/cmplay/util/w$a;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 149
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/cmplay/util/w$a;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs a([Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 155
    const/4 v0, 0x0

    aget-object v0, p1, v0

    .line 171
    :cond_0
    iget-object v1, p0, Lcom/cmplay/util/w$a;->h:Lcom/cmplay/util/w;

    invoke-virtual {v1, v0}, Lcom/cmplay/util/w;->a(Ljava/lang/String;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 172
    if-nez v1, :cond_2

    .line 210
    :cond_1
    :goto_0
    return-object v0

    .line 174
    :cond_2
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    .line 175
    if-eqz v2, :cond_1

    .line 177
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    .line 184
    const/16 v3, 0x12d

    if-eq v2, v3, :cond_3

    const/16 v3, 0x12e

    if-ne v2, v3, :cond_1

    .line 185
    :cond_3
    const-string v2, "Location"

    invoke-interface {v1, v2}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v1

    .line 186
    if-eqz v1, :cond_1

    .line 187
    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 195
    if-eqz v0, :cond_1

    .line 197
    invoke-static {v0}, Lcom/cmplay/util/n;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 149
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/cmplay/util/w$a;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 216
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/cmplay/util/n;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/cmplay/util/w$a;->h:Lcom/cmplay/util/w;

    invoke-static {v0, p1}, Lcom/cmplay/util/w;->a(Lcom/cmplay/util/w;Ljava/lang/String;)V

    .line 230
    :goto_0
    return-void

    .line 220
    :cond_1
    iget-object v0, p0, Lcom/cmplay/util/w$a;->h:Lcom/cmplay/util/w;

    invoke-static {v0, p1}, Lcom/cmplay/util/w;->a(Lcom/cmplay/util/w;Ljava/lang/String;)V

    goto :goto_0
.end method
