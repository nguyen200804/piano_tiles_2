.class final Lcom/cmplay/base/util/a$2;
.super Ljava/lang/Object;
.source "ADLoadingTipsView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/base/util/a;->c(Landroid/content/Context;IZZ)V
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
    .line 172
    iput-object p1, p0, Lcom/cmplay/base/util/a$2;->a:Landroid/view/WindowManager;

    iput-object p2, p0, Lcom/cmplay/base/util/a$2;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 177
    :try_start_0
    invoke-static {}, Lcom/cmplay/base/util/a;->b()Lcom/cmplay/base/util/a;

    move-result-object v0

    if-nez v0, :cond_0

    .line 189
    :goto_0
    return-void

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/cmplay/base/util/a$2;->a:Landroid/view/WindowManager;

    invoke-static {}, Lcom/cmplay/base/util/a;->b()Lcom/cmplay/base/util/a;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 181
    invoke-static {}, Lcom/cmplay/base/util/a;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 183
    iget-object v0, p0, Lcom/cmplay/base/util/a$2;->b:Landroid/content/Context;

    sget v1, Lcom/cmplay/base/util/R$string;->message_tag_failed:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 184
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/cmplay/base/util/a;->a(Z)Z

    .line 186
    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/cmplay/base/util/a;->c(Lcom/cmplay/base/util/a;)Lcom/cmplay/base/util/a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 187
    :catch_0
    move-exception v0

    goto :goto_0
.end method
