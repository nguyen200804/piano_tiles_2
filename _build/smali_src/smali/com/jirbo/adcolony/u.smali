.class Lcom/jirbo/adcolony/u;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jirbo/adcolony/u$b;,
        Lcom/jirbo/adcolony/u$a;
    }
.end annotation


# static fields
.field static a:[B

.field static b:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/16 v0, 0x400

    new-array v0, v0, [B

    sput-object v0, Lcom/jirbo/adcolony/u;->a:[B

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lcom/jirbo/adcolony/u;->b:Ljava/lang/StringBuilder;

    return-void
.end method

.method static a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static a(DI)Ljava/lang/String;
    .locals 2

    .prologue
    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    invoke-static {p0, p1, p2, v0}, Lcom/jirbo/adcolony/u;->a(DILjava/lang/StringBuilder;)V

    .line 79
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 140
    if-eqz p0, :cond_2

    .line 144
    :try_start_0
    sget-object v0, Lcom/jirbo/adcolony/al;->a:Lcom/jirbo/adcolony/al;

    const-string v2, "Loading "

    invoke-virtual {v0, v2}, Lcom/jirbo/adcolony/al;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/al;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/jirbo/adcolony/al;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/al;

    .line 145
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 146
    sget-object v4, Lcom/jirbo/adcolony/u;->a:[B

    monitor-enter v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    :try_start_1
    sget-object v0, Lcom/jirbo/adcolony/u;->b:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 149
    sget-object v0, Lcom/jirbo/adcolony/u;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    sget-object v0, Lcom/jirbo/adcolony/u;->a:[B

    const/4 v2, 0x0

    sget-object v5, Lcom/jirbo/adcolony/u;->a:[B

    array-length v5, v5

    invoke-virtual {v3, v0, v2, v5}, Ljava/io/FileInputStream;->read([BII)I

    move-result v0

    move v2, v0

    .line 151
    :goto_0
    const/4 v0, -0x1

    if-eq v2, v0, :cond_1

    move v0, v1

    .line 153
    :goto_1
    if-ge v0, v2, :cond_0

    .line 155
    sget-object v5, Lcom/jirbo/adcolony/u;->b:Ljava/lang/StringBuilder;

    sget-object v6, Lcom/jirbo/adcolony/u;->a:[B

    aget-byte v6, v6, v0

    int-to-char v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 153
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 157
    :cond_0
    sget-object v0, Lcom/jirbo/adcolony/u;->a:[B

    const/4 v2, 0x0

    sget-object v5, Lcom/jirbo/adcolony/u;->a:[B

    array-length v5, v5

    invoke-virtual {v3, v0, v2, v5}, Ljava/io/FileInputStream;->read([BII)I

    move-result v0

    move v2, v0

    goto :goto_0

    .line 159
    :cond_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 161
    sget-object v0, Lcom/jirbo/adcolony/u;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit v4

    .line 170
    :goto_2
    return-object v0

    .line 162
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 164
    :catch_0
    move-exception v0

    .line 166
    sget-object v0, Lcom/jirbo/adcolony/al;->d:Lcom/jirbo/adcolony/al;

    const-string v1, "Unable to load "

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/al;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/al;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/jirbo/adcolony/al;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/al;

    .line 167
    const-string v0, ""

    goto :goto_2

    .line 170
    :cond_2
    const-string v0, ""

    goto :goto_2
.end method

.method static a(DILjava/lang/StringBuilder;)V
    .locals 10

    .prologue
    const-wide/16 v8, 0xa

    const/16 v7, 0x30

    .line 84
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 86
    :cond_0
    invoke-virtual {p3, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 124
    :cond_1
    :goto_0
    return-void

    .line 90
    :cond_2
    const-wide/16 v0, 0x0

    cmpg-double v0, p0, v0

    if-gez v0, :cond_3

    .line 92
    neg-double p0, p0

    .line 93
    const/16 v0, 0x2d

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 96
    :cond_3
    if-nez p2, :cond_4

    .line 98
    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 102
    :cond_4
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    int-to-double v2, p2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-long v2, v0

    .line 103
    long-to-double v0, v2

    mul-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    .line 104
    div-long v4, v0, v2

    invoke-virtual {p3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 105
    const/16 v4, 0x2e

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 106
    rem-long v4, v0, v2

    .line 107
    const-wide/16 v0, 0x0

    cmp-long v0, v4, v0

    if-nez v0, :cond_5

    .line 109
    const/4 v0, 0x0

    :goto_1
    if-ge v0, p2, :cond_1

    .line 111
    invoke-virtual {p3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 109
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 116
    :cond_5
    mul-long v0, v4, v8

    :goto_2
    cmp-long v6, v0, v2

    if-gez v6, :cond_6

    .line 118
    invoke-virtual {p3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 116
    mul-long/2addr v0, v8

    goto :goto_2

    .line 120
    :cond_6
    invoke-virtual {p3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method static a(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 25
    sget-object v1, Lcom/jirbo/adcolony/t;->E:Landroid/app/Activity;

    if-nez v1, :cond_0

    .line 34
    :goto_0
    return v0

    .line 28
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/jirbo/adcolony/f;->d()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 29
    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    const/4 v0, 0x1

    goto :goto_0

    .line 32
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static b()D
    .locals 4

    .prologue
    .line 72
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-double v0, v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    :try_start_0
    invoke-static {p0}, Lcom/jirbo/adcolony/ab;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 61
    :goto_0
    return-object v0

    .line 59
    :catch_0
    move-exception v0

    .line 61
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static c()Z
    .locals 3

    .prologue
    .line 128
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/jirbo/adcolony/t;->c:Lcom/jirbo/adcolony/af;

    iget-object v2, v2, Lcom/jirbo/adcolony/af;->f:Lcom/jirbo/adcolony/d;

    invoke-virtual {v2}, Lcom/jirbo/adcolony/d;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/../lib/libImmEndpointWarpJ.so"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 129
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 130
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static d()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 175
    sget-object v1, Lcom/jirbo/adcolony/t;->E:Landroid/app/Activity;

    if-nez v1, :cond_1

    .line 176
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/jirbo/adcolony/t;->b()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "android.permission.VIBRATE"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method static e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 181
    sget-object v0, Lcom/jirbo/adcolony/t;->E:Landroid/app/Activity;

    if-nez v0, :cond_0

    const-string v0, ""

    .line 182
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/jirbo/adcolony/t;->b()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
