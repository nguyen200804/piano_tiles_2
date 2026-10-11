.class Lcom/duapps/ad/entity/c$1;
.super Ljava/lang/Object;
.source "NativeAdDLWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duapps/ad/entity/c;->a(Landroid/view/View;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/duapps/ad/entity/c;


# direct methods
.method constructor <init>(Lcom/duapps/ad/entity/c;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/duapps/ad/entity/c$1;->b:Lcom/duapps/ad/entity/c;

    iput-object p2, p0, Lcom/duapps/ad/entity/c$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 119
    .line 121
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/duapps/ad/entity/c$1;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 122
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/duapps/ad/base/r;->a(Ljava/net/URL;Ljava/util/List;Z)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 124
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    .line 125
    const/16 v1, 0xc8

    if-eq v0, v1, :cond_0

    .line 127
    invoke-static {}, Lcom/duapps/ad/entity/c;->o()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Impression to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/duapps/ad/entity/c$1;->b:Lcom/duapps/ad/entity/c;

    invoke-static {v3}, Lcom/duapps/ad/entity/c;->a(Lcom/duapps/ad/entity/c;)Lcom/duapps/ad/entity/AdData;

    move-result-object v3

    iget-object v3, v3, Lcom/duapps/ad/entity/AdData;->o:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " failed!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    :goto_0
    iget-object v1, p0, Lcom/duapps/ad/entity/c$1;->b:Lcom/duapps/ad/entity/c;

    invoke-static {v1}, Lcom/duapps/ad/entity/c;->b(Lcom/duapps/ad/entity/c;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/duapps/ad/entity/c$1;->b:Lcom/duapps/ad/entity/c;

    invoke-static {v2}, Lcom/duapps/ad/entity/c;->a(Lcom/duapps/ad/entity/c;)Lcom/duapps/ad/entity/AdData;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/duapps/ad/stats/c;->a(Landroid/content/Context;Lcom/duapps/ad/entity/AdData;I)V

    .line 136
    :goto_1
    return-void

    .line 129
    :cond_0
    invoke-static {}, Lcom/duapps/ad/entity/c;->o()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Impression to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/duapps/ad/entity/c$1;->b:Lcom/duapps/ad/entity/c;

    invoke-static {v3}, Lcom/duapps/ad/entity/c;->a(Lcom/duapps/ad/entity/c;)Lcom/duapps/ad/entity/AdData;

    move-result-object v3

    iget-object v3, v3, Lcom/duapps/ad/entity/AdData;->o:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " success!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 133
    :catch_0
    move-exception v0

    .line 134
    invoke-static {}, Lcom/duapps/ad/entity/c;->o()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Impression to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/duapps/ad/entity/c$1;->b:Lcom/duapps/ad/entity/c;

    invoke-static {v2}, Lcom/duapps/ad/entity/c;->a(Lcom/duapps/ad/entity/c;)Lcom/duapps/ad/entity/AdData;

    move-result-object v2

    iget-object v2, v2, Lcom/duapps/ad/entity/AdData;->o:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " exception!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
