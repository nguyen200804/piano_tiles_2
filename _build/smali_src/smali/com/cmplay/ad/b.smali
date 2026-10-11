.class public Lcom/cmplay/ad/b;
.super Ljava/lang/Object;
.source "BaseAds.java"

# interfaces
.implements Lcom/cmplay/ad/d;


# instance fields
.field private mOriVolume:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public activityResult(IILandroid/content/Intent;)Z
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public canShow(I)Z
    .locals 1
    .param p1, "reportFrom"    # I

    .prologue
    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 18
    return-void
.end method

.method public onDestroy(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 48
    return-void
.end method

.method public onPaused(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 33
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 28
    return-void
.end method

.method public onStart(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 23
    return-void
.end method

.method public onStop(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 38
    return-void
.end method

.method public prepare()V
    .locals 0

    .prologue
    .line 63
    return-void
.end method

.method public recoverVolume(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 74
    :try_start_0
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 75
    const/4 v1, 0x3

    iget v2, p0, Lcom/cmplay/ad/b;->mOriVolume:I

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :goto_0
    return-void

    .line 76
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public reduceVolume(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 82
    :try_start_0
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 83
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    iput v1, p0, Lcom/cmplay/ad/b;->mOriVolume:I

    .line 84
    iget v1, p0, Lcom/cmplay/ad/b;->mOriVolume:I

    if-lez v1, :cond_0

    .line 85
    const/4 v1, 0x3

    iget v2, p0, Lcom/cmplay/ad/b;->mOriVolume:I

    add-int/lit8 v2, v2, -0x2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 87
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setListener(Lcom/cmplay/ad/c;)V
    .locals 0
    .param p1, "l"    # Lcom/cmplay/ad/c;

    .prologue
    .line 68
    return-void
.end method

.method public show(I)Z
    .locals 1
    .param p1, "reportFrom"    # I

    .prologue
    .line 57
    const/4 v0, 0x0

    return v0
.end method
