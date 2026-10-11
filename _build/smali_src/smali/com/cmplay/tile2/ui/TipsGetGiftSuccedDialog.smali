.class public Lcom/cmplay/tile2/ui/TipsGetGiftSuccedDialog;
.super Landroid/app/Activity;
.source "TipsGetGiftSuccedDialog.java"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;II)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 77
    if-eq p2, v1, :cond_0

    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    :cond_0
    if-lt p1, v1, :cond_2

    .line 78
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 79
    const-class v1, Lcom/cmplay/tile2/ui/TipsGetGiftSuccedDialog;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 80
    const-string v1, "count_rewardes"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 81
    const-string v1, "type_rewardes"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 82
    instance-of v1, p0, Landroid/app/Activity;

    if-nez v1, :cond_1

    .line 83
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 85
    :cond_1
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 87
    :cond_2
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/cmplay/tile2/ui/TipsGetGiftSuccedDialog;->finish()V

    .line 73
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    .line 28
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    const/high16 v0, 0x10a0000

    const v1, 0x10a0001

    invoke-virtual {p0, v0, v1}, Lcom/cmplay/tile2/ui/TipsGetGiftSuccedDialog;->overridePendingTransition(II)V

    .line 31
    invoke-virtual {p0}, Lcom/cmplay/tile2/ui/TipsGetGiftSuccedDialog;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/Futura condensed.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 32
    invoke-virtual {p0}, Lcom/cmplay/tile2/ui/TipsGetGiftSuccedDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "song_name"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    const v0, 0x7f030069

    invoke-virtual {p0, v0}, Lcom/cmplay/tile2/ui/TipsGetGiftSuccedDialog;->setContentView(I)V

    .line 34
    const v0, 0x7f080156

    invoke-virtual {p0, v0}, Lcom/cmplay/tile2/ui/TipsGetGiftSuccedDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cmplay/tile2/ui/TipsGetGiftSuccedDialog;->a:Landroid/widget/TextView;

    .line 35
    const v0, 0x7f080157

    invoke-virtual {p0, v0}, Lcom/cmplay/tile2/ui/TipsGetGiftSuccedDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cmplay/tile2/ui/TipsGetGiftSuccedDialog;->b:Landroid/widget/TextView;

    .line 36
    iget-object v0, p0, Lcom/cmplay/tile2/ui/TipsGetGiftSuccedDialog;->a:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/cmplay/tile2/ui/TipsGetGiftSuccedDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f05003e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    invoke-virtual {p0}, Lcom/cmplay/tile2/ui/TipsGetGiftSuccedDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "type_rewardes"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 38
    invoke-virtual {p0}, Lcom/cmplay/tile2/ui/TipsGetGiftSuccedDialog;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "count_rewardes"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 39
    if-ne v0, v6, :cond_1

    .line 40
    iget-object v0, p0, Lcom/cmplay/tile2/ui/TipsGetGiftSuccedDialog;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/cmplay/tile2/ui/TipsGetGiftSuccedDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0200b9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 46
    :goto_0
    iget-object v0, p0, Lcom/cmplay/tile2/ui/TipsGetGiftSuccedDialog;->b:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " x "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    if-eqz v1, :cond_0

    .line 49
    iget-object v0, p0, Lcom/cmplay/tile2/ui/TipsGetGiftSuccedDialog;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 50
    iget-object v0, p0, Lcom/cmplay/tile2/ui/TipsGetGiftSuccedDialog;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 52
    :cond_0
    invoke-virtual {p0, v6}, Lcom/cmplay/tile2/ui/TipsGetGiftSuccedDialog;->setFinishOnTouchOutside(Z)V

    .line 53
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/cmplay/tile2/ui/TipsGetGiftSuccedDialog$1;

    invoke-direct {v1, p0}, Lcom/cmplay/tile2/ui/TipsGetGiftSuccedDialog$1;-><init>(Lcom/cmplay/tile2/ui/TipsGetGiftSuccedDialog;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 61
    return-void

    .line 43
    :cond_1
    iget-object v0, p0, Lcom/cmplay/tile2/ui/TipsGetGiftSuccedDialog;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/cmplay/tile2/ui/TipsGetGiftSuccedDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020131

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/cmplay/tile2/ui/TipsGetGiftSuccedDialog;->finish()V

    .line 67
    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
