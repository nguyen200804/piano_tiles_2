.class public Lcom/mopub/dg/d/g;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/io/File;

.field private static b:Lcom/mopub/dg/d/g;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    sput-object v0, Lcom/mopub/dg/d/g;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/mopub/dg/d/g;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/mopub/dg/d/g;
    .locals 2

    sget-object v0, Lcom/mopub/dg/d/g;->b:Lcom/mopub/dg/d/g;

    if-nez v0, :cond_1

    const-class v1, Lcom/mopub/dg/d/g;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/mopub/dg/d/g;->b:Lcom/mopub/dg/d/g;

    if-nez v0, :cond_0

    new-instance v0, Lcom/mopub/dg/d/g;

    invoke-direct {v0, p0}, Lcom/mopub/dg/d/g;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mopub/dg/d/g;->b:Lcom/mopub/dg/d/g;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/mopub/dg/d/g;->b:Lcom/mopub/dg/d/g;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Ljava/lang/String;)Ljava/io/File;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/mopub/dg/d/g;->a:Ljava/io/File;

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method
