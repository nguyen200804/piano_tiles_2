.class public Lcom/cmplay/internalpush/a/a/b;
.super Ljava/lang/Object;
.source "ImagePathUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmplay/internalpush/a/a/b$a;
    }
.end annotation


# static fields
.field private static b:Lcom/cmplay/internalpush/a/a/b;


# instance fields
.field public a:Landroid/content/Context;

.field private c:Landroid/os/HandlerThread;

.field private d:Landroid/os/Handler;

.field private e:Z

.field private f:Lcom/cmplay/base/util/c/b;

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cmplay/internalpush/a/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private i:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    sput-object v0, Lcom/cmplay/internalpush/a/a/b;->b:Lcom/cmplay/internalpush/a/a/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cmplay/internalpush/a/a/b;->e:Z

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cmplay/internalpush/a/a/b;->g:Ljava/util/ArrayList;

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/cmplay/internalpush/a/a/b;->h:Ljava/util/HashMap;

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/cmplay/internalpush/a/a/b;->i:Ljava/util/HashMap;

    .line 44
    return-void
.end method

.method static synthetic a(Lcom/cmplay/internalpush/a/a/b;)Lcom/cmplay/base/util/c/b;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/cmplay/internalpush/a/a/b;->f:Lcom/cmplay/base/util/c/b;

    return-object v0
.end method

