.class public Lcom/mopub/mraid/MraidController;
.super Ljava/lang/Object;
.source "MraidController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mraid/MraidController$a;,
        Lcom/mopub/mraid/MraidController$b;,
        Lcom/mopub/mraid/MraidController$UseCustomCloseListener;,
        Lcom/mopub/mraid/MraidController$MraidListener;
    }
.end annotation


# instance fields
.field private final a:Lcom/mopub/common/AdReport;

.field private final b:Ljava/lang/ref/WeakReference;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final d:Lcom/mopub/mraid/PlacementType;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final e:Landroid/widget/FrameLayout;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final f:Lcom/mopub/common/CloseableLayout;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private g:Landroid/view/ViewGroup;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final h:Lcom/mopub/mraid/MraidController$b;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final i:Lcom/mopub/mraid/c;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private j:Lcom/mopub/mraid/ViewState;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private k:Lcom/mopub/mraid/MraidController$MraidListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private l:Lcom/mopub/mraid/MraidController$UseCustomCloseListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private m:Lcom/mopub/mraid/MraidWebViewDebugListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private n:Lcom/mopub/mraid/MraidBridge$MraidWebView;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private o:Lcom/mopub/mraid/MraidBridge$MraidWebView;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final p:Lcom/mopub/mraid/MraidBridge;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final q:Lcom/mopub/mraid/MraidBridge;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private r:Lcom/mopub/mraid/MraidController$a;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private s:Ljava/lang/Integer;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private t:Z

.field private u:Lcom/mopub/mraid/b;

.field private final v:Lcom/mopub/mraid/MraidNativeCommandHandler;

.field private w:Z

.field private final x:Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;

