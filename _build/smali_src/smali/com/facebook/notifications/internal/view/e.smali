.class public Lcom/facebook/notifications/internal/view/e;
.super Landroid/widget/FrameLayout;
.source "ContentView.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# instance fields
.field private final a:Lcom/facebook/notifications/internal/content/Content;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/notifications/internal/content/a;Lcom/facebook/notifications/internal/content/Content;)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/facebook/notifications/internal/content/a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/facebook/notifications/internal/content/Content;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 40
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 41
    iput-object p3, p0, Lcom/facebook/notifications/internal/view/e;->a:Lcom/facebook/notifications/internal/content/Content;

    .line 43
    if-eqz p3, :cond_0

    .line 44
    new-instance v0, Lcom/facebook/notifications/internal/view/TextContentLabel;

    check-cast p3, Lcom/facebook/notifications/internal/content/TextContent;

    invoke-direct {v0, p1, p3}, Lcom/facebook/notifications/internal/view/TextContentLabel;-><init>(Landroid/content/Context;Lcom/facebook/notifications/internal/content/TextContent;)V

    .line 45
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/facebook/notifications/internal/view/e;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 47
    :cond_0
    return-void
.end method
