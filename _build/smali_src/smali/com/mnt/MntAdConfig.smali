.class public Lcom/mnt/MntAdConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final BANNER_STYLE_COMMON:I = 0x0

.field public static final BANNER_STYLE_RECTANGLE:I = 0x1


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Lcom/mnt/DownloadType;

.field private d:Ljava/lang/String;

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method


# virtual methods
.method public getAdsNum()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/mnt/MntAdConfig;->b:I

    return v0
.end method

.method public getChannel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/mnt/MntAdConfig;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getCreatives()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/mnt/MntAdConfig;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadType()Lcom/mnt/DownloadType;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/mnt/MntAdConfig;->c:Lcom/mnt/DownloadType;

    return-object v0
.end method

.method public getmBannerType()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/mnt/MntAdConfig;->e:I

    return v0
.end method

.method public setAdsNum(I)V
    .locals 0

    .prologue
    .line 41
    iput p1, p0, Lcom/mnt/MntAdConfig;->b:I

    .line 42
    return-void
.end method

.method public setChannel(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/mnt/MntAdConfig;->a:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public varargs setCreatives([Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 57
    invoke-static {p1}, Lcom/mnt/a/a;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mnt/MntAdConfig;->d:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setDownloadType(Lcom/mnt/DownloadType;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/mnt/MntAdConfig;->c:Lcom/mnt/DownloadType;

    .line 50
    return-void
.end method

.method public setmBannerType(I)V
    .locals 0

    .prologue
    .line 65
    iput p1, p0, Lcom/mnt/MntAdConfig;->e:I

    .line 66
    return-void
.end method
