.class Lcom/cmplay/b/b$2;
.super Ljava/lang/Object;
.source "AppCardHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/b/b;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmplay/b/b;


# direct methods
.method constructor <init>(Lcom/cmplay/b/b;)V
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Lcom/cmplay/b/b$2;->a:Lcom/cmplay/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 207
    iget-object v0, p0, Lcom/cmplay/b/b$2;->a:Lcom/cmplay/b/b;

    invoke-static {v0}, Lcom/cmplay/b/b;->a(Lcom/cmplay/b/b;)Ljava/util/List;

    move-result-object v2

    .line 208
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 222
    :cond_0
    return-void

    .line 213
    :cond_1
    const/4 v0, 0x0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    .line 214
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmplay/b/a;

    .line 215
    sget-object v4, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    iget-object v5, v0, Lcom/cmplay/b/a;->h:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/cmplay/util/v;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 213
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 219
    :cond_2
    iget-object v4, p0, Lcom/cmplay/b/b$2;->a:Lcom/cmplay/b/b;

    invoke-static {v4, v0}, Lcom/cmplay/b/b;->a(Lcom/cmplay/b/b;Lcom/cmplay/b/a;)V

    goto :goto_1
.end method
