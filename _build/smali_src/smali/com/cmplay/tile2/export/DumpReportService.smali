.class public Lcom/cmplay/tile2/export/DumpReportService;
.super Landroid/app/Service;
.source "DumpReportService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private a()Ljava/io/File;
    .locals 1

    .prologue
    .line 58
    invoke-static {p0}, Lcom/cmplay/util/NativeUtil;->getLogcat(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/io/File;)Ljava/io/File;
    .locals 5

    .prologue
    .line 80
    invoke-static {p0}, Lcom/cmplay/i/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/1234556.log.zip"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 82
    invoke-virtual {p0}, Lcom/cmplay/tile2/export/DumpReportService;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 84
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 85
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "ccrash"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    if-eqz p1, :cond_0

    .line 87
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "/shared_prefs"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "/app_deep_cloud_config"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    invoke-direct {p0, v2, v3}, Lcom/cmplay/tile2/export/DumpReportService;->a(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 93
    new-instance v0, Ljava/io/File;

    const-string v2, "/data/anr"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 95
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    :cond_1
    new-instance v0, Lcom/cmplay/tile2/export/a;

    invoke-direct {v0}, Lcom/cmplay/tile2/export/a;-><init>()V

    .line 99
    invoke-virtual {v0, v3, v1}, Lcom/cmplay/tile2/export/a;->a(Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 100
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 101
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 102
    const-string v1, "DumpReportService"

    const-string v2, "compress files success"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :goto_0
    return-object v0

    .line 106
    :cond_2
    const-string v0, "DumpReportService"

    const-string v1, "compress files failed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 28
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/cmplay/tile2/export/DumpReportService$1;

    invoke-direct {v1, p0, p1}, Lcom/cmplay/tile2/export/DumpReportService$1;-><init>(Lcom/cmplay/tile2/export/DumpReportService;Landroid/content/Intent;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 34
    return-void
.end method

.method private a(Landroid/content/Intent;Ljava/io/File;)V
    .locals 5

    .prologue
    .line 113
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 114
    const-string v1, "app_id"

    const-string v2, "21"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    const-string v1, "chanel"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    const-string v1, "type"

    const-string v2, "feedback"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    const-string v1, "model"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 120
    const-string v2, "sysversion"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "android_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    const-string v1, "uuid"

    invoke-static {}, Lcom/cmplay/util/NativeUtil;->getAndroidId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    const-string v1, "version"

    invoke-static {}, Lcom/cmplay/util/NativeUtil;->getVersionCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    const-string v1, "syslang"

    invoke-static {}, Lcom/cmplay/util/NativeUtil;->getLanguageCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    const-string v1, "content"

    const-string v2, "content"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    const-string v1, "havelog"

    const-string v2, "yes"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    const-string v1, "auto_category"

    const-string v2, "307"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    new-instance v1, Lcom/cmplay/tile2/export/b;

    invoke-direct {v1}, Lcom/cmplay/tile2/export/b;-><init>()V

    .line 131
    invoke-virtual {v1, p2}, Lcom/cmplay/tile2/export/b;->a(Ljava/io/File;)V

    .line 132
    const-string v2, "log"

    invoke-virtual {v1, v2}, Lcom/cmplay/tile2/export/b;->a(Ljava/lang/String;)V

    .line 133
    const/4 v2, 0x1

    new-array v2, v2, [Lcom/cmplay/tile2/export/b;

    .line 134
    const/4 v3, 0x0

    aput-object v1, v2, v3

    .line 136
    const-string v1, "http://fk.cm.ksmobile.com/report"

    invoke-static {v1, v0, v2}, Lcom/cmplay/tile2/export/c;->a(Ljava/lang/String;Ljava/util/Map;[Lcom/cmplay/tile2/export/b;)Ljava/lang/String;

    move-result-object v0

    .line 137
    const-string v1, "DumpReportService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "post server res: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    return-void
.end method

.method static synthetic a(Lcom/cmplay/tile2/export/DumpReportService;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/cmplay/tile2/export/DumpReportService;->b(Landroid/content/Intent;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 68
    new-instance v0, Ljava/io/File;

    const-string v1, "files"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 70
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 71
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 72
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/cmplay/tile2/export/DumpReportService;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 73
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 77
    :cond_1
    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 62
    const-string v1, ".txt"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 64
    :cond_0
    :goto_0
    return v0

    .line 63
    :cond_1
    const-string v1, ".bak"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 64
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 37
    const-string v0, "DumpReportService"

    const-string v1, "report start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    invoke-direct {p0}, Lcom/cmplay/tile2/export/DumpReportService;->a()Ljava/io/File;

    move-result-object v0

    .line 40
    invoke-direct {p0, v0}, Lcom/cmplay/tile2/export/DumpReportService;->a(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 41
    if-eqz v1, :cond_1

    .line 42
    invoke-direct {p0, p1, v1}, Lcom/cmplay/tile2/export/DumpReportService;->a(Landroid/content/Intent;Ljava/io/File;)V

    .line 43
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 48
    :goto_0
    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 51
    :cond_0
    invoke-direct {p0, p1}, Lcom/cmplay/tile2/export/DumpReportService;->c(Landroid/content/Intent;)V

    .line 53
    const-string v0, "DumpReportService"

    const-string v1, "report finished stopping self"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    invoke-virtual {p0}, Lcom/cmplay/tile2/export/DumpReportService;->stopSelf()V

    .line 55
    return-void

    .line 45
    :cond_1
    const-string v1, "DumpReportService"

    const-string v2, "zip file failed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private c(Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 146
    const-string v0, "finish_pkg"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 147
    const-string v1, "finish_cls"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 148
    const-string v2, "finish_act"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 150
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 151
    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 152
    invoke-virtual {v3, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 153
    invoke-virtual {p0, v3}, Lcom/cmplay/tile2/export/DumpReportService;->sendBroadcast(Landroid/content/Intent;)V

    .line 154
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 249
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 254
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 255
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 273
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 274
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 259
    const-string v0, "DumpReportService"

    const-string v1, "DumpInfoReceiver recived action"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    if-eqz p1, :cond_0

    .line 261
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 262
    if-eqz v0, :cond_1

    const-string v1, "com.cmplay.tile2.export.dumpinfo"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 263
    const-string v1, "DumpReportService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "receive invalid action "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0

    .line 265
    :cond_1
    invoke-direct {p0, p1}, Lcom/cmplay/tile2/export/DumpReportService;->a(Landroid/content/Intent;)V

    goto :goto_0
.end method
