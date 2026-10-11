.class public Lcom/cmplay/webview/ui/WebViewLayout;
.super Landroid/widget/RelativeLayout;
.source "WebViewLayout.java"

# interfaces
.implements Lcom/cmplay/webview/a/a;


# static fields
.field private static k:Ljava/lang/String;

.field private static l:Ljava/lang/String;

.field private static m:Ljava/lang/String;

.field private static n:Ljava/lang/String;

.field private static o:Ljava/lang/String;


# instance fields
.field public a:Lcom/cmplay/webview/ui/WebViewEx;

.field public b:Lcom/cmplay/webview/ui/WebViewLayout;

.field private c:Landroid/app/Activity;

.field private d:Ljava/lang/String;

.field private e:Lcom/cmplay/tile2/ui/view/MsgBoxNetworkStateViewFlipper;

.field private f:Z

.field private g:Lcom/cmplay/webview/interfaces/WebJsInterface;

.field private h:[Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 91
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    const/4 v0, -0x1

    iput v0, p0, Lcom/cmplay/webview/ui/WebViewLayout;->j:I

    .line 92
    invoke-direct {p0, p1}, Lcom/cmplay/webview/ui/WebViewLayout;->a(Landroid/content/Context;)V

    .line 93
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 96
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    const/4 v0, -0x1

    iput v0, p0, Lcom/cmplay/webview/ui/WebViewLayout;->j:I

    .line 97
    invoke-direct {p0, p1}, Lcom/cmplay/webview/ui/WebViewLayout;->a(Landroid/content/Context;)V

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "type"    # I

    .prologue
    .line 84
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 65
    const/4 v0, -0x1

    iput v0, p0, Lcom/cmplay/webview/ui/WebViewLayout;->j:I

    .line 85
    iput-object p2, p0, Lcom/cmplay/webview/ui/WebViewLayout;->d:Ljava/lang/String;

    .line 86
    iput p3, p0, Lcom/cmplay/webview/ui/WebViewLayout;->j:I

    .line 87
    invoke-direct {p0, p1}, Lcom/cmplay/webview/ui/WebViewLayout;->a(Landroid/content/Context;)V

    .line 88
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 8

    .prologue
    const/16 v7, 0x10

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 101
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/cmplay/webview/ui/WebViewLayout;->c:Landroid/app/Activity;

    .line 102
    iput-object p0, p0, Lcom/cmplay/webview/ui/WebViewLayout;->b:Lcom/cmplay/webview/ui/WebViewLayout;

    .line 103
    iget v0, p0, Lcom/cmplay/webview/ui/WebViewLayout;->j:I

    packed-switch v0, :pswitch_data_0

    .line 124
    :goto_0
    :pswitch_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030049

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 126
    const v0, 0x7f080090

    invoke-virtual {p0, v0}, Lcom/cmplay/webview/ui/WebViewLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cmplay/tile2/ui/view/MsgBoxNetworkStateViewFlipper;

    iput-object v0, p0, Lcom/cmplay/webview/ui/WebViewLayout;->e:Lcom/cmplay/tile2/ui/view/MsgBoxNetworkStateViewFlipper;

    .line 127
    iget-object v0, p0, Lcom/cmplay/webview/ui/WebViewLayout;->e:Lcom/cmplay/tile2/ui/view/MsgBoxNetworkStateViewFlipper;

    sget-object v1, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/cmplay/webview/ipc/a/b;->a(Landroid/content/Context;)Lcom/cmplay/webview/ipc/a/b;

    move-result-object v1

    const-string v2, "sharepic_loading"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/cmplay/webview/ipc/a/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmplay/tile2/ui/view/MsgBoxNetworkStateViewFlipper;->a(Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/cmplay/webview/ui/WebViewLayout;->e:Lcom/cmplay/tile2/ui/view/MsgBoxNetworkStateViewFlipper;

    new-instance v1, Lcom/cmplay/webview/ui/WebViewLayout$1;

    invoke-direct {v1, p0}, Lcom/cmplay/webview/ui/WebViewLayout$1;-><init>(Lcom/cmplay/webview/ui/WebViewLayout;)V

    invoke-virtual {v0, v1}, Lcom/cmplay/tile2/ui/view/MsgBoxNetworkStateViewFlipper;->a(Lcom/cmplay/tile2/ui/view/b;)V

    .line 135
    const v0, 0x7f080088

    invoke-virtual {p0, v0}, Lcom/cmplay/webview/ui/WebViewLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cmplay/webview/ui/WebViewEx;

    iput-object v0, p0, Lcom/cmplay/webview/ui/WebViewLayout;->a:Lcom/cmplay/webview/ui/WebViewEx;

    .line 136
    iget-object v0, p0, Lcom/cmplay/webview/ui/WebViewLayout;->a:Lcom/cmplay/webview/ui/WebViewEx;

    invoke-virtual {v0}, Lcom/cmplay/webview/ui/WebViewEx;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 137
    iget-object v0, p0, Lcom/cmplay/webview/ui/WebViewLayout;->a:Lcom/cmplay/webview/ui/WebViewEx;

    invoke-virtual {v0}, Lcom/cmplay/webview/ui/WebViewEx;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/cmplay/webview/ui/WebViewLayout;->a:Lcom/cmplay/webview/ui/WebViewEx;

    invoke-virtual {v0}, Lcom/cmplay/webview/ui/WebViewEx;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 139
    iget-object v0, p0, Lcom/cmplay/webview/ui/WebViewLayout;->a:Lcom/cmplay/webview/ui/WebViewEx;

    invoke-virtual {v0}, Lcom/cmplay/webview/ui/WebViewEx;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 140
    iget-object v0, p0, Lcom/cmplay/webview/ui/WebViewLayout;->a:Lcom/cmplay/webview/ui/WebViewEx;

    invoke-virtual {v0}, Lcom/cmplay/webview/ui/WebViewEx;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 141
    iget-object v0, p0, Lcom/cmplay/webview/ui/WebViewLayout;->a:Lcom/cmplay/webview/ui/WebViewEx;

    invoke-virtual {v0}, Lcom/cmplay/webview/ui/WebViewEx;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 142
    iget-object v0, p0, Lcom/cmplay/webview/ui/WebViewLayout;->a:Lcom/cmplay/webview/ui/WebViewEx;

    invoke-virtual {v0}, Lcom/cmplay/webview/ui/WebViewEx;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v1, Landroid/webkit/WebSettings$TextSize;->NORMAL:Landroid/webkit/WebSettings$TextSize;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setTextSize(Landroid/webkit/WebSettings$TextSize;)V

    .line 143
    iget-object v0, p0, Lcom/cmplay/webview/ui/WebViewLayout;->a:Lcom/cmplay/webview/ui/WebViewEx;

    invoke-virtual {v0}, Lcom/cmplay/webview/ui/WebViewEx;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/webkit/WebSettings;->setDefaultFixedFontSize(I)V

    .line 144
    iget-object v0, p0, Lcom/cmplay/webview/ui/WebViewLayout;->a:Lcom/cmplay/webview/ui/WebViewEx;

    invoke-virtual {v0}, Lcom/cmplay/webview/ui/WebViewEx;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/webkit/WebSettings;->setDefaultFontSize(I)V

    .line 145
    iget-object v0, p0, Lcom/cmplay/webview/ui/WebViewLayout;->a:Lcom/cmplay/webview/ui/WebViewEx;

    invoke-virtual {v0, v5}, Lcom/cmplay/webview/ui/WebViewEx;->setBackgroundColor(I)V

    .line 146
    iget-object v0, p0, Lcom/cmplay/webview/ui/WebViewLayout;->a:Lcom/cmplay/webview/ui/WebViewEx;

    invoke-virtual {v0, v5}, Lcom/cmplay/webview/ui/WebViewEx;->clearCache(Z)V

    .line 147
    new-instance v0, Lcom/cmplay/webview/interfaces/WebJsInterface;

    iget-object v1, p0, Lcom/cmplay/webview/ui/WebViewLayout;->c:Landroid/app/Activity;

    invoke-direct {v0, v1, p0}, Lcom/cmplay/webview/interfaces/WebJsInterface;-><init>(Landroid/app/Activity;Lcom/cmplay/webview/a/a;)V

    iput-object v0, p0, Lcom/cmplay/webview/ui/WebViewLayout;->g:Lcom/cmplay/webview/interfaces/WebJsInterface;

    .line 148
    iget-object v0, p0, Lcom/cmplay/webview/ui/WebViewLayout;->a:Lcom/cmplay/webview/ui/WebViewEx;

    iget-object v1, p0, Lcom/cmplay/webview/ui/WebViewLayout;->g:Lcom/cmplay/webview/interfaces/WebJsInterface;

    const-string v2, "dttwt2"

    invoke-virtual {v0, v1, v2}, Lcom/cmplay/webview/ui/WebViewEx;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 151
    iget-object v0, p0, Lcom/cmplay/webview/ui/WebViewLayout;->a:Lcom/cmplay/webview/ui/WebViewEx;

    invoke-virtual {v0}, Lcom/cmplay/webview/ui/WebViewEx;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 154
    :cond_0
    new-instance v0, Lcom/cmplay/webview/ui/WebViewLayout$2;

    invoke-direct {v0, p0}, Lcom/cmplay/webview/ui/WebViewLayout$2;-><init>(Lcom/cmplay/webview/ui/WebViewLayout;)V

    invoke-virtual {p0, v0}, Lcom/cmplay/webview/ui/WebViewLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 162
    iget-object v0, p0, Lcom/cmplay/webview/ui/WebViewLayout;->a:Lcom/cmplay/webview/ui/WebViewEx;

    new-instance v1, Landroid/webkit/WebChromeClient;

    invoke-direct {v1}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {v0, v1}, Lcom/cmplay/webview/ui/WebViewEx;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 164
    iget-object v0, p0, Lcom/cmplay/webview/ui/WebViewLayout;->a:Lcom/cmplay/webview/ui/WebViewEx;

    new-instance v1, Lcom/cmplay/webview/ui/WebViewLayout$3;

    invoke-direct {v1, p0}, Lcom/cmplay/webview/ui/WebViewLayout$3;-><init>(Lcom/cmplay/webview/ui/WebViewLayout;)V

    invoke-virtual {v0, v1}, Lcom/cmplay/webview/ui/WebViewEx;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 241
    invoke-direct {p0}, Lcom/cmplay/webview/ui/WebViewLayout;->h()V

    .line 242
    :goto_1
    return-void

    .line 105
    :pswitch_1
    invoke-static {}, Lcom/cmplay/cloud/a;->a()Lcom/cmplay/cloud/a;

    move-result-object v0

    const/4 v1, 0x2

    const-string v2, "section_common"

    const-string v3, "cloud_key_h5_down_load_image"

    const-string v4, ""

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/cmplay/cloud/a;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 113
    invoke-static {}, Lcom/cmplay/webview/d/c;->a()Lcom/cmplay/webview/d/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/cmplay/webview/d/c;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmplay/webview/ui/WebViewLayout;->h:[Ljava/lang/String;

    .line 114
    const-string v0, "/h5_down/"

    const-string v1, ".nomedia"

    invoke-static {v0, v1}, Lcom/cmplay/webview/d/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmplay/webview/ui/WebViewLayout;->i:Ljava/lang/String;

    goto/16 :goto_0

    .line 120
    :pswitch_2
    iget-object v0, p0, Lcom/cmplay/webview/ui/WebViewLayout;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 103
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic a(Lcom/cmplay/webview/ui/WebViewLayout;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/cmplay/webview/ui/WebViewLayout;->h()V

    return-void
.end method

.method static synthetic a(Lcom/cmplay/webview/ui/WebViewLayout;Z)Z
    .locals 0

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/cmplay/webview/ui/WebViewLayout;->f:Z

    return p1
.end method

.method static synthetic b(Lcom/cmplay/webview/ui/WebViewLayout;)Z
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/cmplay/webview/ui/WebViewLayout;->f:Z

    return v0
.end method

.method static synthetic c(Lcom/cmplay/webview/ui/WebViewLayout;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/cmplay/webview/ui/WebViewLayout;->c:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic d(Lcom/cmplay/webview/ui/WebViewLayout;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/cmplay/webview/ui/WebViewLayout;->h:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/cmplay/webview/ui/WebViewLayout;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/cmplay/webview/ui/WebViewLayout;->i:Ljava/lang/String;

    return-object v0
.end method

.method private h()V
    .locals 2

    .prologue
    .line 245
    iget-object v0, p0, Lcom/cmplay/webview/ui/WebViewLayout;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cmplay/webview/ui/WebViewLayout;->a:Lcom/cmplay/webview/ui/WebViewEx;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmplay/webview/ui/WebViewLayout;->e:Lcom/cmplay/tile2/ui/view/MsgBoxNetworkStateViewFlipper;

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/cmplay/webview/ui/WebViewLayout;->e:Lcom/cmplay/tile2/ui/view/MsgBoxNetworkStateViewFlipper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cmplay/tile2/ui/view/MsgBoxNetworkStateViewFlipper;->setVisibility(I)V

    .line 247
    iget-object v0, p0, Lcom/cmplay/webview/ui/WebViewLayout;->a:Lcom/cmplay/webview/ui/WebViewEx;

    iget-object v1, p0, Lcom/cmplay/webview/ui/WebViewLayout;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/cmplay/webview/ui/WebViewEx;->loadUrl(Ljava/lang/String;)V

    .line 249
    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 403
    invoke-virtual {p0}, Lcom/cmplay/webview/ui/WebViewLayout;->c()V

    .line 404
    return-void
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 394
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/cmplay/webview/ui/WebViewLayout;->setVisibility(I)V

    .line 395
    invoke-virtual {p0}, Lcom/cmplay/webview/ui/WebViewLayout;->e()V

    .line 396
    iget-object v0, p0, Lcom/cmplay/webview/ui/WebViewLayout;->c:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/cmplay/webview/ui/WebViewLayout;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 399
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 329
    sput-object p1, Lcom/cmplay/webview/ui/WebViewLayout;->l:Ljava/lang/String;

    .line 330
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 303
    iget-object v0, p0, Lcom/cmplay/webview/ui/WebViewLayout;->a:Lcom/cmplay/webview/ui/WebViewEx;

    if-nez v0, :cond_1

    .line 320
    :cond_0
    :goto_0
    return-void

    .line 306
    :cond_1
    iget-object v0, p0, Lcom/cmplay/webview/ui/WebViewLayout;->c:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmplay/webview/ui/WebViewLayout;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/cmplay/webview/ui/WebViewLayout;->c:Landroid/app/Activity;

    new-instance v1, Lcom/cmplay/webview/ui/WebViewLayout$4;

    invoke-direct {v1, p0, p2, p1}, Lcom/cmplay/webview/ui/WebViewLayout$4;-><init>(Lcom/cmplay/webview/ui/WebViewLayout;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 252
    iget-object v0, p0, Lcom/cmplay/webview/ui/WebViewLayout;->e:Lcom/cmplay/tile2/ui/view/MsgBoxNetworkStateViewFlipper;

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/cmplay/webview/ui/WebViewLayout;->e:Lcom/cmplay/tile2/ui/view/MsgBoxNetworkStateViewFlipper;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/cmplay/tile2/ui/view/MsgBoxNetworkStateViewFlipper;->setVisibility(I)V

    .line 255
    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 334
    sput-object p1, Lcom/cmplay/webview/ui/WebViewLayout;->k:Ljava/lang/String;

    .line 335
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 258
    iget-object v0, p0, Lcom/cmplay/webview/ui/WebViewLayout;->a:Lcom/cmplay/webview/ui/WebViewEx;

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/cmplay/webview/ui/WebViewLayout;->a:Lcom/cmplay/webview/ui/WebViewEx;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cmplay/webview/ui/WebViewEx;->setVisibility(I)V

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/cmplay/webview/ui/WebViewLayout;->e:Lcom/cmplay/tile2/ui/view/MsgBoxNetworkStateViewFlipper;

    if-eqz v0, :cond_1

    .line 262
    iget-object v0, p0, Lcom/cmplay/webview/ui/WebViewLayout;->e:Lcom/cmplay/tile2/ui/view/MsgBoxNetworkStateViewFlipper;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/cmplay/tile2/ui/view/MsgBoxNetworkStateViewFlipper;->setVisibility(I)V

    .line 264
    :cond_1
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 294
    sput-object p1, Lcom/cmplay/webview/ui/WebViewLayout;->m:Ljava/lang/String;

    .line 295
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 267
    iget-object v0, p0, Lcom/cmplay/webview/ui/WebViewLayout;->a:Lcom/cmplay/webview/ui/WebViewEx;

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/cmplay/webview/ui/WebViewLayout;->a:Lcom/cmplay/webview/ui/WebViewEx;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/cmplay/webview/ui/WebViewEx;->setVisibility(I)V

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/cmplay/webview/ui/WebViewLayout;->e:Lcom/cmplay/tile2/ui/view/MsgBoxNetworkStateViewFlipper;

    if-eqz v0, :cond_1

    .line 271
    iget-object v0, p0, Lcom/cmplay/webview/ui/WebViewLayout;->e:Lcom/cmplay/tile2/ui/view/MsgBoxNetworkStateViewFlipper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cmplay/tile2/ui/view/MsgBoxNetworkStateViewFlipper;->setVisibility(I)V

    .line 272
    iget-object v0, p0, Lcom/cmplay/webview/ui/WebViewLayout;->e:Lcom/cmplay/tile2/ui/view/MsgBoxNetworkStateViewFlipper;

    invoke-virtual {v0}, Lcom/cmplay/tile2/ui/view/MsgBoxNetworkStateViewFlipper;->e()V

    .line 274
    :cond_1
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 298
    sput-object p1, Lcom/cmplay/webview/ui/WebViewLayout;->n:Ljava/lang/String;

    .line 299
    return-void
.end method

.method public e()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 277
    iput-object v2, p0, Lcom/cmplay/webview/ui/WebViewLayout;->b:Lcom/cmplay/webview/ui/WebViewLayout;

    .line 278
    iget-object v0, p0, Lcom/cmplay/webview/ui/WebViewLayout;->a:Lcom/cmplay/webview/ui/WebViewEx;

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/cmplay/webview/ui/WebViewLayout;->a:Lcom/cmplay/webview/ui/WebViewEx;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cmplay/webview/ui/WebViewEx;->clearCache(Z)V

    .line 280
    iget-object v0, p0, Lcom/cmplay/webview/ui/WebViewLayout;->a:Lcom/cmplay/webview/ui/WebViewEx;

    invoke-virtual {v0}, Lcom/cmplay/webview/ui/WebViewEx;->removeAllViews()V

    .line 281
    iget-object v0, p0, Lcom/cmplay/webview/ui/WebViewLayout;->a:Lcom/cmplay/webview/ui/WebViewEx;

    invoke-virtual {v0}, Lcom/cmplay/webview/ui/WebViewEx;->destroy()V

    .line 282
    iput-object v2, p0, Lcom/cmplay/webview/ui/WebViewLayout;->a:Lcom/cmplay/webview/ui/WebViewEx;

    .line 284
    :cond_0
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 324
    sput-object p1, Lcom/cmplay/webview/ui/WebViewLayout;->o:Ljava/lang/String;

    .line 325
    return-void
.end method

.method public f()Lcom/cmplay/webview/ui/WebViewEx;
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lcom/cmplay/webview/ui/WebViewLayout;->a:Lcom/cmplay/webview/ui/WebViewEx;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 353
    iget-object v0, p0, Lcom/cmplay/webview/ui/WebViewLayout;->a:Lcom/cmplay/webview/ui/WebViewEx;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/cmplay/webview/ui/WebViewLayout;->n:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 358
    :cond_0
    :goto_0
    return-void

    .line 356
    :cond_1
    iget-object v0, p0, Lcom/cmplay/webview/ui/WebViewLayout;->a:Lcom/cmplay/webview/ui/WebViewEx;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/cmplay/webview/ui/WebViewLayout;->n:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmplay/webview/ui/WebViewEx;->loadUrl(Ljava/lang/String;)V

    .line 357
    const-string v0, "zzb"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callbackLoginMethon = javascript:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/cmplay/webview/ui/WebViewLayout;->n:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public g(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 374
    iget-object v0, p0, Lcom/cmplay/webview/ui/WebViewLayout;->a:Lcom/cmplay/webview/ui/WebViewEx;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/cmplay/webview/ui/WebViewLayout;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 379
    :cond_0
    :goto_0
    return-void

    .line 377
    :cond_1
    iget-object v0, p0, Lcom/cmplay/webview/ui/WebViewLayout;->a:Lcom/cmplay/webview/ui/WebViewEx;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/cmplay/webview/ui/WebViewLayout;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmplay/webview/ui/WebViewEx;->loadUrl(Ljava/lang/String;)V

    .line 378
    const-string v0, "ly"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callbackLoginMethon = javascript:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/cmplay/webview/ui/WebViewLayout;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmplay/util/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public g()Z
    .locals 3

    .prologue
    .line 407
    iget-object v0, p0, Lcom/cmplay/webview/ui/WebViewLayout;->a:Lcom/cmplay/webview/ui/WebViewEx;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/cmplay/webview/ui/WebViewLayout;->o:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 408
    :cond_0
    const/4 v0, 0x0

    .line 412
    :goto_0
    return v0

    .line 410
    :cond_1
    iget-object v0, p0, Lcom/cmplay/webview/ui/WebViewLayout;->a:Lcom/cmplay/webview/ui/WebViewEx;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/cmplay/webview/ui/WebViewLayout;->o:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmplay/webview/ui/WebViewEx;->loadUrl(Ljava/lang/String;)V

    .line 411
    const-string v0, "ymymym"

    const-string v1, "onReturnKeyPressed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public h(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 385
    iget-object v0, p0, Lcom/cmplay/webview/ui/WebViewLayout;->a:Lcom/cmplay/webview/ui/WebViewEx;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/cmplay/webview/ui/WebViewLayout;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 390
    :cond_0
    :goto_0
    return-void

    .line 388
    :cond_1
    iget-object v0, p0, Lcom/cmplay/webview/ui/WebViewLayout;->a:Lcom/cmplay/webview/ui/WebViewEx;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/cmplay/webview/ui/WebViewLayout;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmplay/webview/ui/WebViewEx;->loadUrl(Ljava/lang/String;)V

    .line 389
    const-string v0, "ly"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callbackShareMethon = javascript:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/cmplay/webview/ui/WebViewLayout;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmplay/util/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
