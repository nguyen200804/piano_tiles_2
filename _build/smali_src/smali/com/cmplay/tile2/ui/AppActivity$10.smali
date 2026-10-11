.class Lcom/cmplay/tile2/ui/AppActivity$10;
.super Ljava/lang/Object;
.source "AppActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/tile2/ui/AppActivity;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmplay/tile2/ui/AppActivity;


# direct methods
.method constructor <init>(Lcom/cmplay/tile2/ui/AppActivity;)V
    .locals 0

    .prologue
    .line 271
    iput-object p1, p0, Lcom/cmplay/tile2/ui/AppActivity$10;->a:Lcom/cmplay/tile2/ui/AppActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 275
    iget-object v0, p0, Lcom/cmplay/tile2/ui/AppActivity$10;->a:Lcom/cmplay/tile2/ui/AppActivity;

    invoke-static {v0}, Lcom/cmplay/tile2/ui/AppActivity;->a(Lcom/cmplay/tile2/ui/AppActivity;)V

    .line 276
    iget-object v0, p0, Lcom/cmplay/tile2/ui/AppActivity$10;->a:Lcom/cmplay/tile2/ui/AppActivity;

    invoke-static {v0}, Lcom/cmplay/tile2/ui/AppActivity;->b(Lcom/cmplay/tile2/ui/AppActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmplay/ad/d;

    .line 277
    if-eqz v0, :cond_0

    .line 278
    invoke-static {}, Lcom/cmplay/tile2/ui/AppActivity;->c()Landroid/app/Activity;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/cmplay/ad/d;->onCreate(Landroid/app/Activity;)V

    goto :goto_0

    .line 281
    :cond_1
    return-void
.end method
