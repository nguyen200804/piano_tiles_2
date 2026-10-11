.class public Lcom/cmplay/util/p;
.super Ljava/lang/Object;
.source "MusicTrackPlayMgr.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmplay/util/p$a;
    }
.end annotation


# static fields
.field private static h:Lcom/cmplay/util/p;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cmplay/util/p$a;",
            ">;"
        }
    .end annotation
.end field

.field private b:J

.field private c:I

.field private d:J

.field private e:J

.field private f:Ljava/util/Timer;

.field private g:Ljava/util/TimerTask;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cmplay/util/p;->a:Ljava/util/List;

    .line 28
    const-wide/16 v0, 0x3

    iput-wide v0, p0, Lcom/cmplay/util/p;->b:J

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/cmplay/util/p;->c:I

    .line 31
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/cmplay/util/p;->e:J

    return-void
.end method

.method public static a()Lcom/cmplay/util/p;
    .locals 2

    .prologue
    .line 37
    sget-object v0, Lcom/cmplay/util/p;->h:Lcom/cmplay/util/p;

    if-nez v0, :cond_0

    .line 38
    const-class v1, Lcom/cmplay/util/p;

    monitor-enter v1

    .line 39
    :try_start_0
    new-instance v0, Lcom/cmplay/util/p;

    invoke-direct {v0}, Lcom/cmplay/util/p;-><init>()V

    sput-object v0, Lcom/cmplay/util/p;->h:Lcom/cmplay/util/p;

    .line 40
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    :cond_0
    sget-object v0, Lcom/cmplay/util/p;->h:Lcom/cmplay/util/p;

    return-object v0

    .line 40
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/cmplay/util/p;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/cmplay/util/p;->f()V

    return-void
.end method

.method private e()V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/cmplay/util/p;->f:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/cmplay/util/p;->f:Ljava/util/Timer;

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/cmplay/util/p;->g:Ljava/util/TimerTask;

    if-nez v0, :cond_1

    .line 50
    new-instance v0, Lcom/cmplay/util/p$1;

    invoke-direct {v0, p0}, Lcom/cmplay/util/p$1;-><init>(Lcom/cmplay/util/p;)V

    iput-object v0, p0, Lcom/cmplay/util/p;->g:Ljava/util/TimerTask;

    .line 57
    :cond_1
    return-void
.end method

.method private f()V
    .locals 7

    .prologue
    .line 116
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/cmplay/util/p;->d:J

    sub-long v2, v0, v2

    .line 117
    iput-wide v2, p0, Lcom/cmplay/util/p;->e:J

    .line 118
    iget-object v0, p0, Lcom/cmplay/util/p;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 119
    iget v0, p0, Lcom/cmplay/util/p;->c:I

    if-ge v0, v1, :cond_0

    .line 120
    :goto_0
    iget v0, p0, Lcom/cmplay/util/p;->c:I

    if-ge v0, v1, :cond_1

    .line 121
    iget-object v0, p0, Lcom/cmplay/util/p;->a:Ljava/util/List;

    iget v4, p0, Lcom/cmplay/util/p;->c:I

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmplay/util/p$a;

    .line 122
    iget v4, v0, Lcom/cmplay/util/p$a;->c:I

    int-to-long v4, v4

    cmp-long v4, v2, v4

    if-ltz v4, :cond_1

    .line 124
    const-string v4, "shengming"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "android cell inst ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/cmplay/util/p$a;->b:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " cell name ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/cmplay/util/p$a;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object v4, v0, Lcom/cmplay/util/p$a;->b:Ljava/lang/String;

    iget-object v0, v0, Lcom/cmplay/util/p$a;->a:Ljava/lang/String;

    invoke-static {v4, v0}, Lcom/cmplay/util/NativeUtil;->playSoundEffect(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    iget v0, p0, Lcom/cmplay/util/p;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/cmplay/util/p;->c:I

    goto :goto_0

    .line 132
    :cond_0
    invoke-virtual {p0}, Lcom/cmplay/util/p;->c()V

    .line 133
    invoke-virtual {p0}, Lcom/cmplay/util/p;->b()V

    .line 135
    :cond_1
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 87
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 90
    :cond_1
    iget-object v1, p0, Lcom/cmplay/util/p;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 93
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 94
    const-string v2, "play_track"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 95
    const-string v2, "play_track"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 96
    if-eqz v1, :cond_0

    .line 97
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 98
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v2

    .line 99
    if-eqz v2, :cond_2

    .line 100
    new-instance v3, Lcom/cmplay/util/p$a;

    invoke-direct {v3, p0}, Lcom/cmplay/util/p$a;-><init>(Lcom/cmplay/util/p;)V

    .line 102
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/cmplay/util/p$a;->b:Ljava/lang/String;

    .line 103
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/cmplay/util/p$a;->a:Ljava/lang/String;

    .line 104
    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    iput v2, v3, Lcom/cmplay/util/p$a;->c:I

    .line 105
    iget-object v2, p0, Lcom/cmplay/util/p;->a:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 110
    :catch_0
    move-exception v0

    .line 111
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public b()V
    .locals 6

    .prologue
    const-wide/16 v2, 0x3e8

    .line 60
    invoke-virtual {p0}, Lcom/cmplay/util/p;->c()V

    .line 61
    invoke-direct {p0}, Lcom/cmplay/util/p;->e()V

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lcom/cmplay/util/p;->c:I

    .line 63
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/cmplay/util/p;->e:J

    .line 64
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/cmplay/util/p;->d:J

    .line 65
    iget-object v0, p0, Lcom/cmplay/util/p;->f:Ljava/util/Timer;

    iget-object v1, p0, Lcom/cmplay/util/p;->g:Ljava/util/TimerTask;

    iget-wide v4, p0, Lcom/cmplay/util/p;->b:J

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 66
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 69
    iget-object v0, p0, Lcom/cmplay/util/p;->f:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/cmplay/util/p;->f:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 71
    iput-object v1, p0, Lcom/cmplay/util/p;->f:Ljava/util/Timer;

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/cmplay/util/p;->g:Ljava/util/TimerTask;

    if-eqz v0, :cond_1

    .line 74
    iget-object v0, p0, Lcom/cmplay/util/p;->g:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 75
    iput-object v1, p0, Lcom/cmplay/util/p;->g:Ljava/util/TimerTask;

    .line 77
    :cond_1
    return-void
.end method

.method public d()V
    .locals 6

    .prologue
    const-wide/16 v2, 0x3e8

    .line 80
    invoke-virtual {p0}, Lcom/cmplay/util/p;->c()V

    .line 81
    invoke-direct {p0}, Lcom/cmplay/util/p;->e()V

    .line 82
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr v0, v2

    iget-wide v4, p0, Lcom/cmplay/util/p;->e:J

    sub-long/2addr v0, v4

    iput-wide v0, p0, Lcom/cmplay/util/p;->d:J

    .line 83
    iget-object v0, p0, Lcom/cmplay/util/p;->f:Ljava/util/Timer;

    iget-object v1, p0, Lcom/cmplay/util/p;->g:Ljava/util/TimerTask;

    iget-wide v4, p0, Lcom/cmplay/util/p;->b:J

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 84
    return-void
.end method
