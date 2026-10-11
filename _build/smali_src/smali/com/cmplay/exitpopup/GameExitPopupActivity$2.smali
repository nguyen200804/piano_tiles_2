.class Lcom/cmplay/exitpopup/GameExitPopupActivity$2;
.super Ljava/lang/Object;
.source "GameExitPopupActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/exitpopup/GameExitPopupActivity;->a(Landroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/TextView;

.field final synthetic b:Lcom/cmplay/exitpopup/GameExitPopupActivity;


# direct methods
.method constructor <init>(Lcom/cmplay/exitpopup/GameExitPopupActivity;Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lcom/cmplay/exitpopup/GameExitPopupActivity$2;->b:Lcom/cmplay/exitpopup/GameExitPopupActivity;

    iput-object p2, p0, Lcom/cmplay/exitpopup/GameExitPopupActivity$2;->a:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 6

    .prologue
    .line 184
    iget-object v0, p0, Lcom/cmplay/exitpopup/GameExitPopupActivity$2;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 185
    iget-object v0, p0, Lcom/cmplay/exitpopup/GameExitPopupActivity$2;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 186
    iget-object v0, p0, Lcom/cmplay/exitpopup/GameExitPopupActivity$2;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    iget-object v2, p0, Lcom/cmplay/exitpopup/GameExitPopupActivity$2;->a:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v0, v2

    iget-object v2, p0, Lcom/cmplay/exitpopup/GameExitPopupActivity$2;->a:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v2

    sub-int v2, v0, v2

    .line 187
    iget-object v0, p0, Lcom/cmplay/exitpopup/GameExitPopupActivity$2;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    .line 188
    invoke-virtual {v3}, Landroid/text/TextPaint;->getTextSize()F

    move-result v0

    .line 189
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u6587\u6848\u5bbd\uff1a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", \u63a7\u4ef6\u5bbd\uff1a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", \u539f\u6709size= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;)V

    .line 190
    :goto_0
    invoke-virtual {v3, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v4

    int-to-float v5, v2

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    const/high16 v4, 0x41200000    # 10.0f

    cmpl-float v4, v0, v4

    if-lez v4, :cond_0

    .line 191
    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v0, v4

    invoke-virtual {v3, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    goto :goto_0

    .line 193
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u6587\u6848\u5bbd\uff1a"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", \u65b0\u6709size= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lcom/cmplay/exitpopup/GameExitPopupActivity$2;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    return-void
.end method
