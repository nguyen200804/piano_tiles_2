.class public Lcom/cmplay/base/util/webview/ui/WebViewLayout;
.super Landroid/widget/RelativeLayout;
.source "WebViewLayout.java"

# interfaces
.implements Lcom/cmplay/base/util/webview/callback/JsActivityCallBack;


# static fields
.field public static final FEEDBACK_URL:Ljava/lang/String; = "http://board.cmcm.com/feedback/feedback.html?v=a"

.field public static final HALLOWEEN_URL:Ljava/lang/String; = "http://board.cmcm.com/dttwt2/christmas.html"

.field public static final TYPE_ACTIVITY:I = 0x1

.field public static final TYPE_DEFAULT:I = 0x0

.field public static final TYPE_FEEDBACK:I = 0x2

.field public static final TYPE_NO_FULLCREEEN:I = 0x3

.field public static final WEB_STYLE_FULL_SCREEN:I = 0x1

.field public static final WEB_STYLE_NOT_FULL_SCREEN:I = 0x2

.field private static mGetUnLockStateMethonName:Ljava/lang/String;

.field private static mLoginMethonName:Ljava/lang/String;

.field private static mPlayAbleMethonName:Ljava/lang/String;

.field private static mShareMethonName:Ljava/lang/String;

.field private static mUnLockMethonName:Ljava/lang/String;


# instance fields
.field public closeBtn:Landroid/widget/ImageView;

.field private mActivity:Landroid/app/Activity;

.field private mIsError:Z

