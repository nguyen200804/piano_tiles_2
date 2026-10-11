.class public Lcom/cmcm/orion/picks/webview/PicksBrowser;
.super Landroid/app/Activity;
.source "PicksBrowser.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static h:Lcom/cmcm/orion/picks/impl/a$a;


# instance fields
.field private a:Lcom/cmcm/orion/picks/webview/BaseWebView;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/LinearLayout;

.field private g:Landroid/view/View;

.field private i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    sput-object v0, Lcom/cmcm/orion/picks/webview/PicksBrowser;->h:Lcom/cmcm/orion/picks/impl/a$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cmcm/orion/picks/webview/PicksBrowser;->i:Z

    .line 35
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 58
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    :goto_0
    return-void

    .line 62
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/cmcm/orion/picks/webview/PicksBrowser;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 63
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 64
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 65
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private a(Landroid/widget/ImageView;)V
    .locals 1

    .prologue
    .line 156
    if-eqz p1, :cond_0

    .line 157
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 158
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    :cond_0
    return-void
.end method

.method public static a(Lcom/cmcm/orion/picks/impl/a$a;)V
    .locals 0

    .prologue
    .line 39
    sput-object p0, Lcom/cmcm/orion/picks/webview/PicksBrowser;->h:Lcom/cmcm/orion/picks/impl/a$a;

    .line 40
    return-void
.end method

.method static synthetic a(Lcom/cmcm/orion/picks/webview/PicksBrowser;)Z
    .locals 1

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/cmcm/orion/picks/webview/PicksBrowser;->i:Z

    return v0
.end method

.method static synthetic b(Lcom/cmcm/orion/picks/webview/PicksBrowser;)Z
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cmcm/orion/picks/webview/PicksBrowser;->i:Z

    return v0
.end method

.method static synthetic d()Lcom/cmcm/orion/picks/impl/a$a;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/cmcm/orion/picks/webview/PicksBrowser;->h:Lcom/cmcm/orion/picks/impl/a$a;

    return-object v0
.end method


# virtual methods
.method public final a()Landroid/widget/ImageView;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 44
    iget-object v0, p0, Lcom/cmcm/orion/picks/webview/PicksBrowser;->b:Landroid/widget/ImageView;

    return-object v0
.end method

.method public final b()Landroid/widget/ImageView;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 49
    iget-object v0, p0, Lcom/cmcm/orion/picks/webview/PicksBrowser;->c:Landroid/widget/ImageView;

    return-object v0
.end method

