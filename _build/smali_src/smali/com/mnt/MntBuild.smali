.class public Lcom/mnt/MntBuild;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mnt/MntBuild$Builder;
    }
.end annotation


# instance fields
.field public mAdConfig:Lcom/mnt/MntAdConfig;

.field public mAdListener:Lcom/mnt/IAdListener;

.field public mAdsNum:I

.field public mChannel:Ljava/lang/String;

.field public mClickUrl:Lcom/mnt/IUrlAnalysisListener;

.field public mContext:Landroid/content/Context;

.field public mCreatives:Ljava/lang/String;

.field public mDownloadType:Lcom/mnt/DownloadType;

.field public mPlacementId:Ljava/lang/String;

.field public mType:I


# direct methods
.method public constructor <init>(Lcom/mnt/MntBuild$Builder;)V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-static {p1}, Lcom/mnt/MntBuild$Builder;->a(Lcom/mnt/MntBuild$Builder;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mnt/MntBuild;->mContext:Landroid/content/Context;

    .line 28
    invoke-static {p1}, Lcom/mnt/MntBuild$Builder;->b(Lcom/mnt/MntBuild$Builder;)I

    move-result v0

    iput v0, p0, Lcom/mnt/MntBuild;->mType:I

    .line 29
    invoke-static {p1}, Lcom/mnt/MntBuild$Builder;->c(Lcom/mnt/MntBuild$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mnt/MntBuild;->mPlacementId:Ljava/lang/String;

    .line 30
    invoke-static {p1}, Lcom/mnt/MntBuild$Builder;->d(Lcom/mnt/MntBuild$Builder;)I

    move-result v0

    iput v0, p0, Lcom/mnt/MntBuild;->mAdsNum:I

    .line 31
    invoke-static {p1}, Lcom/mnt/MntBuild$Builder;->e(Lcom/mnt/MntBuild$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mnt/MntBuild;->mChannel:Ljava/lang/String;

    .line 32
    invoke-static {p1}, Lcom/mnt/MntBuild$Builder;->f(Lcom/mnt/MntBuild$Builder;)Lcom/mnt/DownloadType;

    move-result-object v0

    iput-object v0, p0, Lcom/mnt/MntBuild;->mDownloadType:Lcom/mnt/DownloadType;

    .line 33
    invoke-static {p1}, Lcom/mnt/MntBuild$Builder;->g(Lcom/mnt/MntBuild$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mnt/MntBuild;->mCreatives:Ljava/lang/String;

    .line 34
    invoke-static {p1}, Lcom/mnt/MntBuild$Builder;->h(Lcom/mnt/MntBuild$Builder;)Lcom/mnt/IAdListener;

    move-result-object v0

    iput-object v0, p0, Lcom/mnt/MntBuild;->mAdListener:Lcom/mnt/IAdListener;

    .line 35
    invoke-static {p1}, Lcom/mnt/MntBuild$Builder;->i(Lcom/mnt/MntBuild$Builder;)Lcom/mnt/MntAdConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/mnt/MntBuild;->mAdConfig:Lcom/mnt/MntAdConfig;

    .line 36
    invoke-static {p1}, Lcom/mnt/MntBuild$Builder;->j(Lcom/mnt/MntBuild$Builder;)Lcom/mnt/IUrlAnalysisListener;

    move-result-object v0

    iput-object v0, p0, Lcom/mnt/MntBuild;->mClickUrl:Lcom/mnt/IUrlAnalysisListener;

    .line 37
    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/mnt/MntBuild;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getPlacementId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/mnt/MntBuild;->mPlacementId:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/mnt/MntBuild;->mType:I

    return v0
.end method

.method public setPlacementId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/mnt/MntBuild;->mPlacementId:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setType(I)V
    .locals 0

    .prologue
    .line 56
    iput p1, p0, Lcom/mnt/MntBuild;->mType:I

    .line 57
    return-void
.end method