.field private mNeedReplaceUrl:[Ljava/lang/String;

.field private mNetworkStateVF:Lcom/cmplay/base/util/webview/ui/MsgBoxNetworkStateViewFlipper;

.field private mPreLoadPath:Ljava/lang/String;

.field private mType:I

.field private mUrl:Ljava/lang/String;

.field private mWebJsInterface:Lcom/cmplay/base/util/webview/ui/WebJsInterface;

.field public mWebView:Lcom/cmplay/base/util/webview/ui/WebViewEx;

.field public sWebViewLayout:Lcom/cmplay/base/util/webview/ui/WebViewLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    const/4 v0, -0x1

    iput v0, p0, Lcom/cmplay/base/util/webview/ui/WebViewLayout;->mType:I

    .line 83
    invoke-direct {p0, p1}, Lcom/cmplay/base/util/webview/ui/WebViewLayout;->init(Landroid/content/Context;)V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 87
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    const/4 v0, -0x1

    iput v0, p0, Lcom/cmplay/base/util/webview/ui/WebViewLayout;->mType:I

    .line 88
    invoke-direct {p0, p1}, Lcom/cmplay/base/util/webview/ui/WebViewLayout;->init(Landroid/content/Context;)V

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "type"    # I

    .prologue
    .line 75
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 56
    const/4 v0, -0x1

    iput v0, p0, Lcom/cmplay/base/util/webview/ui/WebViewLayout;->mType:I

    .line 76
    iput-object p2, p0, Lcom/cmplay/base/util/webview/ui/WebViewLayout;->mUrl:Ljava/lang/String;

    .line 77
    iput p3, p0, Lcom/cmplay/base/util/webview/ui/WebViewLayout;->mType:I

    .line 78
    invoke-direct {p0, p1}, Lcom/cmplay/base/util/webview/ui/WebViewLayout;->init(Landroid/content/Context;)V

    .line 79
    return-void
.end method

.method static synthetic access$000(Lcom/cmplay/base/util/webview/ui/WebViewLayout;)V
    .locals 0
    .param p0, "x0"    # Lcom/cmplay/base/util/webview/ui/WebViewLayout;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/cmplay/base/util/webview/ui/WebViewLayout;->loadWebView()V

    return-void
.end method

.method static synthetic access$100(Lcom/cmplay/base/util/webview/ui/WebViewLayout;)Z
    .locals 1
    .param p0, "x0"    # Lcom/cmplay/base/util/webview/ui/WebViewLayout;

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/cmplay/base/util/webview/ui/WebViewLayout;->mIsError:Z

    return v0
.end method

.method static synthetic access$102(Lcom/cmplay/base/util/webview/ui/WebViewLayout;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/cmplay/base/util/webview/ui/WebViewLayout;
    .param p1, "x1"    # Z

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/cmplay/base/util/webview/ui/WebViewLayout;->mIsError:Z

    return p1
.end method

.method static synthetic access$200(Lcom/cmplay/base/util/webview/ui/WebViewLayout;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/cmplay/base/util/webview/ui/WebViewLayout;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/cmplay/base/util/webview/ui/WebViewLayout;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$300(Lcom/cmplay/base/util/webview/ui/WebViewLayout;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/cmplay/base/util/webview/ui/WebViewLayout;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/cmplay/base/util/webview/ui/WebViewLayout;->mNeedReplaceUrl:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/cmplay/base/util/webview/ui/WebViewLayout;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/cmplay/base/util/webview/ui/WebViewLayout;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/cmplay/base/util/webview/ui/WebViewLayout;->mPreLoadPath:Ljava/lang/String;

    return-object v0
.end method

.method public static getLoginMethonName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 295
    sget-object v0, Lcom/cmplay/base/util/webview/ui/WebViewLayout;->mLoginMethonName:Ljava/lang/String;

    return-object v0
.end method

.method public static getShareMethonName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 291
    sget-object v0, Lcom/cmplay/base/util/webview/ui/WebViewLayout;->mShareMethonName:Ljava/lang/String;

    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v4, 0x10

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 92
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/cmplay/base/util/webview/ui/WebViewLayout;->mActivity:Landroid/app/Activity;

    .line 93
    iput-object p0, p0, Lcom/cmplay/base/util/webview/ui/WebViewLayout;->sWebViewLayout:Lcom/cmplay/base/util/webview/ui/WebViewLayout;

    .line 94
    iget v0, p0, Lcom/cmplay/base/util/webview/ui/WebViewLayout;->mType:I

    packed-switch v0, :pswitch_data_0

    .line 103
    :pswitch_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/cmplay/base/util/R$layout;->com_cmplay_function_web_layout:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 105
    sget v0, Lcom/cmplay/base/util/R$id;->close_btn:I

    invoke-virtual {p0, v0}, Lcom/cmplay/base/util/webview/ui/WebViewLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cmplay/base/util/webview/ui/WebViewLayout;->closeBtn:Landroid/widget/ImageView;

    .line 107
    sget v0, Lcom/cmplay/base/util/R$id;->viewflipper_layout:I

    invoke-virtual {p0, v0}, Lcom/cmplay/base/util/webview/ui/WebViewLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cmplay/base/util/webview/ui/MsgBoxNetworkStateViewFlipper;

    iput-object v0, p0, Lcom/cmplay/base/util/webview/ui/WebViewLayout;->mNetworkStateVF:Lcom/cmplay/base/util/webview/ui/MsgBoxNetworkStateViewFlipper;

    .line 108
    iget-object v0, p0, Lcom/cmplay/base/util/webview/ui/WebViewLayout;->mNetworkStateVF:Lcom/cmplay/base/util/webview/ui/MsgBoxNetworkStateViewFlipper;

    new-instance v1, Lcom/cmplay/base/util/webview/ui/WebViewLayout$1;

    invoke-direct {v1, p0}, Lcom/cmplay/base/util/webview/ui/WebViewLayout$1;-><init>(Lcom/cmplay/base/util/webview/ui/WebViewLayout;)V

    invoke-virtual {v0, v1}, Lcom/cmplay/base/util/webview/ui/MsgBoxNetworkStateViewFlipper;->setRequestLoadCB(Lcom/cmplay/base/util/webview/ui/IRequestLoad;)V

    .line 115
    sget v0, Lcom/cmplay/base/util/R$id;->webview:I

    invoke-virtual {p0, v0}, Lcom/cmplay/base/util/webview/ui/WebViewLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cmplay/base/util/webview/ui/WebViewEx;

    iput-object v0, p0, Lcom/cmplay/base/util/webview/ui/WebViewLayout;->mWebView:Lcom/cmplay/base/util/webview/ui/WebViewEx;

    .line 116
    iget-object v0, p0, Lcom/cmplay/base/util/webview/ui/WebViewLayout;->mWebView:Lcom/cmplay/base/util/webview/ui/WebViewEx;

    invoke-virtual {v0}, Lcom/cmplay/base/util/webview/ui/WebViewEx;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 117
    iget-object v0, p0, Lcom/cmplay/base/util/webview/ui/WebViewLayout;->mWebView:Lcom/cmplay/base/util/webview/ui/WebViewEx;

    invoke-virtual {v0}, Lcom/cmplay/base/util/webview/ui/WebViewEx;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/cmplay/base/util/webview/ui/WebViewLayout;->mWebView:Lcom/cmplay/base/util/webview/ui/WebViewEx;

    invoke-virtual {v0}, Lcom/cmplay/base/util/webview/ui/WebViewEx;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 119
    iget-object v0, p0, Lcom/cmplay/base/util/webview/ui/WebViewLayout;->mWebView:Lcom/cmplay/base/util/webview/ui/WebViewEx;

    invoke-virtual {v0}, Lcom/cmplay/base/util/webview/ui/WebViewEx;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 120
    iget-object v0, p0, Lcom/cmplay/base/util/webview/ui/WebViewLayout;->mWebView:Lcom/cmplay/base/util/webview/ui/WebViewEx;

    invoke-virtual {v0}, Lcom/cmplay/base/util/webview/ui/WebViewEx;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 121
    iget-object v0, p0, Lcom/cmplay/base/util/webview/ui/WebViewLayout;->mWebView:Lcom/cmplay/base/util/webview/ui/WebViewEx;

    invoke-virtual {v0}, Lcom/cmplay/base/util/webview/ui/WebViewEx;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 122
    iget-object v0, p0, Lcom/cmplay/base/util/webview/ui/WebViewLayout;->mWebView:Lcom/cmplay/base/util/webview/ui/WebViewEx;

    invoke-virtual {v0}, Lcom/cmplay/base/util/webview/ui/WebViewEx;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v1, Landroid/webkit/WebSettings$TextSize;->NORMAL:Landroid/webkit/WebSettings$TextSize;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setTextSize(Landroid/webkit/WebSettings$TextSize;)V

    .line 123
    iget-object v0, p0, Lcom/cmplay/base/util/webview/ui/WebViewLayout;->mWebView:Lcom/cmplay/base/util/webview/ui/WebViewEx;

    invoke-virtual {v0}, Lcom/cmplay/base/util/webview/ui/WebViewEx;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setDefaultFixedFontSize(I)V

    .line 124
    iget-object v0, p0, Lcom/cmplay/base/util/webview/ui/WebViewLayout;->mWebView:Lcom/cmplay/base/util/webview/ui/WebViewEx;

    invoke-virtual {v0}, Lcom/cmplay/base/util/webview/ui/WebViewEx;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setDefaultFontSize(I)V

    .line 125
    iget-object v0, p0, Lcom/cmplay/base/util/webview/ui/WebViewLayout;->mWebView:Lcom/cmplay/base/util/webview/ui/WebViewEx;

    invoke-virtual {v0, v3}, Lcom/cmplay/base/util/webview/ui/WebViewEx;->setBackgroundColor(I)V

    .line 126
    iget-object v0, p0, Lcom/cmplay/base/util/webview/ui/WebViewLayout;->mWebView:Lcom/cmplay/base/util/webview/ui/WebViewEx;

    invoke-virtual {v0, v3}, Lcom/cmplay/base/util/webview/ui/WebViewEx;->clearCache(Z)V

    .line 127
    new-instance v0, Lcom/cmplay/base/util/webview/ui/WebJsInterface;

    iget-object v1, p0, Lcom/cmplay/base/util/webview/ui/WebViewLayout;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1, p0}, Lcom/cmplay/base/util/webview/ui/WebJsInterface;-><init>(Landroid/app/Activity;Lcom/cmplay/base/util/webview/callback/JsActivityCallBack;)V

    iput-object v0, p0, Lcom/cmplay/base/util/webview/ui/WebViewLayout;->mWebJsInterface:Lcom/cmplay/base/util/webview/ui/WebJsInterface;

    .line 128
    iget-object v0, p0, Lcom/cmplay/base/util/webview/ui/WebViewLayout;->mWebView:Lcom/cmplay/base/util/webview/ui/WebViewEx;

    iget-object v1, p0, Lcom/cmplay/base/util/webview/ui/WebViewLayout;->mWebJsInterface:Lcom/cmplay/base/util/webview/ui/WebJsInterface;

    const-string v2, "playable"

    invoke-virtual {v0, v1, v2}, Lcom/cmplay/base/util/webview/ui/WebViewEx;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 131
    iget-object v0, p0, Lcom/cmplay/base/util/webview/ui/WebViewLayout;->mWebView:Lcom/cmplay/base/util/webview/ui/WebViewEx;

    invoke-virtual {v0}, Lcom/cmplay/base/util/webview/ui/WebViewEx;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 134
    :cond_0
    new-instance v0, Lcom/cmplay/base/util/webview/ui/WebViewLayout$2;

    invoke-direct {v0, p0}, Lcom/cmplay/base/util/webview/ui/WebViewLayout$2;-><init>(Lcom/cmplay/base/util/webview/ui/WebViewLayout;)V

    invoke-virtual {p0, v0}, Lcom/cmplay/base/util/webview/ui/WebViewLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 142
    iget-object v0, p0, Lcom/cmplay/base/util/webview/ui/WebViewLayout;->mWebView:Lcom/cmplay/base/util/webview/ui/WebViewEx;

    new-instance v1, Landroid/webkit/WebChromeClient;

    invoke-direct {v1}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {v0, v1}, Lcom/cmplay/base/util/webview/ui/WebViewEx;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 144
    iget-object v0, p0, Lcom/cmplay/base/util/webview/ui/WebViewLayout;->mWebView:Lcom/cmplay/base/util/webview/ui/WebViewEx;

    new-instance v1, Lcom/cmplay/base/util/webview/ui/WebViewLayout$3;

    invoke-direct {v1, p0}, Lcom/cmplay/base/util/webview/ui/WebViewLayout$3;-><init>(Lcom/cmplay/base/util/webview/ui/WebViewLayout;)V

    invoke-virtual {v0, v1}, Lcom/cmplay/base/util/webview/ui/WebViewEx;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 214
    invoke-direct {p0}, Lcom/cmplay/base/util/webview/ui/WebViewLayout;->loadWebView()V

    .line 215
    :goto_0
    return-void

    .line 99
    :pswitch_1
    iget-object v0, p0, Lcom/cmplay/base/util/webview/ui/WebViewLayout;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 94
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private loadWebView()V
    .locals 2

    .prologue
    .line 218
    iget-object v0, p0, Lcom/cmplay/base/util/webview/ui/WebViewLayout;->mUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cmplay/base/util/webview/ui/WebViewLayout;->mWebView:Lcom/cmplay/base/util/webview/ui/WebViewEx;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmplay/base/util/webview/ui/WebViewLayout;->mNetworkStateVF:Lcom/cmplay/base/util/webview/ui/MsgBoxNetworkStateViewFlipper;

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/cmplay/base/util/webview/ui/WebViewLayout;->mNetworkStateVF:Lcom/cmplay/base/util/webview/ui/MsgBoxNetworkStateViewFlipper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cmplay/base/util/webview/ui/MsgBoxNetworkStateViewFlipper;->setVisibility(I)V

    .line 220
    iget-object v0, p0, Lcom/cmplay/base/util/webview/ui/WebViewLayout;->mWebView:Lcom/cmplay/base/util/webview/ui/WebViewEx;

    iget-object v1, p0, Lcom/cmplay/base/util/webview/ui/WebViewLayout;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/cmplay/base/util/webview/ui/WebViewEx;->loadUrl(Ljava/lang/String;)V

    .line 222
    :cond_0
    return-void
.end method


# virtual methods
.method public callbackGetUnLockStateMethon(Ljava/lang/String;)V
    .locals 3
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    .line 306
    iget-object v0, p0, Lcom/cmplay/base/util/webview/ui/WebViewLayout;->mWebView:Lcom/cmplay/base/util/webview/ui/WebViewEx;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/cmplay/base/util/webview/ui/WebViewLayout;->mGetUnLockStateMethonName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 311
    :cond_0
    :goto_0
    return-void

    .line 309
    :cond_1
    iget-object v0, p0, Lcom/cmplay/base/util/webview/ui/WebViewLayout;->mWebView:Lcom/cmplay/base/util/webview/ui/WebViewEx;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/cmplay/base/util/webview/ui/WebViewLayout;->mGetUnLockStateMethonName:Ljava/lang/String;

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

    invoke-virtual {v0, v1}, Lcom/cmplay/base/util/webview/ui/WebViewEx;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public callbackLoginMethon(Ljava/lang/String;)V
    .locals 3
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    .line 327
    iget-object v0, p0, Lcom/cmplay/base/util/webview/ui/WebViewLayout;->mWebView:Lcom/cmplay/base/util/webview/ui/WebViewEx;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/cmplay/base/util/webview/ui/WebViewLayout;->mLoginMethonName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 332
    :cond_0
    :goto_0
    return-void

    .line 330
    :cond_1
    iget-object v0, p0, Lcom/cmplay/base/util/webview/ui/WebViewLayout;->mWebView:Lcom/cmplay/base/util/webview/ui/WebViewEx;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/cmplay/base/util/webview/ui/WebViewLayout;->mLoginMethonName:Ljava/lang/String;

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

    invoke-virtual {v0, v1}, Lcom/cmplay/base/util/webview/ui/WebViewEx;->loadUrl(Ljava/lang/String;)V

    .line 331
    const-string v0, "ly"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callbackLoginMethon = javascript:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/cmplay/base/util/webview/ui/WebViewLayout;->mLoginMethonName:Ljava/lang/String;

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

    invoke-static {v0, v1}, Lcom/cmplay/base/util/g;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public callbackPlayAbleMethon(Ljava/lang/String;)V
    .locals 3
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 349
    const-string v0, "playable"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WebViewLayout.callbackPlayAbleMethon  mWebView:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/cmplay/base/util/webview/ui/WebViewLayout;->mWebView:Lcom/cmplay/base/util/webview/ui/WebViewEx;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  mPlayAbleMethonName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/cmplay/base/util/webview/ui/WebViewLayout;->mPlayAbleMethonName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    iget-object v0, p0, Lcom/cmplay/base/util/webview/ui/WebViewLayout;->mWebView:Lcom/cmplay/base/util/webview/ui/WebViewEx;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/cmplay/base/util/webview/ui/WebViewLayout;->mPlayAbleMethonName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 355
    :cond_0
    :goto_0
    return-void

    .line 353
    :cond_1
    iget-object v0, p0, Lcom/cmplay/base/util/webview/ui/WebViewLayout;->mWebView:Lcom/cmplay/base/util/webview/ui/WebViewEx;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/cmplay/base/util/webview/ui/WebViewLayout;->mPlayAbleMethonName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\')"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmplay/base/util/webview/ui/WebViewEx;->loadUrl(Ljava/lang/String;)V

    .line 354
    const-string v0, "playable"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6210\u529f\u8c03\u7528 WebViewLayout.callbackPlayAbleMethon = javascript:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/cmplay/base/util/webview/ui/WebViewLayout;->mPlayAbleMethonName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\')"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public callbackShareMethon(Ljava/lang/String;)V
    .locals 3
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    .line 338
    iget-object v0, p0, Lcom/cmplay/base/util/webview/ui/WebViewLayout;->mWebView:Lcom/cmplay/base/util/webview/ui/WebViewEx;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/cmplay/base/util/webview/ui/WebViewLayout;->mShareMethonName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 343
    :cond_0
    :goto_0
    return-void

    .line 341
    :cond_1
    iget-object v0, p0, Lcom/cmplay/base/util/webview/ui/WebViewLayout;->mWebView:Lcom/cmplay/base/util/webview/ui/WebViewEx;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/cmplay/base/util/webview/ui/WebViewLayout;->mShareMethonName:Ljava/lang/String;

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

    invoke-virtual {v0, v1}, Lcom/cmplay/base/util/webview/ui/WebViewEx;->loadUrl(Ljava/lang/String;)V

    .line 342
    const-string v0, "ly"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callbackShareMethon = javascript:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/cmplay/base/util/webview/ui/WebViewLayout;->mShareMethonName:Ljava/lang/String;

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

    invoke-static {v0, v1}, Lcom/cmplay/base/util/g;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public callbackUnLockMethon(Ljava/lang/String;)V
    .locals 3
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    .line 316
    iget-object v0, p0, Lcom/cmplay/base/util/webview/ui/WebViewLayout;->mWebView:Lcom/cmplay/base/util/webview/ui/WebViewEx;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/cmplay/base/util/webview/ui/WebViewLayout;->mUnLockMethonName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 321
    :cond_0
    :goto_0
    return-void

    .line 319
    :cond_1
    iget-object v0, p0, Lcom/cmplay/base/util/webview/ui/WebViewLayout;->mWebView:Lcom/cmplay/base/util/webview/ui/WebViewEx;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/cmplay/base/util/webview/ui/WebViewLayout;->mUnLockMethonName:Ljava/lang/String;

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

    invoke-virtual {v0, v1}, Lcom/cmplay/base/util/webview/ui/WebViewEx;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public clearWebView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 250
    iput-object v2, p0, Lcom/cmplay/base/util/webview/ui/WebViewLayout;->sWebViewLayout:Lcom/cmplay/base/util/webview/ui/WebViewLayout;

    .line 251
    iget-object v0, p0, Lcom/cmplay/base/util/webview/ui/WebViewLayout;->mWebView:Lcom/cmplay/base/util/webview/ui/WebViewEx;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/cmplay/base/util/webview/ui/WebViewLayout;->mWebView:Lcom/cmplay/base/util/webview/ui/WebViewEx;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cmplay/base/util/webview/ui/WebViewEx;->clearCache(Z)V

    .line 253
    iget-object v0, p0, Lcom/cmplay/base/util/webview/ui/WebViewLayout;->mWebView:Lcom/cmplay/base/util/webview/ui/WebViewEx;

    invoke-virtual {v0}, Lcom/cmplay/base/util/webview/ui/WebViewEx;->removeAllViews()V

    .line 254
    iget-object v0, p0, Lcom/cmplay/base/util/webview/ui/WebViewLayout;->mWebView:Lcom/cmplay/base/util/webview/ui/WebViewEx;

    invoke-virtual {v0}, Lcom/cmplay/base/util/webview/ui/WebViewEx;->destroy()V

    .line 255
    iput-object v2, p0, Lcom/cmplay/base/util/webview/ui/WebViewLayout;->mWebView:Lcom/cmplay/base/util/webview/ui/WebViewEx;

    .line 257
    :cond_0
    return-void
.end method

.method public closeWebView(I)V
    .locals 1
    .param p1, "openFrom"    # I

    .prologue
    .line 359
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/cmplay/base/util/webview/ui/WebViewLayout;->setVisibility(I)V

    .line 360
    invoke-virtual {p0}, Lcom/cmplay/base/util/webview/ui/WebViewLayout;->clearWebView()V

    .line 361
    iget-object v0, p0, Lcom/cmplay/base/util/webview/ui/WebViewLayout;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/cmplay/base/util/webview/ui/WebViewLayout;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 364
    :cond_0
    return-void
.end method

.method public getUnlockStateCallback(Ljava/lang/String;)V
    .locals 0
    .param p1, "getUnlockCallback"    # Ljava/lang/String;

    .prologue
    .line 271
    sput-object p1, Lcom/cmplay/base/util/webview/ui/WebViewLayout;->mGetUnLockStateMethonName:Ljava/lang/String;

    .line 272
    return-void
.end method

.method public getWebView()Lcom/cmplay/base/util/webview/ui/WebViewEx;
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/cmplay/base/util/webview/ui/WebViewLayout;->mWebView:Lcom/cmplay/base/util/webview/ui/WebViewEx;

    return-object v0
.end method

.method public hideLoadingView()V
    .locals 2

    .prologue
    .line 225
    iget-object v0, p0, Lcom/cmplay/base/util/webview/ui/WebViewLayout;->mNetworkStateVF:Lcom/cmplay/base/util/webview/ui/MsgBoxNetworkStateViewFlipper;

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/cmplay/base/util/webview/ui/WebViewLayout;->mNetworkStateVF:Lcom/cmplay/base/util/webview/ui/MsgBoxNetworkStateViewFlipper;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/cmplay/base/util/webview/ui/MsgBoxNetworkStateViewFlipper;->setVisibility(I)V

    .line 228
    :cond_0
    return-void
.end method

.method public loginCallBack(Ljava/lang/String;)V
    .locals 0
    .param p1, "methonName"    # Ljava/lang/String;

    .prologue
    .line 282
    sput-object p1, Lcom/cmplay/base/util/webview/ui/WebViewLayout;->mLoginMethonName:Ljava/lang/String;

    .line 283
    return-void
.end method

.method public playAbleCallBack(Ljava/lang/String;)V
    .locals 3
    .param p1, "methonName"    # Ljava/lang/String;

    .prologue
    .line 276
    sput-object p1, Lcom/cmplay/base/util/webview/ui/WebViewLayout;->mPlayAbleMethonName:Ljava/lang/String;

    .line 277
    const-string v0, "playable"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WebViewLayout.playAbleCallBack  \u4fdd\u5b58\u4f20\u9012\u8fc7\u6765\u7684\u65b9\u6cd5  methonName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/cmplay/base/util/webview/ui/WebViewLayout;->mPlayAbleMethonName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    return-void
.end method

.method public shareCallBack(Ljava/lang/String;)V
    .locals 0
    .param p1, "methonName"    # Ljava/lang/String;

    .prologue
    .line 287
    sput-object p1, Lcom/cmplay/base/util/webview/ui/WebViewLayout;->mShareMethonName:Ljava/lang/String;

    .line 288
    return-void
.end method

.method public showDataMode()V
    .locals 2

    .prologue
    .line 231
    iget-object v0, p0, Lcom/cmplay/base/util/webview/ui/WebViewLayout;->mWebView:Lcom/cmplay/base/util/webview/ui/WebViewEx;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/cmplay/base/util/webview/ui/WebViewLayout;->mWebView:Lcom/cmplay/base/util/webview/ui/WebViewEx;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cmplay/base/util/webview/ui/WebViewEx;->setVisibility(I)V

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/cmplay/base/util/webview/ui/WebViewLayout;->mNetworkStateVF:Lcom/cmplay/base/util/webview/ui/MsgBoxNetworkStateViewFlipper;

    if-eqz v0, :cond_1

    .line 235
    iget-object v0, p0, Lcom/cmplay/base/util/webview/ui/WebViewLayout;->mNetworkStateVF:Lcom/cmplay/base/util/webview/ui/MsgBoxNetworkStateViewFlipper;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/cmplay/base/util/webview/ui/MsgBoxNetworkStateViewFlipper;->setVisibility(I)V

    .line 237
    :cond_1
    return-void
.end method

.method public showNetErrorMode()V
    .locals 2

    .prologue
    .line 240
    iget-object v0, p0, Lcom/cmplay/base/util/webview/ui/WebViewLayout;->mWebView:Lcom/cmplay/base/util/webview/ui/WebViewEx;

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/cmplay/base/util/webview/ui/WebViewLayout;->mWebView:Lcom/cmplay/base/util/webview/ui/WebViewEx;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/cmplay/base/util/webview/ui/WebViewEx;->setVisibility(I)V

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/cmplay/base/util/webview/ui/WebViewLayout;->mNetworkStateVF:Lcom/cmplay/base/util/webview/ui/MsgBoxNetworkStateViewFlipper;

    if-eqz v0, :cond_1

    .line 244
    iget-object v0, p0, Lcom/cmplay/base/util/webview/ui/WebViewLayout;->mNetworkStateVF:Lcom/cmplay/base/util/webview/ui/MsgBoxNetworkStateViewFlipper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cmplay/base/util/webview/ui/MsgBoxNetworkStateViewFlipper;->setVisibility(I)V

    .line 245
    iget-object v0, p0, Lcom/cmplay/base/util/webview/ui/WebViewLayout;->mNetworkStateVF:Lcom/cmplay/base/util/webview/ui/MsgBoxNetworkStateViewFlipper;

    invoke-virtual {v0}, Lcom/cmplay/base/util/webview/ui/MsgBoxNetworkStateViewFlipper;->toNoNetMode()V

    .line 247
    :cond_1
    return-void
.end method

.method public showWebView()V
    .locals 0

    .prologue
    .line 368
    invoke-virtual {p0}, Lcom/cmplay/base/util/webview/ui/WebViewLayout;->showDataMode()V

    .line 369
    return-void
.end method

.method public unlockCallback(Ljava/lang/String;)V
    .locals 0
    .param p1, "unlockCallback"    # Ljava/lang/String;

    .prologue
    .line 267
    sput-object p1, Lcom/cmplay/base/util/webview/ui/WebViewLayout;->mUnLockMethonName:Ljava/lang/String;

    .line 268
    return-void
.end method
