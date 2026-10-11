.class public final Lcom/cmcm/orion/picks/a/a/j;
.super Ljava/lang/Object;
.source "MarketStorage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmcm/orion/picks/a/a/j$a;
    }
.end annotation


# static fields
.field private static a:Lcom/cmcm/orion/picks/a/a/j;


# instance fields
.field private b:Lcom/cmcm/orion/picks/a/a/j$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lcom/cmcm/orion/picks/a/a/j;

    invoke-direct {v0}, Lcom/cmcm/orion/picks/a/a/j;-><init>()V

    sput-object v0, Lcom/cmcm/orion/picks/a/a/j;->a:Lcom/cmcm/orion/picks/a/a/j;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lcom/cmcm/orion/picks/a/a/j$a;

    invoke-static {}, Lcom/cmcm/orion/adsdk/e;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/cmcm/orion/picks/a/a/j$a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cmcm/orion/picks/a/a/j;->b:Lcom/cmcm/orion/picks/a/a/j$a;

    .line 26
    return-void
.end method

.method public static a()Lcom/cmcm/orion/picks/a/a/j;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/cmcm/orion/picks/a/a/j;->a:Lcom/cmcm/orion/picks/a/a/j;

    return-object v0
.end method

.method private static a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 84
    .line 86
    :try_start_0
    const-string v3, "SELECT * FROM sqlite_master WHERE type=\'table\' AND name=\'%s\';"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 87
    if-eqz v2, :cond_1

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-lez v3, :cond_1

    .line 91
    :goto_0
    if-eqz v2, :cond_0

    .line 92
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 95
    :cond_0
    :goto_1
    return v0

    :cond_1
    move v0, v1

    .line 87
    goto :goto_0

    .line 91
    :catch_0
    move-exception v0

    move-object v0, v2

    :goto_2
    if-eqz v0, :cond_2

    .line 92
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    move v0, v1

    goto :goto_1

    .line 91
    :catchall_0
    move-exception v0

    if-eqz v2, :cond_3

    .line 92
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 91
    :catch_1
    move-exception v0

    move-object v0, v2

    goto :goto_2
.end method

