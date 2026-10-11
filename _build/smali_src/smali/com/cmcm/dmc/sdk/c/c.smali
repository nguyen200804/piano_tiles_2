.class public Lcom/cmcm/dmc/sdk/c/c;
.super Lcom/cmcm/dmc/sdk/c/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/cmcm/dmc/sdk/c/b",
        "<",
        "Lcom/cmcm/dmc/sdk/c/a/b;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cmcm/dmc/sdk/c/b;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private a(Ljava/lang/Long;)V
    .locals 4

    const-string v0, "receiver"

    invoke-static {v0}, Lcom/cmcm/dmc/sdk/a/k;->a(Ljava/lang/String;)Lcom/cmcm/dmc/sdk/a/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmcm/dmc/sdk/a/k;->c()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "config_music_last_added_time"

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private h()Ljava/lang/Long;
    .locals 2

    const-string v0, "receiver"

    invoke-static {v0}, Lcom/cmcm/dmc/sdk/a/k;->a(Ljava/lang/String;)Lcom/cmcm/dmc/sdk/a/k;

    move-result-object v0

    const-string v1, "config_music_last_added_time"

    invoke-virtual {v0, v1}, Lcom/cmcm/dmc/sdk/a/k;->c(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method synthetic a(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/cmcm/dmc/sdk/c/c;->b(Landroid/database/Cursor;)Lcom/cmcm/dmc/sdk/c/a/b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a()Ljava/util/List;
    .locals 1

    invoke-super {p0}, Lcom/cmcm/dmc/sdk/c/b;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/cmcm/dmc/sdk/c/a/b;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/cmcm/dmc/sdk/c/b;->a(Ljava/util/List;)V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/cmcm/dmc/sdk/c/a;

    iget-object v1, p0, Lcom/cmcm/dmc/sdk/c/c;->a:Landroid/content/Context;

    const-string v2, "music"

    invoke-direct {v0, v1, v2}, Lcom/cmcm/dmc/sdk/c/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/cmcm/dmc/sdk/c/a;->a(Ljava/util/List;)V

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmcm/dmc/sdk/c/a/b;

    invoke-virtual {v0}, Lcom/cmcm/dmc/sdk/c/a/b;->c()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cmcm/dmc/sdk/c/c;->a(Ljava/lang/Long;)V

    goto :goto_0
.end method

.method b(Landroid/database/Cursor;)Lcom/cmcm/dmc/sdk/c/a/b;
    .locals 4

    new-instance v0, Lcom/cmcm/dmc/sdk/c/a/b;

    invoke-direct {v0}, Lcom/cmcm/dmc/sdk/c/a/b;-><init>()V

    const-string v1, "_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/cmcm/dmc/sdk/c/a/b;->a(J)V

    const-string v1, "year"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/cmcm/dmc/sdk/c/a/b;->d(J)V

    const-string v1, "duration"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/cmcm/dmc/sdk/c/a/b;->e(J)V

    const-string v1, "_size"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/cmcm/dmc/sdk/c/a/b;->b(J)V

    const-string v1, "date_modified"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/cmcm/dmc/sdk/c/a/b;->f(J)V

    const-string v1, "date_added"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/cmcm/dmc/sdk/c/a/b;->c(J)V

    const-string v1, "title"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmcm/dmc/sdk/c/a/b;->c(Ljava/lang/String;)V

    const-string v1, "album"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmcm/dmc/sdk/c/a/b;->d(Ljava/lang/String;)V

    const-string v1, "artist"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmcm/dmc/sdk/c/a/b;->b(Ljava/lang/String;)V

    const-string v1, "_display_name"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmcm/dmc/sdk/c/a/b;->e(Ljava/lang/String;)V

    const-string v1, "_data"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmcm/dmc/sdk/c/a/b;->a(Ljava/lang/String;)V

    const-string v1, "mime_type"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmcm/dmc/sdk/c/a/b;->f(Ljava/lang/String;)V

    return-object v0
.end method

.method c()Landroid/net/Uri;
    .locals 1

    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method d()[Ljava/lang/String;
    .locals 3

    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "_display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "date_modified"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "_data"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "date_added"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "album"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "artist"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "year"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "_size"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "mime_type"

    aput-object v2, v0, v1

    return-object v0
.end method

.method e()Ljava/lang/String;
    .locals 1

    const-string v0, "mime_type=? or mime_type=? and date_added > ? and is_music > 0"

    return-object v0
.end method

.method f()[Ljava/lang/String;
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "audio/mpeg"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "audio/x-ms-wma"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/cmcm/dmc/sdk/c/c;->h()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0
.end method

.method g()Ljava/lang/String;
    .locals 1

    const-string v0, "date_modified desc limit 100"

    return-object v0
.end method
