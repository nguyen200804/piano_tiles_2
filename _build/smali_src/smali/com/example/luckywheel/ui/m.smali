.class public Lcom/example/luckywheel/ui/m;
.super Lcom/example/luckywheel/ui/b;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/example/luckywheel/ui/m$a;
    }
.end annotation


# instance fields
.field private a:Lcom/example/luckywheel/ui/m$a;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/example/luckywheel/ui/m$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/example/luckywheel/ui/b;-><init>(Landroid/app/Activity;)V

    iput-object p2, p0, Lcom/example/luckywheel/ui/m;->a:Lcom/example/luckywheel/ui/m$a;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/whatscall/luckywheel/R$id;->retry_btn:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/example/luckywheel/ui/m;->a:Lcom/example/luckywheel/ui/m$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/example/luckywheel/ui/m;->a:Lcom/example/luckywheel/ui/m$a;

    invoke-interface {v0}, Lcom/example/luckywheel/ui/m$a;->a()V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/example/luckywheel/ui/m;->dismiss()V

    return-void

    :cond_1
    sget v1, Lcom/whatscall/luckywheel/R$id;->cancel_btn:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/example/luckywheel/ui/m;->a:Lcom/example/luckywheel/ui/m$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/example/luckywheel/ui/m;->a:Lcom/example/luckywheel/ui/m$a;

    invoke-interface {v0}, Lcom/example/luckywheel/ui/m$a;->b()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/example/luckywheel/ui/b;->onCreate(Landroid/os/Bundle;)V

    sget v0, Lcom/whatscall/luckywheel/R$layout;->sync_fail_dialog:I

    invoke-virtual {p0, v0}, Lcom/example/luckywheel/ui/m;->setContentView(I)V

    sget v0, Lcom/whatscall/luckywheel/R$id;->retry_btn:I

    invoke-virtual {p0, v0}, Lcom/example/luckywheel/ui/m;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/whatscall/luckywheel/R$id;->cancel_btn:I

    invoke-virtual {p0, v1}, Lcom/example/luckywheel/ui/m;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
