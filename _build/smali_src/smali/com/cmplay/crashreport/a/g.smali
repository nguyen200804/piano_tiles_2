.class public Lcom/cmplay/crashreport/a/g;
.super Ljava/lang/Object;


# direct methods
.method public static a()Lcom/cmplay/crashreport/a/f;
    .locals 1

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/cmplay/crashreport/a/g;->a(Ljava/io/File;)Lcom/cmplay/crashreport/a/f;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/io/File;)Lcom/cmplay/crashreport/a/f;
    .locals 8

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v1}, Lcom/cmplay/crashreport/a/b;->a(Landroid/os/StatFs;)J

    move-result-wide v2

    invoke-static {v1}, Lcom/cmplay/crashreport/a/b;->b(Landroid/os/StatFs;)J

    move-result-wide v4

    invoke-static {v1}, Lcom/cmplay/crashreport/a/b;->c(Landroid/os/StatFs;)J

    move-result-wide v6

    new-instance v0, Lcom/cmplay/crashreport/a/f;

    invoke-direct {v0}, Lcom/cmplay/crashreport/a/f;-><init>()V

    mul-long/2addr v4, v6

    iput-wide v4, v0, Lcom/cmplay/crashreport/a/f;->a:J

    mul-long/2addr v2, v6

    iput-wide v2, v0, Lcom/cmplay/crashreport/a/f;->b:J

    iget-wide v2, v0, Lcom/cmplay/crashreport/a/f;->a:J

    iget-wide v4, v0, Lcom/cmplay/crashreport/a/f;->b:J

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    iget-wide v2, v0, Lcom/cmplay/crashreport/a/f;->a:J

    iput-wide v2, v0, Lcom/cmplay/crashreport/a/f;->b:J

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method
