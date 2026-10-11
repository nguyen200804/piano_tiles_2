.class final Lcom/mnt/impl/h/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mnt/impl/f/b$a;


# instance fields
.field private synthetic a:Lcom/mnt/MntBuild;


# direct methods
.method constructor <init>(Lcom/mnt/MntBuild;)V
    .locals 0

    .prologue
    .line 244
    iput-object p1, p0, Lcom/mnt/impl/h/c;->a:Lcom/mnt/MntBuild;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 247
    iget-object v0, p0, Lcom/mnt/impl/h/c;->a:Lcom/mnt/MntBuild;

    invoke-virtual {v0}, Lcom/mnt/MntBuild;->getType()I

    move-result v0

    sget-object v1, Lcom/mnt/MntAdType;->INTERSTITIAL_320X480:Lcom/mnt/MntAdType;

    invoke-virtual {v1}, Lcom/mnt/MntAdType;->getType()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 248
    iget-object v0, p0, Lcom/mnt/impl/h/c;->a:Lcom/mnt/MntBuild;

    invoke-static {v0}, Lcom/mnt/impl/h/a;->a(Lcom/mnt/MntBuild;)V

    .line 256
    :cond_0
    :goto_0
    return-void

    .line 249
    :cond_1
    iget-object v0, p0, Lcom/mnt/impl/h/c;->a:Lcom/mnt/MntBuild;

    invoke-virtual {v0}, Lcom/mnt/MntBuild;->getType()I

    move-result v0

    sget-object v1, Lcom/mnt/MntAdType$Banner;->BANNER_320X50:Lcom/mnt/MntAdType$Banner;

    invoke-virtual {v1}, Lcom/mnt/MntAdType$Banner;->getType()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 250
    iget-object v0, p0, Lcom/mnt/impl/h/c;->a:Lcom/mnt/MntBuild;

    invoke-static {v0}, Lcom/mnt/impl/h/a;->b(Lcom/mnt/MntBuild;)V

    goto :goto_0

    .line 251
    :cond_2
    iget-object v0, p0, Lcom/mnt/impl/h/c;->a:Lcom/mnt/MntBuild;

    invoke-virtual {v0}, Lcom/mnt/MntBuild;->getType()I

    move-result v0

    sget-object v1, Lcom/mnt/MntAdType$Banner;->MEDIUM_300X250:Lcom/mnt/MntAdType$Banner;

    invoke-virtual {v1}, Lcom/mnt/MntAdType$Banner;->getType()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 252
    iget-object v0, p0, Lcom/mnt/impl/h/c;->a:Lcom/mnt/MntBuild;

    invoke-static {v0}, Lcom/mnt/impl/h/a;->c(Lcom/mnt/MntBuild;)V

    goto :goto_0

    .line 253
    :cond_3
    iget-object v0, p0, Lcom/mnt/impl/h/c;->a:Lcom/mnt/MntBuild;

    invoke-virtual {v0}, Lcom/mnt/MntBuild;->getType()I

    move-result v0

    sget-object v1, Lcom/mnt/MntAdType;->NATIVE:Lcom/mnt/MntAdType;

    invoke-virtual {v1}, Lcom/mnt/MntAdType;->getType()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 254
    iget-object v0, p0, Lcom/mnt/impl/h/c;->a:Lcom/mnt/MntBuild;

    invoke-static {v0}, Lcom/mnt/impl/h/a;->d(Lcom/mnt/MntBuild;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 260
    iget-object v0, p0, Lcom/mnt/impl/h/c;->a:Lcom/mnt/MntBuild;

    iget-object v0, v0, Lcom/mnt/MntBuild;->mAdListener:Lcom/mnt/IAdListener;

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/mnt/impl/h/c;->a:Lcom/mnt/MntBuild;

    iget-object v0, v0, Lcom/mnt/MntBuild;->mAdListener:Lcom/mnt/IAdListener;

    sget-object v1, Lcom/mnt/AdError;->NO_MATERIAL:Lcom/mnt/AdError;

    invoke-interface {v0, v1}, Lcom/mnt/IAdListener;->onAdError(Lcom/mnt/AdError;)V

    .line 263
    :cond_0
    return-void
.end method
