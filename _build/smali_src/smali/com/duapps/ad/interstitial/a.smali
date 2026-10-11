.class public Lcom/duapps/ad/interstitial/a;
.super Landroid/widget/PopupWindow;
.source "AdPopupWindow.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field private a:Z

.field private b:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 25
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 26
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/duapps/ad/interstitial/a;->b:Ljava/lang/ref/SoftReference;

    .line 27
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 28
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 29
    invoke-virtual {p0, v0}, Lcom/duapps/ad/interstitial/a;->setContentView(Landroid/view/View;)V

    .line 30
    invoke-virtual {p0, v2, v2}, Lcom/duapps/ad/interstitial/a;->setWindowLayoutMode(II)V

    .line 31
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {p0, v0}, Lcom/duapps/ad/interstitial/a;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 32
    return-void
.end method

.method static synthetic a(Lcom/duapps/ad/interstitial/a;)V
    .locals 0

    .prologue
    .line 19
    invoke-super {p0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method static synthetic a(Lcom/duapps/ad/interstitial/a;Z)Z
    .locals 0

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/duapps/ad/interstitial/a;->a:Z

    return p1
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 35
    iget-object v0, p0, Lcom/duapps/ad/interstitial/a;->b:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 36
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 41
    :cond_0
    :goto_0
    return-void

    .line 39
    :cond_1
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/duapps/ad/interstitial/a;->showAtLocation(Landroid/view/View;III)V

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/duapps/ad/interstitial/a;->a:Z

    goto :goto_0
.end method

.method public dismiss()V
    .locals 4

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/duapps/ad/interstitial/a;->getContentView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/duapps/ad/interstitial/a$1;

    invoke-direct {v1, p0}, Lcom/duapps/ad/interstitial/a$1;-><init>(Lcom/duapps/ad/interstitial/a;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 54
    return-void
.end method

.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 58
    const/16 v0, 0x52

    if-ne p2, v0, :cond_2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 59
    iget-boolean v0, p0, Lcom/duapps/ad/interstitial/a;->a:Z

    if-nez v0, :cond_1

    .line 60
    iput-boolean v1, p0, Lcom/duapps/ad/interstitial/a;->a:Z

    .line 69
    :cond_0
    :goto_0
    return v1

    .line 62
    :cond_1
    invoke-virtual {p0}, Lcom/duapps/ad/interstitial/a;->dismiss()V

    .line 63
    iput-boolean v2, p0, Lcom/duapps/ad/interstitial/a;->a:Z

    goto :goto_0

    .line 65
    :cond_2
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/duapps/ad/interstitial/a;->dismiss()V

    .line 67
    iput-boolean v2, p0, Lcom/duapps/ad/interstitial/a;->a:Z

    goto :goto_0
.end method
