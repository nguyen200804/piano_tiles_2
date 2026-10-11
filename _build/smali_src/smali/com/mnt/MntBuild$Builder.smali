.class public Lcom/mnt/MntBuild$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mnt/MntBuild;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:I

.field private f:Lcom/mnt/DownloadType;

.field private g:Ljava/lang/String;

.field private h:Lcom/mnt/IAdListener;

.field private i:Lcom/mnt/MntAdConfig;

.field private j:Lcom/mnt/IUrlAnalysisListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ILcom/mnt/IAdListener;)V
    .locals 0

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput-object p1, p0, Lcom/mnt/MntBuild$Builder;->a:Landroid/content/Context;

    .line 108
    iput p3, p0, Lcom/mnt/MntBuild$Builder;->c:I

    .line 109
    iput-object p2, p0, Lcom/mnt/MntBuild$Builder;->b:Ljava/lang/String;

    .line 110
    iput-object p4, p0, Lcom/mnt/MntBuild$Builder;->h:Lcom/mnt/IAdListener;

    .line 111
    return-void
.end method

.method static synthetic a(Lcom/mnt/MntBuild$Builder;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/mnt/MntBuild$Builder;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lcom/mnt/MntBuild$Builder;)I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/mnt/MntBuild$Builder;->c:I

    return v0
.end method

.method static synthetic c(Lcom/mnt/MntBuild$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/mnt/MntBuild$Builder;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/mnt/MntBuild$Builder;)I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/mnt/MntBuild$Builder;->e:I

    return v0
.end method

.method static synthetic e(Lcom/mnt/MntBuild$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/mnt/MntBuild$Builder;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/mnt/MntBuild$Builder;)Lcom/mnt/DownloadType;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/mnt/MntBuild$Builder;->f:Lcom/mnt/DownloadType;

    return-object v0
.end method

.method static synthetic g(Lcom/mnt/MntBuild$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/mnt/MntBuild$Builder;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lcom/mnt/MntBuild$Builder;)Lcom/mnt/IAdListener;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/mnt/MntBuild$Builder;->h:Lcom/mnt/IAdListener;

    return-object v0
.end method

.method static synthetic i(Lcom/mnt/MntBuild$Builder;)Lcom/mnt/MntAdConfig;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/mnt/MntBuild$Builder;->i:Lcom/mnt/MntAdConfig;

    return-object v0
.end method

.method static synthetic j(Lcom/mnt/MntBuild$Builder;)Lcom/mnt/IUrlAnalysisListener;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/mnt/MntBuild$Builder;->j:Lcom/mnt/IUrlAnalysisListener;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/mnt/MntBuild;
    .locals 1

    .prologue
    .line 145
    new-instance v0, Lcom/mnt/MntBuild;

    invoke-direct {v0, p0}, Lcom/mnt/MntBuild;-><init>(Lcom/mnt/MntBuild$Builder;)V

    return-object v0
.end method

.method public setAdConfig(Lcom/mnt/MntAdConfig;)Lcom/mnt/MntBuild$Builder;
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/mnt/MntBuild$Builder;->i:Lcom/mnt/MntAdConfig;

    .line 135
    return-object p0
.end method

.method public setAdsNum(I)Lcom/mnt/MntBuild$Builder;
    .locals 0

    .prologue
    .line 114
    iput p1, p0, Lcom/mnt/MntBuild$Builder;->e:I

    .line 115
    return-object p0
.end method

.method public setChannel(Ljava/lang/String;)Lcom/mnt/MntBuild$Builder;
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/mnt/MntBuild$Builder;->d:Ljava/lang/String;

    .line 130
    return-object p0
.end method

.method public setClickUrlListener(Lcom/mnt/IUrlAnalysisListener;)Lcom/mnt/MntBuild$Builder;
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/mnt/MntBuild$Builder;->j:Lcom/mnt/IUrlAnalysisListener;

    .line 140
    return-object p0
.end method

.method public varargs setCreatives([Ljava/lang/String;)Lcom/mnt/MntBuild$Builder;
    .locals 1

    .prologue
    .line 124
    invoke-static {p1}, Lcom/mnt/a/a;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mnt/MntBuild$Builder;->g:Ljava/lang/String;

    .line 125
    return-object p0
.end method

.method public setDownLoadType(Lcom/mnt/DownloadType;)Lcom/mnt/MntBuild$Builder;
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/mnt/MntBuild$Builder;->f:Lcom/mnt/DownloadType;

    .line 120
    return-object p0
.end method
