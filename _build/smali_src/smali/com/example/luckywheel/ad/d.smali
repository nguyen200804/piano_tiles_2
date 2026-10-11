.class public Lcom/example/luckywheel/ad/d;
.super Lcom/example/luckywheel/ad/h;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/example/luckywheel/ad/h",
        "<",
        "Lcom/google/android/gms/ads/formats/NativeAd;",
        ">;"
    }
.end annotation


# instance fields
.field private e:Landroid/content/Context;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/example/luckywheel/ad/h;-><init>()V

    iput-object p1, p0, Lcom/example/luckywheel/ad/d;->e:Landroid/content/Context;

    iput-object p2, p0, Lcom/example/luckywheel/ad/d;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lcom/example/luckywheel/ad/h$b;)V
    .locals 3

    invoke-static {}, Lcom/example/luckywheel/ad/googlead/admob/c;->a()Lcom/example/luckywheel/ad/googlead/admob/c;

    move-result-object v0

    iget-object v1, p0, Lcom/example/luckywheel/ad/d;->e:Landroid/content/Context;

    new-instance v2, Lcom/example/luckywheel/ad/j;

    invoke-direct {v2, p0, p1}, Lcom/example/luckywheel/ad/j;-><init>(Lcom/example/luckywheel/ad/d;Lcom/example/luckywheel/ad/h$b;)V

    invoke-virtual {v0, v1, v2}, Lcom/example/luckywheel/ad/googlead/admob/c;->a(Landroid/content/Context;Lcom/example/luckywheel/ui/e;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/ads/formats/NativeAd;)V
    .locals 3

    iget-object v0, p0, Lcom/example/luckywheel/ad/d;->f:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/example/luckywheel/ad/d;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/example/luckywheel/ad/d;->b:I

    const-string v0, "new_ad"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AdmobAdObject placementId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/example/luckywheel/ad/d;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", priority = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/example/luckywheel/ad/d;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/32 v0, 0x36ee80

    iput-wide v0, p0, Lcom/example/luckywheel/ad/d;->c:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/example/luckywheel/ad/d;->d:J

    iput-object p1, p0, Lcom/example/luckywheel/ad/d;->a:Ljava/lang/Object;

    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/ads/formats/NativeAd;

    invoke-virtual {p0, p1}, Lcom/example/luckywheel/ad/d;->a(Lcom/google/android/gms/ads/formats/NativeAd;)V

    return-void
.end method

.method public a()Z
    .locals 1

    invoke-static {}, Lcom/example/luckywheel/ad/googlead/admob/c;->a()Lcom/example/luckywheel/ad/googlead/admob/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/example/luckywheel/ad/googlead/admob/c;->c()Lcom/google/android/gms/ads/formats/NativeAd;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
