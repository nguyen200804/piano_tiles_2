.class Lcom/facebook/internal/ac$2;
.super Ljava/lang/Object;
.source "WebDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/internal/ac;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/internal/ac;


# direct methods
.method constructor <init>(Lcom/facebook/internal/ac;)V
    .locals 0

    .prologue
    .line 373
    iput-object p1, p0, Lcom/facebook/internal/ac$2;->a:Lcom/facebook/internal/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 376
    iget-object v0, p0, Lcom/facebook/internal/ac$2;->a:Lcom/facebook/internal/ac;

    invoke-virtual {v0}, Lcom/facebook/internal/ac;->cancel()V

    .line 377
    return-void
.end method
