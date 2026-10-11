.class public Lcom/cmplay/base/util/webview/ipc/WebIpcProvider;
.super Landroid/content/ContentProvider;
.source "WebIpcProvider.java"


# static fields
.field private static IPC_PROVIDER_AUTH:Ljava/lang/String;

.field private static LENGTH_CONTENT_URI:I

.field private static sContentUri:Landroid/net/Uri;

.field private static s_LockFixedBug:Ljava/lang/Object;

.field private static s_bFixedSysBug:Z

.field public static s_cpClientFixer:Landroid/content/ContentProviderClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/cmplay/base/util/webview/ipc/WebIpcProvider;->s_LockFixedBug:Ljava/lang/Object;

    .line 28
    const/4 v0, 0x0

    sput-boolean v0, Lcom/cmplay/base/util/webview/ipc/WebIpcProvider;->s_bFixedSysBug:Z

    .line 29
    const/4 v0, 0x0

    sput-object v0, Lcom/cmplay/base/util/webview/ipc/WebIpcProvider;->s_cpClientFixer:Landroid/content/ContentProviderClient;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method public static FixProviderSystemBug()V
    .locals 4

    .prologue
    .line 131
    sget-object v1, Lcom/cmplay/base/util/webview/ipc/WebIpcProvider;->s_LockFixedBug:Ljava/lang/Object;

    monitor-enter v1

    .line 132
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/cmplay/base/util/webview/ui/WebViewActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".ipc.web"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cmplay/base/util/webview/ipc/WebIpcProvider;->IPC_PROVIDER_AUTH:Ljava/lang/String;

    .line 133
    sget-boolean v0, Lcom/cmplay/base/util/webview/ipc/WebIpcProvider;->s_bFixedSysBug:Z

    if-eqz v0, :cond_0

    .line 134
    monitor-exit v1

    .line 147
    :goto_0
    return-void

    .line 135
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/cmplay/base/util/webview/ipc/WebIpcProvider;->s_bFixedSysBug:Z

    .line 136
    sget-object v0, Lcom/cmplay/base/util/webview/ipc/WebIpcProvider;->sContentUri:Landroid/net/Uri;

    if-nez v0, :cond_1

    .line 137
    sget-object v0, Lcom/cmplay/base/util/webview/ipc/WebIpcProvider;->IPC_PROVIDER_AUTH:Ljava/lang/String;

    .line 138
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

    sput-object v0, Lcom/cmplay/base/util/webview/ipc/WebIpcProvider;->sContentUri:Landroid/net/Uri;

    .line 139
    sget-object v0, Lcom/cmplay/base/util/webview/ipc/WebIpcProvider;->sContentUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/cmplay/base/util/webview/ipc/WebIpcProvider;->LENGTH_CONTENT_URI:I

    .line 141
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

    .line 143
    :cond_3
    invoke-static {}, Lcom/cmplay/base/util/webview/ipc/WebIpcProvider;->getCr()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/cmplay/base/util/webview/ipc/WebIpcProvider;->sContentUri:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0

    sput-object v0, Lcom/cmplay/base/util/webview/ipc/WebIpcProvider;->s_cpClientFixer:Landroid/content/ContentProviderClient;

    .line 144
    const-string v0, "ly"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sContentUri = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/cmplay/base/util/webview/ipc/WebIpcProvider;->sContentUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " s_cpClientFixer = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/cmplay/base/util/webview/ipc/WebIpcProvider;->s_cpClientFixer:Landroid/content/ContentProviderClient;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/cmplay/base/util/g;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
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

