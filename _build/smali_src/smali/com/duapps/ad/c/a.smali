.class public Lcom/duapps/ad/c/a;
.super Ljava/lang/Object;


# static fields
.field private static final a:Landroid/net/Uri;

.field private static final b:Ljava/lang/String;

.field private static d:Lcom/duapps/ad/c/a;


# instance fields
.field private c:Landroid/content/Context;

.field private e:Ljava/util/List;

.field private f:Ljava/util/List;

.field private g:Ljava/util/ArrayList;

.field private final h:Landroid/os/Handler;

.field private final i:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://downloads"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/duapps/ad/c/a;->a:Landroid/net/Uri;

    const-class v0, Lcom/duapps/ad/c/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/duapps/ad/c/a;->b:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/duapps/ad/c/a;->e:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/duapps/ad/c/a;->f:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/duapps/ad/c/a;->g:Ljava/util/ArrayList;

    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/duapps/ad/c/c;

    invoke-direct {v1, p0}, Lcom/duapps/ad/c/c;-><init>(Lcom/duapps/ad/c/a;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/duapps/ad/c/a;->h:Landroid/os/Handler;

    new-instance v0, Lcom/duapps/ad/c/d;

    iget-object v1, p0, Lcom/duapps/ad/c/a;->h:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/duapps/ad/c/d;-><init>(Lcom/duapps/ad/c/a;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/duapps/ad/c/a;->i:Landroid/database/ContentObserver;

    iput-object p1, p0, Lcom/duapps/ad/c/a;->c:Landroid/content/Context;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/duapps/ad/c/a;
    .locals 3

    sget-object v0, Lcom/duapps/ad/c/a;->d:Lcom/duapps/ad/c/a;

    if-nez v0, :cond_1

    const-class v1, Lcom/duapps/ad/c/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/duapps/ad/c/a;->d:Lcom/duapps/ad/c/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/duapps/ad/c/a;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/duapps/ad/c/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/duapps/ad/c/a;->d:Lcom/duapps/ad/c/a;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/duapps/ad/c/a;->d:Lcom/duapps/ad/c/a;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a(Landroid/net/Uri;)V
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-gt v1, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/duapps/ad/c/a;->f:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/duapps/ad/c/a;->f:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/duapps/ad/c/a;->f:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-direct {p0, v0}, Lcom/duapps/ad/c/a;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/duapps/ad/c/a;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/duapps/ad/c/a;->a(Landroid/net/Uri;)V

    return-void
.end method

.method private static a(Ljava/io/Closeable;)V
    .locals 1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/duapps/ad/c/a;->b(Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {v1}, Lcom/duapps/ad/c/a;->a(Ljava/io/Closeable;)V

    :goto_0
    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    const/16 v0, 0x9

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v0, 0xf

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v3, "packageName"

    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v4, p0, Lcom/duapps/ad/c/a;->e:Ljava/util/List;

    monitor-enter v4
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v0, p0, Lcom/duapps/ad/c/a;->e:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v1}, Lcom/duapps/ad/c/a;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :cond_1
    :try_start_3
    iget-object v0, p0, Lcom/duapps/ad/c/a;->e:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v4, p0, Lcom/duapps/ad/c/a;->g:Ljava/util/ArrayList;

    monitor-enter v4
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    iget-object v0, p0, Lcom/duapps/ad/c/a;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duapps/ad/c/b;

    invoke-interface {v0, v3, v2}, Lcom/duapps/ad/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catch_0
    move-exception v0

    move-object v0, v1

    :goto_2
    invoke-static {v0}, Lcom/duapps/ad/c/a;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_7
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v0
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_2
    move-exception v0

    :goto_3
    invoke-static {v1}, Lcom/duapps/ad/c/a;->a(Ljava/io/Closeable;)V

    throw v0

    :cond_2
    :try_start_9
    monitor-exit v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :cond_3
    invoke-static {v1}, Lcom/duapps/ad/c/a;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_3
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method private b(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/duapps/ad/c/a;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://downloads/public_downloads/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 4

    iget-object v0, p0, Lcom/duapps/ad/c/a;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/duapps/ad/c/a;->a:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/duapps/ad/c/a;->i:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public a(Lcom/duapps/ad/c/b;)V
    .locals 2

    iget-object v0, p0, Lcom/duapps/ad/c/a;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/duapps/ad/c/a;->g:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/duapps/ad/c/a;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