.field private final y:Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mopub/common/AdReport;Lcom/mopub/mraid/PlacementType;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "adReport"    # Lcom/mopub/common/AdReport;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "placementType"    # Lcom/mopub/mraid/PlacementType;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 122
    new-instance v4, Lcom/mopub/mraid/MraidBridge;

    invoke-direct {v4, p2, p3}, Lcom/mopub/mraid/MraidBridge;-><init>(Lcom/mopub/common/AdReport;Lcom/mopub/mraid/PlacementType;)V

    new-instance v5, Lcom/mopub/mraid/MraidBridge;

    sget-object v0, Lcom/mopub/mraid/PlacementType;->INTERSTITIAL:Lcom/mopub/mraid/PlacementType;

    invoke-direct {v5, p2, v0}, Lcom/mopub/mraid/MraidBridge;-><init>(Lcom/mopub/common/AdReport;Lcom/mopub/mraid/PlacementType;)V

    new-instance v6, Lcom/mopub/mraid/MraidController$b;

    invoke-direct {v6}, Lcom/mopub/mraid/MraidController$b;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/mopub/mraid/MraidController;-><init>(Landroid/content/Context;Lcom/mopub/common/AdReport;Lcom/mopub/mraid/PlacementType;Lcom/mopub/mraid/MraidBridge;Lcom/mopub/mraid/MraidBridge;Lcom/mopub/mraid/MraidController$b;)V

    .line 126
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/mopub/common/AdReport;Lcom/mopub/mraid/PlacementType;Lcom/mopub/mraid/MraidBridge;Lcom/mopub/mraid/MraidBridge;Lcom/mopub/mraid/MraidController$b;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "adReport"    # Lcom/mopub/common/AdReport;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "placementType"    # Lcom/mopub/mraid/PlacementType;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "bridge"    # Lcom/mopub/mraid/MraidBridge;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5, "twoPartBridge"    # Lcom/mopub/mraid/MraidBridge;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p6, "screenMetricsWaiter"    # Lcom/mopub/mraid/MraidController$b;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v3, -0x1

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    sget-object v0, Lcom/mopub/mraid/ViewState;->LOADING:Lcom/mopub/mraid/ViewState;

    iput-object v0, p0, Lcom/mopub/mraid/MraidController;->j:Lcom/mopub/mraid/ViewState;

    .line 105
    new-instance v0, Lcom/mopub/mraid/MraidController$a;

    invoke-direct {v0, p0}, Lcom/mopub/mraid/MraidController$a;-><init>(Lcom/mopub/mraid/MraidController;)V

    iput-object v0, p0, Lcom/mopub/mraid/MraidController;->r:Lcom/mopub/mraid/MraidController$a;

    .line 113
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mopub/mraid/MraidController;->t:Z

    .line 114
    sget-object v0, Lcom/mopub/mraid/b;->NONE:Lcom/mopub/mraid/b;

    iput-object v0, p0, Lcom/mopub/mraid/MraidController;->u:Lcom/mopub/mraid/b;

    .line 178
    new-instance v0, Lcom/mopub/mraid/MraidController$3;

    invoke-direct {v0, p0}, Lcom/mopub/mraid/MraidController$3;-><init>(Lcom/mopub/mraid/MraidController;)V

    iput-object v0, p0, Lcom/mopub/mraid/MraidController;->x:Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;

    .line 249
    new-instance v0, Lcom/mopub/mraid/MraidController$4;

    invoke-direct {v0, p0}, Lcom/mopub/mraid/MraidController$4;-><init>(Lcom/mopub/mraid/MraidController;)V

    iput-object v0, p0, Lcom/mopub/mraid/MraidController;->y:Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;

    .line 133
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mraid/MraidController;->c:Landroid/content/Context;

    .line 134
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 135
    iput-object p2, p0, Lcom/mopub/mraid/MraidController;->a:Lcom/mopub/common/AdReport;

    .line 136
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 137
    new-instance v0, Ljava/lang/ref/WeakReference;

    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/mopub/mraid/MraidController;->b:Ljava/lang/ref/WeakReference;

    .line 144
    :goto_0
    iput-object p3, p0, Lcom/mopub/mraid/MraidController;->d:Lcom/mopub/mraid/PlacementType;

    .line 145
    iput-object p4, p0, Lcom/mopub/mraid/MraidController;->p:Lcom/mopub/mraid/MraidBridge;

    .line 146
    iput-object p5, p0, Lcom/mopub/mraid/MraidController;->q:Lcom/mopub/mraid/MraidBridge;

    .line 147
    iput-object p6, p0, Lcom/mopub/mraid/MraidController;->h:Lcom/mopub/mraid/MraidController$b;

    .line 149
    sget-object v0, Lcom/mopub/mraid/ViewState;->LOADING:Lcom/mopub/mraid/ViewState;

    iput-object v0, p0, Lcom/mopub/mraid/MraidController;->j:Lcom/mopub/mraid/ViewState;

    .line 151
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 152
    new-instance v1, Lcom/mopub/mraid/c;

    iget-object v2, p0, Lcom/mopub/mraid/MraidController;->c:Landroid/content/Context;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    invoke-direct {v1, v2, v0}, Lcom/mopub/mraid/c;-><init>(Landroid/content/Context;F)V

    iput-object v1, p0, Lcom/mopub/mraid/MraidController;->i:Lcom/mopub/mraid/c;

    .line 153
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mopub/mraid/MraidController;->e:Landroid/widget/FrameLayout;

    .line 154
    new-instance v0, Lcom/mopub/common/CloseableLayout;

    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mopub/common/CloseableLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mopub/mraid/MraidController;->f:Lcom/mopub/common/CloseableLayout;

    .line 155
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->f:Lcom/mopub/common/CloseableLayout;

    new-instance v1, Lcom/mopub/mraid/MraidController$1;

    invoke-direct {v1, p0}, Lcom/mopub/mraid/MraidController$1;-><init>(Lcom/mopub/mraid/MraidController;)V

    invoke-virtual {v0, v1}, Lcom/mopub/common/CloseableLayout;->setOnCloseListener(Lcom/mopub/common/CloseableLayout$OnCloseListener;)V

    .line 162
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 163
    new-instance v1, Lcom/mopub/mraid/MraidController$2;

    invoke-direct {v1, p0}, Lcom/mopub/mraid/MraidController$2;-><init>(Lcom/mopub/mraid/MraidController;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 168
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->f:Lcom/mopub/common/CloseableLayout;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Lcom/mopub/common/CloseableLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 171
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->r:Lcom/mopub/mraid/MraidController$a;

    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/mopub/mraid/MraidController$a;->register(Landroid/content/Context;)V

    .line 173
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->p:Lcom/mopub/mraid/MraidBridge;

    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->x:Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;

    invoke-virtual {v0, v1}, Lcom/mopub/mraid/MraidBridge;->a(Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;)V

    .line 174
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->q:Lcom/mopub/mraid/MraidBridge;

    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->y:Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;

    invoke-virtual {v0, v1}, Lcom/mopub/mraid/MraidBridge;->a(Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;)V

    .line 175
    new-instance v0, Lcom/mopub/mraid/MraidNativeCommandHandler;

    invoke-direct {v0}, Lcom/mopub/mraid/MraidNativeCommandHandler;-><init>()V

    iput-object v0, p0, Lcom/mopub/mraid/MraidController;->v:Lcom/mopub/mraid/MraidNativeCommandHandler;

    .line 176
    return-void

    .line 141
    .restart local p1    # "context":Landroid/content/Context;
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/mopub/mraid/MraidController;->b:Ljava/lang/ref/WeakReference;

    goto :goto_0
.end method

.method static synthetic a(Lcom/mopub/mraid/MraidController;)Lcom/mopub/mraid/MraidController$MraidListener;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->k:Lcom/mopub/mraid/MraidController$MraidListener;

    return-object v0
.end method

.method private a(Lcom/mopub/mraid/ViewState;)V
    .locals 1
    .param p1    # Lcom/mopub/mraid/ViewState;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 611
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mopub/mraid/MraidController;->a(Lcom/mopub/mraid/ViewState;Ljava/lang/Runnable;)V

    .line 612
    return-void
.end method

.method private a(Lcom/mopub/mraid/ViewState;Ljava/lang/Runnable;)V
    .locals 2
    .param p1    # Lcom/mopub/mraid/ViewState;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 616
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MRAID state set to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 617
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->j:Lcom/mopub/mraid/ViewState;

    .line 618
    iput-object p1, p0, Lcom/mopub/mraid/MraidController;->j:Lcom/mopub/mraid/ViewState;

    .line 619
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->p:Lcom/mopub/mraid/MraidBridge;

    invoke-virtual {v1, p1}, Lcom/mopub/mraid/MraidBridge;->a(Lcom/mopub/mraid/ViewState;)V

    .line 622
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->q:Lcom/mopub/mraid/MraidBridge;

    invoke-virtual {v1}, Lcom/mopub/mraid/MraidBridge;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 623
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->q:Lcom/mopub/mraid/MraidBridge;

    invoke-virtual {v1, p1}, Lcom/mopub/mraid/MraidBridge;->a(Lcom/mopub/mraid/ViewState;)V

    .line 626
    :cond_0
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->k:Lcom/mopub/mraid/MraidController$MraidListener;

    if-eqz v1, :cond_1

    .line 627
    sget-object v1, Lcom/mopub/mraid/ViewState;->EXPANDED:Lcom/mopub/mraid/ViewState;

    if-ne p1, v1, :cond_2

    .line 628
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->k:Lcom/mopub/mraid/MraidController$MraidListener;

    invoke-interface {v0}, Lcom/mopub/mraid/MraidController$MraidListener;->onExpand()V

    .line 636
    :cond_1
    :goto_0
    invoke-direct {p0, p2}, Lcom/mopub/mraid/MraidController;->a(Ljava/lang/Runnable;)V

    .line 637
    return-void

    .line 629
    :cond_2
    sget-object v1, Lcom/mopub/mraid/ViewState;->EXPANDED:Lcom/mopub/mraid/ViewState;

    if-ne v0, v1, :cond_3

    sget-object v0, Lcom/mopub/mraid/ViewState;->DEFAULT:Lcom/mopub/mraid/ViewState;

    if-ne p1, v0, :cond_3

    .line 630
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->k:Lcom/mopub/mraid/MraidController$MraidListener;

    invoke-interface {v0}, Lcom/mopub/mraid/MraidController$MraidListener;->onClose()V

    goto :goto_0

    .line 631
    :cond_3
    sget-object v0, Lcom/mopub/mraid/ViewState;->HIDDEN:Lcom/mopub/mraid/ViewState;

    if-ne p1, v0, :cond_1

    .line 632
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->k:Lcom/mopub/mraid/MraidController$MraidListener;

    invoke-interface {v0}, Lcom/mopub/mraid/MraidController$MraidListener;->onClose()V

    goto :goto_0
.end method

.method private a(Ljava/lang/Runnable;)V
    .locals 5
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 503
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->h:Lcom/mopub/mraid/MraidController$b;

    invoke-virtual {v0}, Lcom/mopub/mraid/MraidController$b;->a()V

    .line 506
    invoke-direct {p0}, Lcom/mopub/mraid/MraidController;->g()Landroid/view/View;

    move-result-object v0

    .line 507
    if-nez v0, :cond_0

    .line 548
    :goto_0
    return-void

    .line 512
    :cond_0
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->h:Lcom/mopub/mraid/MraidController$b;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/view/View;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/mopub/mraid/MraidController;->e:Landroid/widget/FrameLayout;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/mopub/mraid/MraidController$b;->a([Landroid/view/View;)Lcom/mopub/mraid/MraidController$b$a;

    move-result-object v1

    new-instance v2, Lcom/mopub/mraid/MraidController$7;

    invoke-direct {v2, p0, v0, p1}, Lcom/mopub/mraid/MraidController$7;-><init>(Lcom/mopub/mraid/MraidController;Landroid/view/View;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Lcom/mopub/mraid/MraidController$b$a;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/mopub/mraid/MraidController;)Lcom/mopub/mraid/MraidBridge;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->q:Lcom/mopub/mraid/MraidBridge;

    return-object v0
.end method

.method static synthetic c(Lcom/mopub/mraid/MraidController;)Lcom/mopub/mraid/MraidBridge;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->p:Lcom/mopub/mraid/MraidBridge;

    return-object v0
.end method

.method static synthetic d(Lcom/mopub/mraid/MraidController;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->c:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic e(Lcom/mopub/mraid/MraidController;)Lcom/mopub/mraid/MraidNativeCommandHandler;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->v:Lcom/mopub/mraid/MraidNativeCommandHandler;

    return-object v0
.end method

.method private f()I
    .locals 2

    .prologue
    .line 343
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->c:Landroid/content/Context;

    const-string v1, "window"

    .line 344
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 345
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    return v0
.end method

.method static synthetic f(Lcom/mopub/mraid/MraidController;)Z
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/mopub/mraid/MraidController;->h()Z

    move-result v0

    return v0
.end method

.method private g()Landroid/view/View;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 442
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->q:Lcom/mopub/mraid/MraidBridge;

    invoke-virtual {v0}, Lcom/mopub/mraid/MraidBridge;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->o:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->n:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    goto :goto_0
.end method

.method static synthetic g(Lcom/mopub/mraid/MraidController;)Lcom/mopub/mraid/PlacementType;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->d:Lcom/mopub/mraid/PlacementType;

    return-object v0
.end method

.method static synthetic h(Lcom/mopub/mraid/MraidController;)Lcom/mopub/mraid/ViewState;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->j:Lcom/mopub/mraid/ViewState;

    return-object v0
.end method

.method private h()Z
    .locals 3

    .prologue
    .line 446
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 448
    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/mopub/mraid/MraidController;->g()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    .line 449
    :cond_0
    const/4 v0, 0x0

    .line 452
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->v:Lcom/mopub/mraid/MraidNativeCommandHandler;

    invoke-direct {p0}, Lcom/mopub/mraid/MraidController;->g()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/mopub/mraid/MraidNativeCommandHandler;->a(Landroid/app/Activity;Landroid/view/View;)Z

    move-result v0

    goto :goto_0
.end method

.method private i()Landroid/view/ViewGroup;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 838
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->g:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 839
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->g:Landroid/view/ViewGroup;

    .line 844
    :goto_0
    return-object v0

    .line 842
    :cond_0
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->e:Landroid/widget/FrameLayout;

    invoke-static {v0, v1}, Lcom/mopub/common/util/Views;->getTopmostView(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 844
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->e:Landroid/widget/FrameLayout;

    goto :goto_0
.end method

.method static synthetic i(Lcom/mopub/mraid/MraidController;)Lcom/mopub/mraid/c;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->i:Lcom/mopub/mraid/c;

    return-object v0
.end method

.method private j()Landroid/view/ViewGroup;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 851
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->g:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 852
    invoke-direct {p0}, Lcom/mopub/mraid/MraidController;->i()Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mraid/MraidController;->g:Landroid/view/ViewGroup;

    .line 855
    :cond_0
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->g:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic j(Lcom/mopub/mraid/MraidController;)Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/mopub/mraid/MraidController;->i()Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method static synthetic k(Lcom/mopub/mraid/MraidController;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->e:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic l(Lcom/mopub/mraid/MraidController;)I
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/mopub/mraid/MraidController;->f()I

    move-result v0

    return v0
.end method


# virtual methods
.method a(III)I
    .locals 1

    .prologue
    .line 640
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method a()V
    .locals 2
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    .line 457
    sget-object v0, Lcom/mopub/mraid/ViewState;->DEFAULT:Lcom/mopub/mraid/ViewState;

    new-instance v1, Lcom/mopub/mraid/MraidController$5;

    invoke-direct {v1, p0}, Lcom/mopub/mraid/MraidController$5;-><init>(Lcom/mopub/mraid/MraidController;)V

    invoke-direct {p0, v0, v1}, Lcom/mopub/mraid/MraidController;->a(Lcom/mopub/mraid/ViewState;Ljava/lang/Runnable;)V

    .line 473
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->k:Lcom/mopub/mraid/MraidController$MraidListener;

    if-eqz v0, :cond_0

    .line 474
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->k:Lcom/mopub/mraid/MraidController$MraidListener;

    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->e:Landroid/widget/FrameLayout;

    invoke-interface {v0, v1}, Lcom/mopub/mraid/MraidController$MraidListener;->onLoaded(Landroid/view/View;)V

    .line 476
    :cond_0
    return-void
.end method

.method a(I)V
    .locals 1

    .prologue
    .line 551
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mopub/mraid/MraidController;->a(Ljava/lang/Runnable;)V

    .line 552
    return-void
.end method

.method a(IIIILcom/mopub/common/CloseableLayout$ClosePosition;Z)V
    .locals 8
    .param p5    # Lcom/mopub/common/CloseableLayout$ClosePosition;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mopub/mraid/a;
        }
    .end annotation

    .prologue
    const/4 v7, -0x1

    .line 648
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->n:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    if-nez v0, :cond_0

    .line 649
    new-instance v0, Lcom/mopub/mraid/a;

    const-string v1, "Unable to resize after the WebView is destroyed"

    invoke-direct {v0, v1}, Lcom/mopub/mraid/a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 654
    :cond_0
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->j:Lcom/mopub/mraid/ViewState;

    sget-object v1, Lcom/mopub/mraid/ViewState;->LOADING:Lcom/mopub/mraid/ViewState;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->j:Lcom/mopub/mraid/ViewState;

    sget-object v1, Lcom/mopub/mraid/ViewState;->HIDDEN:Lcom/mopub/mraid/ViewState;

    if-ne v0, v1, :cond_2

    .line 731
    :cond_1
    :goto_0
    return-void

    .line 657
    :cond_2
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->j:Lcom/mopub/mraid/ViewState;

    sget-object v1, Lcom/mopub/mraid/ViewState;->EXPANDED:Lcom/mopub/mraid/ViewState;

    if-ne v0, v1, :cond_3

    .line 658
    new-instance v0, Lcom/mopub/mraid/a;

    const-string v1, "Not allowed to resize from an already expanded ad"

    invoke-direct {v0, v1}, Lcom/mopub/mraid/a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 661
    :cond_3
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->d:Lcom/mopub/mraid/PlacementType;

    sget-object v1, Lcom/mopub/mraid/PlacementType;->INTERSTITIAL:Lcom/mopub/mraid/PlacementType;

    if-ne v0, v1, :cond_4

    .line 662
    new-instance v0, Lcom/mopub/mraid/a;

    const-string v1, "Not allowed to resize from an interstitial ad"

    invoke-direct {v0, v1}, Lcom/mopub/mraid/a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 666
    :cond_4
    int-to-float v0, p1

    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->c:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/mopub/common/util/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v0

    .line 667
    int-to-float v1, p2

    iget-object v2, p0, Lcom/mopub/mraid/MraidController;->c:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/mopub/common/util/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v1

    .line 668
    int-to-float v2, p3

    iget-object v3, p0, Lcom/mopub/mraid/MraidController;->c:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/mopub/common/util/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v2

    .line 669
    int-to-float v3, p4

    iget-object v4, p0, Lcom/mopub/mraid/MraidController;->c:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/mopub/common/util/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v3

    .line 670
    iget-object v4, p0, Lcom/mopub/mraid/MraidController;->i:Lcom/mopub/mraid/c;

    invoke-virtual {v4}, Lcom/mopub/mraid/c;->e()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v4

    .line 671
    iget-object v4, p0, Lcom/mopub/mraid/MraidController;->i:Lcom/mopub/mraid/c;

    invoke-virtual {v4}, Lcom/mopub/mraid/c;->e()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    .line 672
    new-instance v4, Landroid/graphics/Rect;

    add-int/2addr v0, v2

    add-int v5, v3, v1

    invoke-direct {v4, v2, v3, v0, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 674
    if-nez p6, :cond_7

    .line 676
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->i:Lcom/mopub/mraid/c;

    invoke-virtual {v0}, Lcom/mopub/mraid/c;->b()Landroid/graphics/Rect;

    move-result-object v0

    .line 677
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-gt v2, v3, :cond_5

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-le v2, v3, :cond_6

    .line 678
    :cond_5
    new-instance v0, Lcom/mopub/mraid/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resizeProperties specified a size ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") and offset ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") that doesn\'t allow the ad to"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " appear within the max allowed size ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mopub/mraid/MraidController;->i:Lcom/mopub/mraid/c;

    .line 682
    invoke-virtual {v2}, Lcom/mopub/mraid/c;->c()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mopub/mraid/MraidController;->i:Lcom/mopub/mraid/c;

    .line 683
    invoke-virtual {v2}, Lcom/mopub/mraid/c;->c()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mopub/mraid/a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 687
    :cond_6
    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v4, Landroid/graphics/Rect;->left:I

    iget v5, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0, v2, v3, v5}, Lcom/mopub/mraid/MraidController;->a(III)I

    move-result v2

    .line 688
    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v5, v4, Landroid/graphics/Rect;->top:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v6

    sub-int/2addr v0, v6

    invoke-virtual {p0, v3, v5, v0}, Lcom/mopub/mraid/MraidController;->a(III)I

    move-result v0

    .line 689
    invoke-virtual {v4, v2, v0}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 693
    :cond_7
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 694
    iget-object v2, p0, Lcom/mopub/mraid/MraidController;->f:Lcom/mopub/common/CloseableLayout;

    invoke-virtual {v2, p5, v4, v0}, Lcom/mopub/common/CloseableLayout;->applyCloseRegionBounds(Lcom/mopub/common/CloseableLayout$ClosePosition;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 695
    iget-object v2, p0, Lcom/mopub/mraid/MraidController;->i:Lcom/mopub/mraid/c;

    invoke-virtual {v2}, Lcom/mopub/mraid/c;->b()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 696
    new-instance v0, Lcom/mopub/mraid/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resizeProperties specified a size ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") and offset ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") that doesn\'t allow the close"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " region to appear within the max allowed size ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mopub/mraid/MraidController;->i:Lcom/mopub/mraid/c;

    .line 700
    invoke-virtual {v2}, Lcom/mopub/mraid/c;->c()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mopub/mraid/MraidController;->i:Lcom/mopub/mraid/c;

    .line 701
    invoke-virtual {v2}, Lcom/mopub/mraid/c;->c()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mopub/mraid/a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 704
    :cond_8
    invoke-virtual {v4, v0}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 705
    new-instance v0, Lcom/mopub/mraid/a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resizeProperties specified a size ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") and offset ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") that don\'t allow the close region to appear "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "within the resized ad."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mopub/mraid/a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 712
    :cond_9
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->f:Lcom/mopub/common/CloseableLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mopub/common/CloseableLayout;->setCloseVisible(Z)V

    .line 713
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->f:Lcom/mopub/common/CloseableLayout;

    invoke-virtual {v0, p5}, Lcom/mopub/common/CloseableLayout;->setClosePosition(Lcom/mopub/common/CloseableLayout$ClosePosition;)V

    .line 716
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 717
    iget v1, v4, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/mopub/mraid/MraidController;->i:Lcom/mopub/mraid/c;

    invoke-virtual {v2}, Lcom/mopub/mraid/c;->b()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 718
    iget v1, v4, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/mopub/mraid/MraidController;->i:Lcom/mopub/mraid/c;

    invoke-virtual {v2}, Lcom/mopub/mraid/c;->b()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 719
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->j:Lcom/mopub/mraid/ViewState;

    sget-object v2, Lcom/mopub/mraid/ViewState;->DEFAULT:Lcom/mopub/mraid/ViewState;

    if-ne v1, v2, :cond_b

    .line 720
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->e:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/mopub/mraid/MraidController;->n:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 721
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->e:Landroid/widget/FrameLayout;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 722
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->f:Lcom/mopub/common/CloseableLayout;

    iget-object v2, p0, Lcom/mopub/mraid/MraidController;->n:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Lcom/mopub/common/CloseableLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 724
    invoke-direct {p0}, Lcom/mopub/mraid/MraidController;->j()Landroid/view/ViewGroup;

    move-result-object v1

    iget-object v2, p0, Lcom/mopub/mraid/MraidController;->f:Lcom/mopub/common/CloseableLayout;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 728
    :cond_a
    :goto_1
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->f:Lcom/mopub/common/CloseableLayout;

    invoke-virtual {v0, p5}, Lcom/mopub/common/CloseableLayout;->setClosePosition(Lcom/mopub/common/CloseableLayout$ClosePosition;)V

    .line 730
    sget-object v0, Lcom/mopub/mraid/ViewState;->RESIZED:Lcom/mopub/mraid/ViewState;

    invoke-direct {p0, v0}, Lcom/mopub/mraid/MraidController;->a(Lcom/mopub/mraid/ViewState;)V

    goto/16 :goto_0

    .line 725
    :cond_b
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->j:Lcom/mopub/mraid/ViewState;

    sget-object v2, Lcom/mopub/mraid/ViewState;->RESIZED:Lcom/mopub/mraid/ViewState;

    if-ne v1, v2, :cond_a

    .line 726
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->f:Lcom/mopub/common/CloseableLayout;

    invoke-virtual {v1, v0}, Lcom/mopub/common/CloseableLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
.end method

.method a(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    .line 860
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->c:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/mopub/mobileads/MraidVideoPlayerActivity;->startMraid(Landroid/content/Context;Ljava/lang/String;)V

    .line 861
    return-void
.end method

.method a(Ljava/net/URI;Z)V
    .locals 6
    .param p1    # Ljava/net/URI;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mopub/mraid/a;
        }
    .end annotation

    .prologue
    const/4 v5, 0x4

    const/4 v4, -0x1

    .line 735
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->n:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    if-nez v0, :cond_0

    .line 736
    new-instance v0, Lcom/mopub/mraid/a;

    const-string v1, "Unable to expand after the WebView is destroyed"

    invoke-direct {v0, v1}, Lcom/mopub/mraid/a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 739
    :cond_0
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->d:Lcom/mopub/mraid/PlacementType;

    sget-object v1, Lcom/mopub/mraid/PlacementType;->INTERSTITIAL:Lcom/mopub/mraid/PlacementType;

    if-ne v0, v1, :cond_2

    .line 791
    :cond_1
    :goto_0
    return-void

    .line 743
    :cond_2
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->j:Lcom/mopub/mraid/ViewState;

    sget-object v1, Lcom/mopub/mraid/ViewState;->DEFAULT:Lcom/mopub/mraid/ViewState;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->j:Lcom/mopub/mraid/ViewState;

    sget-object v1, Lcom/mopub/mraid/ViewState;->RESIZED:Lcom/mopub/mraid/ViewState;

    if-ne v0, v1, :cond_1

    .line 747
    :cond_3
    invoke-virtual {p0}, Lcom/mopub/mraid/MraidController;->d()V

    .line 750
    if-eqz p1, :cond_6

    const/4 v0, 0x1

    .line 751
    :goto_1
    if-eqz v0, :cond_4

    .line 754
    new-instance v1, Lcom/mopub/mraid/MraidBridge$MraidWebView;

    iget-object v2, p0, Lcom/mopub/mraid/MraidController;->c:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/mopub/mraid/MraidBridge$MraidWebView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mopub/mraid/MraidController;->o:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    .line 755
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->q:Lcom/mopub/mraid/MraidBridge;

    iget-object v2, p0, Lcom/mopub/mraid/MraidController;->o:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    invoke-virtual {v1, v2}, Lcom/mopub/mraid/MraidBridge;->a(Lcom/mopub/mraid/MraidBridge$MraidWebView;)V

    .line 758
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->q:Lcom/mopub/mraid/MraidBridge;

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mopub/mraid/MraidBridge;->setContentUrl(Ljava/lang/String;)V

    .line 762
    :cond_4
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 764
    iget-object v2, p0, Lcom/mopub/mraid/MraidController;->j:Lcom/mopub/mraid/ViewState;

    sget-object v3, Lcom/mopub/mraid/ViewState;->DEFAULT:Lcom/mopub/mraid/ViewState;

    if-ne v2, v3, :cond_8

    .line 765
    if-eqz v0, :cond_7

    .line 766
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->f:Lcom/mopub/common/CloseableLayout;

    iget-object v2, p0, Lcom/mopub/mraid/MraidController;->o:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    invoke-virtual {v0, v2, v1}, Lcom/mopub/common/CloseableLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 772
    :goto_2
    invoke-direct {p0}, Lcom/mopub/mraid/MraidController;->j()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v2, p0, Lcom/mopub/mraid/MraidController;->f:Lcom/mopub/common/CloseableLayout;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 785
    :cond_5
    :goto_3
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->f:Lcom/mopub/common/CloseableLayout;

    invoke-virtual {v0, v1}, Lcom/mopub/common/CloseableLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 786
    invoke-virtual {p0, p2}, Lcom/mopub/mraid/MraidController;->a(Z)V

    .line 790
    sget-object v0, Lcom/mopub/mraid/ViewState;->EXPANDED:Lcom/mopub/mraid/ViewState;

    invoke-direct {p0, v0}, Lcom/mopub/mraid/MraidController;->a(Lcom/mopub/mraid/ViewState;)V

    goto :goto_0

    .line 750
    :cond_6
    const/4 v0, 0x0

    goto :goto_1

    .line 768
    :cond_7
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->e:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/mopub/mraid/MraidController;->n:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 769
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 770
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->f:Lcom/mopub/common/CloseableLayout;

    iget-object v2, p0, Lcom/mopub/mraid/MraidController;->n:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    invoke-virtual {v0, v2, v1}, Lcom/mopub/common/CloseableLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 774
    :cond_8
    iget-object v2, p0, Lcom/mopub/mraid/MraidController;->j:Lcom/mopub/mraid/ViewState;

    sget-object v3, Lcom/mopub/mraid/ViewState;->RESIZED:Lcom/mopub/mraid/ViewState;

    if-ne v2, v3, :cond_5

    .line 775
    if-eqz v0, :cond_5

    .line 778
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->f:Lcom/mopub/common/CloseableLayout;

    iget-object v2, p0, Lcom/mopub/mraid/MraidController;->n:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    invoke-virtual {v0, v2}, Lcom/mopub/common/CloseableLayout;->removeView(Landroid/view/View;)V

    .line 779
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->e:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/mopub/mraid/MraidController;->n:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    invoke-virtual {v0, v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 780
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 781
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->f:Lcom/mopub/common/CloseableLayout;

    iget-object v2, p0, Lcom/mopub/mraid/MraidController;->o:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    invoke-virtual {v0, v2, v1}, Lcom/mopub/common/CloseableLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3
.end method

.method protected a(Z)V
    .locals 3
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 952
    iget-object v2, p0, Lcom/mopub/mraid/MraidController;->f:Lcom/mopub/common/CloseableLayout;

    invoke-virtual {v2}, Lcom/mopub/common/CloseableLayout;->isCloseVisible()Z

    move-result v2

    if-nez v2, :cond_1

    move v2, v0

    .line 953
    :goto_0
    if-ne p1, v2, :cond_2

    .line 961
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v2, v1

    .line 952
    goto :goto_0

    .line 957
    :cond_2
    iget-object v2, p0, Lcom/mopub/mraid/MraidController;->f:Lcom/mopub/common/CloseableLayout;

    if-nez p1, :cond_3

    :goto_2
    invoke-virtual {v2, v0}, Lcom/mopub/common/CloseableLayout;->setCloseVisible(Z)V

    .line 958
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->l:Lcom/mopub/mraid/MraidController$UseCustomCloseListener;

    if-eqz v0, :cond_0

    .line 959
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->l:Lcom/mopub/mraid/MraidController$UseCustomCloseListener;

    invoke-interface {v0, p1}, Lcom/mopub/mraid/MraidController$UseCustomCloseListener;->useCustomCloseChanged(Z)V

    goto :goto_1

    :cond_3
    move v0, v1

    .line 957
    goto :goto_2
.end method

.method a(ZLcom/mopub/mraid/b;)V
    .locals 3
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mopub/mraid/a;
        }
    .end annotation

    .prologue
    .line 1023
    invoke-virtual {p0, p2}, Lcom/mopub/mraid/MraidController;->a(Lcom/mopub/mraid/b;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1024
    new-instance v0, Lcom/mopub/mraid/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to force orientation to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mopub/mraid/a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1028
    :cond_0
    iput-boolean p1, p0, Lcom/mopub/mraid/MraidController;->t:Z

    .line 1029
    iput-object p2, p0, Lcom/mopub/mraid/MraidController;->u:Lcom/mopub/mraid/b;

    .line 1031
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->j:Lcom/mopub/mraid/ViewState;

    sget-object v1, Lcom/mopub/mraid/ViewState;->EXPANDED:Lcom/mopub/mraid/ViewState;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->d:Lcom/mopub/mraid/PlacementType;

    sget-object v1, Lcom/mopub/mraid/PlacementType;->INTERSTITIAL:Lcom/mopub/mraid/PlacementType;

    if-ne v0, v1, :cond_2

    .line 1032
    :cond_1
    invoke-virtual {p0}, Lcom/mopub/mraid/MraidController;->d()V

    .line 1034
    :cond_2
    return-void
.end method

.method a(Landroid/webkit/ConsoleMessage;)Z
    .locals 1
    .param p1    # Landroid/webkit/ConsoleMessage;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    .line 351
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->m:Lcom/mopub/mraid/MraidWebViewDebugListener;

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->m:Lcom/mopub/mraid/MraidWebViewDebugListener;

    invoke-interface {v0, p1}, Lcom/mopub/mraid/MraidWebViewDebugListener;->onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z

    move-result v0

    .line 354
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method a(Lcom/mopub/mraid/b;)Z
    .locals 6
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 914
    sget-object v0, Lcom/mopub/mraid/b;->NONE:Lcom/mopub/mraid/b;

    if-ne p1, v0, :cond_1

    .line 947
    :cond_0
    :goto_0
    return v1

    .line 918
    :cond_1
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 920
    if-nez v0, :cond_2

    move v1, v2

    .line 921
    goto :goto_0

    .line 926
    :cond_2
    :try_start_0
    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    new-instance v4, Landroid/content/ComponentName;

    .line 927
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-direct {v4, v0, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v0, 0x0

    .line 926
    invoke-virtual {v3, v4, v0}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 933
    iget v3, v0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    .line 934
    const/4 v4, -0x1

    if-eq v3, v4, :cond_4

    .line 935
    invoke-virtual {p1}, Lcom/mopub/mraid/b;->a()I

    move-result v0

    if-ne v3, v0, :cond_3

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    .line 928
    :catch_0
    move-exception v0

    move v1, v2

    .line 929
    goto :goto_0

    :cond_3
    move v0, v2

    .line 935
    goto :goto_1

    .line 940
    :cond_4
    iget v3, v0, Landroid/content/pm/ActivityInfo;->configChanges:I

    const/16 v4, 0x80

    .line 941
    invoke-static {v3, v4}, Lcom/mopub/common/util/Utils;->bitMaskContainsFlag(II)Z

    move-result v3

    .line 944
    if-eqz v3, :cond_5

    iget v0, v0, Landroid/content/pm/ActivityInfo;->configChanges:I

    const/16 v3, 0x400

    .line 945
    invoke-static {v0, v3}, Lcom/mopub/common/util/Utils;->bitMaskContainsFlag(II)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_5
    move v1, v2

    goto :goto_0
.end method

.method a(Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/webkit/JsResult;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    .line 359
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->m:Lcom/mopub/mraid/MraidWebViewDebugListener;

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->m:Lcom/mopub/mraid/MraidWebViewDebugListener;

    invoke-interface {v0, p1, p2}, Lcom/mopub/mraid/MraidWebViewDebugListener;->onJsAlert(Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result v0

    .line 363
    :goto_0
    return v0

    .line 362
    :cond_0
    invoke-virtual {p2}, Landroid/webkit/JsResult;->confirm()V

    .line 363
    const/4 v0, 0x1

    goto :goto_0
.end method

.method b()V
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    .line 480
    new-instance v0, Lcom/mopub/mraid/MraidController$6;

    invoke-direct {v0, p0}, Lcom/mopub/mraid/MraidController$6;-><init>(Lcom/mopub/mraid/MraidController;)V

    invoke-direct {p0, v0}, Lcom/mopub/mraid/MraidController;->a(Ljava/lang/Runnable;)V

    .line 495
    return-void
.end method

.method b(I)V
    .locals 3
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mopub/mraid/a;
        }
    .end annotation

    .prologue
    .line 865
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 866
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->u:Lcom/mopub/mraid/b;

    invoke-virtual {p0, v1}, Lcom/mopub/mraid/MraidController;->a(Lcom/mopub/mraid/b;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 867
    :cond_0
    new-instance v0, Lcom/mopub/mraid/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempted to lock orientation to unsupported value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mopub/mraid/MraidController;->u:Lcom/mopub/mraid/b;

    .line 868
    invoke-virtual {v2}, Lcom/mopub/mraid/b;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mopub/mraid/a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 871
    :cond_1
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->s:Ljava/lang/Integer;

    if-nez v1, :cond_2

    .line 872
    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/mopub/mraid/MraidController;->s:Ljava/lang/Integer;

    .line 875
    :cond_2
    invoke-virtual {v0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 876
    return-void
.end method

.method b(Ljava/lang/String;)V
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    .line 1042
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->k:Lcom/mopub/mraid/MraidController$MraidListener;

    if-eqz v0, :cond_0

    .line 1043
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->k:Lcom/mopub/mraid/MraidController$MraidListener;

    invoke-interface {v0}, Lcom/mopub/mraid/MraidController$MraidListener;->onOpen()V

    .line 1046
    :cond_0
    new-instance v0, Lcom/mopub/common/UrlHandler$Builder;

    invoke-direct {v0}, Lcom/mopub/common/UrlHandler$Builder;-><init>()V

    .line 1048
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->a:Lcom/mopub/common/AdReport;

    if-eqz v1, :cond_1

    .line 1049
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->a:Lcom/mopub/common/AdReport;

    invoke-virtual {v1}, Lcom/mopub/common/AdReport;->getDspCreativeId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mopub/common/UrlHandler$Builder;->withDspCreativeId(Ljava/lang/String;)Lcom/mopub/common/UrlHandler$Builder;

    .line 1052
    :cond_1
    sget-object v1, Lcom/mopub/common/UrlAction;->IGNORE_ABOUT_SCHEME:Lcom/mopub/common/UrlAction;

    const/4 v2, 0x5

    new-array v2, v2, [Lcom/mopub/common/UrlAction;

    const/4 v3, 0x0

    sget-object v4, Lcom/mopub/common/UrlAction;->OPEN_NATIVE_BROWSER:Lcom/mopub/common/UrlAction;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Lcom/mopub/common/UrlAction;->OPEN_IN_APP_BROWSER:Lcom/mopub/common/UrlAction;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    sget-object v4, Lcom/mopub/common/UrlAction;->HANDLE_SHARE_TWEET:Lcom/mopub/common/UrlAction;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    sget-object v4, Lcom/mopub/common/UrlAction;->FOLLOW_DEEP_LINK_WITH_FALLBACK:Lcom/mopub/common/UrlAction;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    sget-object v4, Lcom/mopub/common/UrlAction;->FOLLOW_DEEP_LINK:Lcom/mopub/common/UrlAction;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/mopub/common/UrlHandler$Builder;->withSupportedUrlActions(Lcom/mopub/common/UrlAction;[Lcom/mopub/common/UrlAction;)Lcom/mopub/common/UrlHandler$Builder;

    move-result-object v0

    .line 1059
    invoke-virtual {v0}, Lcom/mopub/common/UrlHandler$Builder;->build()Lcom/mopub/common/UrlHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->c:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/mopub/common/UrlHandler;->handleUrl(Landroid/content/Context;Ljava/lang/String;)V

    .line 1060
    return-void
.end method

.method protected c()V
    .locals 4
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v3, -0x1

    .line 795
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->n:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    if-nez v0, :cond_1

    .line 829
    :cond_0
    :goto_0
    return-void

    .line 800
    :cond_1
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->j:Lcom/mopub/mraid/ViewState;

    sget-object v1, Lcom/mopub/mraid/ViewState;->LOADING:Lcom/mopub/mraid/ViewState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->j:Lcom/mopub/mraid/ViewState;

    sget-object v1, Lcom/mopub/mraid/ViewState;->HIDDEN:Lcom/mopub/mraid/ViewState;

    if-eq v0, v1, :cond_0

    .line 805
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->j:Lcom/mopub/mraid/ViewState;

    sget-object v1, Lcom/mopub/mraid/ViewState;->EXPANDED:Lcom/mopub/mraid/ViewState;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->d:Lcom/mopub/mraid/PlacementType;

    sget-object v1, Lcom/mopub/mraid/PlacementType;->INTERSTITIAL:Lcom/mopub/mraid/PlacementType;

    if-ne v0, v1, :cond_3

    .line 806
    :cond_2
    invoke-virtual {p0}, Lcom/mopub/mraid/MraidController;->e()V

    .line 809
    :cond_3
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->j:Lcom/mopub/mraid/ViewState;

    sget-object v1, Lcom/mopub/mraid/ViewState;->RESIZED:Lcom/mopub/mraid/ViewState;

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->j:Lcom/mopub/mraid/ViewState;

    sget-object v1, Lcom/mopub/mraid/ViewState;->EXPANDED:Lcom/mopub/mraid/ViewState;

    if-ne v0, v1, :cond_6

    .line 810
    :cond_4
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->q:Lcom/mopub/mraid/MraidBridge;

    invoke-virtual {v0}, Lcom/mopub/mraid/MraidBridge;->d()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->o:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    if-eqz v0, :cond_5

    .line 812
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->f:Lcom/mopub/common/CloseableLayout;

    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->o:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    invoke-virtual {v0, v1}, Lcom/mopub/common/CloseableLayout;->removeView(Landroid/view/View;)V

    .line 813
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->q:Lcom/mopub/mraid/MraidBridge;

    invoke-virtual {v0}, Lcom/mopub/mraid/MraidBridge;->a()V

    .line 821
    :goto_1
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->f:Lcom/mopub/common/CloseableLayout;

    invoke-static {v0}, Lcom/mopub/common/util/Views;->removeFromParent(Landroid/view/View;)V

    .line 824
    sget-object v0, Lcom/mopub/mraid/ViewState;->DEFAULT:Lcom/mopub/mraid/ViewState;

    invoke-direct {p0, v0}, Lcom/mopub/mraid/MraidController;->a(Lcom/mopub/mraid/ViewState;)V

    goto :goto_0

    .line 816
    :cond_5
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->f:Lcom/mopub/common/CloseableLayout;

    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->n:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    invoke-virtual {v0, v1}, Lcom/mopub/common/CloseableLayout;->removeView(Landroid/view/View;)V

    .line 817
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->e:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->n:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 819
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->e:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_1

    .line 825
    :cond_6
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->j:Lcom/mopub/mraid/ViewState;

    sget-object v1, Lcom/mopub/mraid/ViewState;->DEFAULT:Lcom/mopub/mraid/ViewState;

    if-ne v0, v1, :cond_0

    .line 826
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->e:Landroid/widget/FrameLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 827
    sget-object v0, Lcom/mopub/mraid/ViewState;->HIDDEN:Lcom/mopub/mraid/ViewState;

    invoke-direct {p0, v0}, Lcom/mopub/mraid/MraidController;->a(Lcom/mopub/mraid/ViewState;)V

    goto :goto_0
.end method

.method d()V
    .locals 2
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mopub/mraid/a;
        }
    .end annotation

    .prologue
    .line 880
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->u:Lcom/mopub/mraid/b;

    sget-object v1, Lcom/mopub/mraid/b;->NONE:Lcom/mopub/mraid/b;

    if-ne v0, v1, :cond_2

    .line 881
    iget-boolean v0, p0, Lcom/mopub/mraid/MraidController;->t:Z

    if-eqz v0, :cond_0

    .line 884
    invoke-virtual {p0}, Lcom/mopub/mraid/MraidController;->e()V

    .line 900
    :goto_0
    return-void

    .line 886
    :cond_0
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 887
    if-nez v0, :cond_1

    .line 888
    new-instance v0, Lcom/mopub/mraid/a;

    const-string v1, "Unable to set MRAID expand orientation to \'none\'; expected passed in Activity Context."

    invoke-direct {v0, v1}, Lcom/mopub/mraid/a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 894
    :cond_1
    invoke-static {v0}, Lcom/mopub/common/util/DeviceUtils;->getScreenOrientation(Landroid/app/Activity;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mopub/mraid/MraidController;->b(I)V

    goto :goto_0

    .line 898
    :cond_2
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->u:Lcom/mopub/mraid/b;

    invoke-virtual {v0}, Lcom/mopub/mraid/b;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mopub/mraid/MraidController;->b(I)V

    goto :goto_0
.end method

.method public destroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 579
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->h:Lcom/mopub/mraid/MraidController$b;

    invoke-virtual {v0}, Lcom/mopub/mraid/MraidController$b;->a()V

    .line 582
    :try_start_0
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->r:Lcom/mopub/mraid/MraidController$a;

    invoke-virtual {v0}, Lcom/mopub/mraid/MraidController$a;->unregister()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 590
    :cond_0
    iget-boolean v0, p0, Lcom/mopub/mraid/MraidController;->w:Z

    if-nez v0, :cond_1

    .line 591
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mopub/mraid/MraidController;->pause(Z)V

    .line 595
    :cond_1
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->f:Lcom/mopub/common/CloseableLayout;

    invoke-static {v0}, Lcom/mopub/common/util/Views;->removeFromParent(Landroid/view/View;)V

    .line 598
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->p:Lcom/mopub/mraid/MraidBridge;

    invoke-virtual {v0}, Lcom/mopub/mraid/MraidBridge;->a()V

    .line 599
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->n:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    if-eqz v0, :cond_2

    .line 600
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->n:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    invoke-virtual {v0}, Lcom/mopub/mraid/MraidBridge$MraidWebView;->destroy()V

    .line 601
    iput-object v3, p0, Lcom/mopub/mraid/MraidController;->n:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    .line 603
    :cond_2
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->q:Lcom/mopub/mraid/MraidBridge;

    invoke-virtual {v0}, Lcom/mopub/mraid/MraidBridge;->a()V

    .line 604
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->o:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    if-eqz v0, :cond_3

    .line 605
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->o:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    invoke-virtual {v0}, Lcom/mopub/mraid/MraidBridge$MraidWebView;->destroy()V

    .line 606
    iput-object v3, p0, Lcom/mopub/mraid/MraidController;->o:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    .line 608
    :cond_3
    return-void

    .line 583
    :catch_0
    move-exception v0

    .line 584
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Receiver not registered"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 585
    throw v0
.end method

.method e()V
    .locals 2
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    .line 904
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 905
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->s:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 906
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->s:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 908
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mopub/mraid/MraidController;->s:Ljava/lang/Integer;

    .line 909
    return-void
.end method

.method public getAdContainer()Landroid/widget/FrameLayout;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 965
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->e:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 1017
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->c:Landroid/content/Context;

    return-object v0
.end method

.method public loadContent(Ljava/lang/String;)V
    .locals 4
    .param p1, "htmlData"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v3, -0x1

    .line 330
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->n:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "loadContent should only be called once"

    invoke-static {v0, v1}, Lcom/mopub/common/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 332
    new-instance v0, Lcom/mopub/mraid/MraidBridge$MraidWebView;

    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mopub/mraid/MraidBridge$MraidWebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mopub/mraid/MraidController;->n:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    .line 333
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->p:Lcom/mopub/mraid/MraidBridge;

    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->n:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    invoke-virtual {v0, v1}, Lcom/mopub/mraid/MraidBridge;->a(Lcom/mopub/mraid/MraidBridge$MraidWebView;)V

    .line 334
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->e:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->n:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 338
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->p:Lcom/mopub/mraid/MraidBridge;

    invoke-virtual {v0, p1}, Lcom/mopub/mraid/MraidBridge;->setContentHtml(Ljava/lang/String;)V

    .line 339
    return-void

    .line 330
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadJavascript(Ljava/lang/String;)V
    .locals 1
    .param p1, "javascript"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 972
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->p:Lcom/mopub/mraid/MraidBridge;

    invoke-virtual {v0, p1}, Lcom/mopub/mraid/MraidBridge;->a(Ljava/lang/String;)V

    .line 973
    return-void
.end method

.method public pause(Z)V
    .locals 1
    .param p1, "isFinishing"    # Z

    .prologue
    .line 555
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mopub/mraid/MraidController;->w:Z

    .line 558
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->n:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    if-eqz v0, :cond_0

    .line 559
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->n:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    invoke-static {v0, p1}, Lcom/mopub/mobileads/util/WebViews;->onPause(Landroid/webkit/WebView;Z)V

    .line 561
    :cond_0
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->o:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    if-eqz v0, :cond_1

    .line 562
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->o:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    invoke-static {v0, p1}, Lcom/mopub/mobileads/util/WebViews;->onPause(Landroid/webkit/WebView;Z)V

    .line 564
    :cond_1
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 567
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mopub/mraid/MraidController;->w:Z

    .line 570
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->n:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    if-eqz v0, :cond_0

    .line 571
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->n:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    invoke-virtual {v0}, Lcom/mopub/mraid/MraidBridge$MraidWebView;->onResume()V

    .line 573
    :cond_0
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->o:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    if-eqz v0, :cond_1

    .line 574
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->o:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    invoke-virtual {v0}, Lcom/mopub/mraid/MraidBridge$MraidWebView;->onResume()V

    .line 576
    :cond_1
    return-void
.end method

.method public setDebugListener(Lcom/mopub/mraid/MraidWebViewDebugListener;)V
    .locals 0
    .param p1, "debugListener"    # Lcom/mopub/mraid/MraidWebViewDebugListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 326
    iput-object p1, p0, Lcom/mopub/mraid/MraidController;->m:Lcom/mopub/mraid/MraidWebViewDebugListener;

    .line 327
    return-void
.end method

.method public setMraidListener(Lcom/mopub/mraid/MraidController$MraidListener;)V
    .locals 0
    .param p1, "mraidListener"    # Lcom/mopub/mraid/MraidController$MraidListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 318
    iput-object p1, p0, Lcom/mopub/mraid/MraidController;->k:Lcom/mopub/mraid/MraidController$MraidListener;

    .line 319
    return-void
.end method

.method public setUseCustomCloseListener(Lcom/mopub/mraid/MraidController$UseCustomCloseListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/mopub/mraid/MraidController$UseCustomCloseListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 322
    iput-object p1, p0, Lcom/mopub/mraid/MraidController;->l:Lcom/mopub/mraid/MraidController$UseCustomCloseListener;

    .line 323
    return-void
.end method