.method private static getCr()Landroid/content/ContentResolver;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/cmplay/base/util/webview/ui/WebViewActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method public static invoke(Landroid/content/ContentValues;Lcom/cmplay/base/util/webview/ipc/IWebIpcProviderInvoker;)Ljava/lang/String;
    .locals 4
    .param p0, "values"    # Landroid/content/ContentValues;
    .param p1, "invoker"    # Lcom/cmplay/base/util/webview/ipc/IWebIpcProviderInvoker;

    .prologue
    .line 102
    if-nez p1, :cond_0

    .line 103
    const-string v0, ""

    .line 127
    :goto_0
    return-object v0

    .line 105
    :cond_0
    if-nez p0, :cond_1

    .line 106
    new-instance p0, Landroid/content/ContentValues;

    .end local p0    # "values":Landroid/content/ContentValues;
    invoke-direct {p0}, Landroid/content/ContentValues;-><init>()V

    .line 108
    .restart local p0    # "values":Landroid/content/ContentValues;
    :cond_1
    const-string v0, "ipc_id"

    invoke-interface {p1}, Lcom/cmplay/base/util/webview/ipc/IWebIpcProviderInvoker;->getIPDId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 109
    invoke-static {}, Lcom/cmplay/base/util/webview/ipc/WebIpcProvider;->FixProviderSystemBug()V

    .line 110
    const/4 v0, 0x0

    .line 112
    :try_start_0
    invoke-static {}, Lcom/cmplay/base/util/webview/ipc/WebIpcProvider;->getCr()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/cmplay/base/util/webview/ipc/WebIpcProvider;->sContentUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, p0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 118
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

    invoke-static {v1, v2}, Lcom/cmplay/base/util/g;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    if-eqz v0, :cond_4

    .line 120
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 121
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sget v2, Lcom/cmplay/base/util/webview/ipc/WebIpcProvider;->LENGTH_CONTENT_URI:I

    if-gt v1, v2, :cond_3

    .line 122
    :cond_2
    const-string v0, ""

    goto :goto_0

    .line 113
    :catch_0
    move-exception v1

    .line 114
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_1

    .line 124
    :cond_3
    sget v1, Lcom/cmplay/base/util/webview/ipc/WebIpcProvider;->LENGTH_CONTENT_URI:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 127
    :cond_4
    const-string v0, ""

    goto :goto_0

    .line 115
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private ipcHandle(ILandroid/content/ContentValues;)Ljava/lang/String;
    .locals 2
    .param p1, "type"    # I
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 86
    const-string v0, ""

    .line 87
    invoke-static {p1}, Lcom/cmplay/base/util/webview/ipc/IpcProviderHandlerFactory;->createHandler(I)Lcom/cmplay/base/util/webview/ipc/IIpcProviderHandler;

    move-result-object v1

    .line 88
    if-eqz v1, :cond_0

    .line 89
    invoke-virtual {p0}, Lcom/cmplay/base/util/webview/ipc/WebIpcProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/cmplay/base/util/webview/ipc/IIpcProviderHandler;->setContext(Landroid/content/Context;)V

    .line 90
    invoke-interface {v1, p2}, Lcom/cmplay/base/util/webview/ipc/IIpcProviderHandler;->handleRequest(Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object v0

    .line 92
    :cond_0
    return-object v0
.end method

.method public static release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 151
    :try_start_0
    sget-object v0, Lcom/cmplay/base/util/webview/ipc/WebIpcProvider;->s_cpClientFixer:Landroid/content/ContentProviderClient;

    if-eqz v0, :cond_0

    .line 152
    sget-object v0, Lcom/cmplay/base/util/webview/ipc/WebIpcProvider;->s_cpClientFixer:Landroid/content/ContentProviderClient;

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    :cond_0
    :goto_0
    sput-object v1, Lcom/cmplay/base/util/webview/ipc/WebIpcProvider;->s_cpClientFixer:Landroid/content/ContentProviderClient;

    .line 158
    sput-object v1, Lcom/cmplay/base/util/webview/ipc/WebIpcProvider;->sContentUri:Landroid/net/Uri;

    .line 159
    const/4 v0, 0x0

    sput-boolean v0, Lcom/cmplay/base/util/webview/ipc/WebIpcProvider;->s_bFixedSysBug:Z

    .line 160
    return-void

    .line 154
    :catch_0
    move-exception v0

    .line 155
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 71
    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 48
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 54
    invoke-static {}, Lcom/cmplay/base/util/q;->f()V

    .line 55
    const-string v0, ""

    .line 56
    if-eqz p2, :cond_0

    .line 57
    const/4 v0, 0x3

    .line 58
    invoke-direct {p0, v0, p2}, Lcom/cmplay/base/util/webview/ipc/WebIpcProvider;->ipcHandle(ILandroid/content/ContentValues;)Ljava/lang/String;

    move-result-object v0

    .line 59
    if-nez v0, :cond_0

    .line 60
    const-string v0, ""

    .line 63
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    .line 64
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 65
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

    invoke-static {v1, v2}, Lcom/cmplay/base/util/g;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/cmplay/base/util/webview/ipc/WebIpcProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/cmplay/base/util/q;->a(Landroid/content/Context;)V

    .line 38
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
    .line 43
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
    .line 76
    const/4 v0, 0x0

    return v0
.end method
