.class public Lcom/mnt/impl/b/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static final e:Ljava/lang/String;

.field private static final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static g:Ljava/lang/String;

.field private static h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    const-class v0, Lcom/mnt/impl/b/k;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 76
    sget-object v0, Lcom/mnt/impl/e;->ob:Ljava/lang/String;

    sput-object v0, Lcom/mnt/impl/b/k;->a:Ljava/lang/String;

    .line 78
    sget-object v0, Lcom/mnt/impl/e;->oc:Ljava/lang/String;

    sput-object v0, Lcom/mnt/impl/b/k;->b:Ljava/lang/String;

    .line 80
    sget-object v0, Lcom/mnt/impl/e;->od:Ljava/lang/String;

    sput-object v0, Lcom/mnt/impl/b/k;->c:Ljava/lang/String;

    .line 81
    sget-object v0, Lcom/mnt/impl/e;->oe:Ljava/lang/String;

    sput-object v0, Lcom/mnt/impl/b/k;->d:Ljava/lang/String;

    .line 82
    sget-object v0, Lcom/mnt/impl/e;->of:Ljava/lang/String;

    sput-object v0, Lcom/mnt/impl/b/k;->e:Ljava/lang/String;

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mnt/impl/b/k;->f:Ljava/util/Map;

    .line 91
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;F)I
    .locals 2

    .prologue
    .line 479
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 480
    mul-float/2addr v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 105
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 123
    :goto_0
    return-object v0

    .line 109
    :cond_0
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    .line 110
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/mnt/impl/e;->og:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_1

    .line 111
    sget-object v2, Lcom/mnt/impl/e;->oh:Ljava/lang/String;

    invoke-virtual {v1, v2, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 113
    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/mnt/impl/e;->oi:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_2

    .line 114
    sget-object v2, Lcom/mnt/impl/e;->oj:Ljava/lang/String;

    invoke-virtual {v1, v2, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 116
    :cond_2
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Lcom/mnt/impl/e;->ok:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_3

    .line 117
    sget-object v2, Lcom/mnt/impl/e;->ol:Ljava/lang/String;

    invoke-virtual {v1, v2, p4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    move-object v0, v1

    .line 119
    goto :goto_0

    .line 120
    :catch_0
    move-exception v1

    .line 121
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1, v1}, Lcom/mnt/impl/b/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(J)Ljava/lang/String;
    .locals 6

    .prologue
    .line 845
    const-string v0, ""

    .line 847
    :try_start_0
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 848
    new-instance v2, Ljava/text/SimpleDateFormat;

    sget-object v3, Lcom/mnt/impl/e;->oS:Ljava/lang/String;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 850
    sget-object v3, Lcom/mnt/impl/e;->oT:Ljava/lang/String;

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 851
    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 854
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v0, 0x0

    .line 563
    :try_start_0
    sget-object v1, Lcom/mnt/impl/e;->oG:Ljava/lang/String;

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 564
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 565
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 569
    :goto_0
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    .line 570
    const-string v3, ""

    .line 19588
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move v1, v0

    .line 19589
    :goto_1
    array-length v0, v2

    if-ge v1, v0, :cond_4

    .line 19590
    aget-byte v0, v2, v1

    .line 19598
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 19613
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v7, :cond_3

    .line 19614
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    .line 19615
    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 19590
    :cond_0
    :goto_2
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19591
    array-length v0, v2

    add-int/lit8 v0, v0, -0x1

    if-ge v1, v0, :cond_1

    .line 19592
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19589
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 567
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->update([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 580
    :catch_0
    move-exception v0

    const-string v0, ""

    :goto_3
    return-object v0

    .line 19617
    :cond_3
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v5, v7, :cond_0

    .line 19620
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    rsub-int/lit8 v5, v5, 0x2

    .line 19632
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19633
    new-array v0, v5, [C

    .line 19634
    const/16 v5, 0x30

    invoke-static {v0, v5}, Ljava/util/Arrays;->fill([CC)V

    .line 19636
    const/4 v5, 0x0

    invoke-virtual {v6, v5, v0}, Ljava/lang/StringBuilder;->insert(I[C)Ljava/lang/StringBuilder;

    .line 19640
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 19594
    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_3
.end method

.method public static a(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 1229
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/mnt/impl/e;->pc:Ljava/lang/String;

    sget-object v2, Lcom/mnt/impl/e;->pd:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1233
    :goto_0
    return-object v0

    .line 1231
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1233
    const-string v0, ""

    goto :goto_0
.end method

.method public static a([B)Ljava/lang/String;
    .locals 3

    .prologue
    .line 865
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 866
    const/4 v2, 0x0

    .line 868
    :try_start_0
    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 869
    :try_start_1
    invoke-virtual {v1, p0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 870
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 876
    :try_start_2
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 883
    :goto_0
    sget-object v1, Lcom/mnt/impl/e;->oU:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 885
    return-object v0

    .line 872
    :catch_0
    move-exception v0

    move-object v1, v2

    :goto_1
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 874
    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v1, :cond_0

    .line 876
    :try_start_4
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 878
    :cond_0
    :goto_3
    throw v0

    :catch_1
    move-exception v1

    goto :goto_0

    :catch_2
    move-exception v1

    goto :goto_3

    .line 874
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_2

    .line 872
    :catch_3
    move-exception v0

    goto :goto_1
.end method

.method public static a([I)Ljava/lang/String;
    .locals 4

    .prologue
    .line 708
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 709
    array-length v2, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget v3, p0, v0

    .line 710
    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 709
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 712
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static declared-synchronized a(Landroid/content/Context;Ljava/util/List;I)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/mnt/impl/e/c;",
            ">;I)",
            "Ljava/util/List",
            "<",
            "Lcom/mnt/impl/e/c;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 344
    const-class v4, Lcom/mnt/impl/b/k;

    monitor-enter v4

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-gt v0, p2, :cond_0

    .line 386
    :goto_0
    monitor-exit v4

    return-object p1

    .line 348
    :cond_0
    :try_start_1
    new-instance v0, Lcom/mnt/impl/b/l;

    invoke-direct {v0}, Lcom/mnt/impl/b/l;-><init>()V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 363
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 364
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mnt/impl/e/c;

    .line 14181
    iget v5, v0, Lcom/mnt/impl/e/c;->g:I

    .line 365
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/mnt/impl/e;->ov:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/mnt/impl/e/c;->getCampId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/mnt/impl/e;->ov:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/mnt/impl/e/c;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v5, Lcom/mnt/impl/e;->ow:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 344
    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0

    .line 368
    :cond_1
    :try_start_2
    invoke-static {p0}, Lcom/mnt/impl/b/h;->p(Landroid/content/Context;)I

    move-result v0

    .line 369
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_2

    move v0, v1

    .line 372
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v3, v1

    .line 373
    :goto_2
    if-ge v3, p2, :cond_4

    .line 374
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 375
    add-int/lit8 v0, v0, 0x1

    .line 376
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-lt v0, v5, :cond_3

    move v0, v1

    .line 373
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 380
    :cond_4
    invoke-static {p0, v0}, Lcom/mnt/impl/b/h;->a(Landroid/content/Context;I)V

    .line 381
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 382
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mnt/impl/e/c;

    .line 15181
    iget v5, v0, Lcom/mnt/impl/e/c;->g:I

    .line 383
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/mnt/impl/e;->ox:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/mnt/impl/e/c;->getCampId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/mnt/impl/e;->ox:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/mnt/impl/e/c;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v5, Lcom/mnt/impl/e;->oy:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :cond_5
    move-object p1, v2

    .line 386
    goto/16 :goto_0
.end method

.method public static a(ZLandroid/content/Context;Ljava/util/List;ILjava/lang/String;Ljava/lang/String;Lcom/mnt/impl/e/g$c;Ljava/lang/String;)Ljava/util/List;
    .locals 36
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/mnt/impl/e/g$a;",
            ">;I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/mnt/impl/e/g$c;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/mnt/Ad;",
            ">;"
        }
    .end annotation

    .prologue
    .line 296
    if-eqz p2, :cond_0

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_1

    .line 297
    :cond_0
    const/4 v4, 0x0

    .line 336
    :goto_0
    return-object v4

    .line 299
    :cond_1
    new-instance v35, Ljava/util/LinkedList;

    invoke-direct/range {v35 .. v35}, Ljava/util/LinkedList;-><init>()V

    .line 300
    const/4 v4, 0x0

    move/from16 v34, v4

    :goto_1
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v4

    move/from16 v0, v34

    if-ge v0, v4, :cond_8

    .line 301
    move-object/from16 v0, p2

    move/from16 v1, v34

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mnt/impl/e/g$a;

    .line 2351
    iget-object v0, v4, Lcom/mnt/impl/e/g$a;->a:Lcom/mnt/impl/e/g$b;

    move-object/from16 v27, v0

    .line 303
    if-eqz v27, :cond_6

    .line 306
    if-eqz p0, :cond_3

    invoke-static/range {p1 .. p1}, Lcom/mnt/impl/b/a;->a(Landroid/content/Context;)Lcom/mnt/impl/b/a;

    move-result-object v5

    .line 2446
    move-object/from16 v0, v27

    iget-object v6, v0, Lcom/mnt/impl/e/g$b;->a:Ljava/lang/String;

    .line 3103
    sget-object v7, Lcom/mnt/impl/b/a;->a:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    iget-object v5, v5, Lcom/mnt/impl/b/a;->b:Landroid/content/Context;

    invoke-static {v5}, Lcom/mnt/impl/b/h;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5, v6}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    :cond_2
    const/4 v5, 0x1

    .line 306
    :goto_2
    if-nez v5, :cond_6

    .line 3466
    :cond_3
    move-object/from16 v0, v27

    iget-object v5, v0, Lcom/mnt/impl/e/g$b;->e:Ljava/lang/String;

    .line 306
    move-object/from16 v0, p1

    invoke-static {v0, v5}, Lcom/mnt/impl/b/k;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 310
    if-eqz p0, :cond_5

    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 311
    iget-object v5, v4, Lcom/mnt/impl/e/g$a;->b:Ljava/util/Map;

    .line 4355
    if-eqz v5, :cond_6

    .line 5355
    iget-object v5, v4, Lcom/mnt/impl/e/g$a;->b:Ljava/util/Map;

    .line 311
    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    if-lez v5, :cond_6

    .line 314
    const/4 v7, 0x0

    .line 6355
    iget-object v5, v4, Lcom/mnt/impl/e/g$a;->b:Ljava/util/Map;

    .line 315
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 316
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    move-object/from16 v0, p4

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_4

    .line 317
    const/4 v5, 0x1

    .line 321
    :goto_3
    if-eqz v5, :cond_6

    .line 328
    :cond_5
    new-instance v5, Lcom/mnt/impl/e/c;

    .line 6446
    move-object/from16 v0, v27

    iget-object v6, v0, Lcom/mnt/impl/e/g$b;->a:Ljava/lang/String;

    .line 6466
    move-object/from16 v0, v27

    iget-object v7, v0, Lcom/mnt/impl/e/g$b;->e:Ljava/lang/String;

    .line 6470
    move-object/from16 v0, v27

    iget-object v8, v0, Lcom/mnt/impl/e/g$b;->f:Ljava/lang/String;

    .line 6474
    move-object/from16 v0, v27

    iget-object v9, v0, Lcom/mnt/impl/e/g$b;->g:Ljava/lang/String;

    .line 6478
    move-object/from16 v0, v27

    iget-object v10, v0, Lcom/mnt/impl/e/g$b;->h:Ljava/lang/String;

    .line 6490
    move-object/from16 v0, v27

    iget-object v11, v0, Lcom/mnt/impl/e/g$b;->k:Ljava/lang/String;

    .line 6494
    move-object/from16 v0, v27

    iget-object v12, v0, Lcom/mnt/impl/e/g$b;->l:Ljava/lang/String;

    .line 6498
    move-object/from16 v0, v27

    iget-object v13, v0, Lcom/mnt/impl/e/g$b;->m:Ljava/lang/String;

    .line 7482
    move-object/from16 v0, v27

    iget v14, v0, Lcom/mnt/impl/e/g$b;->i:F

    .line 7486
    move-object/from16 v0, v27

    iget v15, v0, Lcom/mnt/impl/e/g$b;->j:F

    .line 8454
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/mnt/impl/e/g$b;->b:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 8544
    move-object/from16 v0, p6

    iget-object v0, v0, Lcom/mnt/impl/e/g$c;->b:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 9359
    iget v0, v4, Lcom/mnt/impl/e/g$a;->c:I

    move/from16 v18, v0

    .line 9458
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/mnt/impl/e/g$b;->c:Ljava/lang/String;

    move-object/from16 v19, v0

    .line 10367
    iget-wide v0, v4, Lcom/mnt/impl/e/g$a;->f:J

    move-wide/from16 v20, v0

    .line 10462
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/mnt/impl/e/g$b;->d:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 10502
    move-object/from16 v0, v27

    iget v0, v0, Lcom/mnt/impl/e/g$b;->n:I

    move/from16 v23, v0

    .line 11355
    iget-object v0, v4, Lcom/mnt/impl/e/g$a;->b:Ljava/util/Map;

    move-object/from16 v24, v0

    .line 11363
    iget-object v0, v4, Lcom/mnt/impl/e/g$a;->d:Lcom/mnt/impl/b/b;

    move-object/from16 v25, v0

    .line 11375
    iget v0, v4, Lcom/mnt/impl/e/g$a;->e:I

    move/from16 v26, v0

    .line 11548
    move-object/from16 v0, p6

    iget-object v0, v0, Lcom/mnt/impl/e/g$c;->a:Ljava/lang/String;

    move-object/from16 v29, v0

    .line 12371
    iget v0, v4, Lcom/mnt/impl/e/g$a;->g:I

    move/from16 v30, v0

    .line 12510
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/mnt/impl/e/g$b;->p:Ljava/lang/String;

    move-object/from16 v31, v0

    .line 12514
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/mnt/impl/e/g$b;->q:Ljava/lang/String;

    move-object/from16 v32, v0

    .line 13506
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/mnt/impl/e/g$b;->o:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v27, p5

    move-object/from16 v28, p7

    .line 328
    invoke-direct/range {v5 .. v33}, Lcom/mnt/impl/e/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FFLjava/lang/String;Ljava/lang/String;ILjava/lang/String;JLjava/lang/String;ILjava/util/Map;Lcom/mnt/impl/b/b;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    move-object/from16 v0, v35

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 300
    :cond_6
    add-int/lit8 v4, v34, 0x1

    move/from16 v34, v4

    goto/16 :goto_1

    .line 3103
    :cond_7
    const/4 v5, 0x0

    goto/16 :goto_2

    .line 331
    :cond_8
    if-eqz p0, :cond_9

    .line 334
    move-object/from16 v0, p1

    move-object/from16 v1, v35

    move/from16 v2, p3

    invoke-static {v0, v1, v2}, Lcom/mnt/impl/b/k;->a(Landroid/content/Context;Ljava/util/List;I)Ljava/util/List;

    move-result-object v4

    .line 336
    :goto_4
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v4, v5

    goto/16 :goto_0

    :cond_9
    move-object/from16 v4, v35

    goto :goto_4

    :cond_a
    move v5, v7

    goto/16 :goto_3
.end method

.method public static a(Landroid/content/Context;Lcom/mnt/impl/e/b;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 397
    .line 16044
    iget-object v0, p1, Lcom/mnt/impl/e/b;->c:Ljava/lang/String;

    .line 398
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 16048
    iget-object v0, p1, Lcom/mnt/impl/e/b;->d:Ljava/lang/String;

    .line 401
    sget-object v1, Lcom/mnt/impl/e;->oz:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/mnt/impl/b/k;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 16077
    iget v1, p1, Lcom/mnt/impl/e/b;->g:I

    .line 401
    if-ne v1, v3, :cond_2

    .line 403
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/mnt/impl/e;->oA:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 17040
    iget-object v1, p1, Lcom/mnt/impl/e/b;->b:Ljava/lang/String;

    .line 403
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/mnt/impl/b/k;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 415
    :goto_0
    return-void

    .line 18040
    :cond_0
    iget-object v1, p1, Lcom/mnt/impl/e/b;->b:Ljava/lang/String;

    .line 407
    invoke-static {v0, v1}, Lcom/mnt/impl/f/h;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 408
    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/mnt/impl/f/h;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 18077
    :cond_1
    iget v1, p1, Lcom/mnt/impl/e/b;->g:I

    .line 408
    if-ne v1, v3, :cond_2

    .line 409
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/mnt/impl/e;->oB:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 19040
    iget-object v1, p1, Lcom/mnt/impl/e/b;->b:Ljava/lang/String;

    .line 409
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 413
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/mnt/impl/e;->oC:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/mnt/LogUtil;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 414
    invoke-static {p0, v0, v3}, Lcom/mnt/impl/b/k;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 686
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 705
    :cond_0
    :goto_0
    return-void

    .line 690
    :cond_1
    :try_start_0
    sget-object v0, Lcom/mnt/impl/b/k;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 691
    sget-object v1, Lcom/mnt/impl/e;->oI:Ljava/lang/String;

    sget-object v2, Lcom/mnt/impl/b/j;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 692
    sget-object v1, Lcom/mnt/impl/e;->oJ:Ljava/lang/String;

    invoke-static {p0}, Lcom/mnt/a/a;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 693
    sget-object v1, Lcom/mnt/impl/e;->oK:Ljava/lang/String;

    invoke-static {p0}, Lcom/mnt/a/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 694
    sget-object v1, Lcom/mnt/impl/e;->oL:Ljava/lang/String;

    invoke-static {p0}, Lcom/mnt/a/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 695
    sget-object v1, Lcom/mnt/impl/e;->oM:Ljava/lang/String;

    sget-object v2, Lcom/mnt/impl/e;->oN:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 696
    sget-object v1, Lcom/mnt/impl/e;->oO:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 697
    sget-object v1, Lcom/mnt/impl/e;->oP:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 698
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 699
    new-instance v1, Lcom/mnt/impl/f/e;

    invoke-direct {v1}, Lcom/mnt/impl/f/e;-><init>()V

    .line 700
    invoke-virtual {v1, v0}, Lcom/mnt/impl/f/e;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 703
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 282
    sget-object v0, Lcom/mnt/impl/b/k;->a:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/mnt/impl/b/k;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/Class;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 499
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 500
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    .line 501
    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v5, v3, v2

    .line 502
    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_0

    .line 508
    :goto_1
    return v0

    .line 501
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_1
    move v0, v1

    .line 508
    goto :goto_1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 134
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 146
    :cond_0
    :goto_0
    return v0

    .line 140
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x400

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    const/4 v0, 0x1

    goto :goto_0

    .line 143
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 181
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 220
    :cond_0
    :goto_0
    return v0

    .line 2282
    :cond_1
    sget-object v1, Lcom/mnt/impl/b/k;->a:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/mnt/impl/b/k;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 185
    if-eqz v1, :cond_8

    .line 188
    :try_start_0
    sget-object v1, Lcom/mnt/impl/b/k;->b:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 189
    sget-object v1, Lcom/mnt/impl/b/k;->c:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 190
    sget-object v1, Lcom/mnt/impl/e;->om:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 191
    sget-object v2, Lcom/mnt/impl/e;->on:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 198
    :cond_2
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/mnt/impl/b/k;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 200
    :cond_3
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 202
    sget-object v2, Lcom/mnt/impl/b/k;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 203
    instance-of v2, p0, Landroid/app/Activity;

    if-eqz v2, :cond_7

    .line 204
    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 211
    :goto_2
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 212
    const/4 v0, 0x1

    goto :goto_0

    .line 192
    :cond_4
    sget-object v1, Lcom/mnt/impl/b/k;->d:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 193
    sget-object v1, Lcom/mnt/impl/e;->oo:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 194
    sget-object v2, Lcom/mnt/impl/e;->op:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 195
    :cond_5
    sget-object v1, Lcom/mnt/impl/e;->oq:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    sget-object v1, Lcom/mnt/impl/e;->or:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 196
    :cond_6
    invoke-static {p0, p1}, Lcom/mnt/impl/b/k;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    goto/16 :goto_0

    .line 206
    :cond_7
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 207
    const v2, 0x8000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 208
    const/high16 v2, 0x80000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 214
    :catch_0
    move-exception v1

    invoke-static {p0, p1}, Lcom/mnt/impl/b/k;->b(Landroid/content/Context;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 216
    :cond_8
    if-eqz p2, :cond_0

    .line 218
    invoke-static {p0, p1}, Lcom/mnt/impl/b/k;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    goto/16 :goto_0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 166
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 169
    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/mnt/impl/b/k;->b:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/mnt/impl/b/k;->c:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/mnt/impl/b/k;->d:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 424
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 425
    const/4 v0, 0x0

    .line 426
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/mnt/impl/e;->oD:Ljava/lang/String;

    sget-object v1, Lcom/mnt/impl/e;->oE:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/mnt/impl/e;->oF:Ljava/lang/String;

    sget-object v2, Lcom/mnt/impl/e;->oE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static b([B)Ljava/lang/String;
    .locals 3

    .prologue
    .line 1033
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1034
    if-eqz p0, :cond_0

    array-length v0, p0

    if-gtz v0, :cond_1

    .line 1035
    :cond_0
    const/4 v0, 0x0

    .line 1049
    :goto_0
    return-object v0

    .line 1037
    :cond_1
    const/4 v0, 0x0

    .line 1038
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 1041
    aget-byte v2, p0, v0

    shr-int/lit8 v2, v2, 0x4

    and-int/lit8 v2, v2, 0xf

    .line 1042
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 1043
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1044
    aget-byte v2, p0, v0

    and-int/lit8 v2, v2, 0xf

    .line 1045
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 1046
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1047
    add-int/lit8 v0, v0, 0x1

    .line 1048
    goto :goto_1

    .line 1049
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 231
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v1

    .line 271
    :goto_0
    return v0

    .line 235
    :cond_1
    sget-object v0, Lcom/mnt/impl/b/k;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/mnt/impl/b/k;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 237
    sget-object v0, Lcom/mnt/impl/b/k;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/mnt/impl/e;->os:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/mnt/impl/e;->ot:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 238
    :cond_2
    sget-object v0, Lcom/mnt/impl/b/k;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 239
    sget-object v0, Lcom/mnt/impl/b/k;->b:Ljava/lang/String;

    sget-object v3, Lcom/mnt/impl/e;->ou:Ljava/lang/String;

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 242
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/mnt/impl/b/k;->d:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 246
    :cond_4
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 247
    new-instance v5, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v5, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 249
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 250
    const/4 v3, 0x0

    invoke-virtual {v0, v5, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 252
    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_5

    .line 253
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_6

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object v4, v0

    .line 254
    :goto_1
    if-eqz v4, :cond_7

    iget-object v0, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object v3, v0

    .line 255
    :goto_2
    if-eqz v4, :cond_8

    iget-object v0, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 256
    :goto_3
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 257
    invoke-virtual {v5, v3, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 260
    :cond_5
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_9

    .line 261
    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {v5, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 267
    :goto_4
    invoke-virtual {p0, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 268
    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_6
    move-object v4, v2

    .line 253
    goto :goto_1

    :cond_7
    move-object v3, v2

    .line 254
    goto :goto_2

    :cond_8
    move-object v0, v2

    .line 255
    goto :goto_3

    .line 263
    :cond_9
    const/high16 v0, 0x10000000

    invoke-virtual {v5, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 264
    const v0, 0x8000

    invoke-virtual {v5, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 270
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v1

    .line 271
    goto/16 :goto_0
.end method

.method public static b(Landroid/content/Context;)[I
    .locals 4

    .prologue
    .line 447
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 448
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 449
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 450
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 451
    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v1, v2, v3

    const/4 v1, 0x1

    aput v0, v2, v1

    return-object v2
.end method

.method public static c(Landroid/content/Context;)I
    .locals 3

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 461
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    .line 463
    if-ne v2, v0, :cond_0

    .line 472
    :goto_0
    return v0

    .line 467
    :cond_0
    if-ne v2, v1, :cond_1

    move v0, v1

    .line 469
    goto :goto_0

    .line 472
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 650
    sget-object v0, Lcom/mnt/impl/e;->oH:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/mnt/impl/b/k;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 742
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 743
    const/16 v2, 0x80

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 745
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-gtz v2, :cond_1

    .line 757
    :cond_0
    :goto_0
    return v0

    .line 747
    :cond_1
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_0

    .line 751
    const/4 v0, 0x1

    goto :goto_0

    .line 755
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 12

    .prologue
    .line 936
    sget-object v0, Lcom/mnt/impl/b/k;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 937
    sget-object v0, Lcom/mnt/impl/b/k;->g:Ljava/lang/String;

    .line 969
    :goto_0
    return-object v0

    .line 939
    :cond_0
    const-class v2, Lcom/mnt/a/a;

    monitor-enter v2

    .line 940
    :try_start_0
    sget-object v0, Lcom/mnt/impl/b/k;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 941
    sget-object v0, Lcom/mnt/impl/b/k;->g:Ljava/lang/String;

    monitor-exit v2

    goto :goto_0

    .line 970
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 944
    :cond_1
    if-nez p0, :cond_2

    .line 945
    :try_start_1
    const-string v0, ""

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 947
    :cond_2
    :try_start_2
    sget-object v0, Lcom/mnt/impl/e;->oW:Ljava/lang/String;

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 948
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 949
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 950
    const/16 v1, 0x1000

    new-array v5, v1, [B

    .line 951
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 952
    const-wide/16 v0, 0x0

    .line 954
    :goto_1
    cmp-long v8, v0, v6

    if-gez v8, :cond_3

    .line 955
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v8

    .line 956
    if-nez v8, :cond_3

    .line 957
    invoke-virtual {v4, v5}, Ljava/io/InputStream;->read([B)I

    move-result v8

    .line 958
    int-to-long v10, v8

    add-long/2addr v0, v10

    .line 959
    const/4 v9, 0x0

    invoke-virtual {v3, v5, v9, v8}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 967
    :catch_0
    move-exception v0

    :try_start_3
    const-string v0, ""

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 961
    :cond_3
    :try_start_4
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 962
    invoke-static {v0}, Lcom/mnt/impl/b/k;->b([B)Ljava/lang/String;

    move-result-object v0

    .line 963
    if-eqz v0, :cond_4

    .line 964
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mnt/impl/b/k;->g:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    monitor-exit v2

    goto :goto_0

    .line 969
    :cond_4
    const-string v0, ""

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0
.end method

.method public static d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    .prologue
    .line 978
    if-eqz p0, :cond_0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 979
    :cond_0
    const-string v0, ""

    .line 1004
    :goto_0
    return-object v0

    .line 981
    :cond_1
    sget-object v0, Lcom/mnt/impl/e;->oX:Ljava/lang/String;

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 982
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 983
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 984
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 985
    const/16 v0, 0x1000

    new-array v4, v0, [B

    .line 986
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 987
    const-wide/16 v0, 0x0

    .line 989
    :goto_1
    cmp-long v5, v0, v6

    if-gez v5, :cond_2

    .line 990
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v5

    .line 991
    if-nez v5, :cond_2

    .line 992
    invoke-virtual {v3, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    .line 993
    int-to-long v8, v5

    add-long/2addr v0, v8

    .line 994
    const/4 v8, 0x0

    invoke-virtual {v2, v4, v8, v5}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1002
    :catch_0
    move-exception v0

    const-string v0, ""

    goto :goto_0

    .line 996
    :cond_2
    :try_start_1
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 997
    invoke-static {v0}, Lcom/mnt/impl/b/k;->b([B)Ljava/lang/String;

    move-result-object v0

    .line 998
    if-eqz v0, :cond_3

    .line 999
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0

    .line 1004
    :cond_3
    const-string v0, ""

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 723
    const/4 v0, 0x0

    .line 725
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 726
    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 730
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static e(Landroid/content/Context;Ljava/lang/String;)I
    .locals 3

    .prologue
    const/4 v0, -0x1

    .line 1016
    if-eqz p0, :cond_0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1021
    :cond_0
    :goto_0
    return v0

    .line 1019
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1021
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static e(Landroid/content/Context;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 1059
    const/4 v1, 0x1

    .line 1060
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1062
    :try_start_0
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/mnt/MntActivity;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v4, 0x10000

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 1063
    if-nez v3, :cond_0

    move v1, v0

    .line 1066
    :cond_0
    invoke-static {p0}, Lcom/mnt/impl/b/k;->f(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    move v1, v0

    .line 1069
    :cond_1
    const/4 v3, -0x1

    const-string v4, "android.permission.INTERNET"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-ne v3, v2, :cond_2

    .line 1075
    :goto_0
    return v0

    .line 1073
    :catch_0
    move-exception v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 767
    sget-object v0, Lcom/mnt/impl/b/k;->f:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 768
    sget-object v2, Lcom/mnt/impl/b/k;->f:Ljava/util/Map;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 769
    if-nez v0, :cond_0

    move v0, v1

    .line 773
    :goto_0
    return v0

    .line 772
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 773
    const-wide/32 v4, 0x5265c00

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public static f(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 783
    .line 19796
    sget-object v0, Lcom/mnt/impl/e;->oR:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 783
    if-eqz v0, :cond_0

    .line 784
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/mnt/impl/e;->oQ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 786
    :cond_0
    return-object p0
.end method

.method public static f(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1140
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1154
    :cond_0
    :goto_0
    return-void

    .line 1144
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1145
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1146
    if-eqz v0, :cond_0

    .line 1149
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1154
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static f(Landroid/content/Context;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1086
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1087
    new-instance v2, Landroid/content/ComponentName;

    const-class v3, Lcom/mnt/MntBroadcastReceiver;

    invoke-direct {v2, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v3, 0x10000

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1088
    if-eqz v1, :cond_0

    .line 1089
    const/4 v0, 0x1

    .line 1094
    :cond_0
    :goto_0
    return v0

    .line 1092
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static g(Landroid/content/Context;Ljava/lang/String;)J
    .locals 8

    .prologue
    const-wide/16 v6, 0x1

    const-wide/16 v0, 0x0

    .line 1265
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    if-nez p0, :cond_1

    .line 1272
    :cond_0
    :goto_0
    return-wide v0

    .line 1268
    :cond_1
    invoke-static {p0, p1}, Lcom/mnt/impl/b/k;->i(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v2

    .line 1269
    cmp-long v4, v2, v6

    if-ltz v4, :cond_0

    .line 1272
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x5265c00

    div-long/2addr v0, v2

    add-long/2addr v0, v6

    goto :goto_0
.end method

.method public static final g(Landroid/content/Context;)Z
    .locals 3

    .prologue
    .line 1102
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1103
    sget-object v1, Lcom/mnt/impl/e;->oY:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static g(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 796
    sget-object v0, Lcom/mnt/impl/e;->oR:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static h(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 1297
    invoke-static {p0}, Lcom/mnt/impl/b/a;->a(Landroid/content/Context;)Lcom/mnt/impl/b/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mnt/impl/b/a;->a(Ljava/lang/String;)Lcom/mnt/impl/e/a;

    move-result-object v0

    .line 1298
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mnt/impl/e/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1299
    const/4 v0, 0x1

    .line 1303
    :goto_0
    return v0

    .line 1300
    :cond_0
    invoke-static {p0, p1}, Lcom/mnt/impl/b/h;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1301
    const/4 v0, 0x2

    goto :goto_0

    .line 1303
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static h(Landroid/content/Context;)J
    .locals 5

    .prologue
    .line 1110
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1111
    const-wide/16 v0, 0x0

    .line 1113
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 1114
    iget-wide v0, v2, Landroid/content/pm/PackageInfo;->firstInstallTime:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1118
    :goto_0
    return-wide v0

    .line 1116
    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static h(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 896
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 918
    :cond_0
    :goto_0
    return-object p0

    .line 899
    :cond_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 901
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    sget-object v2, Lcom/mnt/impl/e;->oV:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 902
    new-instance v2, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v2, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 903
    const/16 v0, 0x100

    new-array v0, v0, [B

    .line 905
    :goto_1
    invoke-virtual {v2, v0}, Ljava/util/zip/GZIPInputStream;->read([B)I

    move-result v3

    if-ltz v3, :cond_2

    .line 906
    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 909
    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 913
    :try_start_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 918
    :goto_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 913
    :cond_2
    :try_start_3
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 915
    :catch_1
    move-exception v0

    goto :goto_2

    .line 911
    :catchall_0
    move-exception v0

    .line 913
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 915
    :goto_3
    throw v0

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_3
.end method

.method public static i(Landroid/content/Context;)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1129
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1133
    :goto_0
    return v0

    .line 1131
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static i(Landroid/content/Context;Ljava/lang/String;)J
    .locals 4

    .prologue
    const-wide/16 v0, 0x0

    .line 1245
    :try_start_0
    invoke-static {p0, p1}, Lcom/mnt/impl/b/k;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1254
    :goto_0
    return-wide v0

    .line 1248
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1249
    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 1250
    iget-wide v0, v2, Landroid/content/pm/PackageInfo;->firstInstallTime:J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1252
    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static j(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 1180
    sget-object v0, Lcom/mnt/impl/b/k;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1181
    sget-object v0, Lcom/mnt/impl/b/k;->h:Ljava/lang/String;

    .line 1204
    :goto_0
    return-object v0

    .line 1183
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_1

    .line 1184
    invoke-static {p0}, Landroid/webkit/WebSettings;->getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mnt/impl/b/k;->h:Ljava/lang/String;

    .line 1204
    :goto_1
    sget-object v0, Lcom/mnt/impl/b/k;->h:Ljava/lang/String;

    goto :goto_0

    .line 1187
    :cond_1
    :try_start_0
    sget-object v0, Lcom/mnt/impl/e;->oZ:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1188
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Landroid/content/Context;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/mnt/impl/e;->pa:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 1189
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 1190
    sget-object v2, Lcom/mnt/impl/e;->pb:Ljava/lang/String;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1191
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/mnt/impl/b/k;->h:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1193
    :catch_0
    move-exception v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 1194
    invoke-static {}, Lcom/mnt/a/a;->g()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1197
    :cond_2
    :try_start_1
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mnt/impl/b/k;->h:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 1199
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1200
    invoke-static {}, Lcom/mnt/a/a;->g()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static k(Landroid/content/Context;)J
    .locals 2

    .prologue
    .line 1279
    if-nez p0, :cond_0

    .line 1280
    const-wide/16 v0, 0x0

    .line 1282
    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mnt/impl/b/k;->g(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0
.end method
