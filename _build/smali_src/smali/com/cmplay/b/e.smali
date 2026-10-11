.class public Lcom/cmplay/b/e;
.super Ljava/lang/Object;
.source "CacheUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmplay/b/e$1;,
        Lcom/cmplay/b/e$b;,
        Lcom/cmplay/b/e$a;
    }
.end annotation


# static fields
.field private static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/cmplay/b/e;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Lcom/cmplay/b/e$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/cmplay/b/e;->a:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/io/File;JI)V
    .locals 8

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    const-string v0, "cache dir error"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can\'t make dirs in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :goto_0
    return-void

    .line 91
    :cond_0
    new-instance v1, Lcom/cmplay/b/e$a;

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/cmplay/b/e$a;-><init>(Lcom/cmplay/b/e;Ljava/io/File;JILcom/cmplay/b/e$1;)V

    iput-object v1, p0, Lcom/cmplay/b/e;->b:Lcom/cmplay/b/e$a;

    goto :goto_0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/cmplay/b/e;
    .locals 2

    .prologue
    .line 52
    const-class v1, Lcom/cmplay/b/e;

    monitor-enter v1

    :try_start_0
    const-string v0, "tiles2"

    invoke-static {p0, v0}, Lcom/cmplay/b/e;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/cmplay/b/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;)Lcom/cmplay/b/e;
    .locals 5

    .prologue
    .line 56
    const-class v1, Lcom/cmplay/b/e;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-direct {v0, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 57
    const-wide/32 v2, 0x2faf080

    const v4, 0x7fffffff

    invoke-static {v0, v2, v3, v4}, Lcom/cmplay/b/e;->a(Ljava/io/File;JI)Lcom/cmplay/b/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 56
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized a(Ljava/io/File;JI)Lcom/cmplay/b/e;
    .locals 5

    .prologue
    .line 70
    const-class v1, Lcom/cmplay/b/e;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/cmplay/b/e;->a:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/cmplay/b/e;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmplay/b/e;

    .line 71
    if-nez v0, :cond_0

    .line 72
    new-instance v0, Lcom/cmplay/b/e;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/cmplay/b/e;-><init>(Ljava/io/File;JI)V

    .line 73
    sget-object v2, Lcom/cmplay/b/e;->a:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/cmplay/b/e;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    :cond_0
    monitor-exit v1

    return-object v0

    .line 70
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 146
    iget-object v1, p0, Lcom/cmplay/b/e;->b:Lcom/cmplay/b/e$a;

    if-nez v1, :cond_1

    .line 179
    :cond_0
    :goto_0
    return-object v0

    .line 149
    :cond_1
    iget-object v1, p0, Lcom/cmplay/b/e;->b:Lcom/cmplay/b/e$a;

    invoke-static {v1, p1}, Lcom/cmplay/b/e$a;->b(Lcom/cmplay/b/e$a;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 150
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 155
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    :try_start_1
    const-string v1, ""

    .line 158
    :goto_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 159
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 161
    :cond_2
    invoke-static {v1}, Lcom/cmplay/b/e$b;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 162
    invoke-static {v1}, Lcom/cmplay/b/e$b;->b(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 171
    if-eqz v2, :cond_0

    .line 173
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 174
    :catch_0
    move-exception v1

    .line 175
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 171
    :cond_3
    if-eqz v2, :cond_4

    .line 173
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 179
    :cond_4
    :goto_2
    invoke-virtual {p0, p1}, Lcom/cmplay/b/e;->b(Ljava/lang/String;)Z

    goto :goto_0

    .line 174
    :catch_1
    move-exception v1

    .line 175
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 167
    :catch_2
    move-exception v1

    move-object v2, v0

    .line 168
    :goto_3
    :try_start_4
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 171
    if-eqz v2, :cond_0

    .line 173
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_0

    .line 174
    :catch_3
    move-exception v1

    .line 175
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 171
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_4
    if-eqz v2, :cond_5

    .line 173
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 179
    :cond_5
    :goto_5
    throw v0

    .line 174
    :catch_4
    move-exception v1

    .line 175
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 171
    :catchall_1
    move-exception v0

    goto :goto_4

    .line 167
    :catch_5
    move-exception v1

    goto :goto_3
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 106
    iget-object v0, p0, Lcom/cmplay/b/e;->b:Lcom/cmplay/b/e$a;

    if-nez v0, :cond_0

    .line 123
    :goto_0
    return-void

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/cmplay/b/e;->b:Lcom/cmplay/b/e$a;

    invoke-static {v0, p1}, Lcom/cmplay/b/e$a;->a(Lcom/cmplay/b/e$a;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 112
    :try_start_0
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v0, Ljava/io/FileWriter;

    invoke-direct {v0, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    const/16 v3, 0x400

    invoke-direct {v2, v0, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :try_start_1
    invoke-virtual {v2, p2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 115
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 117
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    .line 118
    iget-object v0, p0, Lcom/cmplay/b/e;->b:Lcom/cmplay/b/e$a;

    invoke-static {v0, v1}, Lcom/cmplay/b/e$a;->a(Lcom/cmplay/b/e$a;Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 120
    :catch_0
    move-exception v0

    .line 121
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 117
    :catchall_0
    move-exception v0

    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    .line 118
    iget-object v2, p0, Lcom/cmplay/b/e;->b:Lcom/cmplay/b/e$a;

    invoke-static {v2, v1}, Lcom/cmplay/b/e$a;->a(Lcom/cmplay/b/e$a;Ljava/io/File;)V

    throw v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
.end method

.method public b(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 556
    iget-object v0, p0, Lcom/cmplay/b/e;->b:Lcom/cmplay/b/e$a;

    if-nez v0, :cond_0

    .line 557
    const/4 v0, 0x0

    .line 559
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/cmplay/b/e;->b:Lcom/cmplay/b/e$a;

    invoke-static {v0, p1}, Lcom/cmplay/b/e$a;->c(Lcom/cmplay/b/e$a;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method
