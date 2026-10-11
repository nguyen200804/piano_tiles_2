.class Lcom/jirbo/adcolony/x$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jirbo/adcolony/x;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/jirbo/adcolony/x;


# direct methods
.method constructor <init>(Lcom/jirbo/adcolony/x;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1443
    iput-object p1, p0, Lcom/jirbo/adcolony/x$9;->b:Lcom/jirbo/adcolony/x;

    iput-object p2, p0, Lcom/jirbo/adcolony/x$9;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    .prologue
    .line 1446
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1447
    iget-object v1, p0, Lcom/jirbo/adcolony/x$9;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 1448
    iget-object v1, p0, Lcom/jirbo/adcolony/x$9;->b:Lcom/jirbo/adcolony/x;

    iget-object v1, v1, Lcom/jirbo/adcolony/x;->a:Landroid/webkit/WebView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jirbo/adcolony/x$9;->b:Lcom/jirbo/adcolony/x;

    iget-object v2, p0, Lcom/jirbo/adcolony/x$9;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int v0, v3, v0

    sub-int v0, v2, v0

    iget-object v2, p0, Lcom/jirbo/adcolony/x$9;->b:Lcom/jirbo/adcolony/x;

    iget-object v2, v2, Lcom/jirbo/adcolony/x;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget v2, v2, Lcom/jirbo/adcolony/ADCVideo;->t:I

    iget-object v3, p0, Lcom/jirbo/adcolony/x$9;->b:Lcom/jirbo/adcolony/x;

    iget-object v3, v3, Lcom/jirbo/adcolony/x;->a:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    invoke-virtual {v1, v0}, Lcom/jirbo/adcolony/x;->b(I)V

    .line 1449
    :cond_0
    iget-object v0, p0, Lcom/jirbo/adcolony/x$9;->b:Lcom/jirbo/adcolony/x;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/x;->j()V

    .line 1450
    return-void
.end method
