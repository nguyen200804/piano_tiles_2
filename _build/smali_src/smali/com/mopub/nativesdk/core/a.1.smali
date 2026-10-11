.class public final Lcom/mopub/nativesdk/core/a;
.super Ljava/lang/Object;
.source "AKService.java"


# static fields
.field static a:Landroid/content/Context;

.field static b:Landroid/os/Handler;

.field public static c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static e:Lcom/mopub/nativesdk/core/a;

.field private static f:Lcom/mopub/nativesdk/core/t;

.field private static g:Lcom/mopub/nativesdk/core/y;

.field private static h:Ljava/lang/String;

.field private static i:Ljava/lang/String;

.field private static j:J

.field private static k:Z

.field private static l:Z

.field private static m:Z

.field private static n:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static o:Lcom/mopub/nativesdk/core/Receiver;

.field private static p:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/mopub/nativesdk/core/i;",
            ">;"
        }
    .end annotation
.end field

.field private static q:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/mopub/nativesdk/core/i;",
            ">;"
        }
    .end annotation
.end field

.field private static s:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/mopub/nativesdk/b/e;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private r:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 49
    const-string v0, "1"

    sput-object v0, Lcom/mopub/nativesdk/core/a;->h:Ljava/lang/String;

    .line 50
    const-string v0, "1"

    sput-object v0, Lcom/mopub/nativesdk/core/a;->i:Ljava/lang/String;

    .line 51
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/mopub/nativesdk/core/a;->j:J

    .line 52
    sput-boolean v3, Lcom/mopub/nativesdk/core/a;->k:Z

    .line 53
    sput-boolean v3, Lcom/mopub/nativesdk/core/a;->l:Z

    .line 54
    const/4 v0, 0x1

    sput-boolean v0, Lcom/mopub/nativesdk/core/a;->m:Z

    .line 55
    sput-object v2, Lcom/mopub/nativesdk/core/a;->n:Ljava/util/Map;

    .line 58
    sput-object v2, Lcom/mopub/nativesdk/core/a;->p:Ljava/util/Map;

    .line 59
    sput-object v2, Lcom/mopub/nativesdk/core/a;->q:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Lcom/mopub/nativesdk/core/a;->r:I

    .line 72
    return-void
.end method

.method static synthetic a(Lcom/mopub/nativesdk/core/a;)I
    .locals 2

    .prologue
    .line 38
    iget v0, p0, Lcom/mopub/nativesdk/core/a;->r:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/mopub/nativesdk/core/a;->r:I

    return v0
.end method

.method static synthetic a(Lcom/mopub/nativesdk/core/a;I)I
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/mopub/nativesdk/core/a;->r:I

    return v0
.end method

