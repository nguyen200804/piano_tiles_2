.class public Lcom/example/luckywheel/ui/a;
.super Lcom/example/luckywheel/ui/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/example/luckywheel/ui/a$a;
    }
.end annotation


# instance fields
.field a:I

.field private c:Lcom/example/luckywheel/ui/a$a;


# direct methods
.method public constructor <init>(Landroid/app/Activity;ILcom/example/luckywheel/ui/a$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/example/luckywheel/ui/c;-><init>(Landroid/app/Activity;)V

    iput p2, p0, Lcom/example/luckywheel/ui/a;->a:I

    iput-object p3, p0, Lcom/example/luckywheel/ui/a;->c:Lcom/example/luckywheel/ui/a$a;

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    const-string v0, "liufan"

    const-string v1, "dismiss"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/example/luckywheel/ui/c;->dismiss()V

    iget-object v0, p0, Lcom/example/luckywheel/ui/a;->c:Lcom/example/luckywheel/ui/a$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/example/luckywheel/ui/a;->c:Lcom/example/luckywheel/ui/a$a;

    invoke-interface {v0}, Lcom/example/luckywheel/ui/a$a;->a()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v6, -0x1

    invoke-super {p0, p1}, Lcom/example/luckywheel/ui/c;->onCreate(Landroid/os/Bundle;)V

    sget v0, Lcom/whatscall/luckywheel/R$layout;->red_pocket_layout:I

    invoke-virtual {p0, v0}, Lcom/example/luckywheel/ui/a;->setContentView(I)V

    sget v0, Lcom/whatscall/luckywheel/R$id;->award_credits:I

    invoke-virtual {p0, v0}, Lcom/example/luckywheel/ui/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/example/luckywheel/ui/a;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/whatscall/luckywheel/R$string;->award_credits:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/example/luckywheel/ui/a;->a:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/example/luckywheel/ui/a;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x77

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    invoke-virtual {p0}, Lcom/example/luckywheel/ui/a;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v6, v6}, Landroid/view/Window;->setLayout(II)V

    return-void
.end method