.method public static a()Lcom/cmplay/internalpush/a/a/b;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/cmplay/internalpush/a/a/b;->b:Lcom/cmplay/internalpush/a/a/b;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lcom/cmplay/internalpush/a/a/b;

    invoke-direct {v0}, Lcom/cmplay/internalpush/a/a/b;-><init>()V

    sput-object v0, Lcom/cmplay/internalpush/a/a/b;->b:Lcom/cmplay/internalpush/a/a/b;

    .line 50
    :cond_0
    sget-object v0, Lcom/cmplay/internalpush/a/a/b;->b:Lcom/cmplay/internalpush/a/a/b;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 229
    invoke-static {}, Lcom/cmplay/internalpush/ipc/IpcSpHelper;->getInstance()Lcom/cmplay/internalpush/ipc/IpcSpHelper;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/cmplay/internalpush/ipc/IpcSpHelper;->sp_getStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public declared-synchronized a(ILjava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 98
    monitor-enter p0

    :try_start_0
    const-string v0, ""

    .line 99
    invoke-static {p1, p2}, Lcom/ijinshan/cloudconfig/a;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 100
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 101
    const-string v0, "zzb_cloud"

    const-string v1, "CloudHelper.getData\u6570\u636e\u4e3a\u7a7a\u65f6 reloadData()"

    invoke-static {v0, v1}, Lcom/ijinshan/cloudconfig/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-static {}, Lcom/ijinshan/cloudconfig/a;->d()V

    .line 104
    invoke-static {p1, p2}, Lcom/ijinshan/cloudconfig/a;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 107
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 108
    :goto_1
    invoke-static {}, Lcom/cmplay/internalpush/ipc/IpcSpHelper;->getInstance()Lcom/cmplay/internalpush/ipc/IpcSpHelper;

    move-result-object v2

    invoke-virtual {v2, p2, v0}, Lcom/cmplay/internalpush/ipc/IpcSpHelper;->sp_setBooleanValue(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    monitor-exit p0

    return-object v1

    .line 107
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 98
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    move-object v1, v0

    goto :goto_0
.end method

.method public a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 55
    iput-object p1, p0, Lcom/cmplay/internalpush/a/a/b;->a:Landroid/content/Context;

    .line 57
    iget-boolean v0, p0, Lcom/cmplay/internalpush/a/a/b;->e:Z

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "cloud_imgdown_thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/cmplay/internalpush/a/a/b;->c:Landroid/os/HandlerThread;

    .line 59
    iget-object v0, p0, Lcom/cmplay/internalpush/a/a/b;->c:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 60
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/cmplay/internalpush/a/a/b;->c:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/cmplay/internalpush/a/a/b;->d:Landroid/os/Handler;

    .line 62
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cmplay/internalpush/a/a/b;->e:Z

    .line 63
    return-void
.end method

.method public a(Lcom/cmplay/base/util/c/b;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/cmplay/internalpush/a/a/b;->f:Lcom/cmplay/base/util/c/b;

    .line 73
    return-void
.end method

.method public a(Lcom/cmplay/internalpush/a/a/a;)V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/cmplay/internalpush/a/a/b;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/cmplay/internalpush/a/a/b;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    :cond_0
    return-void
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 169
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/cmplay/internalpush/a/a/b;->h:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 170
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/cmplay/internalpush/a/a/b;->a:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 222
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 176
    :cond_1
    :try_start_1
    const-string v1, ""

    .line 177
    iget-object v2, p0, Lcom/cmplay/internalpush/a/a/b;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    .line 178
    if-eqz v2, :cond_2

    .line 179
    iget-object v1, p0, Lcom/cmplay/internalpush/a/a/b;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 184
    :cond_2
    :try_start_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 185
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Lcom/cmplay/base/util/c/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 186
    invoke-virtual {v3}, Ljava/io/File;->exists()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    .line 190
    :catch_0
    move-exception v0

    .line 191
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 169
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 197
    :cond_4
    const/4 v0, 0x0

    .line 198
    :try_start_4
    const-string v1, "open_screen_scene"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 199
    const/4 v0, 0x1

    move v1, v0

    .line 209
    :goto_1
    iget-object v0, p0, Lcom/cmplay/internalpush/a/a/b;->i:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/cmplay/internalpush/a/a/b;->i:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    cmp-long v0, v2, v4

    if-ltz v0, :cond_0

    .line 213
    :cond_5
    const-string v0, "zzb_img"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u901a\u77e5 \uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    if-eqz v1, :cond_0

    invoke-static {}, Lcom/cmplay/internalpush/k;->a()Lcom/cmplay/internalpush/h;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/cmplay/internalpush/a/a/b;->i:Ljava/util/HashMap;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    invoke-static {}, Lcom/cmplay/internalpush/k;->a()Lcom/cmplay/internalpush/h;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/cmplay/internalpush/h;->a(I)V

    goto/16 :goto_0

    .line 200
    :cond_6
    const-string v1, "section_result_card"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 201
    const/4 v0, 0x2

    move v1, v0

    goto :goto_1

    .line 202
    :cond_7
    const-string v1, "section_setting_card"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 203
    const/4 v0, 0x3

    move v1, v0

    goto :goto_1

    .line 204
    :cond_8
    const-string v1, "section_family_popup"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v1

    if-eqz v1, :cond_9

    .line 205
    const/4 v0, 0x5

    move v1, v0

    goto :goto_1

    :cond_9
    move v1, v0

    goto :goto_1
.end method

.method public a(Ljava/lang/String;Ljava/util/ArrayList;Lcom/cmplay/internalpush/a/a/b$a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/cmplay/internalpush/a/a/b$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 115
    invoke-static {}, Lcom/cmplay/internalpush/ipc/IpcSpHelper;->getInstance()Lcom/cmplay/internalpush/ipc/IpcSpHelper;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Lcom/cmplay/internalpush/ipc/IpcSpHelper;->sp_removeSomeKey(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_6

    .line 120
    :cond_0
    const/4 v0, 0x0

    .line 121
    const-string v1, "open_screen_scene"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 122
    const/4 v0, 0x1

    .line 130
    :cond_1
    :goto_0
    invoke-static {}, Lcom/cmplay/internalpush/k;->a()Lcom/cmplay/internalpush/h;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 131
    iget-object v1, p0, Lcom/cmplay/internalpush/a/a/b;->i:Ljava/util/HashMap;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    invoke-static {}, Lcom/cmplay/internalpush/k;->a()Lcom/cmplay/internalpush/h;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/cmplay/internalpush/h;->a(I)V

    .line 161
    :cond_2
    :goto_1
    return-void

    .line 123
    :cond_3
    const-string v1, "section_result_card"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 124
    const/4 v0, 0x2

    goto :goto_0

    .line 125
    :cond_4
    const-string v1, "section_setting_card"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 126
    const/4 v0, 0x3

    goto :goto_0

    .line 127
    :cond_5
    const-string v1, "section_family_popup"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 128
    const/4 v0, 0x5

    goto :goto_0

    .line 138
    :cond_6
    new-instance v1, Ljava/util/ArrayList;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 139
    iget-object v2, p0, Lcom/cmplay/internalpush/a/a/b;->h:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    iget-object v1, p0, Lcom/cmplay/internalpush/a/a/b;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/cmplay/base/util/c/d;->a(Landroid/content/Context;)Lcom/cmplay/base/util/c/d;

    move-result-object v1

    new-instance v2, Lcom/cmplay/internalpush/a/a/b$2;

    invoke-direct {v2, p0, v0, p3, p1}, Lcom/cmplay/internalpush/a/a/b$2;-><init>(Lcom/cmplay/internalpush/a/a/b;Ljava/lang/String;Lcom/cmplay/internalpush/a/a/b$a;Ljava/lang/String;)V

    invoke-virtual {v1, p2, v2}, Lcom/cmplay/base/util/c/d;->a(Ljava/util/ArrayList;Lcom/cmplay/base/util/c/b;)V

    goto :goto_1
.end method

.method public b()V
    .locals 4

    .prologue
    .line 79
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/cmplay/internalpush/a/a/b;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/cmplay/internalpush/a/a/b;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmplay/internalpush/a/a/a;

    .line 81
    iget-object v2, p0, Lcom/cmplay/internalpush/a/a/b;->d:Landroid/os/Handler;

    new-instance v3, Lcom/cmplay/internalpush/a/a/b$1;

    invoke-direct {v3, p0, v0}, Lcom/cmplay/internalpush/a/a/b$1;-><init>(Lcom/cmplay/internalpush/a/a/b;Lcom/cmplay/internalpush/a/a/a;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 79
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 88
    :cond_0
    return-void
.end method
