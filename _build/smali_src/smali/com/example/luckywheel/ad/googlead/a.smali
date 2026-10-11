.class public abstract Lcom/example/luckywheel/ad/googlead/a;
.super Lcom/example/luckywheel/ad/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/example/luckywheel/ad/googlead/a$a;
    }
.end annotation


# instance fields
.field private b:Lcom/example/luckywheel/ad/googlead/a$a;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/example/luckywheel/ad/b;-><init>()V

    new-instance v0, Lcom/example/luckywheel/ad/googlead/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/example/luckywheel/ad/googlead/a$a;-><init>(Lcom/example/luckywheel/ad/googlead/a;Lcom/example/luckywheel/ad/googlead/b;)V

    iput-object v0, p0, Lcom/example/luckywheel/ad/googlead/a;->b:Lcom/example/luckywheel/ad/googlead/a$a;

    return-void
.end method

.method static synthetic a(Lcom/example/luckywheel/ad/googlead/a;Lcom/google/android/gms/ads/InterstitialAd;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/example/luckywheel/ad/googlead/a;->a(Lcom/google/android/gms/ads/InterstitialAd;)V

    return-void
.end method

.method private a(Lcom/google/android/gms/ads/InterstitialAd;)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/example/luckywheel/ad/c;

    invoke-direct {v0}, Lcom/example/luckywheel/ad/c;-><init>()V

    invoke-virtual {p0}, Lcom/example/luckywheel/ad/googlead/a;->b()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/example/luckywheel/ad/c;->a(Ljava/lang/Object;I)V

    iget-object v1, p0, Lcom/example/luckywheel/ad/googlead/a;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/example/luckywheel/ad/h$a;)V
    .locals 2

    iget-object v0, p0, Lcom/example/luckywheel/ad/googlead/a;->b:Lcom/example/luckywheel/ad/googlead/a$a;

    invoke-virtual {p0}, Lcom/example/luckywheel/ad/googlead/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1, p2}, Lcom/example/luckywheel/ad/googlead/a$a;->a(Lcom/example/luckywheel/ad/googlead/a$a;Landroid/content/Context;Ljava/lang/String;Lcom/example/luckywheel/ad/h$a;)V

    return-void
.end method