.method private b()Landroid/database/sqlite/SQLiteDatabase;
    .locals 2

    .prologue
    .line 353
    const/4 v0, 0x0

    .line 355
    :try_start_0
    iget-object v1, p0, Lcom/cmcm/orion/picks/a/a/j;->b:Lcom/cmcm/orion/picks/a/a/j$a;

    invoke-virtual {v1}, Lcom/cmcm/orion/picks/a/a/j$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 358
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;Ljava/util/List;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/cmcm/orion/picks/a/a/a;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 99
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/cmcm/orion/picks/a/a/j;->b()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v2

    .line 100
    if-nez v2, :cond_0

    .line 101
    const/4 v1, -0x1

    .line 123
    :goto_0
    monitor-exit p0

    return v1

    .line 103
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "tbl_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    .line 105
    const/4 v1, 0x0

    .line 107
    :try_start_2
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 108
    invoke-static {v2, v3}, Lcom/cmcm/orion/picks/a/a/j$a;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 109
    invoke-static {v2, v3}, Lcom/cmcm/orion/picks/a/a/b;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 110
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmcm/orion/picks/a/a/a;

    .line 111
    const-string v5, ""

    invoke-static {v0, p1}, Lcom/cmcm/orion/picks/a/a/b;->a(Lcom/cmcm/orion/picks/a/a/a;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {v2, v3, v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-lez v0, :cond_2

    .line 112
    add-int/lit8 v0, v1, 0x1

    :goto_2
    move v1, v0

    .line 114
    goto :goto_1

    .line 115
    :cond_1
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 119
    :try_start_3
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 122
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 119
    :try_start_4
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    .line 122
    :catch_2
    move-exception v0

    goto :goto_0

    .line 118
    :catchall_0
    move-exception v0

    .line 119
    :try_start_5
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 121
    :goto_3
    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 99
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_3
    move-exception v1

    goto :goto_3

    :cond_2
    move v0, v1

    goto :goto_2
.end method

.method public final declared-synchronized a(Ljava/lang/String;Lcom/cmcm/orion/picks/a/a/m;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/cmcm/orion/picks/a/a/m;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/cmcm/orion/picks/a/a/a;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 255
    monitor-enter p0

    :try_start_0
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 256
    invoke-direct {p0}, Lcom/cmcm/orion/picks/a/a/j;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 257
    if-nez v0, :cond_0

    .line 258
    const/16 v0, 0x6d

    invoke-static {p2, v0}, Lcom/cmcm/orion/picks/a/a/m;->a(Lcom/cmcm/orion/picks/a/a/m;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v8

    .line 284
    :goto_0
    monitor-exit p0

    return-object v0

    .line 262
    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "tbl_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 263
    invoke-static {v0, v1}, Lcom/cmcm/orion/picks/a/a/j;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 264
    const/16 v0, 0x6e

    invoke-static {p2, v0}, Lcom/cmcm/orion/picks/a/a/m;->a(Lcom/cmcm/orion/picks/a/a/m;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v8

    .line 265
    goto :goto_0

    .line 269
    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :try_start_2
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v0

    .line 270
    if-eqz v0, :cond_3

    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_3

    .line 271
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 273
    :cond_2
    invoke-static {v0}, Lcom/cmcm/orion/picks/a/a/b;->a(Landroid/database/Cursor;)Lcom/cmcm/orion/picks/a/a/a;

    move-result-object v1

    .line 274
    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 275
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result v1

    if-nez v1, :cond_2

    .line 280
    :cond_3
    if-eqz v0, :cond_4

    .line 281
    :try_start_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_4
    :goto_1
    move-object v0, v8

    .line 284
    goto :goto_0

    .line 278
    :catch_0
    move-exception v0

    move-object v0, v9

    :goto_2
    const/16 v1, 0x6f

    :try_start_5
    invoke-static {p2, v1}, Lcom/cmcm/orion/picks/a/a/m;->a(Lcom/cmcm/orion/picks/a/a/m;I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 280
    if-eqz v0, :cond_4

    .line 281
    :try_start_6
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 255
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 280
    :catchall_1
    move-exception v0

    :goto_3
    if-eqz v9, :cond_5

    .line 281
    :try_start_7
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 280
    :catchall_2
    move-exception v1

    move-object v9, v0

    move-object v0, v1

    goto :goto_3

    .line 278
    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method public final declared-synchronized a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 216
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "tbl_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 218
    invoke-direct {p0}, Lcom/cmcm/orion/picks/a/a/j;->b()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 219
    if-nez v1, :cond_0

    .line 224
    :goto_0
    monitor-exit p0

    return-void

    .line 223
    :cond_0
    :try_start_1
    invoke-static {v1, v0}, Lcom/cmcm/orion/picks/a/a/j$a;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 216
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/lang/String;Lcom/cmcm/orion/picks/a/a/a;)V
    .locals 7

    .prologue
    .line 157
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/cmcm/orion/picks/a/a/j;->b()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v2

    .line 159
    if-nez v2, :cond_1

    .line 179
    if-eqz v2, :cond_0

    .line 181
    :try_start_1
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 188
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 162
    :cond_1
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "tbl_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 163
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 165
    invoke-virtual {p2}, Lcom/cmcm/orion/picks/a/a/a;->n()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lcom/cmcm/orion/picks/a/a/a;->n()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 166
    invoke-virtual {p2}, Lcom/cmcm/orion/picks/a/a/a;->n()Ljava/lang/String;

    move-result-object v1

    .line 167
    const-string v0, "des"

    .line 172
    :goto_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v4

    if-eqz v4, :cond_4

    .line 179
    :cond_2
    if-eqz v2, :cond_0

    .line 181
    :try_start_3
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    .line 169
    :cond_3
    :try_start_4
    invoke-virtual {p2}, Lcom/cmcm/orion/picks/a/a/a;->l()Ljava/lang/String;

    move-result-object v1

    .line 170
    const-string v0, "pkg"

    goto :goto_1

    .line 175
    :cond_4
    invoke-static {p2, p1}, Lcom/cmcm/orion/picks/a/a/b;->a(Lcom/cmcm/orion/picks/a/a/a;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " = ?"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-virtual {v2, v3, v4, v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 176
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 179
    if-eqz v2, :cond_0

    .line 181
    :try_start_5
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    .line 184
    :catch_1
    move-exception v0

    goto :goto_0

    .line 179
    :catch_2
    move-exception v0

    if-eqz v2, :cond_0

    .line 181
    :try_start_6
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_0

    .line 184
    :catch_3
    move-exception v0

    goto :goto_0

    .line 179
    :catchall_0
    move-exception v0

    if-eqz v2, :cond_5

    .line 181
    :try_start_7
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 184
    :cond_5
    :goto_2
    :try_start_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 157
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_4
    move-exception v0

    goto :goto_0

    :catch_5
    move-exception v1

    goto :goto_2
.end method

.method public final declared-synchronized b(Ljava/lang/String;)I
    .locals 10

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 228
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/cmcm/orion/picks/a/a/j;->b()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 229
    if-nez v0, :cond_1

    move v0, v8

    .line 251
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 232
    :cond_1
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "tbl_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 233
    invoke-static {v0, v1}, Lcom/cmcm/orion/picks/a/a/j;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    move v0, v8

    .line 234
    goto :goto_0

    .line 238
    :cond_2
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    .line 239
    const-string v3, "_id"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 241
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :try_start_2
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v1

    .line 242
    if-eqz v1, :cond_3

    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 243
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result v0

    .line 247
    if-eqz v1, :cond_0

    .line 248
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 228
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 247
    :cond_3
    if-eqz v1, :cond_4

    .line 248
    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    :goto_1
    move v0, v8

    .line 251
    goto :goto_0

    .line 247
    :catch_0
    move-exception v0

    move-object v0, v9

    :goto_2
    if-eqz v0, :cond_4

    .line 248
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 247
    :catchall_1
    move-exception v0

    move-object v1, v9

    :goto_3
    if-eqz v1, :cond_5

    .line 248
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 247
    :catchall_2
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_2
.end method

.method public final declared-synchronized b(Ljava/lang/String;Ljava/util/List;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/cmcm/orion/picks/a/a/a;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 128
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/cmcm/orion/picks/a/a/j;->b()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v2

    .line 129
    if-nez v2, :cond_0

    .line 130
    const/4 v1, -0x1

    .line 153
    :goto_0
    monitor-exit p0

    return v1

    .line 132
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "tbl_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    .line 134
    const/4 v1, 0x0

    .line 136
    :try_start_2
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 138
    invoke-static {v2, v3}, Lcom/cmcm/orion/picks/a/a/j$a;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 139
    invoke-static {v2, v3}, Lcom/cmcm/orion/picks/a/a/b;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 140
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmcm/orion/picks/a/a/a;

    .line 141
    const-string v5, ""

    invoke-static {v0, p1}, Lcom/cmcm/orion/picks/a/a/b;->a(Lcom/cmcm/orion/picks/a/a/a;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {v2, v3, v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-lez v0, :cond_2

    .line 142
    add-int/lit8 v0, v1, 0x1

    :goto_2
    move v1, v0

    .line 144
    goto :goto_1

    .line 145
    :cond_1
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 149
    :try_start_3
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 152
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 149
    :try_start_4
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    .line 152
    :catch_2
    move-exception v0

    goto :goto_0

    .line 148
    :catchall_0
    move-exception v0

    .line 149
    :try_start_5
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 151
    :goto_3
    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 128
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_3
    move-exception v1

    goto :goto_3

    :cond_2
    move v0, v1

    goto :goto_2
.end method

.method public final declared-synchronized b(Ljava/lang/String;Lcom/cmcm/orion/picks/a/a/a;)V
    .locals 6

    .prologue
    .line 191
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/cmcm/orion/picks/a/a/j;->b()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 193
    if-nez v1, :cond_1

    .line 204
    if-eqz v1, :cond_0

    .line 206
    :try_start_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 213
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 196
    :cond_1
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "tbl_"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 197
    const/4 v2, 0x1

    invoke-virtual {p2, v2}, Lcom/cmcm/orion/picks/a/a/a;->a(Z)V

    .line 198
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 199
    const-string v2, "pkg = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p2}, Lcom/cmcm/orion/picks/a/a/a;->l()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 200
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "db end to delete cpm, title:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/cmcm/orion/picks/a/a/a;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "num:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 202
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 204
    if-eqz v1, :cond_0

    .line 206
    :try_start_3
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 209
    :catch_0
    move-exception v0

    goto :goto_0

    .line 204
    :catch_1
    move-exception v0

    if-eqz v1, :cond_0

    .line 206
    :try_start_4
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    .line 209
    :catch_2
    move-exception v0

    goto :goto_0

    .line 204
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_2

    .line 206
    :try_start_5
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 209
    :cond_2
    :goto_1
    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 191
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_3
    move-exception v0

    goto :goto_0

    :catch_4
    move-exception v1

    goto :goto_1
.end method
