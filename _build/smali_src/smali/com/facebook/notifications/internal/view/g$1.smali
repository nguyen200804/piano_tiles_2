.class Lcom/facebook/notifications/internal/view/g$1;
.super Landroid/widget/RelativeLayout$LayoutParams;
.source "HeroView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/notifications/internal/view/g;-><init>(Landroid/content/Context;Lcom/facebook/notifications/internal/asset/a;Lcom/facebook/notifications/internal/content/a;Lcom/facebook/notifications/internal/configuration/CardConfiguration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/notifications/internal/view/g;


# direct methods
.method constructor <init>(Lcom/facebook/notifications/internal/view/g;II)V
    .locals 5

    .prologue
    const v4, 0x53ec9fc7

    .line 75
    iput-object p1, p0, Lcom/facebook/notifications/internal/view/g$1;->a:Lcom/facebook/notifications/internal/view/g;

    invoke-direct {p0, p2, p3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 76
    iget-object v0, p0, Lcom/facebook/notifications/internal/view/g$1;->a:Lcom/facebook/notifications/internal/view/g;

    invoke-static {v0}, Lcom/facebook/notifications/internal/view/g;->a(Lcom/facebook/notifications/internal/view/g;)I

    move-result v0

    iget-object v1, p0, Lcom/facebook/notifications/internal/view/g$1;->a:Lcom/facebook/notifications/internal/view/g;

    invoke-static {v1}, Lcom/facebook/notifications/internal/view/g;->a(Lcom/facebook/notifications/internal/view/g;)I

    move-result v1

    iget-object v2, p0, Lcom/facebook/notifications/internal/view/g$1;->a:Lcom/facebook/notifications/internal/view/g;

    invoke-static {v2}, Lcom/facebook/notifications/internal/view/g;->a(Lcom/facebook/notifications/internal/view/g;)I

    move-result v2

    iget-object v3, p0, Lcom/facebook/notifications/internal/view/g$1;->a:Lcom/facebook/notifications/internal/view/g;

    invoke-static {v3}, Lcom/facebook/notifications/internal/view/g;->a(Lcom/facebook/notifications/internal/view/g;)I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/facebook/notifications/internal/view/g$1;->setMargins(IIII)V

    .line 78
    sget-object v0, Lcom/facebook/notifications/internal/view/g$2;->a:[I

    iget-object v1, p0, Lcom/facebook/notifications/internal/view/g$1;->a:Lcom/facebook/notifications/internal/view/g;

    invoke-static {v1}, Lcom/facebook/notifications/internal/view/g;->b(Lcom/facebook/notifications/internal/view/g;)Lcom/facebook/notifications/internal/configuration/HeroConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/notifications/internal/configuration/HeroConfiguration;->e()Lcom/facebook/notifications/internal/content/Content$VerticalAlignment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/notifications/internal/content/Content$VerticalAlignment;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 91
    :goto_0
    return-void

    .line 80
    :pswitch_0
    const/4 v0, 0x6

    invoke-virtual {p0, v0, v4}, Lcom/facebook/notifications/internal/view/g$1;->addRule(II)V

    goto :goto_0

    .line 84
    :pswitch_1
    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lcom/facebook/notifications/internal/view/g$1;->addRule(I)V

    goto :goto_0

    .line 88
    :pswitch_2
    const/16 v0, 0x8

    invoke-virtual {p0, v0, v4}, Lcom/facebook/notifications/internal/view/g$1;->addRule(II)V

    goto :goto_0

    .line 78
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
