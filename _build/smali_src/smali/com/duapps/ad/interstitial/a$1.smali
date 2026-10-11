.class Lcom/duapps/ad/interstitial/a$1;
.super Ljava/lang/Object;
.source "AdPopupWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duapps/ad/interstitial/a;->dismiss()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duapps/ad/interstitial/a;


# direct methods
.method constructor <init>(Lcom/duapps/ad/interstitial/a;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/duapps/ad/interstitial/a$1;->a:Lcom/duapps/ad/interstitial/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 49
    :try_start_0
    iget-object v0, p0, Lcom/duapps/ad/interstitial/a$1;->a:Lcom/duapps/ad/interstitial/a;

    invoke-static {v0}, Lcom/duapps/ad/interstitial/a;->a(Lcom/duapps/ad/interstitial/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :goto_0
    iget-object v0, p0, Lcom/duapps/ad/interstitial/a$1;->a:Lcom/duapps/ad/interstitial/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/duapps/ad/interstitial/a;->a(Lcom/duapps/ad/interstitial/a;Z)Z

    .line 52
    return-void

    .line 50
    :catch_0
    move-exception v0

    goto :goto_0
.end method
