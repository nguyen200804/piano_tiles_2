.class public Lcom/cmplay/internalpush/video/e;
.super Ljava/lang/Object;
.source "InnerPushVideoManager.java"


# static fields
.field public static a:Landroid/content/Context;

.field public static b:Z

.field public static c:Lcom/cmplay/internalpush/video/b/a;

.field public static d:Z

.field private static e:Lcom/cmplay/internalpush/video/b/c;

.field private static f:Lcom/cmplay/internalpush/video/CloudVideoReceiver;

.field private static g:Lcom/cmplay/base/util/c/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x1

    sput-boolean v0, Lcom/cmplay/internalpush/video/e;->b:Z

    .line 31
    const/4 v0, 0x0

    sput-boolean v0, Lcom/cmplay/internalpush/video/e;->d:Z

    return-void
.end method

.method public static a()Landroid/content/BroadcastReceiver;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/cmplay/internalpush/video/e;->f:Lcom/cmplay/internalpush/video/CloudVideoReceiver;

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Lcom/cmplay/internalpush/video/CloudVideoReceiver;

    invoke-direct {v0}, Lcom/cmplay/internalpush/video/CloudVideoReceiver;-><init>()V

    sput-object v0, Lcom/cmplay/internalpush/video/e;->f:Lcom/cmplay/internalpush/video/CloudVideoReceiver;

    .line 71
    :cond_0
    sget-object v0, Lcom/cmplay/internalpush/video/e;->f:Lcom/cmplay/internalpush/video/CloudVideoReceiver;

    return-object v0
.end method

.method public static a(Landroid/content/Context;ZLcom/cmplay/internalpush/video/b/a;)V
    .locals 1

    .prologue
    .line 34
    sput-object p2, Lcom/cmplay/internalpush/video/e;->c:Lcom/cmplay/internalpush/video/b/a;

    .line 35
    sput-object p0, Lcom/cmplay/internalpush/video/e;->a:Landroid/content/Context;

    .line 36
    invoke-static {p0}, Lcom/cmplay/internalpush/a/d;->a(Landroid/content/Context;)V

    .line 37
    invoke-static {p0}, Lcom/cmplay/internalpush/a/e;->a(Landroid/content/Context;)V

    .line 38
    invoke-static {}, Lcom/cmplay/internalpush/video/a/a;->a()Lcom/cmplay/internalpush/video/a/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/cmplay/internalpush/video/a/a;->a(Landroid/content/Context;)V

    .line 39
    sput-boolean p1, Lcom/cmplay/internalpush/video/e;->d:Z

    .line 40
    return-void
.end method

.method public static a(Landroid/content/Context;ZLcom/cmplay/internalpush/video/b/a;Lcom/cmplay/base/util/c/c;)V
    .locals 0

    .prologue
    .line 45
    invoke-static {p0, p1, p2}, Lcom/cmplay/internalpush/video/e;->a(Landroid/content/Context;ZLcom/cmplay/internalpush/video/b/a;)V

    .line 46
    invoke-static {p3}, Lcom/cmplay/internalpush/video/e;->a(Lcom/cmplay/base/util/c/c;)V

    .line 47
    return-void
.end method

.method public static a(Lcom/cmplay/base/util/c/c;)V
    .locals 0

    .prologue
    .line 153
    sput-object p0, Lcom/cmplay/internalpush/video/e;->g:Lcom/cmplay/base/util/c/c;

    .line 154
    return-void
.end method

.method public static a(Lcom/cmplay/internalpush/video/b/c;)V
    .locals 0

    .prologue
    .line 62
    if-eqz p0, :cond_0

    .line 63
    sput-object p0, Lcom/cmplay/internalpush/video/e;->e:Lcom/cmplay/internalpush/video/b/c;

    .line 65
    :cond_0
    return-void
.end method

.method public static a(Lcom/cmplay/internalpush/video/b/d;)V
    .locals 1

    .prologue
    .line 53
    if-eqz p0, :cond_0

    .line 54
    sget-object v0, Lcom/cmplay/internalpush/video/e;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->a(Landroid/content/Context;)Lcom/cmplay/internalpush/data/ParseCloudDataVideo;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->a(Lcom/cmplay/internalpush/video/b/d;)V

    .line 56
    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 134
    :try_start_0
    invoke-static {}, Lcom/cmplay/internalpush/video/a/a;->a()Lcom/cmplay/internalpush/video/a/a;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/cmplay/internalpush/video/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    sget-object v0, Lcom/cmplay/internalpush/video/e;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->a(Landroid/content/Context;)Lcom/cmplay/internalpush/data/ParseCloudDataVideo;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->c(Ljava/lang/String;)V

    .line 136
    sget-object v0, Lcom/cmplay/internalpush/video/e;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->a(Landroid/content/Context;)Lcom/cmplay/internalpush/data/ParseCloudDataVideo;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    :goto_0
    return-void

    .line 137
    :catch_0
    move-exception v0

    .line 138
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 139
    const-string v1, "zzb"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startServiceLoadData \u5f02\u5e38------- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Z)V
    .locals 0

    .prologue
    .line 75
    sput-boolean p0, Lcom/cmplay/internalpush/video/e;->b:Z

    .line 76
    return-void
