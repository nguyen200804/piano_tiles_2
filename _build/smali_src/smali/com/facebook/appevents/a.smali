.class public Lcom/facebook/appevents/a;
.super Ljava/lang/Object;
.source "AppEventsLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/appevents/a$h;,
        Lcom/facebook/appevents/a$g;,
        Lcom/facebook/appevents/a$b;,
        Lcom/facebook/appevents/a$i;,
        Lcom/facebook/appevents/a$f;,
        Lcom/facebook/appevents/a$e;,
        Lcom/facebook/appevents/a$d;,
        Lcom/facebook/appevents/a$a;,
        Lcom/facebook/appevents/a$c;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/facebook/appevents/a$a;",
            "Lcom/facebook/appevents/a$i;",
            ">;"
        }
    .end annotation
.end field

.field private static e:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private static f:Lcom/facebook/appevents/a$c;

.field private static g:Z

.field private static h:Landroid/content/Context;

.field private static i:Ljava/lang/Object;

.field private static j:Ljava/lang/String;

.field private static k:Ljava/lang/String;

.field private static l:Z

.field private static m:Z

.field private static n:Ljava/lang/String;


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Lcom/facebook/appevents/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 167
    const-class v0, Lcom/facebook/appevents/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/appevents/a;->a:Ljava/lang/String;

    .line 192
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/facebook/appevents/a;->d:Ljava/util/Map;

    .line 195
    sget-object v0, Lcom/facebook/appevents/a$c;->a:Lcom/facebook/appevents/a$c;

    sput-object v0, Lcom/facebook/appevents/a;->f:Lcom/facebook/appevents/a$c;

    .line 198
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/facebook/appevents/a;->i:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/AccessToken;)V
    .locals 2

    .prologue
    .line 768
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 769
    const-string v0, "context"

    invoke-static {p1, v0}, Lcom/facebook/internal/ab;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 770
    invoke-static {p1}, Lcom/facebook/internal/aa;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/appevents/a;->b:Ljava/lang/String;

    .line 772
    if-nez p3, :cond_0

    .line 773
    invoke-static {}, Lcom/facebook/AccessToken;->a()Lcom/facebook/AccessToken;

    move-result-object p3

    .line 777
    :cond_0
    if-eqz p3, :cond_3

    if-eqz p2, :cond_1

    invoke-virtual {p3}, Lcom/facebook/AccessToken;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 780
    :cond_1
    new-instance v0, Lcom/facebook/appevents/a$a;

    invoke-direct {v0, p3}, Lcom/facebook/appevents/a$a;-><init>(Lcom/facebook/AccessToken;)V

    iput-object v0, p0, Lcom/facebook/appevents/a;->c:Lcom/facebook/appevents/a$a;

    .line 789
    :goto_0
    sget-object v1, Lcom/facebook/appevents/a;->i:Ljava/lang/Object;

    monitor-enter v1

    .line 791
    :try_start_0
    sget-object v0, Lcom/facebook/appevents/a;->h:Landroid/content/Context;

    if-nez v0, :cond_2

    .line 792
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/facebook/appevents/a;->h:Landroid/content/Context;

    .line 794
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 796
    invoke-static {}, Lcom/facebook/appevents/a;->j()V

    .line 797
    return-void

    .line 783
    :cond_3
    if-nez p2, :cond_4

    .line 784
    invoke-static {p1}, Lcom/facebook/internal/aa;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    .line 786
    :cond_4
    new-instance v0, Lcom/facebook/appevents/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2}, Lcom/facebook/appevents/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/appevents/a;->c:Lcom/facebook/appevents/a$a;

    goto :goto_0

    .line 794
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static a(Lcom/facebook/appevents/a$a;Lcom/facebook/appevents/a$i;ZLcom/facebook/appevents/a$f;)Lcom/facebook/GraphRequest;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 1040
    invoke-virtual {p0}, Lcom/facebook/appevents/a$a;->b()Ljava/lang/String;

    move-result-object v0

    .line 1042
    invoke-static {v0, v5}, Lcom/facebook/internal/aa;->a(Ljava/lang/String;Z)Lcom/facebook/internal/aa$b;

    move-result-object v3

    .line 1045
    const-string v2, "%s/activities"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v1, v1}, Lcom/facebook/GraphRequest;->a(Lcom/facebook/AccessToken;Ljava/lang/String;Lorg/json/JSONObject;Lcom/facebook/GraphRequest$b;)Lcom/facebook/GraphRequest;

    move-result-object v2

    .line 1051
    invoke-virtual {v2}, Lcom/facebook/GraphRequest;->e()Landroid/os/Bundle;

    move-result-object v0

    .line 1052
    if-nez v0, :cond_0

    .line 1053
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1055
    :cond_0
    const-string v4, "access_token"

    invoke-virtual {p0}, Lcom/facebook/appevents/a$a;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1056
    sget-object v4, Lcom/facebook/appevents/a;->n:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 1057
    const-string v4, "device_token"

    sget-object v5, Lcom/facebook/appevents/a;->n:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1060
    :cond_1
    invoke-virtual {v2, v0}, Lcom/facebook/GraphRequest;->a(Landroid/os/Bundle;)V

    .line 1062
    if-nez v3, :cond_2

    move-object v0, v1

    .line 1084
    :goto_0
    return-object v0

    .line 1066
    :cond_2
    invoke-virtual {v3}, Lcom/facebook/internal/aa$b;->a()Z

    move-result v0

    invoke-virtual {p1, v2, v0, p2}, Lcom/facebook/appevents/a$i;->a(Lcom/facebook/GraphRequest;ZZ)I

    move-result v0

    .line 1071
    if-nez v0, :cond_3

    move-object v0, v1

    .line 1072
    goto :goto_0

    .line 1075
    :cond_3
    iget v1, p3, Lcom/facebook/appevents/a$f;->a:I

    add-int/2addr v0, v1

    iput v0, p3, Lcom/facebook/appevents/a$f;->a:I

    .line 1077
    new-instance v0, Lcom/facebook/appevents/a$7;

    invoke-direct {v0, p0, v2, p1, p3}, Lcom/facebook/appevents/a$7;-><init>(Lcom/facebook/appevents/a$a;Lcom/facebook/GraphRequest;Lcom/facebook/appevents/a$i;Lcom/facebook/appevents/a$f;)V

    invoke-virtual {v2, v0}, Lcom/facebook/GraphRequest;->a(Lcom/facebook/GraphRequest$b;)V

    move-object v0, v2

    .line 1084
    goto :goto_0
