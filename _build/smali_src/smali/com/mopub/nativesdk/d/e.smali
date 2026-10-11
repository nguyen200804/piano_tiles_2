.class final Lcom/mopub/nativesdk/d/e;
.super Ljava/lang/Object;
.source "DeviceUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 625
    iput-object p1, p0, Lcom/mopub/nativesdk/d/e;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 628
    const/4 v0, 0x0

    .line 630
    :try_start_0
    new-instance v1, Lcom/mopub/nativesdk/d/a;

    invoke-direct {v1}, Lcom/mopub/nativesdk/d/a;-><init>()V

    iget-object v1, p0, Lcom/mopub/nativesdk/d/e;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/mopub/nativesdk/d/a;->a(Landroid/content/Context;)Lcom/mopub/nativesdk/d/c;

    move-result-object v1

    .line 631
    if-eqz v1, :cond_0

    .line 632
    invoke-virtual {v1}, Lcom/mopub/nativesdk/d/c;->a()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 637
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 639
    iget-object v1, p0, Lcom/mopub/nativesdk/d/e;->a:Landroid/content/Context;

    const-string v2, "ak.native.sdk"

    const-string v3, "GAID"

    invoke-static {v1, v2, v3, v0}, Lcom/mopub/nativesdk/d/q;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    :cond_1
    return-void

    .line 634
    :catch_0
    move-exception v1

    .line 635
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
