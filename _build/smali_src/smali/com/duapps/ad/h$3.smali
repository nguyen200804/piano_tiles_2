.class Lcom/duapps/ad/h$3;
.super Ljava/lang/Object;
.source "InterstitialAd.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


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
    .line 229
    iput-object p1, p0, Lcom/duapps/ad/h$3;->a:Lcom/duapps/ad/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .prologue
    .line 232
    iget-object v0, p0, Lcom/duapps/ad/h$3;->a:Lcom/duapps/ad/h;

    invoke-static {v0}, Lcom/duapps/ad/h;->a(Lcom/duapps/ad/h;)Lcom/duapps/ad/i;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/duapps/ad/h$3;->a:Lcom/duapps/ad/h;

    invoke-static {v0}, Lcom/duapps/ad/h;->a(Lcom/duapps/ad/h;)Lcom/duapps/ad/i;

    move-result-object v0

    invoke-interface {v0}, Lcom/duapps/ad/i;->onAdDismissed()V

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/duapps/ad/h$3;->a:Lcom/duapps/ad/h;

    invoke-static {v0}, Lcom/duapps/ad/h;->b(Lcom/duapps/ad/h;)Lcom/duapps/ad/interstitial/a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 236
    iget-object v0, p0, Lcom/duapps/ad/h$3;->a:Lcom/duapps/ad/h;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/duapps/ad/h;->a(Lcom/duapps/ad/h;Lcom/duapps/ad/interstitial/a;)Lcom/duapps/ad/interstitial/a;

    .line 238
    :cond_1
    return-void
.end method
