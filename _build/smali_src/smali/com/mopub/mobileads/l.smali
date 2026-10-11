.class Lcom/mopub/mobileads/l;
.super Lcom/mopub/mobileads/BaseWebView;
.source "VastWebView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/l$b;,
        Lcom/mopub/mobileads/l$a;
    }
.end annotation


# instance fields
.field b:Lcom/mopub/mobileads/l$a;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 27
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/BaseWebView;-><init>(Landroid/content/Context;)V

    .line 29
    invoke-direct {p0}, Lcom/mopub/mobileads/l;->b()V

    .line 30
    invoke-virtual {p0}, Lcom/mopub/mobileads/l;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 32
    invoke-virtual {p0, v1}, Lcom/mopub/mobileads/l;->b(Z)V

    .line 34
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/l;->setBackgroundColor(I)V

    .line 35
    new-instance v0, Lcom/mopub/mobileads/l$b;

    invoke-direct {v0, p0}, Lcom/mopub/mobileads/l$b;-><init>(Lcom/mopub/mobileads/l;)V

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/l;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 36
    invoke-static {}, Lcom/mopub/common/util/Utils;->generateUniqueId()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/l;->setId(I)V

    .line 37
    return-void
.end method

.method static a(Landroid/content/Context;Lcom/mopub/mobileads/k;)Lcom/mopub/mobileads/l;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/mopub/mobileads/k;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 67
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 68
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 70
    new-instance v0, Lcom/mopub/mobileads/l;

    invoke-direct {v0, p0}, Lcom/mopub/mobileads/l;-><init>(Landroid/content/Context;)V

    .line 71
    invoke-virtual {p1, v0}, Lcom/mopub/mobileads/k;->initializeWebView(Lcom/mopub/mobileads/l;)V

    .line 73
    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-virtual {p0, v1}, Lcom/mopub/mobileads/l;->setHorizontalScrollBarEnabled(Z)V

    .line 50
    invoke-virtual {p0, v1}, Lcom/mopub/mobileads/l;->setHorizontalScrollbarOverlay(Z)V

    .line 51
    invoke-virtual {p0, v1}, Lcom/mopub/mobileads/l;->setVerticalScrollBarEnabled(Z)V

    .line 52
    invoke-virtual {p0, v1}, Lcom/mopub/mobileads/l;->setVerticalScrollbarOverlay(Z)V

    .line 53
    invoke-virtual {p0}, Lcom/mopub/mobileads/l;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 54
    invoke-virtual {p0, v1}, Lcom/mopub/mobileads/l;->setScrollBarStyle(I)V

    .line 55
    return-void
.end method


# virtual methods
.method a(Lcom/mopub/mobileads/l$a;)V
    .locals 0
    .param p1    # Lcom/mopub/mobileads/l$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 45
    iput-object p1, p0, Lcom/mopub/mobileads/l;->b:Lcom/mopub/mobileads/l$a;

    .line 46
    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/mopub/network/Networking;->getBaseUrlScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ads.mopub.com"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "text/html"

    const-string v4, "utf-8"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/mopub/mobileads/l;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    return-void
.end method
