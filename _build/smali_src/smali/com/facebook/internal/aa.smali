.class public final Lcom/facebook/internal/aa;
.super Ljava/lang/Object;
.source "Utility.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/internal/aa$e;,
        Lcom/facebook/internal/aa$c;,
        Lcom/facebook/internal/aa$d;,
        Lcom/facebook/internal/aa$a;,
        Lcom/facebook/internal/aa$b;
    }
.end annotation


# static fields
.field private static final a:[Ljava/lang/String;

.field private static b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/internal/aa$b;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static d:I

.field private static e:J

.field private static f:J

.field private static g:J

.field private static h:Ljava/lang/String;

.field private static i:Ljava/lang/String;

.field private static j:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    const/4 v3, 0x0

    .line 100
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "supports_implicit_sdk_logging"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "gdpv4_nux_content"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "gdpv4_nux_enabled"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "android_dialog_configs"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "android_sdk_error_categories"

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/internal/aa;->a:[Ljava/lang/String;

    .line 120
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/facebook/internal/aa;->b:Ljava/util/Map;

    .line 123
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/facebook/internal/aa;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 125
    sput v3, Lcom/facebook/internal/aa;->d:I

    .line 127
    sput-wide v4, Lcom/facebook/internal/aa;->e:J

    .line 128
    sput-wide v4, Lcom/facebook/internal/aa;->f:J

    .line 129
    sput-wide v4, Lcom/facebook/internal/aa;->g:J

    .line 130
    const-string v0, ""

    sput-object v0, Lcom/facebook/internal/aa;->h:Ljava/lang/String;

    .line 131
    const-string v0, ""

    sput-object v0, Lcom/facebook/internal/aa;->i:Ljava/lang/String;

    .line 132
    const-string v0, "NoCarrier"

    sput-object v0, Lcom/facebook/internal/aa;->j:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 652
    const/4 v2, 0x0

    .line 655
    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 657
    const/16 v2, 0x2000

    :try_start_1
    new-array v2, v2, [B

    .line 659
    :goto_0
    invoke-virtual {v1, v2}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 660
    const/4 v4, 0x0

    invoke-virtual {p1, v2, v4, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 661
    add-int/2addr v0, v3

    goto :goto_0

    .line 664
    :cond_0
    if-eqz v1, :cond_1

    .line 665
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 667
    :cond_1
    if-eqz p0, :cond_2

    .line 668
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 672
    :cond_2
    return v0

    .line 664
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_1
    if-eqz v1, :cond_3

    .line 665
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 667
    :cond_3
    if-eqz p0, :cond_4

    .line 668
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_4
    throw v0

    .line 664
    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method private static a(D)J
    .locals 2

    .prologue
    .line 1439
    const-wide/high16 v0, 0x41d0000000000000L    # 1.073741824E9

    div-double v0, p0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    return-wide v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/net/Uri;
    .locals 5

    .prologue
    .line 456
    new-instance v2, Landroid/net/Uri$Builder;

    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    .line 457
    const-string v0, "https"

    invoke-virtual {v2, v0}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 458
    invoke-virtual {v2, p0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 459
    invoke-virtual {v2, p1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 460
    if-eqz p2, :cond_1

    .line 461
    invoke-virtual {p2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 462
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 463
    instance-of v4, v1, Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 464
    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    .line 468
    :cond_1
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/internal/aa$a;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 877
    invoke-static {p1}, Lcom/facebook/internal/aa;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Lcom/facebook/internal/aa;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, v1

    .line 889
    :goto_0
    return-object v0

    .line 881
    :cond_1
    sget-object v0, Lcom/facebook/internal/aa;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/internal/aa$b;

    .line 882
    if-eqz v0, :cond_2

    .line 883
    invoke-virtual {v0}, Lcom/facebook/internal/aa$b;->d()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 885
    if-eqz v0, :cond_2

    .line 886
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/internal/aa$a;

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 889
    goto :goto_0
.end method

.method static synthetic a(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/facebook/internal/aa$b;
    .locals 1

    .prologue
    .line 76
    invoke-static {p0, p1}, Lcom/facebook/internal/aa;->b(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/facebook/internal/aa$b;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Z)Lcom/facebook/internal/aa$b;
    .locals 1

    .prologue
    .line 824
    if-nez p1, :cond_0

    sget-object v0, Lcom/facebook/internal/aa;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 825
    sget-object v0, Lcom/facebook/internal/aa;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/internal/aa$b;

    .line 833
    :goto_0
    return-object v0

    .line 828
    :cond_0
    invoke-static {p0}, Lcom/facebook/internal/aa;->g(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 829
    if-nez v0, :cond_1

    .line 830
    const/4 v0, 0x0

    goto :goto_0

    .line 833
    :cond_1
    invoke-static {p0, v0}, Lcom/facebook/internal/aa;->b(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/facebook/internal/aa$b;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/facebook/internal/aa$e;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1467
    const-string v0, "permissions"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1469
    const-string v1, "data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 1470
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1471
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1473
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 1474
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 1475
    const-string v5, "permission"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1476
    if-eqz v5, :cond_0

    const-string v6, "installed"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1473
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1479
    :cond_1
    const-string v6, "status"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1480
    if-eqz v4, :cond_0

    .line 1484
    const-string v6, "granted"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1485
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1486
    :cond_2
    const-string v6, "declined"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1487
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1491
    :cond_3
    new-instance v0, Lcom/facebook/internal/aa$e;

    invoke-direct {v0, v2, v3}, Lcom/facebook/internal/aa$e;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method public static varargs a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1109
    :try_start_0
    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 1113
    :goto_0
    return-object v0

    .line 1110
    :catch_0
    move-exception v1

    goto :goto_0

    .line 1112
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public static a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 604
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 605
    if-eqz v0, :cond_2

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 606
    new-instance v1, Lorg/json/JSONTokener;

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 607
    invoke-virtual {v1}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    .line 610
    :goto_0
    if-eqz v1, :cond_1

    instance-of v0, v1, Lorg/json/JSONObject;

    if-nez v0, :cond_1

    instance-of v0, v1, Lorg/json/JSONArray;

    if-nez v0, :cond_1

    .line 611
    if-eqz p2, :cond_0

    .line 616
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 617
    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 624
    :goto_1
    return-object v0

    .line 620
    :cond_0
    new-instance v0, Lcom/facebook/i;

    const-string v1, "Got an unexpected non-JSON object."

    invoke-direct {v0, v1}, Lcom/facebook/i;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move-object v0, v1

    .line 624
    goto :goto_1

    :cond_2
    move-object v1, v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 572
    const-string v0, "context"

    invoke-static {p0, v0}, Lcom/facebook/internal/ab;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 574
    invoke-static {p0}, Lcom/facebook/l;->a(Landroid/content/Context;)V

    .line 576
    invoke-static {}, Lcom/facebook/l;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1167
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 629
    .line 632
    :try_start_0
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 633
    :try_start_1
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 634
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 637
    const/16 v2, 0x800

    new-array v2, v2, [C

    .line 639
    :goto_0
    invoke-virtual {v1, v2}, Ljava/io/InputStreamReader;->read([C)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 640
    const/4 v5, 0x0

    invoke-virtual {v0, v2, v5, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 645
    :catchall_0
    move-exception v0

    move-object v2, v3

    :goto_1
    invoke-static {v2}, Lcom/facebook/internal/aa;->a(Ljava/io/Closeable;)V

    .line 646
    invoke-static {v1}, Lcom/facebook/internal/aa;->a(Ljava/io/Closeable;)V

    throw v0

    .line 643
    :cond_0
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    .line 645
    invoke-static {v3}, Lcom/facebook/internal/aa;->a(Ljava/io/Closeable;)V

    .line 646
    invoke-static {v1}, Lcom/facebook/internal/aa;->a(Ljava/io/Closeable;)V

    return-object v0

    .line 645
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_1

    :catchall_2
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_1
.end method

.method private static a(Ljava/lang/String;[B)Ljava/lang/String;
    .locals 1

    .prologue
    .line 437
    :try_start_0
    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 441
    invoke-static {v0, p1}, Lcom/facebook/internal/aa;->a(Ljava/security/MessageDigest;[B)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 438
    :catch_0
    move-exception v0

    .line 439
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Ljava/security/MessageDigest;[B)Ljava/lang/String;
    .locals 6

    .prologue
    .line 445
    invoke-virtual {p0, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 446
    invoke-virtual {p0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 447
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 448
    array-length v3, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-byte v4, v1, v0

    .line 449
    shr-int/lit8 v5, v4, 0x4

    and-int/lit8 v5, v5, 0xf

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    shr-int/lit8 v4, v4, 0x0

    and-int/lit8 v4, v4, 0xf

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 452
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a([B)Ljava/lang/String;
    .locals 1

    .prologue
    .line 427
    const-string v0, "SHA-1"

    invoke-static {v0, p0}, Lcom/facebook/internal/aa;->a(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .line 1089
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1091
    :goto_0
    return-object v0

    .line 1090
    :catch_0
    move-exception v0

    .line 1091
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static varargs a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .line 1100
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1101
    invoke-static {v0, p1, p2}, Lcom/facebook/internal/aa;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1103
    :goto_0
    return-object v0

    .line 1102
    :catch_0
    move-exception v0

    .line 1103
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static varargs a([Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/Collection",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 399
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/Date;)Ljava/util/Date;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 1207
    if-nez p0, :cond_0

    move-object v0, v1

    .line 1229
    :goto_0
    return-object v0

    .line 1213
    :cond_0
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1214
    instance-of v2, v0, Ljava/lang/Long;

    if-eqz v2, :cond_1

    .line 1215
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    move-wide v2, v0

    .line 1226
    :goto_1
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_3

    .line 1227
    new-instance v0, Ljava/util/Date;

    const-wide v2, 0x7fffffffffffffffL

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    goto :goto_0

    .line 1216
    :cond_1
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 1218
    :try_start_0
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    move-wide v2, v0

    .line 1221
    goto :goto_1

    .line 1219
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 1220
    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 1223
    goto :goto_0

    .line 1229
    :cond_3
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v2, v6

    add-long/2addr v2, v4

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    goto :goto_0
.end method

.method public static a(Ljava/util/List;Lcom/facebook/internal/aa$d;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;",
            "Lcom/facebook/internal/aa$d",
            "<TT;TK;>;)",
            "Ljava/util/List",
            "<TK;>;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1153
    if-nez p0, :cond_1

    .line 1163
    :cond_0
    :goto_0
    return-object v0

    .line 1156
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1157
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1158
    invoke-interface {p1, v3}, Lcom/facebook/internal/aa$d;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1159
    if-eqz v3, :cond_2

    .line 1160
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1163
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    goto :goto_0
.end method

.method public static a(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 963
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 965
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 966
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 965
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 969
    :cond_0
    return-object v1
.end method

.method public static a(Landroid/os/Parcel;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1247
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1248
    if-gez v2, :cond_1

    .line 1249
    const/4 v0, 0x0

    .line 1255
    :cond_0
    return-object v0

    .line 1251
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1252
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 1253
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1252
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method static synthetic a()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lcom/facebook/internal/aa;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 770
    sget-object v0, Lcom/facebook/internal/aa;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    .line 771
    invoke-static {p1}, Lcom/facebook/internal/aa;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/facebook/internal/aa;->b:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez v0, :cond_1

    .line 811
    :cond_0
    :goto_0
    return-void

    .line 777
    :cond_1
    const-string v0, "com.facebook.internal.APP_SETTINGS.%s"

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 779
    invoke-static {}, Lcom/facebook/l;->d()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/facebook/internal/aa$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/facebook/internal/aa$1;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static a(Landroid/os/Bundle;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 1

    .prologue
    .line 519
    if-eqz p2, :cond_0

    .line 520
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/facebook/internal/aa;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    :cond_0
    return-void
.end method

.method public static a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 498
    invoke-static {p2}, Lcom/facebook/internal/aa;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 499
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    :cond_0
    return-void
.end method

.method public static a(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 504
    if-eqz p2, :cond_2

    .line 505
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 506
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 507
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 510
    :cond_0
    const-string v0, ""

    .line 511
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 512
    const/4 v0, 0x0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v0, v2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 514
    :cond_1
    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    :cond_2
    return-void
.end method

.method public static a(Landroid/os/Parcel;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1234
    if-nez p1, :cond_1

    .line 1236
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1244
    :cond_0
    return-void

    .line 1238
    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1239
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1240
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1241
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Ljava/io/Closeable;)V
    .locals 1

    .prologue
    .line 557
    if-eqz p0, :cond_0

    .line 558
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 563
    :cond_0
    :goto_0
    return-void

    .line 560
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Ljava/io/File;)V
    .locals 4

    .prologue
    .line 937
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 950
    :goto_0
    return-void

    .line 941
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 942
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 943
    if-eqz v1, :cond_1

    .line 944
    array-length v2, v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 945
    invoke-static {v3}, Lcom/facebook/internal/aa;->a(Ljava/io/File;)V

    .line 944
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 949
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Lcom/facebook/internal/aa$c;)V
    .locals 2

    .prologue
    .line 1271
    invoke-static {p0}, Lcom/facebook/internal/x;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1272
    if-eqz v0, :cond_0

    .line 1273
    invoke-interface {p1, v0}, Lcom/facebook/internal/aa$c;->a(Lorg/json/JSONObject;)V

    .line 1293
    :goto_0
    return-void

    .line 1277
    :cond_0
    new-instance v0, Lcom/facebook/internal/aa$2;

    invoke-direct {v0, p1, p0}, Lcom/facebook/internal/aa$2;-><init>(Lcom/facebook/internal/aa$c;Ljava/lang/String;)V

    .line 1290
    invoke-static {p0}, Lcom/facebook/internal/aa;->h(Ljava/lang/String;)Lcom/facebook/GraphRequest;

    move-result-object v1

    .line 1291
    invoke-virtual {v1, v0}, Lcom/facebook/GraphRequest;->a(Lcom/facebook/GraphRequest$b;)V

    .line 1292
    invoke-virtual {v1}, Lcom/facebook/GraphRequest;->j()Lcom/facebook/o;

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 727
    invoke-static {}, Lcom/facebook/l;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 728
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 733
    invoke-static {}, Lcom/facebook/l;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 734
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 739
    invoke-static {}, Lcom/facebook/l;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/internal/aa;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 740
    invoke-static {p0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 742
    :cond_0
    return-void
.end method

.method public static a(Ljava/net/URLConnection;)V
    .locals 1

    .prologue
    .line 566
    if-eqz p0, :cond_0

    instance-of v0, p0, Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 567
    check-cast p0, Ljava/net/HttpURLConnection;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 569
    :cond_0
    return-void
.end method

.method public static a(Lorg/json/JSONObject;Landroid/content/Context;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 1009
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    .line 1010
    const-string v0, "a2"

    invoke-virtual {v7, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1012
    invoke-static {p1}, Lcom/facebook/internal/aa;->d(Landroid/content/Context;)V

    .line 1015
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1016
    const/4 v1, -0x1

    .line 1017
    const-string v0, ""

    .line 1020
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 1021
    iget v1, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 1022
    iget-object v0, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_4

    .line 1028
    :goto_0
    invoke-virtual {v7, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1029
    invoke-virtual {v7, v1}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 1030
    invoke-virtual {v7, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1033
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v7, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1034
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v7, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1039
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1043
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1046
    sget-object v0, Lcom/facebook/internal/aa;->h:Ljava/lang/String;

    invoke-virtual {v7, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1049
    sget-object v0, Lcom/facebook/internal/aa;->j:Ljava/lang/String;

    invoke-virtual {v7, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1054
    const-wide/16 v2, 0x0

    .line 1056
    :try_start_2
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 1057
    if-eqz v0, :cond_0

    .line 1058
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 1059
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1060
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1061
    iget v6, v1, Landroid/util/DisplayMetrics;->widthPixels:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1062
    :try_start_3
    iget v4, v1, Landroid/util/DisplayMetrics;->heightPixels:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 1063
    :try_start_4
    iget v0, v1, Landroid/util/DisplayMetrics;->density:F
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    float-to-double v0, v0

    move v2, v4

    move v3, v6

    .line 1068
    :goto_2
    invoke-virtual {v7, v3}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 1069
    invoke-virtual {v7, v2}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 1070
    const-string v2, "%.2f"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1073
    invoke-static {}, Lcom/facebook/internal/aa;->b()I

    move-result v0

    invoke-virtual {v7, v0}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 1076
    sget-wide v0, Lcom/facebook/internal/aa;->f:J

    invoke-virtual {v7, v0, v1}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    .line 1077
    sget-wide v0, Lcom/facebook/internal/aa;->g:J

    invoke-virtual {v7, v0, v1}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    .line 1079
    sget-object v0, Lcom/facebook/internal/aa;->i:Ljava/lang/String;

    invoke-virtual {v7, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1081
    const-string v0, "extinfo"

    invoke-virtual {v7}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1082
    return-void

    .line 1040
    :catch_0
    move-exception v0

    .line 1041
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    goto/16 :goto_1

    .line 1065
    :catch_1
    move-exception v0

    move v0, v5

    move v1, v5

    :goto_3
    move-wide v8, v2

    move v2, v0

    move v3, v1

    move-wide v0, v8

    goto :goto_2

    :catch_2
    move-exception v0

    move v0, v5

    move v1, v6

    goto :goto_3

    :catch_3
    move-exception v0

    move v0, v4

    move v1, v6

    goto :goto_3

    .line 1023
    :catch_4
    move-exception v3

    goto/16 :goto_0

    :cond_0
    move-wide v0, v2

    move v2, v5

    move v3, v5

    goto :goto_2
.end method

.method public static a(Lorg/json/JSONObject;Lcom/facebook/internal/c;Ljava/lang/String;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 986
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/facebook/internal/c;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 987
    const-string v0, "attribution"

    invoke-virtual {p1}, Lcom/facebook/internal/c;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 990
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/facebook/internal/c;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 992
    const-string v0, "advertiser_id"

    invoke-virtual {p1}, Lcom/facebook/internal/c;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 993
    const-string v3, "advertiser_tracking_enabled"

    invoke-virtual {p1}, Lcom/facebook/internal/c;->d()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_0
    invoke-virtual {p0, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 996
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/facebook/internal/c;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 998
    const-string v0, "installer_package"

    invoke-virtual {p1}, Lcom/facebook/internal/c;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1001
    :cond_2
    const-string v0, "anon_id"

    invoke-virtual {p0, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1002
    const-string v0, "application_tracking_enabled"

    if-nez p3, :cond_4

    :goto_1
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1003
    return-void

    :cond_3
    move v0, v2

    .line 993
    goto :goto_0

    :cond_4
    move v1, v2

    .line 1002
    goto :goto_1
.end method

.method public static a(Lcom/facebook/AccessToken;)Z
    .locals 1

    .prologue
    .line 1259
    if-eqz p0, :cond_0

    invoke-static {}, Lcom/facebook/AccessToken;->a()Lcom/facebook/AccessToken;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/AccessToken;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;)Z"
        }
    .end annotation

    .prologue
    .line 745
    if-nez p0, :cond_1

    .line 746
    if-nez p1, :cond_0

    const/4 v0, 0x1

    .line 748
    :goto_0
    return v0

    .line 746
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 748
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 378
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 374
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b()I
    .locals 2

    .prologue
    .line 1331
    sget v0, Lcom/facebook/internal/aa;->d:I

    if-lez v0, :cond_0

    .line 1332
    sget v0, Lcom/facebook/internal/aa;->d:I

    .line 1357
    :goto_0
    return v0

    .line 1338
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/devices/system/cpu/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1339
    new-instance v1, Lcom/facebook/internal/aa$3;

    invoke-direct {v1}, Lcom/facebook/internal/aa$3;-><init>()V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    .line 1346
    if-eqz v0, :cond_1

    .line 1347
    array-length v0, v0

    sput v0, Lcom/facebook/internal/aa;->d:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1354
    :cond_1
    :goto_1
    sget v0, Lcom/facebook/internal/aa;->d:I

    if-gtz v0, :cond_2

    .line 1355
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/facebook/internal/aa;->d:I

    .line 1357
    :cond_2
    sget v0, Lcom/facebook/internal/aa;->d:I

    goto :goto_0

    .line 1349
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private static b(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/facebook/internal/aa$b;
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 839
    const-string v0, "android_sdk_error_categories"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 841
    if-nez v0, :cond_0

    invoke-static {}, Lcom/facebook/internal/i;->a()Lcom/facebook/internal/i;

    move-result-object v5

    .line 847
    :goto_0
    new-instance v0, Lcom/facebook/internal/aa$b;

    const-string v1, "supports_implicit_sdk_logging"

    invoke-virtual {p1, v1, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string v2, "gdpv4_nux_content"

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "gdpv4_nux_enabled"

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const-string v4, "android_dialog_configs"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v4}, Lcom/facebook/internal/aa;->b(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v4

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/facebook/internal/aa$b;-><init>(ZLjava/lang/String;ZLjava/util/Map;Lcom/facebook/internal/i;Lcom/facebook/internal/aa$1;)V

    .line 855
    sget-object v1, Lcom/facebook/internal/aa;->b:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 857
    return-object v0

    .line 841
    :cond_0
    invoke-static {v0}, Lcom/facebook/internal/i;->a(Lorg/json/JSONArray;)Lcom/facebook/internal/i;

    move-result-object v5

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 419
    const-string v0, "MD5"

    invoke-static {v0, p0}, Lcom/facebook/internal/aa;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 431
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/internal/aa;->a(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs b([Ljava/lang/Object;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 953
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 954
    array-length v2, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, p0, v0

    .line 955
    if-eqz v3, :cond_0

    .line 956
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 954
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 959
    :cond_1
    return-object v1
.end method

.method private static b(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/internal/aa$a;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 894
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 896
    if-eqz p0, :cond_2

    .line 897
    const-string v0, "data"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 898
    if-eqz v3, :cond_2

    .line 899
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 900
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/internal/aa$a;->a(Lorg/json/JSONObject;)Lcom/facebook/internal/aa$a;

    move-result-object v4

    .line 902
    if-nez v4, :cond_0

    .line 899
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 906
    :cond_0
    invoke-virtual {v4}, Lcom/facebook/internal/aa$a;->a()Ljava/lang/String;

    move-result-object v5

    .line 907
    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 908
    if-nez v0, :cond_1

    .line 909
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 910
    invoke-virtual {v2, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 912
    :cond_1
    invoke-virtual {v4}, Lcom/facebook/internal/aa$a;->b()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 917
    :cond_2
    return-object v2
.end method

.method public static b(Lorg/json/JSONArray;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 973
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 974
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 975
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 974
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 978
    :cond_0
    return-object v1
.end method

.method public static b(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 720
    const-string v0, "facebook.com"

    invoke-static {p0, v0}, Lcom/facebook/internal/aa;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 721
    const-string v0, ".facebook.com"

    invoke-static {p0, v0}, Lcom/facebook/internal/aa;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 722
    const-string v0, "https://facebook.com"

    invoke-static {p0, v0}, Lcom/facebook/internal/aa;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 723
    const-string v0, "https://.facebook.com"

    invoke-static {p0, v0}, Lcom/facebook/internal/aa;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 724
    return-void
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 694
    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    move-result-object v0

    .line 695
    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 697
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v2

    .line 699
    invoke-virtual {v2, p1}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 700
    if-nez v0, :cond_0

    .line 714
    :goto_0
    return-void

    .line 704
    :cond_0
    const-string v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 705
    array-length v4, v3

    move v0, v1

    :goto_1
    if-ge v0, v4, :cond_2

    aget-object v5, v3, v0

    .line 706
    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 707
    array-length v6, v5

    if-lez v6, :cond_1

    .line 708
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, v5, v1

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "=;expires=Sat, 1 Jan 2000 00:00:01 UTC;"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 710
    invoke-virtual {v2, p1, v5}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 713
    :cond_2
    invoke-virtual {v2}, Landroid/webkit/CookieManager;->removeExpiredCookie()V

    goto :goto_0
.end method

.method public static b(Landroid/net/Uri;)Z
    .locals 2

    .prologue
    .line 1171
    if-eqz p0, :cond_1

    const-string v0, "http"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "https"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v0, 0x0

    .line 472
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 473
    invoke-static {p0}, Lcom/facebook/internal/aa;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 474
    const-string v1, "&"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 475
    array-length v4, v3

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_2

    aget-object v0, v3, v1

    .line 476
    const-string v5, "="

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 479
    :try_start_0
    array-length v5, v0

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    .line 480
    const/4 v5, 0x0

    aget-object v5, v0, v5

    const-string v6, "UTF-8"

    invoke-static {v5, v6}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v0, v0, v6

    const-string v6, "UTF-8"

    invoke-static {v0, v6}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 483
    :cond_1
    array-length v5, v0

    if-ne v5, v7, :cond_0

    .line 484
    const/4 v5, 0x0

    aget-object v0, v0, v5

    const-string v5, "UTF-8"

    invoke-static {v0, v5}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, ""

    invoke-virtual {v2, v0, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 488
    :catch_0
    move-exception v0

    .line 490
    const-string v5, "FacebookSDK"

    invoke-static {v5, v0}, Lcom/facebook/internal/aa;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    .line 494
    :cond_2
    return-object v2
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1122
    if-nez p0, :cond_0

    .line 1123
    const-string v0, "null"

    .line 1127
    :goto_0
    return-object v0

    .line 1124
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-ne p0, v0, :cond_1

    .line 1125
    const-string v0, "unknown"

    goto :goto_0

    .line 1127
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static c()V
    .locals 3

    .prologue
    .line 1374
    :try_start_0
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    .line 1375
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/TimeZone;->getDisplayName(ZI)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/facebook/internal/aa;->h:Ljava/lang/String;

    .line 1379
    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/internal/aa;->i:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1382
    :goto_0
    return-void

    .line 1380
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static c(Landroid/net/Uri;)Z
    .locals 2

    .prologue
    .line 1177
    if-eqz p0, :cond_0

    const-string v0, "content"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;)Lcom/facebook/internal/aa$b;
    .locals 1

    .prologue
    .line 815
    if-eqz p0, :cond_0

    sget-object v0, Lcom/facebook/internal/aa;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/internal/aa$b;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static d(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 1361
    sget-wide v0, Lcom/facebook/internal/aa;->e:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/facebook/internal/aa;->e:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x1b7740

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 1364
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/facebook/internal/aa;->e:J

    .line 1365
    invoke-static {}, Lcom/facebook/internal/aa;->c()V

    .line 1366
    invoke-static {p0}, Lcom/facebook/internal/aa;->e(Landroid/content/Context;)V

    .line 1367
    invoke-static {}, Lcom/facebook/internal/aa;->f()V

    .line 1368
    invoke-static {}, Lcom/facebook/internal/aa;->e()V

    .line 1370
    :cond_1
    return-void
.end method

.method private static d()Z
    .locals 2

    .prologue
    .line 1403
    const-string v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static d(Landroid/net/Uri;)Z
    .locals 2

    .prologue
    .line 1181
    if-eqz p0, :cond_0

    const-string v0, "file"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static e(Landroid/net/Uri;)J
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1185
    .line 1187
    :try_start_0
    invoke-static {}, Lcom/facebook/l;->f()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 1191
    if-eqz v2, :cond_1

    .line 1192
    :try_start_1
    const-string v0, "_size"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 1194
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1195
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v0

    .line 1200
    if-eqz v2, :cond_0

    .line 1201
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_0
    return-wide v0

    .line 1197
    :cond_1
    const-wide/16 v0, 0x0

    .line 1200
    if-eqz v2, :cond_0

    .line 1201
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1200
    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_1
    if-eqz v1, :cond_2

    .line 1201
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 1200
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_1
.end method

.method public static e(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2

    .prologue
    .line 1297
    invoke-static {p0}, Lcom/facebook/internal/x;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1298
    if-eqz v0, :cond_0

    .line 1308
    :goto_0
    return-object v0

    .line 1302
    :cond_0
    invoke-static {p0}, Lcom/facebook/internal/aa;->h(Ljava/lang/String;)Lcom/facebook/GraphRequest;

    move-result-object v0

    .line 1303
    invoke-virtual {v0}, Lcom/facebook/GraphRequest;->i()Lcom/facebook/q;

    move-result-object v0

    .line 1304
    invoke-virtual {v0}, Lcom/facebook/q;->a()Lcom/facebook/k;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1305
    const/4 v0, 0x0

    goto :goto_0

    .line 1308
    :cond_1
    invoke-virtual {v0}, Lcom/facebook/q;->b()Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0
.end method

.method private static e()V
    .locals 4

    .prologue
    .line 1410
    :try_start_0
    invoke-static {}, Lcom/facebook/internal/aa;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1411
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 1412
    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 1413
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v0, v0

    mul-long/2addr v0, v2

    sput-wide v0, Lcom/facebook/internal/aa;->g:J

    .line 1416
    :cond_0
    sget-wide v0, Lcom/facebook/internal/aa;->g:J

    long-to-double v0, v0

    invoke-static {v0, v1}, Lcom/facebook/internal/aa;->a(D)J

    move-result-wide v0

    sput-wide v0, Lcom/facebook/internal/aa;->g:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1421
    :goto_0
    return-void

    .line 1418
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static e(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 1389
    sget-object v0, Lcom/facebook/internal/aa;->j:Ljava/lang/String;

    const-string v1, "NoCarrier"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1391
    :try_start_0
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1393
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/internal/aa;->j:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1397
    :cond_0
    :goto_0
    return-void

    .line 1394
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic f(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 76
    invoke-static {p0}, Lcom/facebook/internal/aa;->g(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method private static f()V
    .locals 4

    .prologue
    .line 1427
    :try_start_0
    invoke-static {}, Lcom/facebook/internal/aa;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1428
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 1429
    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 1430
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockCount()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v0, v0

    mul-long/2addr v0, v2

    sput-wide v0, Lcom/facebook/internal/aa;->f:J

    .line 1432
    :cond_0
    sget-wide v0, Lcom/facebook/internal/aa;->f:J

    long-to-double v0, v0

    invoke-static {v0, v1}, Lcom/facebook/internal/aa;->a(D)J

    move-result-wide v0

    sput-wide v0, Lcom/facebook/internal/aa;->f:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1436
    :goto_0
    return-void

    .line 1433
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static g(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 863
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 864
    const-string v1, "fields"

    const-string v2, ","

    sget-object v3, Lcom/facebook/internal/aa;->a:[Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 866
    invoke-static {v4, p0, v4}, Lcom/facebook/GraphRequest;->a(Lcom/facebook/AccessToken;Ljava/lang/String;Lcom/facebook/GraphRequest$b;)Lcom/facebook/GraphRequest;

    move-result-object v1

    .line 867
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/facebook/GraphRequest;->a(Z)V

    .line 868
    invoke-virtual {v1, v0}, Lcom/facebook/GraphRequest;->a(Landroid/os/Bundle;)V

    .line 870
    invoke-virtual {v1}, Lcom/facebook/GraphRequest;->i()Lcom/facebook/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/q;->b()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method private static h(Ljava/lang/String;)Lcom/facebook/GraphRequest;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1313
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 1314
    const-string v0, "fields"

    const-string v2, "id,name,first_name,middle_name,last_name,link"

    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1315
    const-string v0, "access_token"

    invoke-virtual {v3, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1316
    new-instance v0, Lcom/facebook/GraphRequest;

    const-string v2, "me"

    sget-object v4, Lcom/facebook/s;->a:Lcom/facebook/s;

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/s;Lcom/facebook/GraphRequest$b;)V

    .line 1322
    return-object v0
.end method
