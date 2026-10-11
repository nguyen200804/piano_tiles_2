.class public Lorg/cocos2dx/lib/Cocos2dxSound$TimerForStop;
.super Ljava/lang/Object;
.source "Cocos2dxSound.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cocos2dx/lib/Cocos2dxSound;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TimerForStop"
.end annotation


# instance fields
.field private bIsUsed:Z

.field private playTime:F

.field private startTime:J

.field private streamID:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    const/4 v0, -0x1

    iput v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound$TimerForStop;->streamID:I

    .line 140
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound$TimerForStop;->startTime:J

    .line 141
    const/4 v0, 0x0

    iput v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound$TimerForStop;->playTime:F

    .line 142
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound$TimerForStop;->bIsUsed:Z

    return-void
.end method


# virtual methods
.method public checkErase()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 164
    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxSound$TimerForStop;->isItemUsed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 171
    :cond_0
    :goto_0
    return v0

    .line 165
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 166
    iget-wide v4, p0, Lorg/cocos2dx/lib/Cocos2dxSound$TimerForStop;->startTime:J

    sub-long/2addr v2, v4

    long-to-float v1, v2

    iget v2, p0, Lorg/cocos2dx/lib/Cocos2dxSound$TimerForStop;->playTime:F

    const/high16 v3, 0x447a0000    # 1000.0f

    mul-float/2addr v2, v3

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 168
    iput-boolean v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound$TimerForStop;->bIsUsed:Z

    .line 169
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getStreamID()I
    .locals 1

    .prologue
    .line 160
    iget v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound$TimerForStop;->streamID:I

    return v0
.end method

.method public isItemUsed()Z
    .locals 1

    .prologue
    .line 152
    iget-boolean v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound$TimerForStop;->bIsUsed:Z

    return v0
.end method

.method public setIsItemUsed(Z)V
    .locals 0
    .param p1, "used"    # Z

    .prologue
    .line 156
    iput-boolean p1, p0, Lorg/cocos2dx/lib/Cocos2dxSound$TimerForStop;->bIsUsed:Z

    .line 157
    return-void
.end method

.method public setStopBassInfo(IF)V
    .locals 2
    .param p1, "nstreamid"    # I
    .param p2, "playtime"    # F

    .prologue
    .line 145
    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxSound$TimerForStop;->streamID:I

    .line 146
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound$TimerForStop;->startTime:J

    .line 147
    iput p2, p0, Lorg/cocos2dx/lib/Cocos2dxSound$TimerForStop;->playTime:F

    .line 148
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound$TimerForStop;->bIsUsed:Z

    .line 149
    return-void
.end method
