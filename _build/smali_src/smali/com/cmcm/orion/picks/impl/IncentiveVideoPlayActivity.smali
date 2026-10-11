.class public Lcom/cmcm/orion/picks/impl/IncentiveVideoPlayActivity;
.super Landroid/app/Activity;
.source "IncentiveVideoPlayActivity.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# static fields
.field private static b:Lcom/cmcm/orion/picks/b/a;

.field private static f:Lcom/cmcm/orion/picks/b/b$a;


# instance fields
.field private a:Landroid/widget/RelativeLayout;

.field private c:Lcom/cmcm/orion/picks/b/a;

.field private d:Lcom/cmcm/orion/picks/impl/h;

.field private e:Lcom/cmcm/orion/picks/impl/g;

.field private g:Lcom/cmcm/orion/picks/b/a$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 80
    new-instance v0, Lcom/cmcm/orion/picks/impl/IncentiveVideoPlayActivity$2;

    invoke-direct {v0, p0}, Lcom/cmcm/orion/picks/impl/IncentiveVideoPlayActivity$2;-><init>(Lcom/cmcm/orion/picks/impl/IncentiveVideoPlayActivity;)V

    iput-object v0, p0, Lcom/cmcm/orion/picks/impl/IncentiveVideoPlayActivity;->g:Lcom/cmcm/orion/picks/b/a$a;

    return-void
.end method

.method static synthetic a()Lcom/cmcm/orion/picks/b/b$a;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/cmcm/orion/picks/impl/IncentiveVideoPlayActivity;->f:Lcom/cmcm/orion/picks/b/b$a;

    return-object v0
.end method

.method public static a(Lcom/cmcm/orion/picks/b/b$a;)V
    .locals 0

    .prologue
    .line 32
    sput-object p0, Lcom/cmcm/orion/picks/impl/IncentiveVideoPlayActivity;->f:Lcom/cmcm/orion/picks/b/b$a;

    .line 33
    return-void
.end method