.end method

.method public static a(I)Z
    .locals 1

    .prologue
    .line 129
    sget-object v0, Lcom/cmplay/internalpush/video/e;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->a(Landroid/content/Context;)Lcom/cmplay/internalpush/data/ParseCloudDataVideo;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->b(I)Z

    move-result v0

    return v0
.end method

.method public static a(IZ)Z
    .locals 11

    .prologue
    const/4 v7, 0x0

    const-wide/16 v4, 0x0

    .line 97
    if-eqz p1, :cond_0

    .line 98
    invoke-static {}, Lcom/cmplay/internalpush/o;->a()Lcom/cmplay/internalpush/o;

    move-result-object v0

    const/4 v1, 0x4

    const/16 v2, 0x13

    const-string v3, ""

    const-string v6, ""

    move v8, v7

    move-wide v9, v4

    invoke-virtual/range {v0 .. v10}, Lcom/cmplay/internalpush/o;->a(IILjava/lang/String;JLjava/lang/String;IIJ)V

    .line 101
    :cond_0
    sget-object v0, Lcom/cmplay/internalpush/video/e;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->a(Landroid/content/Context;)Lcom/cmplay/internalpush/data/ParseCloudDataVideo;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->c(I)Z

    move-result v0

    .line 102
    if-eqz p1, :cond_1

    if-nez v0, :cond_1

    .line 103
    sget-object v1, Lcom/cmplay/internalpush/video/e;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->a(Landroid/content/Context;)Lcom/cmplay/internalpush/data/ParseCloudDataVideo;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->b(J)V

    .line 105
    :cond_1
    return v0
.end method

.method public static b()V
    .locals 4

    .prologue
    .line 80
    sget-object v0, Lcom/cmplay/internalpush/video/e;->a:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u901a\u77e5\u5230\u4e86-----"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cmplay/internalpush/video/e;->c:Lcom/cmplay/internalpush/video/b/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;)V

    .line 86
    sget-object v0, Lcom/cmplay/internalpush/video/e;->c:Lcom/cmplay/internalpush/video/b/a;

    if-eqz v0, :cond_0

    .line 87
    sget-object v0, Lcom/cmplay/internalpush/video/e;->c:Lcom/cmplay/internalpush/video/b/a;

    const-string v1, "section_video_distribution"

    invoke-interface {v0, v1}, Lcom/cmplay/internalpush/video/b/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 88
    sget-object v1, Lcom/cmplay/internalpush/video/e;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->a(Landroid/content/Context;)Lcom/cmplay/internalpush/data/ParseCloudDataVideo;

    move-result-object v1

    sget-object v2, Lcom/cmplay/internalpush/video/e;->c:Lcom/cmplay/internalpush/video/b/a;

    sget-object v3, Lcom/cmplay/internalpush/video/e;->e:Lcom/cmplay/internalpush/video/b/c;

    invoke-virtual {v1, v0, v2, v3}, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->a(Ljava/lang/String;Lcom/cmplay/internalpush/video/b/a;Lcom/cmplay/internalpush/video/b/c;)V

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 145
    invoke-static {}, Lcom/cmplay/internalpush/ipc/IpcVideoHelper;->getInstance()Lcom/cmplay/internalpush/ipc/IpcVideoHelper;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/cmplay/internalpush/ipc/IpcVideoHelper;->ipcServiceStartDown(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    return-void
.end method

.method public static b(IZ)Z
    .locals 12

    .prologue
    const-wide/16 v10, 0x3e7

    const/4 v8, 0x0

    .line 113
    if-eqz p1, :cond_0

    .line 114
    invoke-static {}, Lcom/cmplay/internalpush/o;->a()Lcom/cmplay/internalpush/o;

    move-result-object v1

    const/4 v2, 0x4

    const/16 v3, 0x13

    const-string v4, ""

    const-wide/16 v5, 0x0

    const-string v7, ""

    move v9, v8

    invoke-virtual/range {v1 .. v11}, Lcom/cmplay/internalpush/o;->a(IILjava/lang/String;JLjava/lang/String;IIJ)V

    .line 117
    :cond_0
    sget-object v1, Lcom/cmplay/internalpush/video/e;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->a(Landroid/content/Context;)Lcom/cmplay/internalpush/data/ParseCloudDataVideo;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->d(I)Z

    move-result v1

    .line 118
    if-eqz p1, :cond_1

    if-nez v1, :cond_1

    .line 119
    sget-object v2, Lcom/cmplay/internalpush/video/e;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->a(Landroid/content/Context;)Lcom/cmplay/internalpush/data/ParseCloudDataVideo;

    move-result-object v2

    invoke-virtual {v2, v10, v11}, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->b(J)V

    .line 121
    :cond_1
    return v1
.end method

.method public static c()Lcom/cmplay/base/util/c/c;
    .locals 1

    .prologue
    .line 157
    sget-object v0, Lcom/cmplay/internalpush/video/e;->g:Lcom/cmplay/base/util/c/c;

    return-object v0
.end method
