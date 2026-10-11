.class Lcom/duapps/ad/offerwall/ui/a$1;
.super Ljava/lang/Object;
.source "AppsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duapps/ad/offerwall/ui/a;->a(Landroid/view/View;Landroid/view/LayoutInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duapps/ad/offerwall/ui/a;


# direct methods
.method constructor <init>(Lcom/duapps/ad/offerwall/ui/a;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/duapps/ad/offerwall/ui/a$1;->a:Lcom/duapps/ad/offerwall/ui/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/a$1;->a:Lcom/duapps/ad/offerwall/ui/a;

    invoke-static {v0}, Lcom/duapps/ad/offerwall/ui/a;->a(Lcom/duapps/ad/offerwall/ui/a;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocusFromTouch()Z

    .line 85
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/a$1;->a:Lcom/duapps/ad/offerwall/ui/a;

    invoke-static {v0}, Lcom/duapps/ad/offerwall/ui/a;->a(Lcom/duapps/ad/offerwall/ui/a;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 86
    return-void
.end method
