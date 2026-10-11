.class Lcom/duapps/ad/base/n$5;
.super Ljava/lang/Object;
.source "ToolCacheManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duapps/ad/base/n;->a(Lcom/duapps/ad/entity/AdModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duapps/ad/entity/AdModel;

.field final synthetic b:Lcom/duapps/ad/base/n;


# direct methods
.method constructor <init>(Lcom/duapps/ad/base/n;Lcom/duapps/ad/entity/AdModel;)V
    .locals 0

    .prologue
    .line 963
    iput-object p1, p0, Lcom/duapps/ad/base/n$5;->b:Lcom/duapps/ad/base/n;

    iput-object p2, p0, Lcom/duapps/ad/base/n$5;->a:Lcom/duapps/ad/entity/AdModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 965
    iget-object v0, p0, Lcom/duapps/ad/base/n$5;->a:Lcom/duapps/ad/entity/AdModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duapps/ad/base/n$5;->a:Lcom/duapps/ad/entity/AdModel;

    iget-object v0, v0, Lcom/duapps/ad/entity/AdModel;->h:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duapps/ad/base/n$5;->a:Lcom/duapps/ad/entity/AdModel;

    iget-object v0, v0, Lcom/duapps/ad/entity/AdModel;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 966
    :cond_0
    const-string v0, "ToolboxCacheManager"

    const-string v1, "ads == null || ads.list == null || ads.list.size() == 0"

    invoke-static {v0, v1}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 986
    :cond_1
    :goto_0
    return-void

    .line 970
    :cond_2
    iget-object v0, p0, Lcom/duapps/ad/base/n$5;->b:Lcom/duapps/ad/base/n;

    invoke-virtual {v0}, Lcom/duapps/ad/base/n;->a()V

    .line 973
    :try_start_0
    iget-object v0, p0, Lcom/duapps/ad/base/n$5;->a:Lcom/duapps/ad/entity/AdModel;

    iget-object v0, v0, Lcom/duapps/ad/entity/AdModel;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duapps/ad/entity/AdData;

    .line 974
    const-string v2, "ToolboxCacheManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "wall---before insert: ad.package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/duapps/ad/entity/AdData;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",ad.preParse:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/duapps/ad/entity/AdData;->H:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 976
    iget v2, v0, Lcom/duapps/ad/entity/AdData;->H:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 977
    iget-object v2, p0, Lcom/duapps/ad/base/n$5;->b:Lcom/duapps/ad/base/n;

    new-instance v3, Lcom/duapps/ad/stats/f;

    invoke-direct {v3, v0}, Lcom/duapps/ad/stats/f;-><init>(Lcom/duapps/ad/entity/AdData;)V

    invoke-virtual {v2, v3}, Lcom/duapps/ad/base/n;->b(Lcom/duapps/ad/stats/f;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 979
    :catch_0
    move-exception v0

    .line 980
    invoke-static {}, Lcom/duapps/ad/base/h;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 981
    const-string v1, "ToolboxCacheManager"

    const-string v2, "wall---batch update or insert triggerPreParse data error: "

    invoke-static {v1, v2, v0}, Lcom/duapps/ad/base/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
