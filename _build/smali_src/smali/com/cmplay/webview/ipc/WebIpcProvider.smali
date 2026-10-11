.class public Lcom/cmplay/webview/ipc/WebIpcProvider;
.super Landroid/content/ContentProvider;
.source "WebIpcProvider.java"


# static fields
.field public static a:Landroid/content/ContentProviderClient;

.field private static b:Ljava/lang/String;

.field private static c:Landroid/net/Uri;

.field private static d:I

.field private static e:Ljava/lang/Object;

.field private static f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/cmplay/webview/ipc/WebIpcProvider;->e:Ljava/lang/Object;

    .line 29
    const/4 v0, 0x0

    sput-boolean v0, Lcom/cmplay/webview/ipc/WebIpcProvider;->f:Z

    .line 30
    const/4 v0, 0x0

    sput-object v0, Lcom/cmplay/webview/ipc/WebIpcProvider;->a:Landroid/content/ContentProviderClient;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private a(ILandroid/content/ContentValues;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 87
    const-string v0, ""

    .line 88
    invoke-static {p1}, Lcom/cmplay/ipc/d;->a(I)Lcom/cmplay/ipc/b;

    move-result-object v1

    .line 89
    if-eqz v1, :cond_0

    .line 90
    invoke-virtual {p0}, Lcom/cmplay/webview/ipc/WebIpcProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/cmplay/ipc/b;->a(Landroid/content/Context;)V

    .line 91
    invoke-interface {v1, p2}, Lcom/cmplay/ipc/b;->a(Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object v0

    .line 93
    :cond_0
    return-object v0
.end method

.method public static a(Landroid/content/ContentValues;Lcom/cmplay/webview/ipc/a;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 103
    if-nez p1, :cond_0

    .line 104
    const-string v0, ""

    .line 130
    :goto_0
    return-object v0

    .line 106
    :cond_0
    if-nez p0, :cond_1

    .line 107
    new-instance p0, Landroid/content/ContentValues;

    invoke-direct {p0}, Landroid/content/ContentValues;-><init>()V

    .line 109
    :cond_1
    const-string v0, "ipc_id"

    invoke-interface {p1}, Lcom/cmplay/webview/ipc/a;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 110
    invoke-static {}, Lcom/cmplay/webview/ipc/WebIpcProvider;->a()V

    .line 111
    const/4 v0, 0x0

    .line 113
    :try_start_0
    invoke-static {}, Lcom/cmplay/webview/ipc/WebIpcProvider;->c()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/cmplay/webview/ipc/WebIpcProvider;->c:Landroid/net/Uri;

    invoke-virtual {v1, v2, p0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 121
    :goto_1
    const-string v1, "ly"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "web ipc invoke = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cmplay/util/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    if-eqz v0, :cond_4

    .line 123
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 124
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sget v2, Lcom/cmplay/webview/ipc/WebIpcProvider;->d:I

    if-gt v1, v2, :cond_3

    .line 125
    :cond_2
    const-string v0, ""

    goto :goto_0

    .line 114
    :catch_0
    move-exception v1

    .line 115
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_1

    .line 127
    :cond_3
    sget v1, Lcom/cmplay/webview/ipc/WebIpcProvider;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 130
    :cond_4
    const-string v0, ""

    goto :goto_0

    .line 118
    :catch_1
    move-exception v1

    goto :goto_1

    .line 116
    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method public static a()V
    .locals 4

    .prologue
    .line 134
    sget-object v1, Lcom/cmplay/webview/ipc/WebIpcProvider;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 135
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".ipc.web"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cmplay/webview/ipc/WebIpcProvider;->b:Ljava/lang/String;

    .line 136
    sget-boolean v0, Lcom/cmplay/webview/ipc/WebIpcProvider;->f:Z

    if-eqz v0, :cond_0

    .line 137
    monitor-exit v1

    .line 150
    :goto_0
    return-void

    .line 138
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/cmplay/webview/ipc/WebIpcProvider;->f:Z

    .line 139
    sget-object v0, Lcom/cmplay/webview/ipc/WebIpcProvider;->c:Landroid/net/Uri;

    if-nez v0, :cond_1

    .line 140
    sget-object v0, Lcom/cmplay/webview/ipc/WebIpcProvider;->b:Ljava/lang/String;

    .line 141
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/cmplay/webview/ipc/WebIpcProvider;->c:Landroid/net/Uri;

    .line 142
    sget-object v0, Lcom/cmplay/webview/ipc/WebIpcProvider;->c:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/cmplay/webview/ipc/WebIpcProvider;->d:I

    .line 144
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v0, v2, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-le v0, v2, :cond_3

    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v0, v2, :cond_4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xa

    if-gt v0, v2, :cond_4

    .line 146
    :cond_3
    invoke-static {}, Lcom/cmplay/webview/ipc/WebIpcProvider;->c()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/cmplay/webview/ipc/WebIpcProvider;->c:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0

    sput-object v0, Lcom/cmplay/webview/ipc/WebIpcProvider;->a:Landroid/content/ContentProviderClient;

    .line 147
    const-string v0, "ly"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sContentUri = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/cmplay/webview/ipc/WebIpcProvider;->c:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " s_cpClientFixer = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/cmplay/webview/ipc/WebIpcProvider;->a:Landroid/content/ContentProviderClient;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/cmplay/util/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    :cond_4
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static b()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 154
    :try_start_0
    sget-object v0, Lcom/cmplay/webview/ipc/WebIpcProvider;->a:Landroid/content/ContentProviderClient;

    if-eqz v0, :cond_0

    .line 155
    sget-object v0, Lcom/cmplay/webview/ipc/WebIpcProvider;->a:Landroid/content/ContentProviderClient;

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    :cond_0
    :goto_0
    sput-object v1, Lcom/cmplay/webview/ipc/WebIpcProvider;->a:Landroid/content/ContentProviderClient;

    .line 161
    sput-object v1, Lcom/cmplay/webview/ipc/WebIpcProvider;->c:Landroid/net/Uri;

    .line 162
    const/4 v0, 0x0

    sput-boolean v0, Lcom/cmplay/webview/ipc/WebIpcProvider;->f:Z

    .line 163
    return-void

    .line 157
    :catch_0
    move-exception v0

    .line 158
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static c()Landroid/content/ContentResolver;
    .locals 1

    .prologue
    .line 33
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
    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 49
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 55
    invoke-static {}, Lcom/cmplay/i/c;->e()V

    .line 56
    const-string v0, ""

    .line 57
    if-eqz p2, :cond_0

    .line 58
    const/4 v0, 0x2

    .line 59
    invoke-direct {p0, v0, p2}, Lcom/cmplay/webview/ipc/WebIpcProvider;->a(ILandroid/content/ContentValues;)Ljava/lang/String;

    move-result-object v0

    .line 60
    if-nez v0, :cond_0

    .line 61
    const-string v0, ""

    .line 64
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

    .line 66
    const-string v1, "ly"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "webipc provider insert = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cmplay/util/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/cmplay/webview/ipc/WebIpcProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/cmplay/i/c;->a(Landroid/content/Context;)V

    .line 39
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
    .line 44
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
    .line 77
    const/4 v0, 0x0

    return v0
.end method
