.class public Lorg/cocos2dx/lib/Cocos2dxWebView;
.super Landroid/webkit/WebView;
.source "Cocos2dxWebView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cocos2dx/lib/Cocos2dxWebView$Cocos2dxWebViewClient;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mJSScheme:Ljava/lang/String;

.field private mViewTag:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/cocos2dx/lib/Cocos2dxWebView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lorg/cocos2dx/lib/Cocos2dxWebView;-><init>(Landroid/content/Context;I)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "viewTag"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 29
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 30
    iput p2, p0, Lorg/cocos2dx/lib/Cocos2dxWebView;->mViewTag:I

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxWebView;->mJSScheme:Ljava/lang/String;

    .line 33
    invoke-virtual {p0, v1}, Lorg/cocos2dx/lib/Cocos2dxWebView;->setFocusable(Z)V

    .line 34
    invoke-virtual {p0, v1}, Lorg/cocos2dx/lib/Cocos2dxWebView;->setFocusableInTouchMode(Z)V

    .line 36
    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 38
    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 42
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "removeJavascriptInterface"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 43
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "searchBoxJavaBridge_"

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    :goto_0
    new-instance v0, Lorg/cocos2dx/lib/Cocos2dxWebView$Cocos2dxWebViewClient;

    invoke-direct {v0, p0}, Lorg/cocos2dx/lib/Cocos2dxWebView$Cocos2dxWebViewClient;-><init>(Lorg/cocos2dx/lib/Cocos2dxWebView;)V

    invoke-virtual {p0, v0}, Lorg/cocos2dx/lib/Cocos2dxWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 49
    new-instance v0, Landroid/webkit/WebChromeClient;

    invoke-direct {v0}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {p0, v0}, Lorg/cocos2dx/lib/Cocos2dxWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 50
    return-void

    .line 44
    :catch_0
    move-exception v0

    .line 45
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxWebView;->TAG:Ljava/lang/String;

    const-string v1, "This API level do not support `removeJavascriptInterface`"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$000(Lorg/cocos2dx/lib/Cocos2dxWebView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/cocos2dx/lib/Cocos2dxWebView;

    .prologue
    .line 17
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxWebView;->mJSScheme:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lorg/cocos2dx/lib/Cocos2dxWebView;)I
    .locals 1
    .param p0, "x0"    # Lorg/cocos2dx/lib/Cocos2dxWebView;

    .prologue
    .line 17
    iget v0, p0, Lorg/cocos2dx/lib/Cocos2dxWebView;->mViewTag:I

    return v0
.end method


# virtual methods
.method public setJavascriptInterfaceScheme(Ljava/lang/String;)V
    .locals 0
    .param p1, "scheme"    # Ljava/lang/String;

    .prologue
    .line 53
    if-eqz p1, :cond_0

    .end local p1    # "scheme":Ljava/lang/String;
    :goto_0
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxWebView;->mJSScheme:Ljava/lang/String;

    .line 54
    return-void

    .line 53
    .restart local p1    # "scheme":Ljava/lang/String;
    :cond_0
    const-string p1, ""

    goto :goto_0
.end method

.method public setScalesPageToFit(Z)V
    .locals 1
    .param p1, "scalesPageToFit"    # Z

    .prologue
    .line 57
    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 58
    return-void
.end method

.method public setWebViewRect(IIII)V
    .locals 2
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "maxWidth"    # I
    .param p4, "maxHeight"    # I

    .prologue
    const/4 v1, -0x2

    .line 92
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 94
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 95
    iput p2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 96
    iput p3, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 97
    iput p4, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 98
    const/16 v1, 0x33

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 99
    invoke-virtual {p0, v0}, Lorg/cocos2dx/lib/Cocos2dxWebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 100
    return-void
.end method
