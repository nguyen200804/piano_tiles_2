.class public Lcom/example/luckywheel/ui/n;
.super Lcom/example/luckywheel/ui/b;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/example/luckywheel/ui/b;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/example/luckywheel/ui/b;->onCreate(Landroid/os/Bundle;)V

    sget v0, Lcom/whatscall/luckywheel/R$layout;->request_dialog:I

    invoke-virtual {p0, v0}, Lcom/example/luckywheel/ui/n;->setContentView(I)V

    sget v0, Lcom/whatscall/luckywheel/R$id;->request_title:I

    invoke-virtual {p0, v0}, Lcom/example/luckywheel/ui/n;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/whatscall/luckywheel/R$string;->sync_info:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method