.method static synthetic a(Lcom/cmcm/orion/picks/impl/IncentiveVideoPlayActivity;)V
    .locals 1

    .prologue
    .line 21
    .line 1183
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/IncentiveVideoPlayActivity;->e:Lcom/cmcm/orion/picks/impl/g;

    if-eqz v0, :cond_0

    .line 1184
    sget-object v0, Lcom/cmcm/orion/picks/impl/IncentiveVideoPlayActivity;->f:Lcom/cmcm/orion/picks/b/b$a;

    invoke-static {v0}, Lcom/cmcm/orion/picks/impl/VideoAdDetailActivity;->a(Lcom/cmcm/orion/picks/b/b$a;)V

    .line 1186
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/IncentiveVideoPlayActivity;->e:Lcom/cmcm/orion/picks/impl/g;

    invoke-static {p0, v0}, Lcom/cmcm/orion/picks/impl/VideoAdDetailActivity;->a(Landroid/content/Context;Lcom/cmcm/orion/picks/impl/g;)Z

    .line 1187
    invoke-virtual {p0}, Lcom/cmcm/orion/picks/impl/IncentiveVideoPlayActivity;->finish()V

    .line 21
    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/cmcm/orion/picks/b/a;)Z
    .locals 2

    .prologue
    .line 36
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 37
    :cond_0
    const/4 v0, 0x0

    .line 43
    :goto_0
    return v0

    .line 39
    :cond_1
    sput-object p1, Lcom/cmcm/orion/picks/impl/IncentiveVideoPlayActivity;->b:Lcom/cmcm/orion/picks/b/a;

    .line 40
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/cmcm/orion/picks/impl/IncentiveVideoPlayActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 41
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 42
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 43
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public finish()V
    .locals 0

    .prologue
    .line 179
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 180
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 136
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 137
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 48
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    sget v0, Lcom/cmcm/orion/adsdk/R$layout;->orion_activity_brand_incentive_video:I

    invoke-virtual {p0, v0}, Lcom/cmcm/orion/picks/impl/IncentiveVideoPlayActivity;->setContentView(I)V

    .line 52
    sget-object v0, Lcom/cmcm/orion/picks/impl/IncentiveVideoPlayActivity;->b:Lcom/cmcm/orion/picks/b/a;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/cmcm/orion/picks/impl/IncentiveVideoPlayActivity;->b:Lcom/cmcm/orion/picks/b/a;

    invoke-virtual {v0}, Lcom/cmcm/orion/picks/b/a;->d()Lcom/cmcm/orion/picks/impl/h;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/cmcm/orion/picks/impl/IncentiveVideoPlayActivity;->b:Lcom/cmcm/orion/picks/b/a;

    invoke-virtual {v0}, Lcom/cmcm/orion/picks/b/a;->f()Lcom/cmcm/orion/picks/impl/g;

    move-result-object v0

    if-nez v0, :cond_3

    .line 54
    :cond_0
    sget-object v0, Lcom/cmcm/orion/picks/impl/IncentiveVideoPlayActivity;->f:Lcom/cmcm/orion/picks/b/b$a;

    if-eqz v0, :cond_1

    .line 55
    new-instance v0, Lcom/cmcm/orion/picks/impl/IncentiveVideoPlayActivity$1;

    invoke-direct {v0, p0}, Lcom/cmcm/orion/picks/impl/IncentiveVideoPlayActivity$1;-><init>(Lcom/cmcm/orion/picks/impl/IncentiveVideoPlayActivity;)V

    invoke-static {v0}, Lcom/cmcm/orion/utils/e;->b(Ljava/lang/Runnable;)V

    .line 62
    :cond_1
    invoke-virtual {p0}, Lcom/cmcm/orion/picks/impl/IncentiveVideoPlayActivity;->finish()V

    .line 1127
    :cond_2
    :goto_0
    return-void

    .line 65
    :cond_3
    sget-object v0, Lcom/cmcm/orion/picks/impl/IncentiveVideoPlayActivity;->b:Lcom/cmcm/orion/picks/b/a;

    iput-object v0, p0, Lcom/cmcm/orion/picks/impl/IncentiveVideoPlayActivity;->c:Lcom/cmcm/orion/picks/b/a;

    .line 66
    const/4 v0, 0x0

    sput-object v0, Lcom/cmcm/orion/picks/impl/IncentiveVideoPlayActivity;->b:Lcom/cmcm/orion/picks/b/a;

    .line 68
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/IncentiveVideoPlayActivity;->c:Lcom/cmcm/orion/picks/b/a;

    iget-object v1, p0, Lcom/cmcm/orion/picks/impl/IncentiveVideoPlayActivity;->g:Lcom/cmcm/orion/picks/b/a$a;

    invoke-virtual {v0, v1}, Lcom/cmcm/orion/picks/b/a;->a(Lcom/cmcm/orion/picks/b/a$a;)V

    .line 69
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/IncentiveVideoPlayActivity;->c:Lcom/cmcm/orion/picks/b/a;

    invoke-virtual {v0}, Lcom/cmcm/orion/picks/b/a;->d()Lcom/cmcm/orion/picks/impl/h;

    move-result-object v0

    iput-object v0, p0, Lcom/cmcm/orion/picks/impl/IncentiveVideoPlayActivity;->d:Lcom/cmcm/orion/picks/impl/h;

    .line 70
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/IncentiveVideoPlayActivity;->c:Lcom/cmcm/orion/picks/b/a;

    invoke-virtual {v0}, Lcom/cmcm/orion/picks/b/a;->f()Lcom/cmcm/orion/picks/impl/g;

    move-result-object v0

    iput-object v0, p0, Lcom/cmcm/orion/picks/impl/IncentiveVideoPlayActivity;->e:Lcom/cmcm/orion/picks/impl/g;

    .line 73
    invoke-virtual {p0}, Lcom/cmcm/orion/picks/impl/IncentiveVideoPlayActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 74
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v1, v1, 0x400

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 75
    invoke-virtual {p0}, Lcom/cmcm/orion/picks/impl/IncentiveVideoPlayActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1116
    sget v0, Lcom/cmcm/orion/adsdk/R$id;->full_screen_brand_root_view:I

    invoke-virtual {p0, v0}, Lcom/cmcm/orion/picks/impl/IncentiveVideoPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/cmcm/orion/picks/impl/IncentiveVideoPlayActivity;->a:Landroid/widget/RelativeLayout;

    .line 1117
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/IncentiveVideoPlayActivity;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 1118
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/IncentiveVideoPlayActivity;->c:Lcom/cmcm/orion/picks/b/a;

    invoke-virtual {v0}, Lcom/cmcm/orion/picks/b/a;->e()Landroid/view/View;

    move-result-object v0

    .line 1119
    iget-object v1, p0, Lcom/cmcm/orion/picks/impl/IncentiveVideoPlayActivity;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1121
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/IncentiveVideoPlayActivity;->d:Lcom/cmcm/orion/picks/impl/h;

    if-eqz v0, :cond_2

    .line 1122
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/IncentiveVideoPlayActivity;->d:Lcom/cmcm/orion/picks/impl/h;

    invoke-virtual {v0, p0}, Lcom/cmcm/orion/picks/impl/h;->b(Landroid/content/Context;)Lcom/cmcm/orion/picks/impl/h$c;

    move-result-object v0

    .line 1123
    if-eqz v0, :cond_4

    .line 1124
    invoke-virtual {v0}, Lcom/cmcm/orion/picks/impl/h$c;->a()I

    move-result v1

    .line 1125
    invoke-virtual {v0}, Lcom/cmcm/orion/picks/impl/h$c;->b()I

    move-result v0

    .line 1126
    iget-object v2, p0, Lcom/cmcm/orion/picks/impl/IncentiveVideoPlayActivity;->c:Lcom/cmcm/orion/picks/b/a;

    int-to-float v1, v1

    int-to-float v0, v0

    div-float v0, v1, v0

    invoke-virtual {v2, v0}, Lcom/cmcm/orion/picks/b/a;->a(F)V

    goto :goto_0

    .line 1128
    :cond_4
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/IncentiveVideoPlayActivity;->d:Lcom/cmcm/orion/picks/impl/h;

    const/16 v1, 0x193

    invoke-static {v0, v1}, Lcom/cmcm/orion/picks/impl/g;->a(Lcom/cmcm/orion/picks/impl/h;I)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 161
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 163
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/IncentiveVideoPlayActivity;->c:Lcom/cmcm/orion/picks/b/a;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/IncentiveVideoPlayActivity;->c:Lcom/cmcm/orion/picks/b/a;

    invoke-virtual {v0}, Lcom/cmcm/orion/picks/b/a;->n()V

    .line 166
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 170
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 171
    const/4 v0, 0x0

    .line 173
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 152
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 154
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/IncentiveVideoPlayActivity;->c:Lcom/cmcm/orion/picks/b/a;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/IncentiveVideoPlayActivity;->c:Lcom/cmcm/orion/picks/b/a;

    invoke-virtual {v0}, Lcom/cmcm/orion/picks/b/a;->h()V

    .line 157
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 142
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 144
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/IncentiveVideoPlayActivity;->c:Lcom/cmcm/orion/picks/b/a;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/IncentiveVideoPlayActivity;->c:Lcom/cmcm/orion/picks/b/a;

    invoke-virtual {v0}, Lcom/cmcm/orion/picks/b/a;->i()V

    .line 146
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/IncentiveVideoPlayActivity;->c:Lcom/cmcm/orion/picks/b/a;

    invoke-virtual {v0}, Lcom/cmcm/orion/picks/b/a;->a()V

    .line 148
    :cond_0
    return-void
.end method
