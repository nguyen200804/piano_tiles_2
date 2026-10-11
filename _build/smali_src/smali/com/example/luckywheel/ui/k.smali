.class public Lcom/example/luckywheel/ui/k;
.super Lcom/example/luckywheel/ui/c;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:I

.field private c:Landroid/os/Handler;

.field private d:Lcom/example/luckywheel/c/a;


# direct methods
.method public constructor <init>(Landroid/app/Activity;ILandroid/os/Handler;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/example/luckywheel/ui/c;-><init>(Landroid/app/Activity;)V

    iput p2, p0, Lcom/example/luckywheel/ui/k;->a:I

    iput-object p3, p0, Lcom/example/luckywheel/ui/k;->c:Landroid/os/Handler;

    invoke-static {}, Lcom/example/luckywheel/b/g;->a()Lcom/example/luckywheel/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/example/luckywheel/b/g;->e()Lcom/example/luckywheel/c/a;

    move-result-object v0

    iput-object v0, p0, Lcom/example/luckywheel/ui/k;->d:Lcom/example/luckywheel/c/a;

    return-void
.end method

.method static synthetic a(Lcom/example/luckywheel/ui/k;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/example/luckywheel/ui/k;->c:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic b(Lcom/example/luckywheel/ui/k;)Lcom/example/luckywheel/c/a;
    .locals 1

    iget-object v0, p0, Lcom/example/luckywheel/ui/k;->d:Lcom/example/luckywheel/c/a;

    return-object v0
.end method

.method static synthetic c(Lcom/example/luckywheel/ui/k;)I
    .locals 1

    iget v0, p0, Lcom/example/luckywheel/ui/k;->a:I

    return v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/whatscall/luckywheel/R$id;->cancel_btn:I

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/example/luckywheel/ui/k;->dismiss()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v1, Lcom/whatscall/luckywheel/R$id;->redeem_btn:I

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/example/luckywheel/ui/l;

    invoke-virtual {p0}, Lcom/example/luckywheel/ui/k;->c()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/example/luckywheel/ui/l;-><init>(Landroid/app/Activity;)V

    invoke-static {}, Lcom/example/luckywheel/b/j;->a()Lcom/example/luckywheel/b/j;

    move-result-object v1

    invoke-virtual {p0}, Lcom/example/luckywheel/ui/k;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/example/luckywheel/ui/k;->a:I

    new-instance v4, Lcom/example/luckywheel/ui/an;

    invoke-direct {v4, p0, v0}, Lcom/example/luckywheel/ui/an;-><init>(Lcom/example/luckywheel/ui/k;Lcom/example/luckywheel/ui/l;)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/example/luckywheel/b/j;->a(Landroid/content/Context;ILcom/example/luckywheel/b/j$b;)V

    iget-object v0, p0, Lcom/example/luckywheel/ui/k;->d:Lcom/example/luckywheel/c/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/example/luckywheel/ui/k;->d:Lcom/example/luckywheel/c/a;

    const/4 v1, 0x1

    iget v2, p0, Lcom/example/luckywheel/ui/k;->a:I

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/example/luckywheel/c/a;->a(BII)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/example/luckywheel/ui/c;->onCreate(Landroid/os/Bundle;)V

    sget v0, Lcom/whatscall/luckywheel/R$layout;->redeem_confirm_dialog:I

    invoke-virtual {p0, v0}, Lcom/example/luckywheel/ui/k;->setContentView(I)V

    sget v0, Lcom/whatscall/luckywheel/R$id;->cancel_btn:I

    invoke-virtual {p0, v0}, Lcom/example/luckywheel/ui/k;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/whatscall/luckywheel/R$id;->redeem_btn:I

    invoke-virtual {p0, v1}, Lcom/example/luckywheel/ui/k;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/whatscall/luckywheel/R$id;->redeem_icon:I

    invoke-virtual {p0, v0}, Lcom/example/luckywheel/ui/k;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sget v1, Lcom/whatscall/luckywheel/R$id;->redeem_num:I

    invoke-virtual {p0, v1}, Lcom/example/luckywheel/ui/k;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget v2, Lcom/whatscall/luckywheel/R$id;->redeem_content:I

    invoke-virtual {p0, v2}, Lcom/example/luckywheel/ui/k;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {}, Lcom/example/luckywheel/b/j;->a()Lcom/example/luckywheel/b/j;

    move-result-object v3

    invoke-virtual {v3}, Lcom/example/luckywheel/b/j;->c()Lcom/example/luckywheel/b/j$d;

    move-result-object v3

    if-eqz v3, :cond_0

    iget v4, v3, Lcom/example/luckywheel/b/j$d;->b:I

    iget v3, v3, Lcom/example/luckywheel/b/j$d;->a:I

    iget v5, p0, Lcom/example/luckywheel/ui/k;->a:I

    mul-int/2addr v4, v5

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget v0, p0, Lcom/example/luckywheel/ui/k;->a:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/example/luckywheel/ui/k;->c()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/whatscall/luckywheel/R$string;->redeem_confirm_text:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