.end method

.method public static a()Lcom/facebook/appevents/a$c;
    .locals 2

    .prologue
    .line 450
    sget-object v1, Lcom/facebook/appevents/a;->i:Ljava/lang/Object;

    monitor-enter v1

    .line 451
    :try_start_0
    sget-object v0, Lcom/facebook/appevents/a;->f:Lcom/facebook/appevents/a$c;

    monitor-exit v1

    return-object v0

    .line 452
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static a(Lcom/facebook/appevents/a$d;Ljava/util/Set;)Lcom/facebook/appevents/a$f;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/appevents/a$d;",
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/appevents/a$a;",
            ">;)",
            "Lcom/facebook/appevents/a$f;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 993
    new-instance v1, Lcom/facebook/appevents/a$f;

    invoke-direct {v1, v2}, Lcom/facebook/appevents/a$f;-><init>(Lcom/facebook/appevents/a$1;)V

    .line 995
    sget-object v0, Lcom/facebook/appevents/a;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/l;->b(Landroid/content/Context;)Z

    move-result v3

    .line 997
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 998
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/appevents/a$a;

    .line 999
    invoke-static {v0}, Lcom/facebook/appevents/a;->a(Lcom/facebook/appevents/a$a;)Lcom/facebook/appevents/a$i;

    move-result-object v6

    .line 1000
    if-eqz v6, :cond_0

    .line 1004
    invoke-static {v0, v6, v3, v1}, Lcom/facebook/appevents/a;->a(Lcom/facebook/appevents/a$a;Lcom/facebook/appevents/a$i;ZLcom/facebook/appevents/a$f;)Lcom/facebook/GraphRequest;

    move-result-object v0

    .line 1009
    if-eqz v0, :cond_0

    .line 1010
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1014
    :cond_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 1015
    sget-object v0, Lcom/facebook/u;->e:Lcom/facebook/u;

    sget-object v2, Lcom/facebook/appevents/a;->a:Ljava/lang/String;

    const-string v3, "Flushing %d events due to %s."

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget v7, v1, Lcom/facebook/appevents/a$f;->a:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {p0}, Lcom/facebook/appevents/a$d;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v0, v2, v3, v5}, Lcom/facebook/internal/s;->a(Lcom/facebook/u;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1019
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/GraphRequest;

    .line 1022
    invoke-virtual {v0}, Lcom/facebook/GraphRequest;->i()Lcom/facebook/q;

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 1027
    :goto_2
    return-object v0

    :cond_3
    move-object v0, v2

    goto :goto_2
.end method

.method static synthetic a(Landroid/content/Context;Lcom/facebook/appevents/a$a;)Lcom/facebook/appevents/a$i;
    .locals 1

    .prologue
    .line 147
    invoke-static {p0, p1}, Lcom/facebook/appevents/a;->b(Landroid/content/Context;Lcom/facebook/appevents/a$a;)Lcom/facebook/appevents/a$i;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/facebook/appevents/a$a;)Lcom/facebook/appevents/a$i;
    .locals 2

    .prologue
    .line 943
    sget-object v1, Lcom/facebook/appevents/a;->i:Ljava/lang/Object;

    monitor-enter v1

    .line 944
    :try_start_0
    sget-object v0, Lcom/facebook/appevents/a;->d:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/appevents/a$i;

    monitor-exit v1

    return-object v0

    .line 945
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private a(J)V
    .locals 3

    .prologue
    .line 370
    sget-object v0, Lcom/facebook/appevents/a;->h:Landroid/content/Context;

    iget-object v1, p0, Lcom/facebook/appevents/a;->c:Lcom/facebook/appevents/a$a;

    invoke-static {v0, v1, p0, p1, p2}, Lcom/facebook/appevents/a$g;->a(Landroid/content/Context;Lcom/facebook/appevents/a$a;Lcom/facebook/appevents/a;J)V

    .line 371
    return-void
