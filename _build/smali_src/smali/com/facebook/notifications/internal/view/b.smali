.class public Lcom/facebook/notifications/internal/view/b;
.super Landroid/widget/FrameLayout;
.source "AssetView.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# instance fields
.field private final a:Lcom/facebook/notifications/internal/asset/Asset;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/notifications/internal/asset/a;Lcom/facebook/notifications/internal/asset/Asset;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/facebook/notifications/internal/asset/a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/facebook/notifications/internal/asset/Asset;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v2, -0x1

    .line 39
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 40
    iput-object p3, p0, Lcom/facebook/notifications/internal/view/b;->a:Lcom/facebook/notifications/internal/asset/Asset;

    .line 42
    if-eqz p3, :cond_0

    .line 43
    invoke-virtual {p2, p3, p1}, Lcom/facebook/notifications/internal/asset/a;->a(Lcom/facebook/notifications/internal/asset/Asset;Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    .line 44
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/facebook/notifications/internal/view/b;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 46
    :cond_0
    return-void
.end method
