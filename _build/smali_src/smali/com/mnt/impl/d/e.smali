.class public Lcom/mnt/impl/d/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mnt/impl/d/e$a;
    }
.end annotation


# static fields
.field public static final a:Landroid/net/Uri;

.field private static i:Lcom/mnt/impl/d/e;


# instance fields
.field public b:Landroid/content/Context;

.field c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mnt/impl/d/g;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Landroid/database/ContentObserver;

.field public h:Z

.field private final j:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/mnt/impl/e;->ps:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/mnt/impl/d/e;->a:Landroid/net/Uri;

    .line 29
    const-class v0, Lcom/mnt/impl/d/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 158
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mnt/impl/d/e;->c:Ljava/util/List;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mnt/impl/d/e;->d:Ljava/util/List;

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mnt/impl/d/e;->e:Ljava/util/Map;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mnt/impl/d/e;->f:Ljava/util/ArrayList;

    .line 157
    new-instance v0, Lcom/mnt/impl/d/e$a;

    invoke-direct {v0, p0}, Lcom/mnt/impl/d/e$a;-><init>(Lcom/mnt/impl/d/e;)V

    .line 41
    iput-object p1, p0, Lcom/mnt/impl/d/e;->b:Landroid/content/Context;

    .line 42
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/mnt/impl/d/f;

    invoke-direct {v1}, Lcom/mnt/impl/d/f;-><init>()V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/mnt/impl/d/e;->j:Landroid/os/Handler;

    .line 43
    new-instance v0, Lcom/mnt/impl/d/b;

    iget-object v1, p0, Lcom/mnt/impl/d/e;->j:Landroid/os/Handler;

    invoke-direct {v0, p1, v1}, Lcom/mnt/impl/d/b;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/mnt/impl/d/e;->g:Landroid/database/ContentObserver;

    .line 44
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/mnt/impl/d/e;
    .locals 3

    .prologue
    .line 47
    sget-object v0, Lcom/mnt/impl/d/e;->i:Lcom/mnt/impl/d/e;

    if-nez v0, :cond_1

    .line 48
    const-class v1, Lcom/mnt/impl/d/e;

    .line 49
    monitor-enter v1

    .line 50
    :try_start_0
    sget-object v0, Lcom/mnt/impl/d/e;->i:Lcom/mnt/impl/d/e;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Lcom/mnt/impl/d/e;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/mnt/impl/d/e;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mnt/impl/d/e;->i:Lcom/mnt/impl/d/e;

    .line 53
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    :cond_1
    sget-object v0, Lcom/mnt/impl/d/e;->i:Lcom/mnt/impl/d/e;

    return-object v0

    .line 53
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/mnt/impl/d/e;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/mnt/impl/d/e;->f:Ljava/util/ArrayList;

    return-object v0
.end method

.method static a(Ljava/io/Closeable;)V
    .locals 1

    .prologue
    .line 146
    if-eqz p0, :cond_0

    .line 147
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 150
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/mnt/impl/d/e;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/mnt/impl/d/e;->e:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic c(Lcom/mnt/impl/d/e;)Ljava/util/List;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/mnt/impl/d/e;->c:Ljava/util/List;

    return-object v0
.end method

.method static synthetic d(Lcom/mnt/impl/d/e;)Ljava/util/List;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/mnt/impl/d/e;->d:Ljava/util/List;

    return-object v0
.end method
