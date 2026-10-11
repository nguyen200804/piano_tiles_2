.class public Lcom/cmplay/internalpush/e;
.super Ljava/lang/Object;
.source "CMPlaySDK.java"


# static fields
.field public static a:Landroid/content/Context;

.field public static b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    sput-boolean v0, Lcom/cmplay/internalpush/e;->b:Z

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 44
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 46
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/cmplay/internalpush/e;->a:Landroid/content/Context;

    .line 49
    :try_start_0
    sget-object v0, Lcom/cmplay/internalpush/e;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sget-object v1, Lcom/cmplay/internalpush/e;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x80

    invoke-virtual {v0, v1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 50
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "SET_PROMOTION_LOG"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 51
    const-string v1, "zzb_log"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isDebug ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    if-eqz v0, :cond_0

    .line 54
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/cmplay/base/util/g;->a(Z)V

    .line 55
    const/4 v0, 0x1

    sput-boolean v0, Lcom/ijinshan/cloudconfig/d/a;->a:Z

    .line 56
    const-string v0, "com.cmplay.tiles4"

    sput-object v0, Lcom/ijinshan/cloudconfig/a;->b:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :cond_0
    :goto_0
    const-string v0, "whitetile2"

    invoke-static {v0}, Lcom/cmplay/base/util/i;->a(Ljava/lang/String;)V

    .line 67
    const-string v0, "Nativeutil"

    invoke-static {v0}, Lcom/cmplay/base/util/i;->b(Ljava/lang/String;)V

    .line 70
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/cmplay/base/util/i;->a(I)V

    .line 73
    invoke-static {p0}, Lcom/cmplay/base/util/q;->a(Landroid/content/Context;)V

    .line 74
    invoke-static {p0}, Lcom/cmplay/internalpush/e;->b(Landroid/content/Context;)V

    .line 75
    invoke-static {p0}, Lcom/cmplay/internalpush/e;->d(Landroid/content/Context;)V

    .line 77
    invoke-static {}, Lcom/cmplay/base/util/q;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    invoke-static {}, Lcom/cmplay/internalpush/t;->a()Lcom/cmplay/internalpush/t;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/cmplay/internalpush/t;->a(Landroid/content/Context;)V

    .line 80
    :cond_1
    invoke-static {}, Lcom/cmplay/base/util/q;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 82
    sget-object v0, Lcom/cmplay/internalpush/e;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmplay/base/util/k;->b(Landroid/content/Context;)V

    .line 85
    :cond_2
    const-string v0, "zzb"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u5185\u63a8\u521d\u59cb\u5316\u65f6\u95f4\uff1a"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    return-void

    .line 58
    :catch_0
    move-exception v0

    .line 59
    const-string v1, "zzb_log"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isDebug ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 135
    new-instance v0, Lcom/cmplay/internalpush/e$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/cmplay/internalpush/e$1;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {v0}, Lcom/cmplay/base/util/d;->a(Ljava/lang/Runnable;)V

    .line 146
    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 93
    invoke-static {}, Lcom/cmplay/base/util/q;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/cmplay/base/util/q;->a()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/cmplay/base/util/q;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 95
    :cond_0
    invoke-static {}, Lcom/cmplay/util/NativeUtil;->getChannel()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tiles2"

    invoke-static {}, Lcom/cmplay/base/util/q;->b()Z

    move-result v2

    invoke-static {}, Lcom/cmplay/base/util/q;->a()Z

    move-result v3

    invoke-static {p0, v0, v1, v2, v3}, Lcom/cmplay/internalpush/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 97
    new-instance v0, Lcom/cmplay/internalpush/c;

    invoke-direct {v0}, Lcom/cmplay/internalpush/c;-><init>()V

    invoke-static {p0, v0}, Lcom/cmplay/internalpush/k;->a(Landroid/content/Context;Lcom/cmplay/internalpush/h;)V

    .line 101
    :cond_1
    invoke-static {}, Lcom/cmplay/base/util/q;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 102
    invoke-static {p0}, Lcom/cmplay/internalpush/e;->c(Landroid/content/Context;)V

    .line 104
    :cond_2
    return-void
.end method

.method public static c(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 110
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/cmplay/internalpush/InnerPushService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 111
    const-string v1, "command_key"

    const-string v2, "pull_cloud_config"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 113
    return-void
.end method

.method public static d(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 121
    invoke-static {}, Lcom/cmplay/internalpush/d;->c()Lcom/cmplay/internalpush/d;

    move-result-object v0

    .line 122
    const/4 v1, 0x1

    invoke-static {p0, v1, v0, v0}, Lcom/cmplay/internalpush/video/e;->a(Landroid/content/Context;ZLcom/cmplay/internalpush/video/b/a;Lcom/cmplay/base/util/c/c;)V

    .line 123
    invoke-static {}, Lcom/cmplay/internalpush/video/e;->a()Landroid/content/BroadcastReceiver;

    move-result-object v0

    invoke-static {v0}, Lcom/ijinshan/cloudconfig/a;->a(Landroid/content/BroadcastReceiver;)V

    .line 125
    invoke-static {}, Lcom/cmplay/base/util/q;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    invoke-static {}, Lcom/cmplay/internalpush/d;->c()Lcom/cmplay/internalpush/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/cmplay/internalpush/d;->a(Landroid/content/Context;)V

    .line 129
    :cond_0
    return-void
.end method
