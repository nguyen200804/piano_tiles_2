.class public Lcom/cmplay/tile2/ui/GameProblemActivity;
.super Landroid/app/Activity;
.source "GameProblemActivity.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Lcom/cmplay/b/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, -0x1

    const/4 v5, -0x2

    .line 25
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    invoke-virtual {p0}, Lcom/cmplay/tile2/ui/GameProblemActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/cmplay/tile2/ui/GameProblemActivity;->b:I

    .line 27
    invoke-virtual {p0}, Lcom/cmplay/tile2/ui/GameProblemActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "type_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmplay/tile2/ui/GameProblemActivity;->a:Ljava/lang/String;

    .line 28
    iget-object v0, p0, Lcom/cmplay/tile2/ui/GameProblemActivity;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    invoke-virtual {p0}, Lcom/cmplay/tile2/ui/GameProblemActivity;->finish()V

    .line 63
    :goto_0
    return-void

    .line 34
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/cmplay/tile2/ui/GameProblemActivity;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    if-nez v0, :cond_1

    .line 41
    invoke-virtual {p0}, Lcom/cmplay/tile2/ui/GameProblemActivity;->finish()V

    goto :goto_0

    .line 35
    :catch_0
    move-exception v0

    .line 37
    invoke-virtual {p0}, Lcom/cmplay/tile2/ui/GameProblemActivity;->finish()V

    goto :goto_0

    .line 44
    :cond_1
    new-instance v1, Lcom/cmplay/b/a;

    invoke-direct {v1, v0}, Lcom/cmplay/b/a;-><init>(Lorg/json/JSONObject;)V

    iput-object v1, p0, Lcom/cmplay/tile2/ui/GameProblemActivity;->c:Lcom/cmplay/b/a;

    .line 45
    iget-object v0, p0, Lcom/cmplay/tile2/ui/GameProblemActivity;->c:Lcom/cmplay/b/a;

    if-nez v0, :cond_2

    .line 46
    invoke-virtual {p0}, Lcom/cmplay/tile2/ui/GameProblemActivity;->finish()V

    goto :goto_0

    .line 49
    :cond_2
    const-string v0, "1"

    const/4 v1, 0x1

    iget v2, p0, Lcom/cmplay/tile2/ui/GameProblemActivity;->b:I

    iget-object v3, p0, Lcom/cmplay/tile2/ui/GameProblemActivity;->c:Lcom/cmplay/b/a;

    iget-object v3, v3, Lcom/cmplay/b/a;->h:Ljava/lang/String;

    iget-object v4, p0, Lcom/cmplay/tile2/ui/GameProblemActivity;->c:Lcom/cmplay/b/a;

    iget v4, v4, Lcom/cmplay/b/a;->c:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/cmplay/g/e;->a(Ljava/lang/String;IILjava/lang/String;I)V

    .line 56
    iget-object v0, p0, Lcom/cmplay/tile2/ui/GameProblemActivity;->c:Lcom/cmplay/b/a;

    iget v0, v0, Lcom/cmplay/b/a;->a:I

    invoke-static {v0}, Lcom/cmplay/util/NativeUtil;->setCardShow(I)V

    .line 57
    new-instance v0, Lcom/cmplay/tile2/ui/a;

    iget v1, p0, Lcom/cmplay/tile2/ui/GameProblemActivity;->b:I

    iget-object v2, p0, Lcom/cmplay/tile2/ui/GameProblemActivity;->c:Lcom/cmplay/b/a;

    invoke-direct {v0, p0, v1, v2}, Lcom/cmplay/tile2/ui/a;-><init>(Landroid/content/Context;ILcom/cmplay/b/a;)V

    .line 58
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v6, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 59
    const/high16 v2, 0x10a0000

    const v3, 0x10a0001

    invoke-virtual {p0, v2, v3}, Lcom/cmplay/tile2/ui/GameProblemActivity;->overridePendingTransition(II)V

    .line 60
    invoke-virtual {p0, v0, v1}, Lcom/cmplay/tile2/ui/GameProblemActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    invoke-virtual {p0}, Lcom/cmplay/tile2/ui/GameProblemActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v6, v5}, Landroid/view/Window;->setLayout(II)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 74
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 75
    const-string v0, "finish2"

    const-string v1, "GameProblemActivity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v4, 0x4

    .line 66
    if-ne p1, v4, :cond_0

    .line 67
    const-string v0, "1"

    iget v1, p0, Lcom/cmplay/tile2/ui/GameProblemActivity;->b:I

    iget-object v2, p0, Lcom/cmplay/tile2/ui/GameProblemActivity;->c:Lcom/cmplay/b/a;

    iget-object v2, v2, Lcom/cmplay/b/a;->h:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmplay/tile2/ui/GameProblemActivity;->c:Lcom/cmplay/b/a;

    iget v3, v3, Lcom/cmplay/b/a;->c:I

    invoke-static {v0, v4, v1, v2, v3}, Lcom/cmplay/g/e;->a(Ljava/lang/String;IILjava/lang/String;I)V

    .line 69
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
