.class public final Lcom/mopub/nativesdk/a/d;
.super Ljava/lang/Object;
.source "SDKDBHelper.java"


# static fields
.field public static a:Z

.field private static c:I

.field private static d:Lcom/mopub/nativesdk/a/d;

.field private static f:Landroid/database/sqlite/SQLiteDatabase;

.field private static g:Landroid/database/sqlite/SQLiteDatabase;

.field private static h:Landroid/content/Context;


# instance fields
.field private b:Ljava/lang/String;

.field private e:Lcom/mopub/nativesdk/a/e;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 18
    const/16 v0, 0x29d4

    sput v0, Lcom/mopub/nativesdk/a/d;->c:I

    .line 25
    sput-object v1, Lcom/mopub/nativesdk/a/d;->f:Landroid/database/sqlite/SQLiteDatabase;

    .line 26
    sput-object v1, Lcom/mopub/nativesdk/a/d;->g:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string v0, "SDKDBHelper"

    iput-object v0, p0, Lcom/mopub/nativesdk/a/d;->b:Ljava/lang/String;

    .line 32
    sput-object p1, Lcom/mopub/nativesdk/a/d;->h:Landroid/content/Context;

    .line 33
    new-instance v0, Lcom/mopub/nativesdk/a/e;

    sget-object v1, Lcom/mopub/nativesdk/a/d;->h:Landroid/content/Context;

    const-string v2, "arrkii.native.sdk.db"

    sget v3, Lcom/mopub/nativesdk/a/d;->c:I

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/mopub/nativesdk/a/e;-><init>(Lcom/mopub/nativesdk/a/d;Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mopub/nativesdk/a/d;->e:Lcom/mopub/nativesdk/a/e;

    .line 34
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/mopub/nativesdk/a/d;
    .locals 2

    .prologue
    .line 39
    const-class v1, Lcom/mopub/nativesdk/a/d;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/mopub/nativesdk/a/d;->d:Lcom/mopub/nativesdk/a/d;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcom/mopub/nativesdk/a/d;

    invoke-direct {v0, p0}, Lcom/mopub/nativesdk/a/d;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mopub/nativesdk/a/d;->d:Lcom/mopub/nativesdk/a/d;

    .line 42
    :cond_0
    sget-object v0, Lcom/mopub/nativesdk/a/d;->d:Lcom/mopub/nativesdk/a/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/mopub/nativesdk/a/d;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 14
    .line 1080
    :try_start_0
    const-string v0, "CREATE TABLE IF NOT EXISTS rushrefer (packagename TEXT,refer TEXT,starttime INTEGER,campaignid INTEGER,PRIMARY KEY (packagename))"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1084
    :goto_0
    return-void

    .line 14
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/mopub/nativesdk/a/d;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 14
    .line 1089
    :try_start_0
    const-string v0, "DROP TABLE IF EXISTS \'rushrefer\'"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1093
    :goto_0
    return-void

    .line 14
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public final declared-synchronized a()Landroid/database/sqlite/SQLiteDatabase;
    .locals 4

    .prologue
    .line 46
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/mopub/nativesdk/a/d;->f:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 47
    sget-object v0, Lcom/mopub/nativesdk/a/d;->f:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    :goto_0
    monitor-exit p0

    return-object v0

    .line 50
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/mopub/nativesdk/a/d;->e:Lcom/mopub/nativesdk/a/e;

    if-nez v0, :cond_1

    .line 51
    new-instance v0, Lcom/mopub/nativesdk/a/e;

    sget-object v1, Lcom/mopub/nativesdk/a/d;->h:Landroid/content/Context;

    const-string v2, "arrkii.native.sdk.db"

    sget v3, Lcom/mopub/nativesdk/a/d;->c:I

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/mopub/nativesdk/a/e;-><init>(Lcom/mopub/nativesdk/a/d;Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mopub/nativesdk/a/d;->e:Lcom/mopub/nativesdk/a/e;

    .line 53
    :cond_1
    iget-object v0, p0, Lcom/mopub/nativesdk/a/d;->e:Lcom/mopub/nativesdk/a/e;

    invoke-virtual {v0}, Lcom/mopub/nativesdk/a/e;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sput-object v0, Lcom/mopub/nativesdk/a/d;->f:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    :goto_1
    :try_start_2
    sget-object v0, Lcom/mopub/nativesdk/a/d;->f:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_0

    .line 54
    :catch_0
    move-exception v0

    .line 55
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 46
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()Landroid/database/sqlite/SQLiteDatabase;
    .locals 4

    .prologue
    .line 62
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/mopub/nativesdk/a/d;->g:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 63
    sget-object v0, Lcom/mopub/nativesdk/a/d;->g:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    :goto_0
    monitor-exit p0

    return-object v0

    .line 66
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/mopub/nativesdk/a/d;->e:Lcom/mopub/nativesdk/a/e;

    if-nez v0, :cond_1

    .line 67
    new-instance v0, Lcom/mopub/nativesdk/a/e;

    sget-object v1, Lcom/mopub/nativesdk/a/d;->h:Landroid/content/Context;

    const-string v2, "arrkii.native.sdk.db"

    sget v3, Lcom/mopub/nativesdk/a/d;->c:I

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/mopub/nativesdk/a/e;-><init>(Lcom/mopub/nativesdk/a/d;Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mopub/nativesdk/a/d;->e:Lcom/mopub/nativesdk/a/e;

    .line 69
    :cond_1
    iget-object v0, p0, Lcom/mopub/nativesdk/a/d;->e:Lcom/mopub/nativesdk/a/e;

    invoke-virtual {v0}, Lcom/mopub/nativesdk/a/e;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sput-object v0, Lcom/mopub/nativesdk/a/d;->g:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    :goto_1
    :try_start_2
    sget-object v0, Lcom/mopub/nativesdk/a/d;->g:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_0

    .line 70
    :catch_0
    move-exception v0

    .line 71
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 62
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