.end method

.method private a(JLjava/lang/String;)V
    .locals 7

    .prologue
    .line 361
    sget-object v1, Lcom/facebook/appevents/a;->h:Landroid/content/Context;

    iget-object v2, p0, Lcom/facebook/appevents/a;->c:Lcom/facebook/appevents/a$a;

    move-object v3, p0

    move-wide v4, p1

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Lcom/facebook/appevents/a$g;->a(Landroid/content/Context;Lcom/facebook/appevents/a$a;Lcom/facebook/appevents/a;JLjava/lang/String;)V

    .line 367
    return-void
.end method

.method private static a(Landroid/app/Activity;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1180
    invoke-virtual {p0}, Landroid/app/Activity;->getCallingActivity()Landroid/content/ComponentName;

    move-result-object v0

    .line 1181
    if-eqz v0, :cond_1

    .line 1182
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1183
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1185
    invoke-static {}, Lcom/facebook/appevents/a;->c()V

    .line 1223
    :goto_0
    return-void

    .line 1188
    :cond_0
    sput-object v0, Lcom/facebook/appevents/a;->k:Ljava/lang/String;

    .line 1194
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1195
    if-eqz v0, :cond_2

    const-string v1, "_fbSourceApplicationHasBeenSet"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1197
    :cond_2
    invoke-static {}, Lcom/facebook/appevents/a;->c()V

    goto :goto_0

    .line 1201
    :cond_3
    invoke-static {v0}, La/a;->a(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v1

    .line 1203
    if-nez v1, :cond_4

    .line 1204
    invoke-static {}, Lcom/facebook/appevents/a;->c()V

    goto :goto_0

    .line 1208
    :cond_4
    sput-boolean v3, Lcom/facebook/appevents/a;->l:Z

    .line 1210
    const-string v2, "referer_app_link"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 1212
    if-nez v1, :cond_5

    .line 1213
    const/4 v0, 0x0

    sput-object v0, Lcom/facebook/appevents/a;->k:Ljava/lang/String;

    goto :goto_0

    .line 1217
    :cond_5
    const-string v2, "package"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1218
    sput-object v1, Lcom/facebook/appevents/a;->k:Ljava/lang/String;

    .line 1221
    const-string v1, "_fbSourceApplicationHasBeenSet"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 332
    invoke-static {p0}, Lcom/facebook/internal/aa;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/appevents/a;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 333
    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/facebook/appevents/a$b;Lcom/facebook/appevents/a$a;)V
    .locals 3

    .prologue
    .line 863
    invoke-static {}, Lcom/facebook/l;->d()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/facebook/appevents/a$5;

    invoke-direct {v1, p0, p2, p1}, Lcom/facebook/appevents/a$5;-><init>(Landroid/content/Context;Lcom/facebook/appevents/a$a;Lcom/facebook/appevents/a$b;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 873
    invoke-static {p1}, Lcom/facebook/appevents/a$b;->a(Lcom/facebook/appevents/a$b;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/facebook/appevents/a;->m:Z

    if-nez v0, :cond_0

    .line 874
    invoke-virtual {p1}, Lcom/facebook/appevents/a$b;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fb_mobile_activate_app"

    if-ne v0, v1, :cond_1

    .line 875
    const/4 v0, 0x1

    sput-boolean v0, Lcom/facebook/appevents/a;->m:Z

    .line 884
    :cond_0
    :goto_0
    return-void

    .line 877
    :cond_1
    sget-object v0, Lcom/facebook/u;->e:Lcom/facebook/u;

    const-string v1, "AppEvents"

    const-string v2, "Warning: Please call AppEventsLogger.activateApp(...)from the long-lived activity\'s onResume() methodbefore logging other app events."

    invoke-static {v0, v1, v2}, Lcom/facebook/internal/s;->a(Lcom/facebook/u;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 290
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 291
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Both context and applicationId must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 294
    :cond_1
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_2

    move-object v0, p0

    .line 295
    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/facebook/appevents/a;->a(Landroid/app/Activity;)V

    .line 307
    :goto_0
    invoke-static {p0, p1}, Lcom/facebook/l;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 309
    new-instance v0, Lcom/facebook/appevents/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/facebook/appevents/a;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/AccessToken;)V

    .line 310
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 311
    invoke-static {}, Lcom/facebook/appevents/a;->b()Ljava/lang/String;

    move-result-object v1

    .line 312
    sget-object v4, Lcom/facebook/appevents/a;->e:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v5, Lcom/facebook/appevents/a$1;

    invoke-direct {v5, v0, v2, v3, v1}, Lcom/facebook/appevents/a$1;-><init>(Lcom/facebook/appevents/a;JLjava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 318
    return-void

    .line 298
    :cond_2
    invoke-static {}, Lcom/facebook/appevents/a;->c()V

    .line 299
    const-class v0, Lcom/facebook/appevents/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "To set source application the context of activateApp must be an instance of Activity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic a(Lcom/facebook/appevents/a$a;Lcom/facebook/GraphRequest;Lcom/facebook/q;Lcom/facebook/appevents/a$i;Lcom/facebook/appevents/a$f;)V
    .locals 0

    .prologue
    .line 147
    invoke-static {p0, p1, p2, p3, p4}, Lcom/facebook/appevents/a;->b(Lcom/facebook/appevents/a$a;Lcom/facebook/GraphRequest;Lcom/facebook/q;Lcom/facebook/appevents/a$i;Lcom/facebook/appevents/a$f;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/appevents/a$d;)V
    .locals 0

    .prologue
    .line 147
    invoke-static {p0}, Lcom/facebook/appevents/a;->c(Lcom/facebook/appevents/a$d;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/appevents/a;J)V
    .locals 1

    .prologue
    .line 147
    invoke-direct {p0, p1, p2}, Lcom/facebook/appevents/a;->a(J)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/appevents/a;JLjava/lang/String;)V
    .locals 1

    .prologue
    .line 147
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/appevents/a;->a(JLjava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 721
    sget-object v1, Lcom/facebook/appevents/a;->i:Ljava/lang/Object;

    monitor-enter v1

    .line 722
    :try_start_0
    sput-object p0, Lcom/facebook/appevents/a;->n:Ljava/lang/String;

    .line 723
    monitor-exit v1

    .line 724
    return-void

    .line 723
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;Z)V
    .locals 6

    .prologue
    .line 851
    new-instance v0, Lcom/facebook/appevents/a$b;

    iget-object v1, p0, Lcom/facebook/appevents/a;->b:Ljava/lang/String;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/facebook/appevents/a$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;Z)V

    .line 857
    sget-object v1, Lcom/facebook/appevents/a;->h:Landroid/content/Context;

    iget-object v2, p0, Lcom/facebook/appevents/a;->c:Lcom/facebook/appevents/a$a;

    invoke-static {v1, v0, v2}, Lcom/facebook/appevents/a;->a(Landroid/content/Context;Lcom/facebook/appevents/a$b;Lcom/facebook/appevents/a$a;)V

    .line 858
    return-void
.end method

.method private static b(Landroid/content/Context;Lcom/facebook/appevents/a$a;)Lcom/facebook/appevents/a$i;
    .locals 5

    .prologue
    .line 920
    sget-object v0, Lcom/facebook/appevents/a;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/appevents/a$i;

    .line 921
    const/4 v1, 0x0

    .line 922
    if-nez v0, :cond_0

    .line 925
    invoke-static {p0}, Lcom/facebook/internal/c;->a(Landroid/content/Context;)Lcom/facebook/internal/c;

    move-result-object v0

    move-object v1, v0

    .line 928
    :cond_0
    sget-object v2, Lcom/facebook/appevents/a;->i:Ljava/lang/Object;

    monitor-enter v2

    .line 930
    :try_start_0
    sget-object v0, Lcom/facebook/appevents/a;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/appevents/a$i;

    .line 931
    if-nez v0, :cond_1

    .line 932
    new-instance v0, Lcom/facebook/appevents/a$i;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0}, Lcom/facebook/appevents/a;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v3, v4}, Lcom/facebook/appevents/a$i;-><init>(Lcom/facebook/internal/c;Ljava/lang/String;Ljava/lang/String;)V

    .line 936
    sget-object v1, Lcom/facebook/appevents/a;->d:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 938
    :cond_1
    monitor-exit v2

    return-object v0

    .line 939
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static b(Landroid/content/Context;)Lcom/facebook/appevents/a;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 383
    new-instance v0, Lcom/facebook/appevents/a;

    invoke-direct {v0, p0, v1, v1}, Lcom/facebook/appevents/a;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/AccessToken;)V

    return-object v0
