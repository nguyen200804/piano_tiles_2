.class public Lcom/cmplay/base/util/q;
.super Ljava/lang/Object;
.source "RuntimeCheck.java"


# static fields
.field public static a:Landroid/content/Context;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static e:Z

.field private static f:Z

.field private static g:Z

.field private static h:Z

.field private static i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-string v0, ":service"

    sput-object v0, Lcom/cmplay/base/util/q;->b:Ljava/lang/String;

    .line 22
    const-string v0, ":inner"

    sput-object v0, Lcom/cmplay/base/util/q;->c:Ljava/lang/String;

    .line 23
    const-string v0, ":web"

    sput-object v0, Lcom/cmplay/base/util/q;->d:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 67
    sput-object p0, Lcom/cmplay/base/util/q;->a:Landroid/content/Context;

    .line 68
    sget-boolean v0, Lcom/cmplay/base/util/q;->i:Z

    if-eqz v0, :cond_1

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":service"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 73
    invoke-static {v0}, Lcom/cmplay/base/util/q;->a(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 76
    const/4 v0, 0x0

    .line 78
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 81
    :goto_1
    if-eqz v0, :cond_2

    .line 82
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 83
    if-eqz v0, :cond_2

    .line 84
    const-string v1, "SERVICE_PROCESS_NAME"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 85
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 86
    sput-object v0, Lcom/cmplay/base/util/q;->b:Ljava/lang/String;

    .line 91
    :cond_2
    invoke-static {p0}, Lcom/cmplay/base/util/q;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 93
    const-string v1, "zzb_pro"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5f53\u524dprocessName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    if-eqz v0, :cond_0

    .line 97
    sget-object v1, Lcom/cmplay/base/util/q;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 98
    sput-boolean v4, Lcom/cmplay/base/util/q;->e:Z

    .line 100
    :cond_3
    sget-object v1, Lcom/cmplay/base/util/q;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 101
    sput-boolean v4, Lcom/cmplay/base/util/q;->f:Z

    .line 103
    :cond_4
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 104
    sput-boolean v4, Lcom/cmplay/base/util/q;->g:Z

    .line 106
    :cond_5
    sget-object v1, Lcom/cmplay/base/util/q;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 107
    sput-boolean v4, Lcom/cmplay/base/util/q;->h:Z

    .line 109
    :cond_6
    sput-boolean v4, Lcom/cmplay/base/util/q;->i:Z

    goto/16 :goto_0

    .line 79
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 33
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 34
    const-string v0, "zzb_pro"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set\u670d\u52a1\u8fdb\u7a0b\u540d\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    sput-object p0, Lcom/cmplay/base/util/q;->b:Ljava/lang/String;

    .line 37
    :cond_0
    return-void
.end method

.method public static a()Z
    .locals 1

    .prologue
    .line 40
    sget-boolean v0, Lcom/cmplay/base/util/q;->e:Z

    return v0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 113
    new-instance v0, Ljava/io/File;

    const-string v1, "/proc/self/cmdline"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 115
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_2

    .line 116
    const/4 v2, 0x0

    .line 118
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 121
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 122
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 126
    if-eqz v1, :cond_0

    .line 128
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 135
    :cond_0
    :goto_0
    return-object v0

    .line 129
    :catch_0
    move-exception v1

    .line 130
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 126
    :cond_1
    if-eqz v1, :cond_2

    .line 128
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 135
    :cond_2
    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    goto :goto_0

    .line 129
    :catch_1
    move-exception v0

    .line 130
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 123
    :catch_2
    move-exception v0

    move-object v1, v2

    .line 124
    :goto_2
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 126
    if-eqz v1, :cond_2

    .line 128
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_1

    .line 129
    :catch_3
    move-exception v0

    .line 130
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 126
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v2, :cond_3

    .line 128
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 131
    :cond_3
    :goto_4
    throw v0

    .line 129
    :catch_4
    move-exception v1

    .line 130
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 126
    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_3

    .line 123
    :catch_5
    move-exception v0

    goto :goto_2
.end method

.method public static b()Z
    .locals 1

    .prologue
    .line 44
    sget-boolean v0, Lcom/cmplay/base/util/q;->g:Z

    return v0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 140
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 141
    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 143
    :goto_0
    return-object v0

    .line 142
    :catch_0
    move-exception v0

    .line 143
    const-string v0, ""

    goto :goto_0
.end method

.method public static c()Z
    .locals 1

    .prologue
    .line 47
    sget-boolean v0, Lcom/cmplay/base/util/q;->f:Z

    return v0
.end method

.method public static d()Z
    .locals 1

    .prologue
    .line 51
    sget-boolean v0, Lcom/cmplay/base/util/q;->h:Z

    return v0
.end method

.method public static e()V
    .locals 2

    .prologue
    .line 55
    invoke-static {}, Lcom/cmplay/base/util/q;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Must run in Service Process"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_0
    return-void
.end method

.method public static f()V
    .locals 2

    .prologue
    .line 61
    invoke-static {}, Lcom/cmplay/base/util/q;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Must run in Web Process"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_0
    return-void
.end method
