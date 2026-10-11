.class public Lcom/cmplay/tile2/NullProvider;
.super Landroid/content/ContentProvider;
.source "NullProvider.java"


# static fields
.field private static a:Landroid/net/Uri;

.field private static b:Landroid/content/ContentProviderClient;

.field private static c:Ljava/lang/Object;

.field private static d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-string v0, "content://com.cmplay.tiles4.null_provider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/cmplay/tile2/NullProvider;->a:Landroid/net/Uri;

    .line 18
    const/4 v0, 0x0

    sput-object v0, Lcom/cmplay/tile2/NullProvider;->b:Landroid/content/ContentProviderClient;

    .line 19
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/cmplay/tile2/NullProvider;->c:Ljava/lang/Object;

    .line 20
    const/4 v0, 0x0

    sput-boolean v0, Lcom/cmplay/tile2/NullProvider;->d:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 36
    invoke-static {p0}, Lcom/cmplay/tile2/NullProvider;->c(Landroid/content/Context;)V

    .line 38
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 39
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/cmplay/tile2/NullProvider;->a:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    :goto_0
    return-void

    .line 40
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 44
    sget-object v1, Lcom/cmplay/tile2/NullProvider;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 46
    :try_start_0
    sget-object v0, Lcom/cmplay/tile2/NullProvider;->b:Landroid/content/ContentProviderClient;

    if-eqz v0, :cond_0

    .line 47
    sget-object v0, Lcom/cmplay/tile2/NullProvider;->b:Landroid/content/ContentProviderClient;

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 48
    const/4 v0, 0x0

    sput-object v0, Lcom/cmplay/tile2/NullProvider;->b:Landroid/content/ContentProviderClient;

    .line 49
    const/4 v0, 0x0

    sput-boolean v0, Lcom/cmplay/tile2/NullProvider;->d:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    :cond_0
    :goto_0
    :try_start_1
    monitor-exit v1

    .line 53
    return-void

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 51
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static c(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 23
    sget-object v1, Lcom/cmplay/tile2/NullProvider;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 24
    :try_start_0
    sget-boolean v0, Lcom/cmplay/tile2/NullProvider;->d:Z

    if-eqz v0, :cond_0

    .line 25
    monitor-exit v1

    .line 33
    :goto_0
    return-void

    .line 26
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/cmplay/tile2/NullProvider;->d:Z

    .line 28
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v0, v2, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-le v0, v2, :cond_2

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v0, v2, :cond_3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xa

    if-gt v0, v2, :cond_3

    .line 30
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/cmplay/tile2/NullProvider;->a:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0

    sput-object v0, Lcom/cmplay/tile2/NullProvider;->b:Landroid/content/ContentProviderClient;

    .line 32
    :cond_3
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 77
    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 67
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 72
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 62
    const/4 v0, 0x0

    return-object v0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 82
    const/4 v0, 0x0

    return v0
.end method
