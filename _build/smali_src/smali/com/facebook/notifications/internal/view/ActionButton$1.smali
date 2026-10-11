.class Lcom/facebook/notifications/internal/view/ActionButton$1;
.super Landroid/graphics/drawable/GradientDrawable;
.source "ActionButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/notifications/internal/view/ActionButton;-><init>(Landroid/content/Context;Lcom/facebook/notifications/internal/configuration/ActionConfiguration;Lcom/facebook/notifications/internal/view/ActionButton$a;F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:F

.field final synthetic b:Landroid/util/DisplayMetrics;

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:Lcom/facebook/notifications/internal/view/ActionButton;


# direct methods
.method constructor <init>(Lcom/facebook/notifications/internal/view/ActionButton;FLandroid/util/DisplayMetrics;II)V
    .locals 2

    .prologue
    .line 75
    iput-object p1, p0, Lcom/facebook/notifications/internal/view/ActionButton$1;->e:Lcom/facebook/notifications/internal/view/ActionButton;

    iput p2, p0, Lcom/facebook/notifications/internal/view/ActionButton$1;->a:F

    iput-object p3, p0, Lcom/facebook/notifications/internal/view/ActionButton$1;->b:Landroid/util/DisplayMetrics;

    iput p4, p0, Lcom/facebook/notifications/internal/view/ActionButton$1;->c:I

    iput p5, p0, Lcom/facebook/notifications/internal/view/ActionButton$1;->d:I

    invoke-direct {p0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 76
    iget v0, p0, Lcom/facebook/notifications/internal/view/ActionButton$1;->a:F

    iget-object v1, p0, Lcom/facebook/notifications/internal/view/ActionButton$1;->b:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/facebook/notifications/internal/view/ActionButton$1;->setCornerRadius(F)V

    .line 77
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/notifications/internal/view/ActionButton$1;->setShape(I)V

    .line 78
    iget v0, p0, Lcom/facebook/notifications/internal/view/ActionButton$1;->c:I

    iget-object v1, p0, Lcom/facebook/notifications/internal/view/ActionButton$1;->e:Lcom/facebook/notifications/internal/view/ActionButton;

    invoke-static {v1}, Lcom/facebook/notifications/internal/view/ActionButton;->a(Lcom/facebook/notifications/internal/view/ActionButton;)Lcom/facebook/notifications/internal/configuration/ActionConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/notifications/internal/configuration/ActionConfiguration;->b()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/facebook/notifications/internal/view/ActionButton$1;->setStroke(II)V

    .line 79
    iget v0, p0, Lcom/facebook/notifications/internal/view/ActionButton$1;->d:I

    invoke-virtual {p0, v0}, Lcom/facebook/notifications/internal/view/ActionButton$1;->setColor(I)V

    .line 80
    return-void
.end method
