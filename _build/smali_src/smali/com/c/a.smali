.class public Lcom/c/a;
.super Ljava/lang/Object;
.source "MyVolley.java"


# static fields
.field private static a:Lcom/c/a;


# instance fields
.field private b:Lcom/android/volley/m;

.field private c:Lcom/android/volley/toolbox/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    sput-object v0, Lcom/c/a;->a:Lcom/c/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    sget-object v0, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/c/a;->a(Landroid/content/Context;)V

    .line 35
    return-void
.end method

.method public static a()Lcom/c/a;
    .locals 2

    .prologue
    .line 38
    sget-object v0, Lcom/c/a;->a:Lcom/c/a;

    if-nez v0, :cond_1

    .line 39
    const-class v1, Lcom/c/a;

    monitor-enter v1

    .line 40
    :try_start_0
    sget-object v0, Lcom/c/a;->a:Lcom/c/a;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lcom/c/a;

    invoke-direct {v0}, Lcom/c/a;-><init>()V

    sput-object v0, Lcom/c/a;->a:Lcom/c/a;

    .line 43
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    :cond_1
    sget-object v0, Lcom/c/a;->a:Lcom/c/a;

    return-object v0

    .line 43
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private declared-synchronized a(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 49
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/cmplay/util/x;->a()Ljava/lang/String;

    move-result-object v1

    .line 51
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 52
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v2, v0

    .line 59
    :goto_0
    const-string v0, "volley/0"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 63
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    move-object v1, v0

    .line 68
    :goto_1
    :try_start_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x9

    if-lt v0, v3, :cond_2

    .line 69
    new-instance v0, Lcom/android/volley/toolbox/g;

    invoke-direct {v0}, Lcom/android/volley/toolbox/g;-><init>()V

    .line 74
    :goto_2
    new-instance v1, Lcom/android/volley/toolbox/a;

    invoke-direct {v1, v0}, Lcom/android/volley/toolbox/a;-><init>(Lcom/android/volley/toolbox/f;)V

    .line 76
    new-instance v0, Lcom/android/volley/m;

    new-instance v3, Lcom/android/volley/toolbox/c;

    const/high16 v4, 0x6400000

    invoke-direct {v3, v2, v4}, Lcom/android/volley/toolbox/c;-><init>(Ljava/io/File;I)V

    invoke-direct {v0, v3, v1}, Lcom/android/volley/m;-><init>(Lcom/android/volley/b;Lcom/android/volley/f;)V

    iput-object v0, p0, Lcom/c/a;->b:Lcom/android/volley/m;

    .line 77
    iget-object v0, p0, Lcom/c/a;->b:Lcom/android/volley/m;

    invoke-virtual {v0}, Lcom/android/volley/m;->a()V

    .line 81
    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v0

    .line 84
    const/high16 v1, 0x100000

    mul-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x8

    .line 85
    new-instance v1, Lcom/android/volley/toolbox/h;

    iget-object v2, p0, Lcom/c/a;->b:Lcom/android/volley/m;

    new-instance v3, Lcom/cmplay/util/BitmapLruCache;

    invoke-direct {v3, v0}, Lcom/cmplay/util/BitmapLruCache;-><init>(I)V

    invoke-direct {v1, v2, v3}, Lcom/android/volley/toolbox/h;-><init>(Lcom/android/volley/m;Lcom/android/volley/toolbox/h$b;)V

    iput-object v1, p0, Lcom/c/a;->c:Lcom/android/volley/toolbox/h;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 86
    :cond_0
    monitor-exit p0

    return-void

    .line 54
    :cond_1
    :try_start_3
    invoke-static {}, Lcom/cmplay/util/x;->b()Ljava/io/File;

    move-result-object v0

    .line 55
    if-eqz v0, :cond_0

    move-object v2, v0

    goto :goto_0

    .line 64
    :catch_0
    move-exception v1

    move-object v1, v0

    goto :goto_1

    .line 71
    :cond_2
    new-instance v0, Lcom/android/volley/toolbox/d;

    invoke-static {v1}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/volley/toolbox/d;-><init>(Lorg/apache/http/client/HttpClient;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 49
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized b()Lcom/android/volley/toolbox/h;
    .locals 2

    .prologue
    .line 102
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/c/a;->c:Lcom/android/volley/toolbox/h;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/c/a;->c:Lcom/android/volley/toolbox/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 105
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ImageLoader not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