.method public final c()Landroid/webkit/WebView;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lcom/cmcm/orion/picks/webview/PicksBrowser;->a:Lcom/cmcm/orion/picks/webview/BaseWebView;

    return-object v0
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 209
    invoke-virtual {p0}, Lcom/cmcm/orion/picks/webview/PicksBrowser;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 210
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 211
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 212
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 164
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 165
    iget-object v1, p0, Lcom/cmcm/orion/picks/webview/PicksBrowser;->b:Landroid/widget/ImageView;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 166
    iget-object v0, p0, Lcom/cmcm/orion/picks/webview/PicksBrowser;->a:Lcom/cmcm/orion/picks/webview/BaseWebView;

    invoke-virtual {v0}, Lcom/cmcm/orion/picks/webview/BaseWebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/cmcm/orion/picks/webview/PicksBrowser;->a:Lcom/cmcm/orion/picks/webview/BaseWebView;

    invoke-virtual {v0}, Lcom/cmcm/orion/picks/webview/BaseWebView;->goBack()V

    .line 178
    :cond_0
    :goto_0
    return-void

    .line 169
    :cond_1
    iget-object v1, p0, Lcom/cmcm/orion/picks/webview/PicksBrowser;->c:Landroid/widget/ImageView;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    if-ne v1, v0, :cond_2

    .line 170
    iget-object v0, p0, Lcom/cmcm/orion/picks/webview/PicksBrowser;->a:Lcom/cmcm/orion/picks/webview/BaseWebView;

    invoke-virtual {v0}, Lcom/cmcm/orion/picks/webview/BaseWebView;->canGoForward()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/cmcm/orion/picks/webview/PicksBrowser;->a:Lcom/cmcm/orion/picks/webview/BaseWebView;

    invoke-virtual {v0}, Lcom/cmcm/orion/picks/webview/BaseWebView;->goForward()V

    goto :goto_0

    .line 173
    :cond_2
    iget-object v1, p0, Lcom/cmcm/orion/picks/webview/PicksBrowser;->d:Landroid/widget/ImageView;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    if-ne v1, v0, :cond_3

    .line 174
    iget-object v0, p0, Lcom/cmcm/orion/picks/webview/PicksBrowser;->a:Lcom/cmcm/orion/picks/webview/BaseWebView;

    invoke-virtual {v0}, Lcom/cmcm/orion/picks/webview/BaseWebView;->reload()V

    goto :goto_0

    .line 175
    :cond_3
    iget-object v1, p0, Lcom/cmcm/orion/picks/webview/PicksBrowser;->e:Landroid/widget/ImageView;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 176
    invoke-virtual {p0}, Lcom/cmcm/orion/picks/webview/PicksBrowser;->finish()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x2

    const/4 v1, -0x1

    const/4 v3, 0x1

    .line 70
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 72
    invoke-virtual {p0, v1}, Lcom/cmcm/orion/picks/webview/PicksBrowser;->setResult(I)V

    .line 74
    invoke-virtual {p0}, Lcom/cmcm/orion/picks/webview/PicksBrowser;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 75
    invoke-virtual {p0}, Lcom/cmcm/orion/picks/webview/PicksBrowser;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Landroid/view/Window;->setFeatureInt(II)V

    .line 77
    sget v0, Lcom/cmcm/orion/adsdk/R$layout;->cm_picks_browser:I

    invoke-virtual {p0, v0}, Lcom/cmcm/orion/picks/webview/PicksBrowser;->setContentView(I)V

    .line 1091
    sget v0, Lcom/cmcm/orion/adsdk/R$id;->picks_browser_root_view:I

    invoke-virtual {p0, v0}, Lcom/cmcm/orion/picks/webview/PicksBrowser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/cmcm/orion/picks/webview/PicksBrowser;->g:Landroid/view/View;

    .line 1092
    sget v0, Lcom/cmcm/orion/adsdk/R$id;->panel_ll:I

    invoke-virtual {p0, v0}, Lcom/cmcm/orion/picks/webview/PicksBrowser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/cmcm/orion/picks/webview/PicksBrowser;->f:Landroid/widget/LinearLayout;

    .line 1093
    sget v0, Lcom/cmcm/orion/adsdk/R$id;->browser_back:I

    invoke-virtual {p0, v0}, Lcom/cmcm/orion/picks/webview/PicksBrowser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cmcm/orion/picks/webview/PicksBrowser;->b:Landroid/widget/ImageView;

    .line 1094
    sget v0, Lcom/cmcm/orion/adsdk/R$id;->browser_forward:I

    invoke-virtual {p0, v0}, Lcom/cmcm/orion/picks/webview/PicksBrowser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cmcm/orion/picks/webview/PicksBrowser;->c:Landroid/widget/ImageView;

    .line 1095
    sget v0, Lcom/cmcm/orion/adsdk/R$id;->browser_close:I

    invoke-virtual {p0, v0}, Lcom/cmcm/orion/picks/webview/PicksBrowser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cmcm/orion/picks/webview/PicksBrowser;->e:Landroid/widget/ImageView;

    .line 1096
    sget v0, Lcom/cmcm/orion/adsdk/R$id;->browser_refresh:I

    invoke-virtual {p0, v0}, Lcom/cmcm/orion/picks/webview/PicksBrowser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cmcm/orion/picks/webview/PicksBrowser;->d:Landroid/widget/ImageView;

    .line 1098
    iget-object v0, p0, Lcom/cmcm/orion/picks/webview/PicksBrowser;->f:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/cmcm/orion/picks/webview/PicksBrowser;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/cmcm/orion/adsdk/R$drawable;->browser_background:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1099
    iget-object v0, p0, Lcom/cmcm/orion/picks/webview/PicksBrowser;->b:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/cmcm/orion/picks/webview/PicksBrowser;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/cmcm/orion/adsdk/R$drawable;->browser_left_arrow:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1100
    iget-object v0, p0, Lcom/cmcm/orion/picks/webview/PicksBrowser;->c:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/cmcm/orion/picks/webview/PicksBrowser;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/cmcm/orion/adsdk/R$drawable;->browser_right_arrow:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1101
    iget-object v0, p0, Lcom/cmcm/orion/picks/webview/PicksBrowser;->e:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/cmcm/orion/picks/webview/PicksBrowser;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/cmcm/orion/adsdk/R$drawable;->browser_close:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1102
    iget-object v0, p0, Lcom/cmcm/orion/picks/webview/PicksBrowser;->d:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/cmcm/orion/picks/webview/PicksBrowser;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/cmcm/orion/adsdk/R$drawable;->browser_refresh:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1103
    sget v0, Lcom/cmcm/orion/adsdk/R$id;->webview:I

    invoke-virtual {p0, v0}, Lcom/cmcm/orion/picks/webview/PicksBrowser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cmcm/orion/picks/webview/BaseWebView;

    iput-object v0, p0, Lcom/cmcm/orion/picks/webview/PicksBrowser;->a:Lcom/cmcm/orion/picks/webview/BaseWebView;

    .line 80
    sget-object v0, Lcom/cmcm/orion/picks/webview/PicksBrowser;->h:Lcom/cmcm/orion/picks/impl/a$a;

    if-eqz v0, :cond_0

    .line 81
    sget-object v0, Lcom/cmcm/orion/picks/webview/PicksBrowser;->h:Lcom/cmcm/orion/picks/impl/a$a;

    invoke-interface {v0}, Lcom/cmcm/orion/picks/impl/a$a;->d_()V

    .line 1107
    :cond_0
    iget-object v0, p0, Lcom/cmcm/orion/picks/webview/PicksBrowser;->a:Lcom/cmcm/orion/picks/webview/BaseWebView;

    invoke-virtual {v0}, Lcom/cmcm/orion/picks/webview/BaseWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 1109
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 1116
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 1117
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 1118
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 1119
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 1120
    invoke-virtual {p0}, Lcom/cmcm/orion/picks/webview/PicksBrowser;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 1121
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1122
    iget-object v1, p0, Lcom/cmcm/orion/picks/webview/PicksBrowser;->a:Lcom/cmcm/orion/picks/webview/BaseWebView;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/cmcm/orion/picks/webview/BaseWebView;->loadUrl(Ljava/lang/String;)V

    .line 1124
    :cond_1
    new-instance v0, Lcom/cmcm/orion/picks/webview/b;

    invoke-direct {v0, p0}, Lcom/cmcm/orion/picks/webview/b;-><init>(Lcom/cmcm/orion/picks/webview/PicksBrowser;)V

    .line 1125
    new-instance v1, Lcom/cmcm/orion/picks/webview/PicksBrowser$1;

    invoke-direct {v1, p0}, Lcom/cmcm/orion/picks/webview/PicksBrowser$1;-><init>(Lcom/cmcm/orion/picks/webview/PicksBrowser;)V

    invoke-virtual {v0, v1}, Lcom/cmcm/orion/picks/webview/b;->a(Lcom/cmcm/orion/picks/webview/b$a;)V

    .line 1131
    iget-object v1, p0, Lcom/cmcm/orion/picks/webview/PicksBrowser;->a:Lcom/cmcm/orion/picks/webview/BaseWebView;

    invoke-virtual {v1, v0}, Lcom/cmcm/orion/picks/webview/BaseWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 1132
    iget-object v0, p0, Lcom/cmcm/orion/picks/webview/PicksBrowser;->a:Lcom/cmcm/orion/picks/webview/BaseWebView;

    new-instance v1, Lcom/cmcm/orion/picks/webview/PicksBrowser$2;

    invoke-direct {v1, p0}, Lcom/cmcm/orion/picks/webview/PicksBrowser$2;-><init>(Lcom/cmcm/orion/picks/webview/PicksBrowser;)V

    invoke-virtual {v0, v1}, Lcom/cmcm/orion/picks/webview/BaseWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 1149
    iget-object v0, p0, Lcom/cmcm/orion/picks/webview/PicksBrowser;->b:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/cmcm/orion/picks/webview/PicksBrowser;->a(Landroid/widget/ImageView;)V

    .line 1150
    iget-object v0, p0, Lcom/cmcm/orion/picks/webview/PicksBrowser;->c:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/cmcm/orion/picks/webview/PicksBrowser;->a(Landroid/widget/ImageView;)V

    .line 1151
    iget-object v0, p0, Lcom/cmcm/orion/picks/webview/PicksBrowser;->d:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/cmcm/orion/picks/webview/PicksBrowser;->a(Landroid/widget/ImageView;)V

    .line 1152
    iget-object v0, p0, Lcom/cmcm/orion/picks/webview/PicksBrowser;->e:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/cmcm/orion/picks/webview/PicksBrowser;->a(Landroid/widget/ImageView;)V

    .line 1181
    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 1182
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->startSync()V

    .line 87
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 216
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 217
    iget-object v0, p0, Lcom/cmcm/orion/picks/webview/PicksBrowser;->a:Lcom/cmcm/orion/picks/webview/BaseWebView;

    invoke-virtual {v0}, Lcom/cmcm/orion/picks/webview/BaseWebView;->destroy()V

    .line 218
    iput-object v1, p0, Lcom/cmcm/orion/picks/webview/PicksBrowser;->a:Lcom/cmcm/orion/picks/webview/BaseWebView;

    .line 219
    sput-object v1, Lcom/cmcm/orion/picks/webview/PicksBrowser;->h:Lcom/cmcm/orion/picks/impl/a$a;

    .line 220
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 187
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 188
    iget-object v0, p0, Lcom/cmcm/orion/picks/webview/PicksBrowser;->g:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 189
    iget-object v0, p0, Lcom/cmcm/orion/picks/webview/PicksBrowser;->a:Lcom/cmcm/orion/picks/webview/BaseWebView;

    invoke-virtual {v0, v2}, Lcom/cmcm/orion/picks/webview/BaseWebView;->setVisibility(I)V

    .line 190
    iget-object v0, p0, Lcom/cmcm/orion/picks/webview/PicksBrowser;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 191
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->stopSync()V

    .line 192
    iget-object v0, p0, Lcom/cmcm/orion/picks/webview/PicksBrowser;->a:Lcom/cmcm/orion/picks/webview/BaseWebView;

    invoke-virtual {p0}, Lcom/cmcm/orion/picks/webview/PicksBrowser;->isFinishing()Z

    move-result v1

    .line 2032
    if-eqz v1, :cond_0

    .line 2033
    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 2034
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 2037
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_1

    .line 2038
    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    .line 2047
    :goto_0
    return-void

    .line 2044
    :cond_1
    :try_start_0
    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/cmcm/orion/picks/webview/d;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 193
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 197
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 198
    iget-object v0, p0, Lcom/cmcm/orion/picks/webview/PicksBrowser;->g:Landroid/view/View;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 199
    iget-object v0, p0, Lcom/cmcm/orion/picks/webview/PicksBrowser;->a:Lcom/cmcm/orion/picks/webview/BaseWebView;

    invoke-virtual {v0, v2}, Lcom/cmcm/orion/picks/webview/BaseWebView;->setVisibility(I)V

    .line 200
    iget-object v0, p0, Lcom/cmcm/orion/picks/webview/PicksBrowser;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 201
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->startSync()V

    .line 202
    iget-object v0, p0, Lcom/cmcm/orion/picks/webview/PicksBrowser;->a:Lcom/cmcm/orion/picks/webview/BaseWebView;

    .line 3013
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 3014
    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    .line 3023
    :goto_0
    return-void

    .line 3020
    :cond_0
    :try_start_0
    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/cmcm/orion/picks/webview/d;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 203
    :catch_0
    move-exception v0

    goto :goto_0
.end method
