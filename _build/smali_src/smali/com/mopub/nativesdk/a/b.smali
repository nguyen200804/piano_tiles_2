.class public final Lcom/mopub/nativesdk/a/b;
.super Lcom/mopub/nativesdk/a/a;
.source "RRDao.java"


# static fields
.field private static b:Lcom/mopub/nativesdk/a/b;


# direct methods
.method private constructor <init>(Lcom/mopub/nativesdk/a/d;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/mopub/nativesdk/a/a;-><init>(Lcom/mopub/nativesdk/a/d;)V

    .line 22
    return-void
.end method

.method public static a(Lcom/mopub/nativesdk/a/d;)Lcom/mopub/nativesdk/a/b;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/mopub/nativesdk/a/b;->b:Lcom/mopub/nativesdk/a/b;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lcom/mopub/nativesdk/a/b;

    invoke-direct {v0, p0}, Lcom/mopub/nativesdk/a/b;-><init>(Lcom/mopub/nativesdk/a/d;)V

    sput-object v0, Lcom/mopub/nativesdk/a/b;->b:Lcom/mopub/nativesdk/a/b;

    .line 27
    :cond_0
    sget-object v0, Lcom/mopub/nativesdk/a/b;->b:Lcom/mopub/nativesdk/a/b;

    return-object v0
.end method

.method private declared-synchronized a(Landroid/database/Cursor;)Lcom/mopub/nativesdk/core/x;
    .locals 4

    .prologue
    .line 123
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/mopub/nativesdk/core/x;

    invoke-direct {v0}, Lcom/mopub/nativesdk/core/x;-><init>()V

    .line 124
    const-string v1, "packagename"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mopub/nativesdk/core/x;->a(Ljava/lang/String;)V

    .line 125
    const-string v1, "refer"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mopub/nativesdk/core/x;->b(Ljava/lang/String;)V

    .line 126
    const-string v1, "starttime"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/mopub/nativesdk/core/x;->a(J)V

    .line 127
    const-string v1, "campaignid"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/mopub/nativesdk/core/x;->b(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    monitor-exit p0

    return-object v0

    .line 123
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized c(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 101
    monitor-enter p0

    .line 103
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SELECT packagename FROM rushrefer WHERE packagename=\'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 105
    iget-object v3, p0, Lcom/mopub/nativesdk/a/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 106
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_2

    .line 107
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 117
    if-eqz v1, :cond_0

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 108
    :cond_0
    const/4 v0, 0x1

    .line 119
    :cond_1
    :goto_0
    monitor-exit p0

    return v0

    .line 110
    :cond_2
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 117
    if-eqz v1, :cond_1

    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 101
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 117
    :catch_0
    move-exception v2

    if-eqz v1, :cond_1

    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_1
    move-exception v0

    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;)Lcom/mopub/nativesdk/core/x;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 31
    monitor-enter p0

    .line 33
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SELECT * FROM rushrefer WHERE packagename = \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 34
    iget-object v2, p0, Lcom/mopub/nativesdk/a/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 35
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 36
    invoke-direct {p0, v1}, Lcom/mopub/nativesdk/a/b;->a(Landroid/database/Cursor;)Lcom/mopub/nativesdk/core/x;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v0

    .line 44
    if-eqz v1, :cond_0

    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 46
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 39
    :cond_1
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 44
    if-eqz v1, :cond_0

    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 31
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 44
    :catch_0
    move-exception v1

    move-object v1, v0

    :goto_1
    if-eqz v1, :cond_0

    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_1
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_2
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_2
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method public final declared-synchronized a(Lcom/mopub/nativesdk/core/x;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 85
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 86
    const-string v1, "packagename"

    invoke-virtual {p1}, Lcom/mopub/nativesdk/core/x;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const-string v1, "refer"

    invoke-virtual {p1}, Lcom/mopub/nativesdk/core/x;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string v1, "starttime"

    invoke-virtual {p1}, Lcom/mopub/nativesdk/core/x;->c()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 89
    const-string v1, "campaignid"

    invoke-virtual {p1}, Lcom/mopub/nativesdk/core/x;->d()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 91
    invoke-virtual {p1}, Lcom/mopub/nativesdk/core/x;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mopub/nativesdk/a/b;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "packagename = \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/mopub/nativesdk/core/x;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 93
    iget-object v2, p0, Lcom/mopub/nativesdk/a/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "rushrefer"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 97
    :goto_0
    invoke-virtual {p1}, Lcom/mopub/nativesdk/core/x;->a()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 95
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/mopub/nativesdk/a/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "rushrefer"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 85
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mopub/nativesdk/core/x;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 50
    monitor-enter p0

    .line 51
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    :try_start_1
    const-string v2, "SELECT * FROM rushrefer"

    .line 54
    iget-object v3, p0, Lcom/mopub/nativesdk/a/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 55
    :goto_0
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 56
    invoke-direct {p0, v0}, Lcom/mopub/nativesdk/a/b;->a(Landroid/database/Cursor;)Lcom/mopub/nativesdk/core/x;

    move-result-object v2

    .line 57
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 64
    :catch_0
    move-exception v2

    if-eqz v0, :cond_0

    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 66
    :cond_0
    :goto_1
    monitor-exit p0

    return-object v1

    .line 59
    :cond_1
    :try_start_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 64
    if-eqz v0, :cond_0

    :try_start_5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 64
    :catchall_1
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    :goto_2
    if-eqz v1, :cond_2

    :try_start_6
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_2
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_2
.end method

.method public final declared-synchronized b(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 71
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "packagename=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 72
    iget-object v1, p0, Lcom/mopub/nativesdk/a/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "rushrefer"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    :goto_0
    monitor-exit p0

    return-void

    .line 71
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 77
    :catch_0
    move-exception v0

    goto :goto_0
.end method
