.class public Lcom/cmplay/base/util/webview/ui/WebViewActivity;
.super Landroid/app/Activity;
.source "WebViewActivity.java"


# static fields
.field public static final WEBVIEW_TYPE:Ljava/lang/String; = "webview_type"

.field public static final WEBVIEW_URL:Ljava/lang/String; = "webview_url"

.field public static mContext:Landroid/content/Context;

.field public static mFeedbackAppId:I

.field public static mFeedbackProductId:I

.field public static sWebViewActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/cmplay/base/util/webview/ui/WebViewActivity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mClickLogin:Z

.field private mLayout:Lcom/cmplay/base/util/webview/ui/WebViewLayout;

.field private mType:I

.field private mUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x1

    sput v0, Lcom/cmplay/base/util/webview/ui/WebViewActivity;->mFeedbackProductId:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cmplay/base/util/webview/ui/WebViewActivity;->mClickLogin:Z

    return-void
.end method

.method public static StartWebViewActivity(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    .line 35
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/cmplay/base/util/webview/ui/WebViewActivity;->mContext:Landroid/content/Context;

    .line 36
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/cmplay/base/util/webview/ui/WebViewActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 37
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 38
    const-string v1, "webview_url"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 39
    const-string v1, "webview_type"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 40
    invoke-static {p0, v0}, Lcom/cmplay/base/util/k;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 41
    return-void
.end method

.method public static init(Landroid/content/Context;II)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "feedbackAppId"    # I
    .param p2, "feedbackProductId"    # I

    .prologue
    .line 29
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/cmplay/base/util/webview/ui/WebViewActivity;->mContext:Landroid/content/Context;

    .line 30
    sput p1, Lcom/cmplay/base/util/webview/ui/WebViewActivity;->mFeedbackAppId:I

    .line 31
    sput p2, Lcom/cmplay/base/util/webview/ui/WebViewActivity;->mFeedbackProductId:I

    .line 32
    return-void
.end method

.method private parseIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 84
    const-string v0, "webview_url"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmplay/base/util/webview/ui/WebViewActivity;->mUrl:Ljava/lang/String;

    .line 85
    const-string v0, "webview_type"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/cmplay/base/util/webview/ui/WebViewActivity;->mType:I

    .line 86
    return-void
.end method


# virtual methods
.method public getLayout()Lcom/cmplay/base/util/webview/ui/WebViewLayout;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/cmplay/base/util/webview/ui/WebViewActivity;->mLayout:Lcom/cmplay/base/util/webview/ui/WebViewLayout;

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 90
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 91
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/cmplay/base/util/webview/ui/WebViewActivity;->mClickLogin:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 130
    :goto_0
    return-void

    .line 129
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v3, 0x800

    const/16 v2, 0x400

    .line 60
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/cmplay/base/util/webview/ui/WebViewActivity;->requestWindowFeature(I)Z

    .line 62
    invoke-virtual {p0}, Lcom/cmplay/base/util/webview/ui/WebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cmplay/base/util/webview/ui/WebViewActivity;->parseIntent(Landroid/content/Intent;)V

    .line 64
    iget v0, p0, Lcom/cmplay/base/util/webview/ui/WebViewActivity;->mType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/cmplay/base/util/webview/ui/WebViewActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 71
    :goto_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/cmplay/base/util/webview/ui/WebViewActivity;->sWebViewActivity:Ljava/lang/ref/WeakReference;

    .line 72
    new-instance v0, Lcom/cmplay/base/util/webview/ui/WebViewLayout;

    iget-object v1, p0, Lcom/cmplay/base/util/webview/ui/WebViewActivity;->mUrl:Ljava/lang/String;

    iget v2, p0, Lcom/cmplay/base/util/webview/ui/WebViewActivity;->mType:I

    invoke-direct {v0, p0, v1, v2}, Lcom/cmplay/base/util/webview/ui/WebViewLayout;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/cmplay/base/util/webview/ui/WebViewActivity;->mLayout:Lcom/cmplay/base/util/webview/ui/WebViewLayout;

    .line 73
    iget-object v0, p0, Lcom/cmplay/base/util/webview/ui/WebViewActivity;->mLayout:Lcom/cmplay/base/util/webview/ui/WebViewLayout;

    iget-object v0, v0, Lcom/cmplay/base/util/webview/ui/WebViewLayout;->closeBtn:Landroid/widget/ImageView;

    new-instance v1, Lcom/cmplay/base/util/webview/ui/WebViewActivity$1;

    invoke-direct {v1, p0}, Lcom/cmplay/base/util/webview/ui/WebViewActivity$1;-><init>(Lcom/cmplay/base/util/webview/ui/WebViewActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    iget-object v0, p0, Lcom/cmplay/base/util/webview/ui/WebViewActivity;->mLayout:Lcom/cmplay/base/util/webview/ui/WebViewLayout;

    invoke-virtual {p0, v0}, Lcom/cmplay/base/util/webview/ui/WebViewActivity;->setContentView(Landroid/view/View;)V

    .line 81
    return-void

    .line 68
    :cond_0
    invoke-virtual {p0}, Lcom/cmplay/base/util/webview/ui/WebViewActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 117
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 118
    const/4 v0, 0x0

    sput-object v0, Lcom/cmplay/base/util/webview/ui/WebViewActivity;->sWebViewActivity:Ljava/lang/ref/WeakReference;

    .line 119
    iget-object v0, p0, Lcom/cmplay/base/util/webview/ui/WebViewActivity;->mLayout:Lcom/cmplay/base/util/webview/ui/WebViewLayout;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/cmplay/base/util/webview/ui/WebViewActivity;->mLayout:Lcom/cmplay/base/util/webview/ui/WebViewLayout;

    invoke-virtual {v0}, Lcom/cmplay/base/util/webview/ui/WebViewLayout;->clearWebView()V

    .line 122
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 95
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 97
    :try_start_0
    const-string v0, "android.webkit.WebView"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "onPause"

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iget-object v0, p0, Lcom/cmplay/base/util/webview/ui/WebViewActivity;->mLayout:Lcom/cmplay/base/util/webview/ui/WebViewLayout;

    invoke-virtual {v0}, Lcom/cmplay/base/util/webview/ui/WebViewLayout;->getWebView()Lcom/cmplay/base/util/webview/ui/WebViewEx;

    move-result-object v2

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    const-string v0, "playable"

    const-string v1, "WebViewActivity.onPause()  \u5207\u6362\u5230\u540e\u53f0"

    invoke-static {v0, v1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/cmplay/base/util/webview/ui/WebViewActivity;->mLayout:Lcom/cmplay/base/util/webview/ui/WebViewLayout;

    const-string v1, "onPause"

    invoke-virtual {v0, v1}, Lcom/cmplay/base/util/webview/ui/WebViewLayout;->callbackPlayAbleMethon(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :goto_0
    return-void

    .line 100
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 106
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 108
    :try_start_0
    const-string v0, "android.webkit.WebView"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "onResume"

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iget-object v0, p0, Lcom/cmplay/base/util/webview/ui/WebViewActivity;->mLayout:Lcom/cmplay/base/util/webview/ui/WebViewLayout;

    invoke-virtual {v0}, Lcom/cmplay/base/util/webview/ui/WebViewLayout;->getWebView()Lcom/cmplay/base/util/webview/ui/WebViewEx;

    move-result-object v2

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    const-string v0, "playable"

    const-string v1, "WebViewActivity.onResume()  \u5207\u6362\u5230\u524d\u53f0"

    invoke-static {v0, v1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/cmplay/base/util/webview/ui/WebViewActivity;->mLayout:Lcom/cmplay/base/util/webview/ui/WebViewLayout;

    const-string v1, "onResume"

    invoke-virtual {v0, v1}, Lcom/cmplay/base/util/webview/ui/WebViewLayout;->callbackPlayAbleMethon(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :goto_0
    return-void

    .line 111
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setClickLogin(Z)V
    .locals 0
    .param p1, "clickLogin"    # Z

    .prologue
    .line 137
    iput-boolean p1, p0, Lcom/cmplay/base/util/webview/ui/WebViewActivity;->mClickLogin:Z

    .line 138
    return-void
.end method
