.class public Lcom/duapps/ad/stats/i;
.super Ljava/lang/Object;
.source "ToolboxCacheManager.java"


# static fields
.field private static b:Lcom/duapps/ad/stats/i;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/duapps/ad/stats/i;->a:Landroid/content/Context;

    .line 38
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/duapps/ad/stats/i;
    .locals 3

    .prologue
    .line 30
    const-class v1, Lcom/duapps/ad/stats/i;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/duapps/ad/stats/i;->b:Lcom/duapps/ad/stats/i;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lcom/duapps/ad/stats/i;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/duapps/ad/stats/i;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/duapps/ad/stats/i;->b:Lcom/duapps/ad/stats/i;

    .line 33
    :cond_0
    sget-object v0, Lcom/duapps/ad/stats/i;->b:Lcom/duapps/ad/stats/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 30
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private b()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 117
    const-string v0, "ts<?"

    .line 118
    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 119
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x5265c00

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 122
    :try_start_0
    iget-object v1, p0, Lcom/duapps/ad/stats/i;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/duapps/ad/stats/i;->a:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/duapps/ad/stats/DuAdCacheProvider;->a(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "ts<?"

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :goto_0
    return-void

    .line 124
    :catch_0
    move-exception v0

    .line 125
    const-string v1, "ToolboxCacheMgr"

    const-string v2, "dumpTimeOutDatas() exception: "

    invoke-static {v1, v2, v0}, Lcom/duapps/ad/base/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/duapps/ad/base/j;
    .locals 10

    .prologue
    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 76
    new-instance v7, Lcom/duapps/ad/base/j;

    invoke-direct {v7}, Lcom/duapps/ad/base/j;-><init>()V

    .line 77
    iput-object p1, v7, Lcom/duapps/ad/base/j;->a:Ljava/lang/String;

    .line 78
    iput v1, v7, Lcom/duapps/ad/base/j;->c:I

    .line 80
    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_url"

    aput-object v0, v2, v1

    const-string v0, "pkg"

    aput-object v0, v2, v5

    const-string v0, "p_url"

    aput-object v0, v2, v4

    const-string v0, "type"

    aput-object v0, v2, v3

    .line 84
    const-string v3, "_url=? AND ts >?"

    .line 86
    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v1

    .line 88
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v8, 0x5265c00

    sub-long/2addr v0, v8

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    .line 91
    const-string v5, "ts DESC"

    .line 92
    const/4 v6, 0x0

    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/duapps/ad/stats/i;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/duapps/ad/stats/i;->a:Landroid/content/Context;

    const/4 v8, 0x1

    invoke-static {v1, v8}, Lcom/duapps/ad/stats/DuAdCacheProvider;->a(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 96
    if-eqz v1, :cond_0

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/duapps/ad/base/j;->a:Ljava/lang/String;

    .line 98
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/duapps/ad/base/j;->b:Ljava/lang/String;

    .line 99
    const/4 v0, 0x2

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/duapps/ad/base/j;->d:Ljava/lang/String;

    .line 100
    const/4 v0, 0x3

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v7, Lcom/duapps/ad/base/j;->c:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 105
    :cond_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 106
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 110
    :cond_1
    :goto_0
    return-object v7

    .line 102
    :catch_0
    move-exception v0

    move-object v1, v6

    .line 103
    :goto_1
    :try_start_2
    const-string v2, "ToolboxCacheMgr"

    const-string v3, "getParseResult() Exception: "

    invoke-static {v2, v3, v0}, Lcom/duapps/ad/base/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 105
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 106
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 105
    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_2
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_2

    .line 106
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 105
    :catchall_1
    move-exception v0

    goto :goto_2

    .line 102
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public a()V
    .locals 6

    .prologue
    .line 202
    iget-object v0, p0, Lcom/duapps/ad/stats/i;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/duapps/ad/base/m;->i(Landroid/content/Context;)J

    move-result-wide v0

    .line 204
    const-string v2, "ts<?"

    .line 205
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    .line 206
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v0, v4, v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    .line 209
    :try_start_0
    iget-object v0, p0, Lcom/duapps/ad/stats/i;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/duapps/ad/stats/i;->a:Landroid/content/Context;

    const/4 v3, 0x7

    invoke-static {v1, v3}, Lcom/duapps/ad/stats/DuAdCacheProvider;->a(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    const-string v3, "ts<?"

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 216
    :goto_0
    return-void

    .line 211
    :catch_0
    move-exception v0

    .line 212
    const-string v1, "ToolboxCacheMgr"

    const-string v2, "removePreparseCacheTimeOutDatas exception: "

    invoke-static {v1, v2, v0}, Lcom/duapps/ad/base/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 213
    :catch_1
    move-exception v0

    .line 214
    const-string v1, "ToolboxCacheMgr"

    const-string v2, "removePreparseCacheTimeOutDatas del exception: "

    invoke-static {v1, v2, v0}, Lcom/duapps/ad/base/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Lcom/duapps/ad/base/j;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 46
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 47
    const-string v1, "_url"

    iget-object v2, p1, Lcom/duapps/ad/base/j;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const-string v1, "pkg"

    iget-object v2, p1, Lcom/duapps/ad/base/j;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const-string v1, "p_url"

    iget-object v2, p1, Lcom/duapps/ad/base/j;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const-string v1, "type"

    iget v2, p1, Lcom/duapps/ad/base/j;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 51
    const-string v1, "ts"

    iget-wide v2, p1, Lcom/duapps/ad/base/j;->e:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 53
    const-string v1, "_url = ?"

    .line 54
    new-array v2, v6, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p1, Lcom/duapps/ad/base/j;->a:Ljava/lang/String;

    aput-object v4, v2, v3

    .line 58
    :try_start_0
    iget-object v3, p0, Lcom/duapps/ad/stats/i;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/duapps/ad/stats/i;->a:Landroid/content/Context;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/duapps/ad/stats/DuAdCacheProvider;->a(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4, v0, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 60
    if-ge v1, v6, :cond_0

    .line 61
    iget-object v1, p0, Lcom/duapps/ad/stats/i;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/duapps/ad/stats/i;->a:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/duapps/ad/stats/DuAdCacheProvider;->a(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 63
    :cond_0
    invoke-direct {p0}, Lcom/duapps/ad/stats/i;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :goto_0
    return-void

    .line 64
    :catch_0
    move-exception v0

    .line 65
    const-string v1, "ToolboxCacheMgr"

    const-string v2, "saveParseResult() exception: "

    invoke-static {v1, v2, v0}, Lcom/duapps/ad/base/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)I
    .locals 10

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 130
    .line 131
    new-array v2, v5, [Ljava/lang/String;

    const-string v0, "type"

    aput-object v0, v2, v6

    .line 134
    const-string v3, "_url=? AND ts >?"

    .line 136
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    aput-object p1, v4, v6

    .line 138
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v8, 0x5265c00

    sub-long/2addr v0, v8

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    .line 141
    const-string v5, "ts DESC"

    .line 142
    const/4 v7, 0x0

    .line 144
    :try_start_0
    iget-object v0, p0, Lcom/duapps/ad/stats/i;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/duapps/ad/stats/i;->a:Landroid/content/Context;

    const/4 v8, 0x1

    invoke-static {v1, v8}, Lcom/duapps/ad/stats/DuAdCacheProvider;->a(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 146
    if-eqz v1, :cond_3

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 147
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v6

    move v0, v6

    .line 152
    :goto_0
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 153
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 157
    :cond_0
    :goto_1
    return v0

    .line 149
    :catch_0
    move-exception v0

    move-object v1, v7

    .line 150
    :goto_2
    :try_start_2
    const-string v2, "ToolboxCacheMgr"

    const-string v3, "getParseResultType() exception: "

    invoke-static {v2, v3, v0}, Lcom/duapps/ad/base/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 152
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 153
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move v0, v6

    goto :goto_1

    .line 152
    :catchall_0
    move-exception v0

    move-object v1, v7

    :goto_3
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_1

    .line 153
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0

    .line 152
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 149
    :catch_1
    move-exception v0

    goto :goto_2

    :cond_2
    move v0, v6

    goto :goto_1

    :cond_3
    move v0, v6

    goto :goto_0
.end method

.method public b(Landroid/content/Context;)V
    .locals 9

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 233
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "pkg"

    aput-object v0, v2, v6

    .line 234
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 237
    :try_start_0
    iget-object v0, p0, Lcom/duapps/ad/stats/i;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/duapps/ad/stats/i;->a:Landroid/content/Context;

    const/4 v3, 0x7

    invoke-static {v1, v3}, Lcom/duapps/ad/stats/DuAdCacheProvider;->a(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 239
    if-eqz v1, :cond_0

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 241
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 242
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 248
    :cond_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 249
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 253
    :cond_1
    :goto_0
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 254
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 255
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 256
    if-eqz v0, :cond_5

    .line 257
    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v2

    .line 258
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 259
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 260
    if-eqz v1, :cond_3

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 261
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 245
    :catch_0
    move-exception v0

    move-object v1, v7

    .line 246
    :goto_2
    :try_start_2
    const-string v2, "ToolboxCacheMgr"

    const-string v3, "getParseResult() Exception: "

    invoke-static {v2, v3, v0}, Lcom/duapps/ad/base/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 248
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 249
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 248
    :catchall_0
    move-exception v0

    move-object v1, v7

    :goto_3
    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_4

    .line 249
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0

    .line 266
    :cond_5
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 267
    const-string v0, "pkg IN ("

    move v1, v6

    move-object v2, v0

    .line 268
    :goto_4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_7

    .line 269
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 270
    if-nez v1, :cond_6

    .line 271
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 268
    :goto_5
    add-int/lit8 v1, v1, 0x1

    move-object v2, v0

    goto :goto_4

    .line 273
    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ",\'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 276
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 279
    :try_start_3
    iget-object v1, p0, Lcom/duapps/ad/stats/i;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/duapps/ad/stats/i;->a:Landroid/content/Context;

    const/4 v3, 0x7

    invoke-static {v2, v3}, Lcom/duapps/ad/stats/DuAdCacheProvider;->a(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    .line 288
    :cond_8
    :goto_6
    return-void

    .line 281
    :catch_1
    move-exception v0

    .line 282
    const-string v1, "ToolboxCacheMgr"

    const-string v2, "removePreparseCachePackageInstalledDatas exception: "

    invoke-static {v1, v2, v0}, Lcom/duapps/ad/base/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    .line 283
    :catch_2
    move-exception v0

    .line 284
    const-string v1, "ToolboxCacheMgr"

    const-string v2, "removePreparseCachePackageInstalledDatas del exception: "

    invoke-static {v1, v2, v0}, Lcom/duapps/ad/base/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    .line 248
    :catchall_1
    move-exception v0

    goto/16 :goto_3

    .line 245
    :catch_3
    move-exception v0

    goto/16 :goto_2
.end method

.method public b(Lcom/duapps/ad/base/j;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 342
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 343
    const-string v1, "_url"

    iget-object v2, p1, Lcom/duapps/ad/base/j;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    const-string v1, "pkg"

    iget-object v2, p1, Lcom/duapps/ad/base/j;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    const-string v1, "p_url"

    iget-object v2, p1, Lcom/duapps/ad/base/j;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    const-string v1, "type"

    iget v2, p1, Lcom/duapps/ad/base/j;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 347
    const-string v1, "ts"

    iget-wide v2, p1, Lcom/duapps/ad/base/j;->e:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 349
    const-string v1, "_url = ?"

    .line 350
    new-array v2, v6, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p1, Lcom/duapps/ad/base/j;->a:Ljava/lang/String;

    aput-object v4, v2, v3

    .line 354
    :try_start_0
    iget-object v3, p0, Lcom/duapps/ad/stats/i;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/duapps/ad/stats/i;->a:Landroid/content/Context;

    const/4 v5, 0x7

    .line 355
    invoke-static {v4, v5}, Lcom/duapps/ad/stats/DuAdCacheProvider;->a(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v4

    .line 354
    invoke-virtual {v3, v4, v0, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 357
    if-ge v1, v6, :cond_0

    .line 358
    iget-object v1, p0, Lcom/duapps/ad/stats/i;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/duapps/ad/stats/i;->a:Landroid/content/Context;

    const/4 v3, 0x7

    .line 359
    invoke-static {v2, v3}, Lcom/duapps/ad/stats/DuAdCacheProvider;->a(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v2

    .line 358
    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 365
    :cond_0
    :goto_0
    return-void

    .line 362
    :catch_0
    move-exception v0

    .line 363
    const-string v1, "ToolboxCacheMgr"

    const-string v2, "saveParseResult() exception: "

    invoke-static {v1, v2, v0}, Lcom/duapps/ad/base/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public c(Ljava/lang/String;)I
    .locals 10

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 166
    iget-object v0, p0, Lcom/duapps/ad/stats/i;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/duapps/ad/base/m;->i(Landroid/content/Context;)J

    move-result-wide v0

    .line 169
    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "type"

    aput-object v3, v2, v6

    .line 172
    const-string v3, "pkg=? AND ts >?"

    .line 174
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v6

    .line 176
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v0, v8, v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    .line 179
    const-string v5, "ts DESC"

    .line 180
    const/4 v7, 0x0

    .line 182
    :try_start_0
    iget-object v0, p0, Lcom/duapps/ad/stats/i;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/duapps/ad/stats/i;->a:Landroid/content/Context;

    const/4 v8, 0x7

    invoke-static {v1, v8}, Lcom/duapps/ad/stats/DuAdCacheProvider;->a(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 184
    if-eqz v1, :cond_3

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 185
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v6

    move v0, v6

    .line 190
    :goto_0
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 191
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 195
    :cond_0
    :goto_1
    return v0

    .line 187
    :catch_0
    move-exception v0

    move-object v1, v7

    .line 188
    :goto_2
    :try_start_2
    const-string v2, "ToolboxCacheMgr"

    const-string v3, "getParseResultType() exception: "

    invoke-static {v2, v3, v0}, Lcom/duapps/ad/base/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 190
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 191
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move v0, v6

    goto :goto_1

    .line 190
    :catchall_0
    move-exception v0

    move-object v1, v7

    :goto_3
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_1

    .line 191
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0

    .line 190
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 187
    :catch_1
    move-exception v0

    goto :goto_2

    :cond_2
    move v0, v6

    goto :goto_1

    :cond_3
    move v0, v6

    goto :goto_0
.end method

.method public d(Ljava/lang/String;)Lcom/duapps/ad/base/j;
    .locals 10

    .prologue
    const/4 v8, 0x3

    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 297
    new-instance v7, Lcom/duapps/ad/base/j;

    invoke-direct {v7}, Lcom/duapps/ad/base/j;-><init>()V

    .line 298
    iput-object p1, v7, Lcom/duapps/ad/base/j;->b:Ljava/lang/String;

    .line 299
    iput v5, v7, Lcom/duapps/ad/base/j;->c:I

    .line 301
    iget-object v0, p0, Lcom/duapps/ad/stats/i;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/duapps/ad/base/m;->i(Landroid/content/Context;)J

    move-result-wide v0

    .line 303
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_url"

    aput-object v3, v2, v5

    const-string v3, "pkg"

    aput-object v3, v2, v6

    const-string v3, "p_url"

    aput-object v3, v2, v4

    const-string v3, "type"

    aput-object v3, v2, v8

    .line 307
    const-string v3, "pkg=? AND ts >?"

    .line 309
    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v5

    .line 311
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v0, v8, v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    .line 314
    const-string v5, "ts DESC"

    .line 315
    const/4 v6, 0x0

    .line 317
    :try_start_0
    iget-object v0, p0, Lcom/duapps/ad/stats/i;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/duapps/ad/stats/i;->a:Landroid/content/Context;

    const/4 v8, 0x7

    invoke-static {v1, v8}, Lcom/duapps/ad/stats/DuAdCacheProvider;->a(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 319
    if-eqz v1, :cond_0

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 320
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/duapps/ad/base/j;->a:Ljava/lang/String;

    .line 321
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/duapps/ad/base/j;->b:Ljava/lang/String;

    .line 322
    const/4 v0, 0x2

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/duapps/ad/base/j;->d:Ljava/lang/String;

    .line 323
    const/4 v0, 0x3

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v7, Lcom/duapps/ad/base/j;->c:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 328
    :cond_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 329
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 333
    :cond_1
    :goto_0
    return-object v7

    .line 325
    :catch_0
    move-exception v0

    move-object v1, v6

    .line 326
    :goto_1
    :try_start_2
    const-string v2, "ToolboxCacheMgr"

    const-string v3, "getParseResult() Exception: "

    invoke-static {v2, v3, v0}, Lcom/duapps/ad/base/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 328
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 329
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 328
    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_2
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_2

    .line 329
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 328
    :catchall_1
    move-exception v0

    goto :goto_2

    .line 325
    :catch_1
    move-exception v0

    goto :goto_1
.end method
