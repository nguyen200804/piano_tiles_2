.class public Lcom/cmplay/base/util/ipc/IpcProvider;
.super Landroid/content/ContentProvider;
.source "IpcProvider.java"


# static fields
.field private static a:Landroid/net/Uri;

.field private static b:I

.field private static c:Ljava/lang/Object;

.field private static d:Z

.field private static e:Landroid/content/ContentProviderClient;

.field private static f:Landroid/content/Context;

.field private static g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    sput-object v0, Lcom/cmplay/base/util/ipc/IpcProvider;->a:Landroid/net/Uri;

    .line 26
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/cmplay/base/util/ipc/IpcProvider;->c:Ljava/lang/Object;

    .line 27
    const/4 v0, 0x0

    sput-boolean v0, Lcom/cmplay/base/util/ipc/IpcProvider;->d:Z

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/cmplay/base/util/ipc/IpcProvider;->g:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/ContentValues;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 75
    if-nez p0, :cond_0

    .line 76
    new-instance p0, Landroid/content/ContentValues;

    invoke-direct {p0}, Landroid/content/ContentValues;-><init>()V

    .line 78
    :cond_0
    invoke-static {}, Lcom/cmplay/base/util/ipc/IpcProvider;->a()V

    .line 79
    const/4 v1, 0x0

    .line 81
    :try_start_0
    invoke-static {}, Lcom/cmplay/base/util/ipc/IpcProvider;->b()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/cmplay/base/util/ipc/IpcProvider;->a:Landroid/net/Uri;

    invoke-virtual {v0, v2, p0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    .line 90
    :goto_0
    if-eqz v0, :cond_3

    .line 91
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 92
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sget v2, Lcom/cmplay/base/util/ipc/IpcProvider;->b:I

    if-gt v1, v2, :cond_2

    .line 93
    :cond_1
    const-string v0, ""

    .line 98
    :goto_1
    return-object v0

    .line 82
    :catch_0
    move-exception v0

    .line 83
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    move-object v0, v1

    .line 88
    goto :goto_0

    .line 84
    :catch_1
    move-exception v0

    .line 85
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    move-object v0, v1

    .line 88
    goto :goto_0

    .line 86
    :catch_2
    move-exception v0

    .line 87
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_0

    .line 95
    :cond_2
    sget v1, Lcom/cmplay/base/util/ipc/IpcProvider;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 98
    :cond_3
    const-string v0, ""

    goto :goto_1
.end method

.method public static a()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 42
    sget-object v1, Lcom/cmplay/base/util/ipc/IpcProvider;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 43
    :try_start_0
    sget-boolean v0, Lcom/cmplay/base/util/ipc/IpcProvider;->d:Z

    if-eqz v0, :cond_0

    .line 44
    monitor-exit v1

    .line 56
    :goto_0
    return-void

    .line 45
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/cmplay/base/util/ipc/IpcProvider;->d:Z

    .line 46
    sget-object v0, Lcom/cmplay/base/util/ipc/IpcProvider;->a:Landroid/net/Uri;

    if-nez v0, :cond_1

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/cmplay/base/util/q;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".innerpush_provider"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 48
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

    sput-object v0, Lcom/cmplay/base/util/ipc/IpcProvider;->a:Landroid/net/Uri;

    .line 49
    sget-object v0, Lcom/cmplay/base/util/ipc/IpcProvider;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/cmplay/base/util/ipc/IpcProvider;->b:I

    .line 51
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

    .line 53
    :cond_3
    invoke-static {}, Lcom/cmplay/base/util/ipc/IpcProvider;->b()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/cmplay/base/util/ipc/IpcProvider;->a:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0

    sput-object v0, Lcom/cmplay/base/util/ipc/IpcProvider;->e:Landroid/content/ContentProviderClient;

    .line 55
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

.method private static b()Landroid/content/ContentResolver;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/cmplay/base/util/q;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public b(Landroid/content/ContentValues;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 123
    .line 124
    const-string v0, "class_tag"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 125
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    const-string v0, ""

    .line 150
    :goto_0
    return-object v0

    .line 128
    :cond_0
    sget-object v0, Lcom/cmplay/base/util/ipc/IpcProvider;->g:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 129
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/cmplay/base/util/ipc/IpcProvider;->g:Ljava/util/HashMap;

    .line 134
    :cond_1
    :try_start_0
    sget-object v0, Lcom/cmplay/base/util/ipc/IpcProvider;->g:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 135
    const-string v0, "new_zzb"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "className ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 137
    const-string v3, "getInstance"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 138
    sget-object v3, Lcom/cmplay/base/util/ipc/IpcProvider;->g:Ljava/util/HashMap;

    invoke-virtual {v3, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    :goto_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmplay/base/util/ipc/a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    :goto_2
    if-nez v0, :cond_3

    .line 148
    const-string v0, ""

    goto :goto_0

    .line 140
    :cond_2
    :try_start_1
    sget-object v0, Lcom/cmplay/base/util/ipc/IpcProvider;->g:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 143
    :catch_0
    move-exception v0

    .line 144
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_2

    .line 150
    :cond_3
    invoke-virtual {v0, p1}, Lcom/cmplay/base/util/ipc/a;->handler(Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 161
    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 156
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 104
    invoke-static {}, Lcom/cmplay/base/util/q;->e()V

    .line 105
    const-string v0, ""

    .line 106
    if-eqz p2, :cond_0

    .line 108
    invoke-virtual {p0, p2}, Lcom/cmplay/base/util/ipc/IpcProvider;->b(Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object v0

    .line 109
    if-nez v0, :cond_0

    .line 110
    const-string v0, ""

    .line 113
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

    .line 114
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()Z
    .locals 2

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/cmplay/base/util/ipc/IpcProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/cmplay/base/util/ipc/IpcProvider;->f:Landroid/content/Context;

    .line 61
    sget-object v0, Lcom/cmplay/base/util/ipc/IpcProvider;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmplay/base/util/q;->a(Landroid/content/Context;)V

    .line 62
    const-string v0, "zzb_ipc"

    const-string v1, "new provider \u542f\u52a8"

    invoke-static {v0, v1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
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
    .line 170
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
    .line 166
    const/4 v0, 0x0

    return v0
.end method