.end method

.method static b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1232
    const-string v0, "Unclassified"

    .line 1233
    sget-boolean v1, Lcom/facebook/appevents/a;->l:Z

    if-eqz v1, :cond_0

    .line 1234
    const-string v0, "Applink"

    .line 1236
    :cond_0
    sget-object v1, Lcom/facebook/appevents/a;->k:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1237
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/facebook/appevents/a;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1239
    :cond_1
    return-object v0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 344
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 345
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Both context and applicationId must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 348
    :cond_1
    invoke-static {}, Lcom/facebook/appevents/a;->c()V

    .line 350
    new-instance v0, Lcom/facebook/appevents/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/facebook/appevents/a;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/AccessToken;)V

    .line 351
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 352
    sget-object v1, Lcom/facebook/appevents/a;->e:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v4, Lcom/facebook/appevents/a$2;

    invoke-direct {v4, v0, v2, v3}, Lcom/facebook/appevents/a$2;-><init>(Lcom/facebook/appevents/a;J)V

    invoke-virtual {v1, v4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 358
    return-void
.end method

.method private static b(Lcom/facebook/appevents/a$a;Lcom/facebook/GraphRequest;Lcom/facebook/q;Lcom/facebook/appevents/a$i;Lcom/facebook/appevents/a$f;)V
    .locals 10

    .prologue
    .line 1093
    invoke-virtual {p2}, Lcom/facebook/q;->a()Lcom/facebook/k;

    move-result-object v3

    .line 1094
    const-string v1, "Success"

    .line 1096
    sget-object v0, Lcom/facebook/appevents/a$e;->a:Lcom/facebook/appevents/a$e;

    .line 1098
    if-eqz v3, :cond_5

    .line 1100
    invoke-virtual {v3}, Lcom/facebook/k;->b()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 1101
    const-string v1, "Failed: No Connectivity"

    .line 1102
    sget-object v0, Lcom/facebook/appevents/a$e;->c:Lcom/facebook/appevents/a$e;

    move-object v2, v1

    move-object v1, v0

    .line 1111
    :goto_0
    sget-object v0, Lcom/facebook/u;->e:Lcom/facebook/u;

    invoke-static {v0}, Lcom/facebook/l;->a(Lcom/facebook/u;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1112
    invoke-virtual {p1}, Lcom/facebook/GraphRequest;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1116
    :try_start_0
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 1117
    const/4 v0, 0x2

    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->toString(I)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1122
    :goto_1
    sget-object v4, Lcom/facebook/u;->e:Lcom/facebook/u;

    sget-object v5, Lcom/facebook/appevents/a;->a:Ljava/lang/String;

    const-string v6, "Flush completed\nParams: %s\n  Result: %s\n  Events JSON: %s"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {p1}, Lcom/facebook/GraphRequest;->a()Lorg/json/JSONObject;

    move-result-object v9

    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object v2, v7, v8

    const/4 v2, 0x2

    aput-object v0, v7, v2

    invoke-static {v4, v5, v6, v7}, Lcom/facebook/internal/s;->a(Lcom/facebook/u;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1129
    :cond_0
    if-eqz v3, :cond_4

    const/4 v0, 0x1

    :goto_2
    invoke-virtual {p3, v0}, Lcom/facebook/appevents/a$i;->a(Z)V

    .line 1131
    sget-object v0, Lcom/facebook/appevents/a$e;->c:Lcom/facebook/appevents/a$e;

    if-ne v1, v0, :cond_1

    .line 1137
    sget-object v0, Lcom/facebook/appevents/a;->h:Landroid/content/Context;

    invoke-static {v0, p0, p3}, Lcom/facebook/appevents/a$h;->a(Landroid/content/Context;Lcom/facebook/appevents/a$a;Lcom/facebook/appevents/a$i;)V

    .line 1140
    :cond_1
    sget-object v0, Lcom/facebook/appevents/a$e;->a:Lcom/facebook/appevents/a$e;

    if-eq v1, v0, :cond_2

    .line 1142
    iget-object v0, p4, Lcom/facebook/appevents/a$f;->b:Lcom/facebook/appevents/a$e;

    sget-object v2, Lcom/facebook/appevents/a$e;->c:Lcom/facebook/appevents/a$e;

    if-eq v0, v2, :cond_2

    .line 1143
    iput-object v1, p4, Lcom/facebook/appevents/a$f;->b:Lcom/facebook/appevents/a$e;

    .line 1146
    :cond_2
    return-void

    .line 1104
    :cond_3
    const-string v0, "Failed:\n  Response: %s\n  Error %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p2}, Lcom/facebook/q;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    const/4 v2, 0x1

    invoke-virtual {v3}, Lcom/facebook/k;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1107
    sget-object v0, Lcom/facebook/appevents/a$e;->b:Lcom/facebook/appevents/a$e;

    move-object v2, v1

    move-object v1, v0

    goto :goto_0

    .line 1118
    :catch_0
    move-exception v0

    .line 1119
    const-string v0, "<Can\'t encode events for debug logging>"

    goto :goto_1

    .line 1129
    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    :cond_5
    move-object v2, v1

    move-object v1, v0

    goto :goto_0
.end method

.method private static b(Lcom/facebook/appevents/a$d;)V
    .locals 2

    .prologue
    .line 950
    invoke-static {}, Lcom/facebook/l;->d()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/facebook/appevents/a$6;

    invoke-direct {v1, p0}, Lcom/facebook/appevents/a$6;-><init>(Lcom/facebook/appevents/a$d;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 956
    return-void
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)Lcom/facebook/appevents/a;
    .locals 2

    .prologue
    .line 428
    new-instance v0, Lcom/facebook/appevents/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/facebook/appevents/a;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/AccessToken;)V

    return-object v0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 1255
    sget-object v0, Lcom/facebook/appevents/a;->j:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 1256
    sget-object v1, Lcom/facebook/appevents/a;->i:Ljava/lang/Object;

    monitor-enter v1

    .line 1257
    :try_start_0
    sget-object v0, Lcom/facebook/appevents/a;->j:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1259
    const-string v0, "com.facebook.sdk.appEventPreferences"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1262
    const-string v2, "anonymousAppDeviceGUID"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/appevents/a;->j:Ljava/lang/String;

    .line 1263
    sget-object v0, Lcom/facebook/appevents/a;->j:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "XZ"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/appevents/a;->j:Ljava/lang/String;

    .line 1267
    const-string v0, "com.facebook.sdk.appEventPreferences"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "anonymousAppDeviceGUID"

    sget-object v3, Lcom/facebook/appevents/a;->j:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1273
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1276
    :cond_1
    sget-object v0, Lcom/facebook/appevents/a;->j:Ljava/lang/String;

    return-object v0

    .line 1273
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static c()V
    .locals 1

    .prologue
    .line 1243
    const/4 v0, 0x0

    sput-object v0, Lcom/facebook/appevents/a;->k:Ljava/lang/String;

    .line 1244
    const/4 v0, 0x0

    sput-boolean v0, Lcom/facebook/appevents/a;->l:Z

    .line 1245
    return-void
.end method

.method private static c(Lcom/facebook/appevents/a$d;)V
    .locals 4

    .prologue
    .line 961
    sget-object v1, Lcom/facebook/appevents/a;->i:Ljava/lang/Object;

    monitor-enter v1

    .line 962
    :try_start_0
    sget-boolean v0, Lcom/facebook/appevents/a;->g:Z

    if-eqz v0, :cond_1

    .line 963
    monitor-exit v1

    .line 988
    :cond_0
    :goto_0
    return-void

    .line 965
    :cond_1
    const/4 v0, 0x1

    sput-boolean v0, Lcom/facebook/appevents/a;->g:Z

    .line 966
    new-instance v2, Ljava/util/HashSet;

    sget-object v0, Lcom/facebook/appevents/a;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 967
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 969
    invoke-static {}, Lcom/facebook/appevents/a;->m()I

    .line 971
    const/4 v0, 0x0

    .line 973
    :try_start_1
    invoke-static {p0, v2}, Lcom/facebook/appevents/a;->a(Lcom/facebook/appevents/a$d;Ljava/util/Set;)Lcom/facebook/appevents/a$f;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 978
    :goto_1
    sget-object v1, Lcom/facebook/appevents/a;->i:Ljava/lang/Object;

    monitor-enter v1

    .line 979
    const/4 v2, 0x0

    :try_start_2
    sput-boolean v2, Lcom/facebook/appevents/a;->g:Z

    .line 980
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 982
    if-eqz v0, :cond_0

    .line 983
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.facebook.sdk.APP_EVENTS_FLUSHED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 984
    const-string v2, "com.facebook.sdk.APP_EVENTS_NUM_EVENTS_FLUSHED"

    iget v3, v0, Lcom/facebook/appevents/a$f;->a:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 985
    const-string v2, "com.facebook.sdk.APP_EVENTS_FLUSH_RESULT"

    iget-object v0, v0, Lcom/facebook/appevents/a$f;->b:Lcom/facebook/appevents/a$e;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 986
    sget-object v0, Lcom/facebook/appevents/a;->h:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto :goto_0

    .line 967
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 974
    :catch_0
    move-exception v1

    .line 975
    sget-object v2, Lcom/facebook/appevents/a;->a:Ljava/lang/String;

    const-string v3, "Caught unexpected exception while flushing: "

    invoke-static {v2, v3, v1}, Lcom/facebook/internal/aa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 980
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method static synthetic d()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 147
    sget-object v0, Lcom/facebook/appevents/a;->i:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic e()Ljava/util/Map;
    .locals 1

    .prologue
    .line 147
    sget-object v0, Lcom/facebook/appevents/a;->d:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic f()V
    .locals 0

    .prologue
    .line 147
    invoke-static {}, Lcom/facebook/appevents/a;->k()V

    return-void
.end method

.method static synthetic g()Landroid/content/Context;
    .locals 1

    .prologue
    .line 147
    sget-object v0, Lcom/facebook/appevents/a;->h:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    sget-object v0, Lcom/facebook/appevents/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i()Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    .locals 1

    .prologue
    .line 147
    sget-object v0, Lcom/facebook/appevents/a;->e:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    return-object v0
.end method

.method private static j()V
    .locals 7

    .prologue
    const-wide/16 v2, 0x0

    .line 800
    sget-object v1, Lcom/facebook/appevents/a;->i:Ljava/lang/Object;

    monitor-enter v1

    .line 801
    :try_start_0
    sget-object v0, Lcom/facebook/appevents/a;->e:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-eqz v0, :cond_0

    .line 802
    monitor-exit v1

    .line 844
    :goto_0
    return-void

    .line 804
    :cond_0
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v4, 0x1

    invoke-direct {v0, v4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    sput-object v0, Lcom/facebook/appevents/a;->e:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 805
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 807
    new-instance v1, Lcom/facebook/appevents/a$3;

    invoke-direct {v1}, Lcom/facebook/appevents/a$3;-><init>()V

    .line 816
    sget-object v0, Lcom/facebook/appevents/a;->e:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const-wide/16 v4, 0xf

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v0 .. v6}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 823
    new-instance v1, Lcom/facebook/appevents/a$4;

    invoke-direct {v1}, Lcom/facebook/appevents/a$4;-><init>()V

    .line 838
    sget-object v0, Lcom/facebook/appevents/a;->e:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const-wide/32 v4, 0x15180

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v0 .. v6}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0

    .line 805
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static k()V
    .locals 3

    .prologue
    .line 893
    sget-object v1, Lcom/facebook/appevents/a;->i:Ljava/lang/Object;

    monitor-enter v1

    .line 894
    :try_start_0
    invoke-static {}, Lcom/facebook/appevents/a;->a()Lcom/facebook/appevents/a$c;

    move-result-object v0

    sget-object v2, Lcom/facebook/appevents/a$c;->b:Lcom/facebook/appevents/a$c;

    if-eq v0, v2, :cond_0

    .line 895
    invoke-static {}, Lcom/facebook/appevents/a;->l()I

    move-result v0

    const/16 v2, 0x64

    if-le v0, v2, :cond_0

    .line 896
    sget-object v0, Lcom/facebook/appevents/a$d;->e:Lcom/facebook/appevents/a$d;

    invoke-static {v0}, Lcom/facebook/appevents/a;->b(Lcom/facebook/appevents/a$d;)V

    .line 899
    :cond_0
    monitor-exit v1

    .line 900
    return-void

    .line 899
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static l()I
    .locals 4

    .prologue
    .line 903
    sget-object v2, Lcom/facebook/appevents/a;->i:Ljava/lang/Object;

    monitor-enter v2

    .line 905
    const/4 v0, 0x0

    .line 906
    :try_start_0
    sget-object v1, Lcom/facebook/appevents/a;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/appevents/a$i;

    .line 907
    invoke-virtual {v0}, Lcom/facebook/appevents/a$i;->a()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    .line 908
    goto :goto_0

    .line 909
    :cond_0
    monitor-exit v2

    return v1

    .line 910
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static m()I
    .locals 5

    .prologue
    .line 1149
    sget-object v0, Lcom/facebook/appevents/a;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/appevents/a$h;->a(Landroid/content/Context;)Lcom/facebook/appevents/a$h;

    move-result-object v2

    .line 1151
    const/4 v0, 0x0

    .line 1152
    invoke-virtual {v2}, Lcom/facebook/appevents/a$h;->a()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/appevents/a$a;

    .line 1153
    sget-object v4, Lcom/facebook/appevents/a;->h:Landroid/content/Context;

    invoke-static {v4, v0}, Lcom/facebook/appevents/a;->b(Landroid/content/Context;Lcom/facebook/appevents/a$a;)Lcom/facebook/appevents/a$i;

    move-result-object v4

    .line 1156
    invoke-virtual {v2, v0}, Lcom/facebook/appevents/a$h;->a(Lcom/facebook/appevents/a$a;)Ljava/util/List;

    move-result-object v0

    .line 1157
    if-eqz v0, :cond_1

    .line 1158
    invoke-virtual {v4, v0}, Lcom/facebook/appevents/a$i;->a(Ljava/util/List;)V

    .line 1159
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, v1

    :goto_1
    move v1, v0

    .line 1161
    goto :goto_0

    .line 1163
    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 635
    const/4 v0, 0x0

    .line 637
    :try_start_0
    const-string v1, "fb_push_payload"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 638
    invoke-static {v1}, Lcom/facebook/internal/aa;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 656
    :goto_0
    return-void

    .line 642
    :cond_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 643
    const-string v1, "campaign"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 647
    :goto_1
    if-nez v0, :cond_1

    .line 648
    sget-object v0, Lcom/facebook/u;->f:Lcom/facebook/u;

    sget-object v1, Lcom/facebook/appevents/a;->a:Ljava/lang/String;

    const-string v2, "Malformed payload specified for logging a push notification arrival."

    invoke-static {v0, v1, v2}, Lcom/facebook/internal/s;->a(Lcom/facebook/u;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 653
    :cond_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 654
    const-string v2, "fb_push_campaign"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    const-string v0, "fb_mobile_push_arrival"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/appevents/a;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 644
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public a(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 604
    const/4 v0, 0x0

    .line 606
    :try_start_0
    const-string v1, "fb_push_payload"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 607
    invoke-static {v1}, Lcom/facebook/internal/aa;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 628
    :goto_0
    return-void

    .line 611
    :cond_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 612
    const-string v1, "campaign"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 616
    :goto_1
    if-nez v0, :cond_1

    .line 617
    sget-object v0, Lcom/facebook/u;->f:Lcom/facebook/u;

    sget-object v1, Lcom/facebook/appevents/a;->a:Ljava/lang/String;

    const-string v2, "Malformed payload specified for logging a push notification open."

    invoke-static {v0, v1, v2}, Lcom/facebook/internal/s;->a(Lcom/facebook/u;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 622
    :cond_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 623
    const-string v2, "fb_push_campaign"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    if-eqz p2, :cond_2

    .line 625
    const-string v0, "fb_push_action"

    invoke-virtual {v1, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    :cond_2
    const-string v0, "fb_mobile_push_opened"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/appevents/a;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 613
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public a(Ljava/lang/String;DLandroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 543
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p4, v1}, Lcom/facebook/appevents/a;->a(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;Z)V

    .line 544
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 518
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/facebook/appevents/a;->a(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;Z)V

    .line 519
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 731
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/facebook/appevents/a;->a(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;Z)V

    .line 732
    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 663
    const/4 v0, 0x0

    .line 665
    :try_start_0
    const-string v1, "fb_push_payload"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 666
    invoke-static {v1}, Lcom/facebook/internal/aa;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 684
    :goto_0
    return-void

    .line 670
    :cond_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 671
    const-string v1, "campaign"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 675
    :goto_1
    if-nez v0, :cond_1

    .line 676
    sget-object v0, Lcom/facebook/u;->f:Lcom/facebook/u;

    sget-object v1, Lcom/facebook/appevents/a;->a:Ljava/lang/String;

    const-string v2, "Malformed payload specified for logging a push notification arrival."

    invoke-static {v0, v1, v2}, Lcom/facebook/internal/s;->a(Lcom/facebook/u;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 681
    :cond_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 682
    const-string v2, "fb_push_campaign"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    const-string v0, "fb_mobile_push_arrival_repeat"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/appevents/a;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 672
    :catch_0
    move-exception v1

    goto :goto_1
.end method
