.class final Lcom/cmplay/tile2/ui/view/a$2;
.super Ljava/lang/Object;
.source "ADLoadingTipsView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/tile2/ui/view/a;->a(IZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/WindowManager;

.field final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/view/WindowManager;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lcom/cmplay/tile2/ui/view/a$2;->a:Landroid/view/WindowManager;

    iput-object p2, p0, Lcom/cmplay/tile2/ui/view/a$2;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 176
    :try_start_0
    invoke-static {}, Lcom/cmplay/tile2/ui/view/a;->c()Lcom/cmplay/tile2/ui/view/a;

    move-result-object v0

    if-nez v0, :cond_0

    .line 188
    :goto_0
    return-void

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/cmplay/tile2/ui/view/a$2;->a:Landroid/view/WindowManager;

    invoke-static {}, Lcom/cmplay/tile2/ui/view/a;->c()Lcom/cmplay/tile2/ui/view/a;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 180
    invoke-static {}, Lcom/cmplay/tile2/ui/view/a;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 182
    iget-object v0, p0, Lcom/cmplay/tile2/ui/view/a$2;->b:Landroid/content/Context;

    const v1, 0x7f050040

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 183
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/cmplay/tile2/ui/view/a;->a(Z)Z

    .line 185
    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/cmplay/tile2/ui/view/a;->c(Lcom/cmplay/tile2/ui/view/a;)Lcom/cmplay/tile2/ui/view/a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 186
    :catch_0
    move-exception v0

    goto :goto_0
.end method
