.class public Lcom/cmplay/crashreport/k;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/cmplay/crashreport/k;


# instance fields
.field private b:Ljava/lang/Boolean;

.field private c:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/cmplay/crashreport/k;->a:Lcom/cmplay/crashreport/k;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/cmplay/crashreport/k;->b:Ljava/lang/Boolean;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/cmplay/crashreport/k;->c:Ljava/lang/Object;

    return-void
.end method

.method public static declared-synchronized a()Lcom/cmplay/crashreport/k;
    .locals 2

    const-class v1, Lcom/cmplay/crashreport/k;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/cmplay/crashreport/k;->a:Lcom/cmplay/crashreport/k;

    if-nez v0, :cond_0

    new-instance v0, Lcom/cmplay/crashreport/k;

    invoke-direct {v0}, Lcom/cmplay/crashreport/k;-><init>()V

    sput-object v0, Lcom/cmplay/crashreport/k;->a:Lcom/cmplay/crashreport/k;

    :cond_0
    sget-object v0, Lcom/cmplay/crashreport/k;->a:Lcom/cmplay/crashreport/k;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/cmplay/crashreport/k;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    iput-object p1, p0, Lcom/cmplay/crashreport/k;->b:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic a(Lcom/cmplay/crashreport/k;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/cmplay/crashreport/k;->c:Ljava/lang/Object;

    return-object v0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/cmplay/crashreport/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "crash.zip"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private a(Landroid/content/Context;[Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    if-eqz p2, :cond_0

    array-length v0, p2

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p3}, Lcom/cmplay/crashreport/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    invoke-direct {p0, p2, v1}, Lcom/cmplay/crashreport/k;->a([Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMdd_HHmmss"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/cmplay/crashreport/a/c;->a(Landroid/content/Context;)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mobileduba___"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "___"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".zip"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p4, v1}, Lcom/cmplay/crashreport/u;->a(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/cmplay/crashreport/m;->a()Lcom/cmplay/crashreport/m;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2, p2}, Lcom/cmplay/crashreport/m;->a(Z[Ljava/io/File;)V

    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method static synthetic a(Lcom/cmplay/crashreport/k;Landroid/content/Context;[Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/cmplay/crashreport/k;->a(Landroid/content/Context;[Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a([Ljava/io/File;Ljava/io/File;)Z
    .locals 8

    const/4 v0, 0x0

    const/16 v2, 0x400

    :try_start_0
    new-array v3, v2, [B

    new-instance v4, Ljava/util/zip/ZipOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v1}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    move v1, v0

    :goto_0
    array-length v5, p1

    if-ge v1, v5, :cond_2

    aget-object v5, p1, v1

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v5, Ljava/io/FileInputStream;

    aget-object v6, p1, v1

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v6, Ljava/util/zip/ZipEntry;

    aget-object v7, p1, v1

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    :goto_2
    const/4 v6, 0x0

    invoke-virtual {v5, v3, v6, v2}, Ljava/io/FileInputStream;->read([BII)I

    move-result v6

    if-gtz v6, :cond_1

    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    goto :goto_1

    :catch_0
    move-exception v1

    :goto_3
    return v0

    :cond_1
    const/4 v7, 0x0

    invoke-virtual {v4, v3, v7, v6}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_3

    :cond_2
    invoke-virtual {v4}, Ljava/util/zip/ZipOutputStream;->flush()V

    invoke-virtual {v4}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v0, 0x1

    goto :goto_3
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 2

    iget-object v1, p0, Lcom/cmplay/crashreport/k;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/cmplay/crashreport/k;->b:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    monitor-exit v1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/cmplay/crashreport/k;->b:Ljava/lang/Boolean;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p1}, Lcom/cmplay/crashreport/a/e;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/cmplay/crashreport/a/e;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/cmplay/crashreport/l;

    invoke-direct {v0, p0, p1}, Lcom/cmplay/crashreport/l;-><init>(Lcom/cmplay/crashreport/k;Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/cmplay/crashreport/l;->start()V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