.method public static a()V
    .locals 2

    .prologue
    .line 169
    sget-object v0, Lcom/mopub/nativesdk/core/a;->o:Lcom/mopub/nativesdk/core/Receiver;

    if-eqz v0, :cond_0

    .line 170
    sget-object v0, Lcom/mopub/nativesdk/core/a;->a:Landroid/content/Context;

    sget-object v1, Lcom/mopub/nativesdk/core/a;->o:Lcom/mopub/nativesdk/core/Receiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 172
    :cond_0
    sget-object v0, Lcom/mopub/nativesdk/core/a;->f:Lcom/mopub/nativesdk/core/t;

    invoke-virtual {v0}, Lcom/mopub/nativesdk/core/t;->interrupt()V

    .line 174
    sget-boolean v0, Lcom/mopub/nativesdk/core/a;->m:Z

    if-eqz v0, :cond_1

    .line 175
    const-string v0, "salvia"

    const-string v1, "Released."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :cond_1
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 192
    if-eqz p0, :cond_0

    .line 193
    sput-object p0, Lcom/mopub/nativesdk/core/a;->a:Landroid/content/Context;

    .line 195
    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 77
    sput-object p0, Lcom/mopub/nativesdk/core/a;->a:Landroid/content/Context;

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mopub/nativesdk/core/a;->h:Ljava/lang/String;

    .line 79
    sput-object p3, Lcom/mopub/nativesdk/core/a;->i:Ljava/lang/String;

    .line 80
    sput-boolean p5, Lcom/mopub/nativesdk/core/a;->m:Z

    .line 82
    const-string v0, "ak.native.sdk"

    const-string v1, "APPID"

    sget-object v2, Lcom/mopub/nativesdk/core/a;->h:Ljava/lang/String;

    invoke-static {p0, v0, v1, v2}, Lcom/mopub/nativesdk/d/q;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v0, "ak.native.sdk"

    const-string v1, "SUBID"

    sget-object v2, Lcom/mopub/nativesdk/core/a;->i:Ljava/lang/String;

    invoke-static {p0, v0, v1, v2}, Lcom/mopub/nativesdk/d/q;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    sget-object v0, Lcom/mopub/nativesdk/core/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/mopub/nativesdk/d/f;->p(Landroid/content/Context;)Ljava/lang/String;

    .line 87
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/.arrkii/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mopub/nativesdk/c;->a:Ljava/lang/String;

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/mopub/nativesdk/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "cache/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mopub/nativesdk/c;->b:Ljava/lang/String;

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/mopub/nativesdk/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "download/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mopub/nativesdk/c;->c:Ljava/lang/String;

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/mopub/nativesdk/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "html/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mopub/nativesdk/c;->d:Ljava/lang/String;

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/mopub/nativesdk/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "image/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mopub/nativesdk/c;->e:Ljava/lang/String;

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/mopub/nativesdk/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "shadow_image/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mopub/nativesdk/c;->f:Ljava/lang/String;

    .line 97
    :cond_0
    sget-object v0, Lcom/mopub/nativesdk/core/a;->c:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 99
    invoke-static {}, Lcom/mopub/nativesdk/core/a;->d()V

    .line 103
    :cond_1
    sget-object v0, Lcom/mopub/nativesdk/core/a;->s:Ljava/util/Map;

    if-nez v0, :cond_2

    .line 104
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mopub/nativesdk/core/a;->s:Ljava/util/Map;

    .line 107
    :cond_2
    sget-object v0, Lcom/mopub/nativesdk/core/a;->d:Ljava/util/Map;

    if-nez v0, :cond_3

    .line 108
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mopub/nativesdk/core/a;->d:Ljava/util/Map;

    .line 111
    :cond_3
    sget-object v0, Lcom/mopub/nativesdk/core/a;->p:Ljava/util/Map;

    if-nez v0, :cond_4

    .line 112
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mopub/nativesdk/core/a;->p:Ljava/util/Map;

    .line 115
    :cond_4
    sget-object v0, Lcom/mopub/nativesdk/core/a;->q:Ljava/util/Map;

    if-nez v0, :cond_5

    .line 116
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mopub/nativesdk/core/a;->q:Ljava/util/Map;

    .line 122
    :cond_5
    sget-object v0, Lcom/mopub/nativesdk/core/a;->b:Landroid/os/Handler;

    if-nez v0, :cond_6

    .line 123
    new-instance v0, Lcom/mopub/nativesdk/core/l;

    invoke-direct {v0}, Lcom/mopub/nativesdk/core/l;-><init>()V

    sput-object v0, Lcom/mopub/nativesdk/core/a;->b:Landroid/os/Handler;

    .line 140
    :cond_6
    sget-object v0, Lcom/mopub/nativesdk/core/a;->f:Lcom/mopub/nativesdk/core/t;

    if-eqz v0, :cond_7

    sget-object v0, Lcom/mopub/nativesdk/core/a;->f:Lcom/mopub/nativesdk/core/t;

    invoke-virtual {v0}, Lcom/mopub/nativesdk/core/t;->isInterrupted()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 141
    :cond_7
    new-instance v0, Lcom/mopub/nativesdk/core/t;

    invoke-direct {v0}, Lcom/mopub/nativesdk/core/t;-><init>()V

    .line 142
    sput-object v0, Lcom/mopub/nativesdk/core/a;->f:Lcom/mopub/nativesdk/core/t;

    invoke-virtual {v0}, Lcom/mopub/nativesdk/core/t;->start()V

    .line 145
    :cond_8
    sget-boolean v0, Lcom/mopub/nativesdk/core/a;->k:Z

    if-nez v0, :cond_9

    .line 148
    :try_start_0
    new-instance v0, Lcom/mopub/nativesdk/core/Receiver;

    invoke-direct {v0}, Lcom/mopub/nativesdk/core/Receiver;-><init>()V

    sput-object v0, Lcom/mopub/nativesdk/core/a;->o:Lcom/mopub/nativesdk/core/Receiver;

    .line 149
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 150
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 151
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 152
    sget-object v1, Lcom/mopub/nativesdk/core/a;->a:Landroid/content/Context;

    sget-object v2, Lcom/mopub/nativesdk/core/a;->o:Lcom/mopub/nativesdk/core/Receiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 153
    const/4 v0, 0x1

    sput-boolean v0, Lcom/mopub/nativesdk/core/a;->k:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    :cond_9
    :goto_0
    sget-object v0, Lcom/mopub/nativesdk/core/a;->a:Landroid/content/Context;

    const-string v1, "ak.native.sdk"

    const-string v2, "ACTIVE"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/mopub/nativesdk/d/q;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 161
    cmp-long v0, v0, v4

    if-nez v0, :cond_a

    .line 162
    sget-object v0, Lcom/mopub/nativesdk/core/a;->a:Landroid/content/Context;

    const-string v1, "ak.native.sdk"

    const-string v2, "ACTIVE"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v0, v1, v2, v4, v5}, Lcom/mopub/nativesdk/d/q;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    .line 165
    :cond_a
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/mopub/nativesdk/core/a;Ljava/util/List;ILcom/mopub/nativesdk/AdListener;)V
    .locals 3

    .prologue
    .line 38
    .line 4581
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lt p2, v0, :cond_1

    .line 4582
    if-eqz p3, :cond_0

    .line 4583
    const-string v0, "No Ads"

    invoke-interface {p3, v0}, Lcom/mopub/nativesdk/AdListener;->onLoadFailed(Ljava/lang/String;)V

    .line 4592
    :cond_0
    :goto_0
    return-void

    .line 4588
    :cond_1
    iget v0, p0, Lcom/mopub/nativesdk/core/a;->r:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_2

    iget v0, p0, Lcom/mopub/nativesdk/core/a;->r:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_3

    .line 4589
    :cond_2
    if-eqz p3, :cond_0

    .line 4590
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "No available Ads "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/mopub/nativesdk/core/a;->r:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Lcom/mopub/nativesdk/AdListener;->onLoadFailed(Ljava/lang/String;)V

    goto :goto_0

    .line 4597
    :cond_3
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/nativesdk/Campaign;

    .line 4599
    const/4 v1, 0x0

    new-instance v2, Lcom/mopub/nativesdk/core/q;

    invoke-direct {v2, p0, p3, p1}, Lcom/mopub/nativesdk/core/q;-><init>(Lcom/mopub/nativesdk/core/a;Lcom/mopub/nativesdk/AdListener;Ljava/util/List;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/mopub/nativesdk/core/a;->a(Lcom/mopub/nativesdk/Campaign;ZLcom/mopub/nativesdk/ClickListener;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 377
    sget-object v0, Lcom/mopub/nativesdk/core/a;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 382
    :goto_0
    return-void

    .line 380
    :cond_0
    sget-object v0, Lcom/mopub/nativesdk/core/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/mopub/nativesdk/core/n;->a(Landroid/content/Context;)Lcom/mopub/nativesdk/core/n;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mopub/nativesdk/core/n;->a(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public static a(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 396
    sput-object p0, Lcom/mopub/nativesdk/core/a;->n:Ljava/util/Map;

    .line 426
    return-void
.end method

.method public static a(Lcom/mopub/nativesdk/b/e;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 756
    if-nez p0, :cond_1

    .line 770
    :cond_0
    :goto_0
    return v0

    .line 763
    :cond_1
    invoke-virtual {p0}, Lcom/mopub/nativesdk/b/e;->d()I

    move-result v2

    if-ne v2, v1, :cond_2

    .line 764
    sget-object v0, Lcom/mopub/nativesdk/core/a;->a:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/mopub/nativesdk/b/e;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mopub/nativesdk/d/p;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move v0, v1

    .line 765
    goto :goto_0

    .line 766
    :cond_2
    invoke-virtual {p0}, Lcom/mopub/nativesdk/b/e;->d()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 767
    sget-object v0, Lcom/mopub/nativesdk/core/a;->a:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/mopub/nativesdk/b/e;->e()Ljava/lang/String;

    move-result-object v2

    .line 2348
    if-eqz v2, :cond_3

    if-nez v0, :cond_4

    :cond_3
    :goto_1
    move v0, v1

    .line 768
    goto :goto_0

    .line 2351
    :cond_4
    :try_start_0
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2352
    const/high16 v4, 0x10000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2353
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/high16 v5, 0x10000

    invoke-virtual {v4, v3, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    .line 2355
    if-eqz v4, :cond_5

    .line 2356
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 2357
    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2359
    :cond_5
    invoke-virtual {v0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 2363
    :try_start_1
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2364
    const/high16 v2, 0x10000000

    invoke-virtual {v3, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2365
    invoke-virtual {v0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 2366
    :catch_1
    move-exception v0

    .line 2367
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static b()Lcom/mopub/nativesdk/core/a;
    .locals 1

    .prologue
    .line 183
    sget-object v0, Lcom/mopub/nativesdk/core/a;->e:Lcom/mopub/nativesdk/core/a;

    if-nez v0, :cond_0

    .line 184
    new-instance v0, Lcom/mopub/nativesdk/core/a;

    invoke-direct {v0}, Lcom/mopub/nativesdk/core/a;-><init>()V

    sput-object v0, Lcom/mopub/nativesdk/core/a;->e:Lcom/mopub/nativesdk/core/a;

    .line 186
    :cond_0
    sget-object v0, Lcom/mopub/nativesdk/core/a;->e:Lcom/mopub/nativesdk/core/a;

    return-object v0
.end method

.method private static declared-synchronized b(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 298
    const-class v1, Lcom/mopub/nativesdk/core/a;

    monitor-enter v1

    :try_start_0
    const-string v0, "ak.native.sdk"

    const-string v2, "APPID"

    const-string v3, "5745-186"

    invoke-static {p0, v0, v2, v3}, Lcom/mopub/nativesdk/d/q;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mopub/nativesdk/core/a;->h:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 300
    monitor-exit v1

    return-void

    .line 298
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static b(Lcom/mopub/nativesdk/Campaign;)V
    .locals 3

    .prologue
    .line 645
    invoke-virtual {p0}, Lcom/mopub/nativesdk/Campaign;->getImpressionUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 646
    new-instance v0, Lcom/mopub/nativesdk/c/g;

    sget-object v1, Lcom/mopub/nativesdk/core/a;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mopub/nativesdk/c/g;-><init>(Landroid/content/Context;)V

    .line 647
    invoke-virtual {p0}, Lcom/mopub/nativesdk/Campaign;->getImpressionUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mopub/nativesdk/c/g;->a(Ljava/lang/String;)V

    .line 648
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/mopub/nativesdk/c/g;->a(ILcom/mopub/nativesdk/c/l;)V

    .line 651
    :cond_0
    return-void
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 439
    sget-object v0, Lcom/mopub/nativesdk/core/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/mopub/nativesdk/core/n;->a(Landroid/content/Context;)Lcom/mopub/nativesdk/core/n;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mopub/nativesdk/core/n;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static c()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 389
    sget-object v0, Lcom/mopub/nativesdk/core/a;->n:Ljava/util/Map;

    return-object v0
.end method

.method public static d()V
    .locals 3

    .prologue
    .line 719
    new-instance v0, Lcom/mopub/nativesdk/c/e;

    invoke-direct {v0}, Lcom/mopub/nativesdk/c/e;-><init>()V

    .line 720
    sget-object v1, Lcom/mopub/nativesdk/core/a;->a:Landroid/content/Context;

    new-instance v2, Lcom/mopub/nativesdk/core/s;

    invoke-direct {v2}, Lcom/mopub/nativesdk/core/s;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/mopub/nativesdk/c/e;->a(Landroid/content/Context;Lcom/mopub/nativesdk/c/k;)V

    .line 726
    return-void
.end method

.method static synthetic e()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, 0x1

    .line 3233
    sget-boolean v0, Lcom/mopub/nativesdk/core/a;->m:Z

    if-eqz v0, :cond_0

    .line 3234
    const-string v0, "salvia"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "salvia loop "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/mopub/nativesdk/core/a;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3237
    :cond_0
    sget-object v0, Lcom/mopub/nativesdk/core/a;->a:Landroid/content/Context;

    if-eqz v0, :cond_8

    .line 3242
    sget-boolean v0, Lcom/mopub/nativesdk/core/a;->l:Z

    if-nez v0, :cond_2

    .line 3307
    :try_start_0
    const-string v0, "DPManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 3308
    if-eqz v0, :cond_1

    .line 3309
    const-string v1, "init"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 3310
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lcom/mopub/nativesdk/core/a;->a:Landroid/content/Context;

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3316
    :cond_1
    sput-boolean v5, Lcom/mopub/nativesdk/core/a;->l:Z

    .line 3247
    :cond_2
    :goto_0
    sget-object v0, Lcom/mopub/nativesdk/core/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/mopub/nativesdk/core/a;->b(Landroid/content/Context;)V

    .line 3353
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/mopub/nativesdk/core/a;->j:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x36ee80

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    .line 3355
    sget-object v0, Lcom/mopub/nativesdk/core/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/mopub/nativesdk/core/n;->a(Landroid/content/Context;)Lcom/mopub/nativesdk/core/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/nativesdk/core/n;->a()V

    .line 3356
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/mopub/nativesdk/core/a;->j:J

    .line 3361
    :cond_3
    sget-object v0, Lcom/mopub/nativesdk/core/a;->a:Landroid/content/Context;

    const-string v1, "ak.native.sdk"

    const-string v2, "LOOP_TIME_DAILY"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/mopub/nativesdk/d/q;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 3362
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    const-wide/32 v2, 0x5265c00

    cmp-long v0, v0, v2

    if-lez v0, :cond_5

    .line 3364
    sget-object v0, Lcom/mopub/nativesdk/core/a;->d:Ljava/util/Map;

    if-eqz v0, :cond_4

    .line 3365
    sget-object v0, Lcom/mopub/nativesdk/core/a;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 3367
    :cond_4
    sget-object v0, Lcom/mopub/nativesdk/core/a;->a:Landroid/content/Context;

    const-string v1, "ak.native.sdk"

    const-string v2, "LOOP_TIME_DAILY"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v0, v1, v2, v4, v5}, Lcom/mopub/nativesdk/d/q;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    .line 3251
    :cond_5
    sget-object v0, Lcom/mopub/nativesdk/core/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/mopub/nativesdk/core/H;->a(Landroid/content/Context;)Lcom/mopub/nativesdk/core/H;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/nativesdk/core/H;->a()Lcom/mopub/nativesdk/core/y;

    move-result-object v0

    sput-object v0, Lcom/mopub/nativesdk/core/a;->g:Lcom/mopub/nativesdk/core/y;

    .line 3254
    invoke-static {}, Lcom/mopub/nativesdk/core/y;->d()Lcom/mopub/nativesdk/core/E;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 3255
    invoke-static {}, Lcom/mopub/nativesdk/core/y;->d()Lcom/mopub/nativesdk/core/E;

    move-result-object v0

    iget v0, v0, Lcom/mopub/nativesdk/core/E;->a:I

    sget v1, Lcom/mopub/nativesdk/core/y;->a:I

    if-ne v0, v1, :cond_6

    .line 3259
    sget-object v0, Lcom/mopub/nativesdk/core/a;->q:Ljava/util/Map;

    if-eqz v0, :cond_6

    sget-object v0, Lcom/mopub/nativesdk/core/a;->q:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 3260
    sget-object v0, Lcom/mopub/nativesdk/core/a;->q:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 3261
    sget-object v2, Lcom/mopub/nativesdk/core/a;->q:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 3316
    :catch_0
    move-exception v0

    sput-boolean v5, Lcom/mopub/nativesdk/core/a;->l:Z

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    sput-boolean v5, Lcom/mopub/nativesdk/core/a;->l:Z

    throw v0

    .line 3268
    :cond_6
    sget-object v0, Lcom/mopub/nativesdk/core/a;->g:Lcom/mopub/nativesdk/core/y;

    .line 4152
    iget-wide v0, v0, Lcom/mopub/nativesdk/core/y;->i:J

    .line 3269
    sget-object v2, Lcom/mopub/nativesdk/core/a;->a:Landroid/content/Context;

    const-string v3, "ak.native.sdk"

    const-string v4, "ACTIVE"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/mopub/nativesdk/d/q;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 3270
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    cmp-long v0, v2, v0

    if-lez v0, :cond_7

    .line 3273
    sget-object v0, Lcom/mopub/nativesdk/core/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/mopub/nativesdk/core/n;->a(Landroid/content/Context;)Lcom/mopub/nativesdk/core/n;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mopub/nativesdk/core/n;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 3278
    sget-object v0, Lcom/mopub/nativesdk/core/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/mopub/nativesdk/core/j;->a(Landroid/content/Context;)Lcom/mopub/nativesdk/core/j;

    move-result-object v0

    sget-object v1, Lcom/mopub/nativesdk/core/a;->g:Lcom/mopub/nativesdk/core/y;

    invoke-virtual {v0, v1}, Lcom/mopub/nativesdk/core/j;->a(Lcom/mopub/nativesdk/core/y;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 3286
    :cond_7
    sget-object v0, Lcom/mopub/nativesdk/core/a;->p:Ljava/util/Map;

    if-eqz v0, :cond_8

    sget-object v0, Lcom/mopub/nativesdk/core/a;->p:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 3287
    sget-object v0, Lcom/mopub/nativesdk/core/a;->p:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 3288
    sget-object v2, Lcom/mopub/nativesdk/core/a;->p:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 38
    :cond_8
    return-void
.end method

.method static synthetic f()Ljava/util/Map;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/mopub/nativesdk/core/a;->s:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/mopub/nativesdk/Campaign;ZLcom/mopub/nativesdk/ClickListener;)V
    .locals 4

    .prologue
    .line 656
    sget-object v0, Lcom/mopub/nativesdk/core/a;->s:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 657
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mopub/nativesdk/core/a;->s:Ljava/util/Map;

    .line 660
    :cond_0
    sget-object v0, Lcom/mopub/nativesdk/core/a;->s:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/mopub/nativesdk/Campaign;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 662
    sget-object v0, Lcom/mopub/nativesdk/core/a;->s:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/mopub/nativesdk/Campaign;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/nativesdk/b/e;

    .line 663
    if-eqz v0, :cond_3

    .line 667
    if-eqz p3, :cond_1

    .line 668
    invoke-virtual {v0}, Lcom/mopub/nativesdk/b/e;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/mopub/nativesdk/b/e;->d()I

    move-result v2

    invoke-interface {p3, p1, v1, v2}, Lcom/mopub/nativesdk/ClickListener;->onAdClicked(Lcom/mopub/nativesdk/Campaign;Ljava/lang/String;I)V

    .line 671
    :cond_1
    if-eqz p2, :cond_2

    .line 672
    invoke-static {v0}, Lcom/mopub/nativesdk/core/a;->a(Lcom/mopub/nativesdk/b/e;)Z

    .line 713
    :cond_2
    :goto_0
    return-void

    .line 680
    :cond_3
    new-instance v0, Lcom/mopub/nativesdk/b/b;

    invoke-direct {v0}, Lcom/mopub/nativesdk/b/b;-><init>()V

    .line 681
    sget-object v1, Lcom/mopub/nativesdk/core/a;->a:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/mopub/nativesdk/Campaign;->getClickUrl()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/mopub/nativesdk/core/r;

    invoke-direct {v3, p0, p1, p3, p2}, Lcom/mopub/nativesdk/core/r;-><init>(Lcom/mopub/nativesdk/core/a;Lcom/mopub/nativesdk/Campaign;Lcom/mopub/nativesdk/ClickListener;Z)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/mopub/nativesdk/b/b;->a(Landroid/content/Context;Ljava/lang/String;Lcom/mopub/nativesdk/b/f;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;IILcom/mopub/nativesdk/AdListener;)V
    .locals 3

    .prologue
    .line 446
    sput-object p1, Lcom/mopub/nativesdk/core/a;->h:Ljava/lang/String;

    .line 447
    sput-object p2, Lcom/mopub/nativesdk/core/a;->i:Ljava/lang/String;

    .line 449
    new-instance v0, Lcom/mopub/nativesdk/c/d;

    sget-object v1, Lcom/mopub/nativesdk/core/a;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mopub/nativesdk/c/d;-><init>(Landroid/content/Context;)V

    .line 451
    invoke-virtual {v0, p1}, Lcom/mopub/nativesdk/c/d;->a(Ljava/lang/String;)V

    .line 452
    invoke-virtual {v0, p2}, Lcom/mopub/nativesdk/c/d;->b(Ljava/lang/String;)V

    .line 453
    invoke-virtual {v0, p3}, Lcom/mopub/nativesdk/c/d;->a(I)V

    .line 454
    invoke-virtual {v0, p4}, Lcom/mopub/nativesdk/c/d;->b(I)V

    .line 456
    const/4 v1, 0x0

    new-instance v2, Lcom/mopub/nativesdk/core/o;

    invoke-direct {v2, p0, p5}, Lcom/mopub/nativesdk/core/o;-><init>(Lcom/mopub/nativesdk/core/a;Lcom/mopub/nativesdk/AdListener;)V

    invoke-virtual {v0, v1, v2}, Lcom/mopub/nativesdk/c/d;->a(ILcom/mopub/nativesdk/c/l;)V

    .line 509
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Lcom/mopub/nativesdk/AdListener;)V
    .locals 3

    .prologue
    .line 520
    sput-object p1, Lcom/mopub/nativesdk/core/a;->h:Ljava/lang/String;

    .line 521
    sput-object p2, Lcom/mopub/nativesdk/core/a;->i:Ljava/lang/String;

    .line 523
    new-instance v0, Lcom/mopub/nativesdk/c/d;

    sget-object v1, Lcom/mopub/nativesdk/core/a;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mopub/nativesdk/c/d;-><init>(Landroid/content/Context;)V

    .line 525
    invoke-virtual {v0, p1}, Lcom/mopub/nativesdk/c/d;->a(Ljava/lang/String;)V

    .line 526
    invoke-virtual {v0, p2}, Lcom/mopub/nativesdk/c/d;->b(Ljava/lang/String;)V

    .line 527
    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Lcom/mopub/nativesdk/c/d;->a(I)V

    .line 529
    const/4 v1, 0x0

    new-instance v2, Lcom/mopub/nativesdk/core/p;

    invoke-direct {v2, p0, p3}, Lcom/mopub/nativesdk/core/p;-><init>(Lcom/mopub/nativesdk/core/a;Lcom/mopub/nativesdk/AdListener;)V

    invoke-virtual {v0, v1, v2}, Lcom/mopub/nativesdk/c/d;->a(ILcom/mopub/nativesdk/c/l;)V

    .line 576
    return-void
.end method

.method public final a(Lcom/mopub/nativesdk/Campaign;)Z
    .locals 1

    .prologue
    .line 433
    invoke-virtual {p1}, Lcom/mopub/nativesdk/Campaign;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/nativesdk/core/a;->b(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final c(Lcom/mopub/nativesdk/Campaign;)Z
    .locals 4

    .prologue
    .line 732
    sget-object v0, Lcom/mopub/nativesdk/core/a;->s:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 733
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mopub/nativesdk/core/a;->s:Ljava/util/Map;

    .line 736
    :cond_0
    sget-object v0, Lcom/mopub/nativesdk/core/a;->s:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/mopub/nativesdk/Campaign;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 740
    sget-object v0, Lcom/mopub/nativesdk/core/a;->s:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/mopub/nativesdk/Campaign;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/nativesdk/b/e;

    .line 741
    if-eqz v0, :cond_1

    .line 742
    invoke-static {v0}, Lcom/mopub/nativesdk/core/a;->a(Lcom/mopub/nativesdk/b/e;)Z

    move-result v0

    .line 748
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
