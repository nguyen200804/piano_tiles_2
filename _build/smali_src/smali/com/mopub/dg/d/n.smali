.class public final Lcom/mopub/dg/d/n;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/mopub/dg/d/n;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    if-nez p0, :cond_1

    const-string p0, ""

    :cond_1
    const-string v0, "DG"

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/mopub/dg/d/n;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    if-nez p0, :cond_1

    const-string p0, ""

    :cond_1
    invoke-static {p1}, Lcom/mopub/dg/d/n;->b(Ljava/lang/Throwable;)V

    const-string v0, "DG"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/Throwable;)I
    .locals 2

    const-string v0, ""

    const/4 v1, 0x6

    invoke-static {v1}, Lcom/mopub/dg/d/n;->a(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/mopub/dg/d/n;->b(Ljava/lang/Throwable;)V

    const-string v1, "DG"

    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    goto :goto_0
.end method

.method public static varargs a([Ljava/lang/Object;)I
    .locals 5

    const/4 v0, 0x6

    invoke-static {v0}, Lcom/mopub/dg/d/n;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    array-length v3, p0

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_2

    aget-object v0, p0, v1

    if-nez v0, :cond_1

    const-string v0, ""

    :cond_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v4, 0x20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/dg/d/n;->b(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static a(I)Z
    .locals 2

    const/4 v0, 0x1

    sget-boolean v1, Lcom/mopub/dg/c/g;->a:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget v1, Lcom/mopub/dg/c/g;->b:I

    if-ge p0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x6

    invoke-static {v0}, Lcom/mopub/dg/d/n;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    if-nez p0, :cond_1

    const-string p0, ""

    :cond_1
    const-string v0, "DG"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    const/4 v0, 0x5

    invoke-static {v0}, Lcom/mopub/dg/d/n;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    if-nez p0, :cond_1

    const-string p0, ""

    :cond_1
    invoke-static {p1}, Lcom/mopub/dg/d/n;->b(Ljava/lang/Throwable;)V

    const-string v0, "DG"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    goto :goto_0
.end method

.method private static b(Ljava/lang/Throwable;)V
    .locals 3

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    :try_start_0
    invoke-virtual {v0}, Ljava/io/StringWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Log.debug"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
