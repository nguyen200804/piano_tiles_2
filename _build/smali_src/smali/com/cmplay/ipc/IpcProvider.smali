.class public Lcom/cmplay/ipc/IpcProvider;
.super Landroid/content/ContentProvider;
.source "IpcProvider.java"


# static fields
.field private static a:Landroid/net/Uri;

.field private static b:I

.field private static c:Ljava/lang/Object;

.field private static d:Z

.field private static e:Landroid/content/ContentProviderClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-string v0, "content://com.cmplay.tiles4.ipc_provider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/cmplay/ipc/IpcProvider;->a:Landroid/net/Uri;

    .line 19
    sget-object v0, Lcom/cmplay/ipc/IpcProvider;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/cmplay/ipc/IpcProvider;->b:I

    .line 21
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/cmplay/ipc/IpcProvider;->c:Ljava/lang/Object;

    .line 22
    const/4 v0, 0x0

    sput-boolean v0, Lcom/cmplay/ipc/IpcProvider;->d:Z

    .line 23
    const/4 v0, 0x0

    sput-object v0, Lcom/cmplay/ipc/IpcProvider;->e:Landroid/content/ContentProviderClient;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private a(ILandroid/content/ContentValues;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 94
    const-string v0, ""

    .line 95
    invoke-static {p1}, Lcom/cmplay/ipc/d;->a(I)Lcom/cmplay/ipc/b;

    move-result-object v1

    .line 96
    invoke-virtual {p0}, Lcom/cmplay/ipc/IpcProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/cmplay/ipc/b;->a(Landroid/content/Context;)V

    .line 97
    if-eqz v1, :cond_0

    .line 98
    invoke-interface {v1, p2}, Lcom/cmplay/ipc/b;->a(Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object v0

    .line 100
    :cond_0
    return-object v0
.end method

.method public static a(Landroid/content/ContentValues;Lcom/cmplay/ipc/c;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 110
    if-nez p1, :cond_0

    .line 111
    const-string v0, ""

    .line 143
    :goto_0
    return-object v0

    .line 113
    :cond_0
    if-nez p0, :cond_1

    .line 114
    new-instance p0, Landroid/content/ContentValues;

    invoke-direct {p0}, Landroid/content/ContentValues;-><init>()V

    .line 116
    :cond_1
    const-string v0, "ipc_id"

    invoke-interface {p1}, Lcom/cmplay/ipc/c;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 117
    invoke-static {}, Lcom/cmplay/ipc/IpcProvider;->a()V

    .line 118
    const/4 v0, 0x0

    .line 120
    :try_start_0
    invoke-static {}, Lcom/cmplay/ipc/IpcProvider;->b()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/cmplay/ipc/IpcProvider;->a:Landroid/net/Uri;

    invoke-virtual {v1, v2, p0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 135
    :goto_1
    if-eqz v0, :cond_4

    .line 136
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 137
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sget v2, Lcom/cmplay/ipc/IpcProvider;->b:I

    if-gt v1, v2, :cond_3

    .line 138
    :cond_2
    const-string v0, ""

    goto :goto_0

    .line 140
    :cond_3
    sget v1, Lcom/cmplay/ipc/IpcProvider;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 143
    :cond_4
    const-string v0, ""

    goto :goto_0

    .line 132
    :catch_0
    move-exception v1

    goto :goto_1

    .line 121
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public static a()V
    .locals 3

    .prologue
    .line 30
    sget-object v1, Lcom/cmplay/ipc/IpcProvider;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 31
    :try_start_0
    sget-boolean v0, Lcom/cmplay/ipc/IpcProvider;->d:Z

    if-eqz v0, :cond_0

    .line 32
    monitor-exit v1

    .line 40
    :goto_0
    return-void

    .line 33
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/cmplay/ipc/IpcProvider;->d:Z

    .line 35
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

    .line 37
    :cond_2
    invoke-static {}, Lcom/cmplay/ipc/IpcProvider;->b()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/cmplay/ipc/IpcProvider;->a:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0

    sput-object v0, Lcom/cmplay/ipc/IpcProvider;->e:Landroid/content/ContentProviderClient;

    .line 39
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

.method private static b()Landroid/content/ContentResolver;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 57
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 62
    invoke-static {}, Lcom/cmplay/i/c;->d()V

    .line 63
    const-string v0, ""

    .line 64
    if-eqz p2, :cond_0

    .line 65
    const-string v0, "ipc_id"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 66
    invoke-direct {p0, v0, p2}, Lcom/cmplay/ipc/IpcProvider;->a(ILandroid/content/ContentValues;)Ljava/lang/String;

    move-result-object v0

    .line 67
    if-nez v0, :cond_0

    .line 68
    const-string v0, ""

    .line 71
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 73
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/cmplay/ipc/IpcProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/cmplay/i/c;->a(Landroid/content/Context;)V

    .line 46
    const/4 v0, 0x1

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
    .line 52
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
    .line 84
    const/4 v0, 0x0

    return v0
.end method
