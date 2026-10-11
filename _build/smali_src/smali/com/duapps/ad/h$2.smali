.class Lcom/duapps/ad/h$2;
.super Ljava/lang/Object;
.source "InterstitialAd.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duapps/ad/h;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duapps/ad/h;


# direct methods
.method constructor <init>(Lcom/duapps/ad/h;)V
    .locals 0

    .prologue
    .line 219
    iput-object p1, p0, Lcom/duapps/ad/h$2;->a:Lcom/duapps/ad/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 223
    iget-object v0, p0, Lcom/duapps/ad/h$2;->a:Lcom/duapps/ad/h;

    invoke-static {v0}, Lcom/duapps/ad/h;->b(Lcom/duapps/ad/h;)Lcom/duapps/ad/interstitial/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/duapps/ad/h$2;->a:Lcom/duapps/ad/h;

    invoke-static {v0}, Lcom/duapps/ad/h;->b(Lcom/duapps/ad/h;)Lcom/duapps/ad/interstitial/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duapps/ad/interstitial/a;->dismiss()V

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/duapps/ad/h$2;->a:Lcom/duapps/ad/h;

    invoke-static {v0}, Lcom/duapps/ad/h;->c(Lcom/duapps/ad/h;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/duapps/ad/h$2;->a:Lcom/duapps/ad/h;

    invoke-static {v1}, Lcom/duapps/ad/h;->d(Lcom/duapps/ad/h;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/duapps/ad/stats/h;->a(Landroid/content/Context;I)V

    .line 227
    return-void
.end method
