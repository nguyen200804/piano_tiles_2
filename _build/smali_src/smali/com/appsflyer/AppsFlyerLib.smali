.class public Lcom/appsflyer/AppsFlyerLib;
.super Landroid/content/BroadcastReceiver;
.source "AppsFlyerLib.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsflyer/AppsFlyerLib$b;,
        Lcom/appsflyer/AppsFlyerLib$a;,
        Lcom/appsflyer/AppsFlyerLib$d;,
        Lcom/appsflyer/AppsFlyerLib$e;,
        Lcom/appsflyer/AppsFlyerLib$c;
    }
.end annotation


# static fields
.field public static final a:Landroid/net/Uri;

.field private static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Lcom/appsflyer/a;

.field private static d:Lcom/appsflyer/b;

.field private static e:Z

.field private static f:J

.field private static g:Ljava/util/concurrent/ScheduledExecutorService;

.field private static h:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 61
    const-string v0, "content://com.facebook.katana.provider.AttributionIdProvider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/appsflyer/AppsFlyerLib;->a:Landroid/net/Uri;

    .line 71
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "is_cache"

    aput-object v1, v0, v3

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/appsflyer/AppsFlyerLib;->b:Ljava/util/List;

    .line 78
    sput-object v2, Lcom/appsflyer/AppsFlyerLib;->c:Lcom/appsflyer/a;

    .line 79
    sput-object v2, Lcom/appsflyer/AppsFlyerLib;->d:Lcom/appsflyer/b;

    .line 81
    sput-boolean v3, Lcom/appsflyer/AppsFlyerLib;->e:Z

    .line 83
    sput-object v2, Lcom/appsflyer/AppsFlyerLib;->g:Ljava/util/concurrent/ScheduledExecutorService;

    .line 84
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/appsflyer/AppsFlyerLib;->h:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1829
    return-void
.end method

.method static synthetic a(Landroid/content/Context;Ljava/lang/String;Z)I
    .locals 1

    .prologue
    .line 32
    invoke-static {p0, p1, p2}, Lcom/appsflyer/AppsFlyerLib;->b(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method static synthetic a(J)J
    .locals 0

    .prologue
    .line 32
    sput-wide p0, Lcom/appsflyer/AppsFlyerLib;->f:J

    return-wide p0
.end method

.method static synthetic a(Landroid/content/Context;Z)J
    .locals 2

    .prologue
    .line 32
    invoke-static {p0, p1}, Lcom/appsflyer/AppsFlyerLib;->b(Landroid/content/Context;Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 306
    const-string v0, "AppUserId"

    invoke-static {v0}, Lcom/appsflyer/AppsFlyerLib;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 1231
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "aid"

    aput-object v1, v2, v0

    .line 1232
    sget-object v1, Lcom/appsflyer/AppsFlyerLib;->a:Landroid/net/Uri;

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1235
    if-eqz v1, :cond_0

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    .line 1244
    :cond_0
    if-eqz v1, :cond_1

    .line 1245
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 1251
    :cond_1
    :goto_0
    return-object v3

    .line 1238
    :cond_2
    :try_start_2
    const-string v0, "aid"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v3

    .line 1244
    if-eqz v1, :cond_1

    .line 1245
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 1247
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1240
    :catch_1
    move-exception v0

    .line 1241
    :try_start_4
    const-string v2, "AppsFlyer_3.0"

    const-string v4, "Could not collect cursor attribution"

    invoke-static {v2, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1244
    if-eqz v1, :cond_1

    .line 1245
    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 1247
    :catch_2
    move-exception v0

    goto :goto_0

    .line 1243
    :catchall_0
    move-exception v0

    .line 1244
    if-eqz v1, :cond_3

    .line 1245
    :try_start_6
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 1249
    :cond_3
    :goto_1
    throw v0

    .line 1247
    :catch_3
    move-exception v0

    goto :goto_0

    :catch_4
    move-exception v1

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 241
    invoke-static {}, Lcom/appsflyer/c;->a()Lcom/appsflyer/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appsflyer/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/text/SimpleDateFormat;Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 1158
    const-string v0, "appsflyer-data"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1159
    const-string v1, "appsFlyerFirstInstall"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1160
    if-nez v0, :cond_1

    .line 1161
    invoke-static {p1}, Lcom/appsflyer/AppsFlyerLib;->h(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1162
    invoke-static {p1}, Lcom/appsflyer/AppsFlyerLib;->g(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1163
    const-string v0, "AppsFlyer_3.0"

    const-string v1, "AppsFlyer: first launch detected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1165
    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 1169
    :goto_0
    const-string v1, "appsFlyerFirstInstall"

    invoke-static {p1, v1, v0}, Lcom/appsflyer/AppsFlyerLib;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1171
    :cond_1
    invoke-static {p1}, Lcom/appsflyer/AppsFlyerLib;->g(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1172
    const-string v1, "AppsFlyer_3.0"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AppsFlyer: first launch date: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1174
    :cond_2
    return-object v0

    .line 1167
    :cond_3
    const-string v0, ""

    goto :goto_0
.end method

.method public static a(Ljava/util/Map;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 1548
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1549
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1550
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1551
    if-nez v1, :cond_1

    const-string v1, ""

    .line 1552
    :goto_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 1553
    const/16 v4, 0x26

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1555
    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v4, 0x3d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1551
    :cond_1
    const-string v4, "UTF-8"

    invoke-static {v1, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 1559
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Ljava/util/concurrent/ScheduledExecutorService;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 0

    .prologue
    .line 32
    sput-object p0, Lcom/appsflyer/AppsFlyerLib;->g:Ljava/util/concurrent/ScheduledExecutorService;

    return-object p0
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 352
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AppsFlyerLib;->g(Landroid/content/Context;)Z

    move-result v0

    .line 354
    if-eqz v0, :cond_0

    .line 355
    const-string v0, "AppsFlyer_3.0"

    const-string v1, "onActivityResume called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 334
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/appsflyer/AppsFlyerLib;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 335
    invoke-static {p0}, Lcom/appsflyer/AppsFlyerLib;->g(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 336
    const-string v0, "AppsFlyer_3.0"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start tracking package: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 473
    invoke-static {p0, p1, v0, v0}, Lcom/appsflyer/AppsFlyerLib;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    return-void
.end method

.method static synthetic a(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 32
    invoke-static {p0, p1, p2}, Lcom/appsflyer/AppsFlyerLib;->b(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic a(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 0

    .prologue
    .line 32
    invoke-static {p0, p1, p2, p3}, Lcom/appsflyer/AppsFlyerLib;->b(Landroid/content/Context;Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 32
    invoke-static {p0, p1, p2}, Lcom/appsflyer/AppsFlyerLib;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 621
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    const-string v0, "-?\\d+(\\.\\d+)?"

    invoke-virtual {p3, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 622
    const-string v0, "AppsFlyer_3.0"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AppsFLyer: numeric value \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' for event \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' will be categorized as a revenue event."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    :cond_0
    invoke-static {}, Lcom/appsflyer/c;->a()Lcom/appsflyer/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appsflyer/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 625
    if-nez v4, :cond_1

    const-string v4, ""

    :cond_1
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lcom/appsflyer/AppsFlyerLib;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 626
    return-void
.end method

.method static synthetic a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 32
    invoke-static/range {p0 .. p5}, Lcom/appsflyer/AppsFlyerLib;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 445
    new-instance v0, Lorg/json/JSONObject;

    if-nez p2, :cond_0

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    :cond_0
    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 446
    invoke-static {}, Lcom/appsflyer/c;->a()Lcom/appsflyer/c;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/appsflyer/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 447
    const/4 v1, 0x0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    if-nez v4, :cond_1

    const-string v4, ""

    :cond_1
    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lcom/appsflyer/AppsFlyerLib;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 448
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 981
    invoke-static {}, Lcom/appsflyer/c;->a()Lcom/appsflyer/c;

    move-result-object v0

    const-string v1, "deviceTrackingDisabled"

    invoke-virtual {v0, v1, v2}, Lcom/appsflyer/c;->b(Ljava/lang/String;Z)Z

    move-result v0

    .line 983
    if-eqz v0, :cond_1

    .line 984
    const-string v0, "deviceTrackingDisabled"

    const-string v1, "true"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1028
    :cond_0
    :goto_0
    return-void

    .line 986
    :cond_1
    const-string v0, "appsflyer-data"

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 987
    invoke-static {}, Lcom/appsflyer/c;->a()Lcom/appsflyer/c;

    move-result-object v0

    const-string v1, "collectIMEI"

    invoke-virtual {v0, v1, v6}, Lcom/appsflyer/c;->b(Ljava/lang/String;Z)Z

    move-result v0

    .line 988
    const-string v1, "imeiCached"

    invoke-interface {v2, v1, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 989
    if-eqz v0, :cond_3

    .line 991
    :try_start_0
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 992
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getDeviceId"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 993
    if-nez v0, :cond_4

    move-object v0, v1

    .line 1000
    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    .line 1001
    const-string v1, "imei"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1010
    :cond_3
    :goto_2
    invoke-static {}, Lcom/appsflyer/c;->a()Lcom/appsflyer/c;

    move-result-object v0

    const-string v1, "collectAndroidId"

    invoke-virtual {v0, v1, v6}, Lcom/appsflyer/c;->b(Ljava/lang/String;Z)Z

    move-result v1

    .line 1011
    const-string v0, "androidIdCached"

    invoke-interface {v2, v0, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1012
    if-eqz v1, :cond_0

    .line 1014
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1015
    if-nez v1, :cond_5

    .line 1020
    :goto_3
    if-eqz v0, :cond_0

    .line 1021
    const-string v1, "android_id"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1023
    :catch_0
    move-exception v0

    goto :goto_0

    .line 995
    :cond_4
    if-nez v1, :cond_2

    .line 997
    :try_start_2
    const-string v1, "imeiCached"

    invoke-static {p0, v1, v0}, Lcom/appsflyer/AppsFlyerLib;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 1004
    :catch_1
    move-exception v0

    .line 1006
    const-string v0, "AppsFlyer_3.0"

    const-string v1, "WARNING:READ_PHONE_STATE is missing"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1018
    :cond_5
    :try_start_3
    const-string v0, "androidIdCached"

    invoke-static {p0, v0, v1}, Lcom/appsflyer/AppsFlyerLib;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-object v0, v1

    goto :goto_3
.end method

.method private a(Ljava/lang/String;Landroid/content/Context;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://track.appsflyer.com/api/v3/uninstall?buildnumber=3.0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 147
    invoke-static {p2}, Lcom/appsflyer/AppsFlyerLib;->g(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 148
    const-string v1, "AppsFlyer_3.0"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Calling server for uninstall url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 152
    const-string v2, "packageName"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    const-string v2, "senderPackageName"

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    const-string v2, "uid"

    invoke-static {p2}, Lcom/appsflyer/AppsFlyerLib;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    const-string v2, "appsflyer-data"

    invoke-virtual {p2, v2, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 157
    const-string v3, "androidIdCached"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 159
    if-eqz v2, :cond_1

    .line 160
    const-string v3, "android_id"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    :cond_1
    invoke-static {p2, v1}, Lcom/appsflyer/AppsFlyerLib;->b(Landroid/content/Context;Ljava/util/Map;)V

    .line 165
    invoke-static {p2, v1}, Lcom/appsflyer/AppsFlyerLib;->a(Landroid/content/Context;Ljava/util/Map;)V

    .line 167
    new-instance v2, Lcom/appsflyer/e;

    invoke-direct {v2, p2}, Lcom/appsflyer/e;-><init>(Landroid/content/Context;)V

    .line 168
    iput-object v1, v2, Lcom/appsflyer/e;->a:Ljava/util/Map;

    .line 169
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    aput-object v0, v1, v5

    invoke-virtual {v2, v1}, Lcom/appsflyer/e;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 170
    return-void
.end method

.method protected static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 237
    invoke-static {}, Lcom/appsflyer/c;->a()Lcom/appsflyer/c;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/appsflyer/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 173
    if-eqz p2, :cond_0

    const-string v0, "com.appsflyer"

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    invoke-static {}, Lcom/appsflyer/g;->a()Lcom/appsflyer/g;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appsflyer/g;->a(Ljava/lang/String;)V

    .line 176
    :cond_0
    return-void
.end method

.method static synthetic a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ref/WeakReference;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 32
    invoke-static/range {p0 .. p6}, Lcom/appsflyer/AppsFlyerLib;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ref/WeakReference;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private static a(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ref/WeakReference;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1364
    invoke-virtual {p3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 1366
    const/4 v2, 0x0

    .line 1368
    :try_start_0
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1370
    :try_start_1
    const-string v2, "POST"

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 1371
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    .line 1372
    const-string v3, "Content-Length"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1373
    const-string v2, "Connection"

    const-string v3, "close"

    invoke-virtual {v1, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1374
    const/16 v2, 0x2710

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 1375
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1376
    const/4 v3, 0x0

    .line 1378
    :try_start_2
    new-instance v2, Ljava/io/OutputStreamWriter;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1379
    :try_start_3
    invoke-virtual {v2, p1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 1381
    if-eqz v2, :cond_0

    .line 1382
    :try_start_4
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->close()V

    .line 1385
    :cond_0
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    .line 1386
    invoke-static {v0}, Lcom/appsflyer/AppsFlyerLib;->g(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1387
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "response code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1389
    :cond_1
    const-string v3, "SERVER_RESPONSE_CODE"

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, p5, v3, v4}, Lcom/appsflyer/AppsFlyerLib;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1390
    const-string v3, "response from server. status="

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/appsflyer/AppsFlyerLib;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 1391
    const-string v3, "appsflyer-data"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 1392
    const/16 v4, 0xc8

    if-ne v2, v4, :cond_3

    .line 1393
    if-eqz p4, :cond_2

    .line 1394
    invoke-static {}, Lcom/appsflyer/a/a;->a()Lcom/appsflyer/a/a;

    move-result-object v2

    invoke-virtual {v2, p4, v0}, Lcom/appsflyer/a/a;->a(Ljava/lang/String;Landroid/content/Context;)V

    .line 1396
    :cond_2
    invoke-virtual {p3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    if-nez p4, :cond_3

    .line 1398
    const-string v2, "sentSuccessfully"

    const-string v4, "true"

    invoke-static {v0, v2, v4}, Lcom/appsflyer/AppsFlyerLib;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1399
    invoke-static {v0}, Lcom/appsflyer/AppsFlyerLib;->l(Landroid/content/Context;)V

    .line 1403
    :cond_3
    const-string v2, "appsflyerConversionDataRequestRetries"

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 1405
    const-string v4, "appsflyerConversionDataCacheExpiration"

    const-wide/16 v6, 0x0

    invoke-interface {v3, v4, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 1406
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-eqz v6, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v4, v6, v4

    const-wide/32 v6, 0x34fd9000

    cmp-long v4, v4, v6

    if-lez v4, :cond_4

    .line 1407
    const-string v4, "attributionId"

    const/4 v5, 0x0

    invoke-static {v0, v4, v5}, Lcom/appsflyer/AppsFlyerLib;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1408
    const-string v4, "appsflyerConversionDataCacheExpiration"

    const-wide/16 v6, 0x0

    invoke-static {v0, v4, v6, v7}, Lcom/appsflyer/AppsFlyerLib;->b(Landroid/content/Context;Ljava/lang/String;J)V

    .line 1411
    :cond_4
    const-string v4, "attributionId"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_9

    if-eqz p2, :cond_9

    if-eqz p6, :cond_9

    sget-object v4, Lcom/appsflyer/AppsFlyerLib;->c:Lcom/appsflyer/a;

    if-eqz v4, :cond_9

    const/4 v4, 0x5

    if-gt v2, v4, :cond_9

    .line 1413
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    .line 1414
    new-instance v3, Lcom/appsflyer/AppsFlyerLib$d;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v3, v0, p2, v2}, Lcom/appsflyer/AppsFlyerLib$d;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/ScheduledExecutorService;)V

    const-wide/16 v4, 0xa

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v3, v4, v5, v0}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1433
    :cond_5
    :goto_0
    if-eqz v1, :cond_6

    .line 1434
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 1437
    :cond_6
    return-void

    .line 1381
    :catchall_0
    move-exception v0

    move-object v2, v3

    :goto_1
    if-eqz v2, :cond_7

    .line 1382
    :try_start_5
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->close()V

    :cond_7
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1433
    :catchall_1
    move-exception v0

    :goto_2
    if-eqz v1, :cond_8

    .line 1434
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_8
    throw v0

    .line 1415
    :cond_9
    if-nez p2, :cond_a

    .line 1416
    :try_start_6
    const-string v0, "AppsFlyer dev key is missing."

    invoke-static {p5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1417
    :cond_a
    if-eqz p6, :cond_5

    sget-object v2, Lcom/appsflyer/AppsFlyerLib;->c:Lcom/appsflyer/a;

    if-eqz v2, :cond_5

    const-string v2, "attributionId"

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    const-string v2, "appsFlyerCount"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/appsflyer/AppsFlyerLib;->b(Landroid/content/Context;Ljava/lang/String;Z)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_5

    .line 1424
    :try_start_7
    invoke-static {v0}, Lcom/appsflyer/AppsFlyerLib;->b(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    .line 1425
    if-eqz v0, :cond_5

    .line 1426
    sget-object v2, Lcom/appsflyer/AppsFlyerLib;->c:Lcom/appsflyer/a;

    invoke-interface {v2, v0}, Lcom/appsflyer/a;->a(Ljava/util/Map;)V
    :try_end_7
    .catch Lcom/appsflyer/d; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_0

    .line 1428
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1433
    :catchall_2
    move-exception v0

    move-object v1, v2

    goto :goto_2

    .line 1381
    :catchall_3
    move-exception v0

    goto :goto_1
.end method

.method static synthetic a(Z)Z
    .locals 0

    .prologue
    .line 32
    sput-boolean p0, Lcom/appsflyer/AppsFlyerLib;->e:Z

    return p0
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;Z)I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1255
    const-string v0, "appsflyer-data"

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1257
    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1259
    if-eqz p2, :cond_0

    .line 1260
    add-int/lit8 v0, v0, 0x1

    .line 1261
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1262
    invoke-interface {v1, p1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1263
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1266
    :cond_0
    return v0
.end method

.method private static b(Landroid/content/Context;Z)J
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 1272
    const-string v0, "appsflyer-data"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1274
    const-string v1, "AppsFlyerTimePassedSincePrevLaunch"

    invoke-interface {v0, v1, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 1275
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 1277
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1280
    cmp-long v0, v2, v6

    if-lez v0, :cond_1

    .line 1281
    sub-long v0, v4, v2

    .line 1293
    :goto_0
    if-eqz p1, :cond_0

    .line 1294
    const-string v2, "AppsFlyerTimePassedSincePrevLaunch"

    invoke-static {p0, v2, v4, v5}, Lcom/appsflyer/AppsFlyerLib;->b(Landroid/content/Context;Ljava/lang/String;J)V

    .line 1297
    :cond_0
    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0

    .line 1284
    :cond_1
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method static synthetic b()Lcom/appsflyer/a;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/appsflyer/AppsFlyerLib;->c:Lcom/appsflyer/a;

    return-object v0
.end method

.method static synthetic b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 32
    invoke-static {p0, p1}, Lcom/appsflyer/AppsFlyerLib;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Ljava/util/Map;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    invoke-static {p0}, Lcom/appsflyer/AppsFlyerLib;->c(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/content/Context;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/appsflyer/d;
        }
    .end annotation

    .prologue
    .line 484
    const-string v0, "appsflyer-data"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 485
    invoke-static {}, Lcom/appsflyer/c;->a()Lcom/appsflyer/c;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/appsflyer/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 486
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    const-string v2, "af_tranid"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 487
    invoke-static {p0, v1}, Lcom/appsflyer/AppsFlyerLib;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 492
    :goto_0
    return-object v0

    .line 489
    :cond_0
    const-string v1, "attributionId"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 491
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 492
    invoke-static {v0}, Lcom/appsflyer/AppsFlyerLib;->e(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    .line 494
    :cond_1
    new-instance v0, Lcom/appsflyer/d;

    invoke-direct {v0}, Lcom/appsflyer/d;-><init>()V

    throw v0
.end method

.method public static b(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 372
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AppsFlyerLib;->g(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 373
    const-string v0, "AppsFlyer_3.0"

    const-string v1, "onActivityPause called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    :cond_0
    return-void
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 206
    const-string v0, "appsflyer-data"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 207
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 208
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 209
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_0

    .line 210
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 214
    :goto_0
    return-void

    .line 212
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 4

    .prologue
    .line 217
    const-string v0, "appsflyer-data"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 218
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 219
    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 220
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_0

    .line 221
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 225
    :goto_0
    return-void

    .line 223
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 194
    const-string v0, "appsflyer-data"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 195
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 196
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 197
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_0

    .line 198
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 202
    :goto_0
    return-void

    .line 200
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 451
    invoke-static {}, Lcom/appsflyer/c;->a()Lcom/appsflyer/c;

    move-result-object v0

    const-string v1, "shouldMonitor"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/appsflyer/c;->b(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 453
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.appsflyer.MonitorBroadcast"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 454
    const-string v1, "com.appsflyer.nightvision"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 455
    const-string v1, "message"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 456
    const-string v1, "value"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 457
    const-string v1, "packageName"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 458
    const-string v1, "pid"

    new-instance v2, Ljava/lang/Integer;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 459
    const-string v1, "eventIdentifier"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 460
    const-string v1, "sdk"

    const-string v2, "3.3.0"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 462
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 465
    :cond_0
    return-void
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 9

    .prologue
    .line 629
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v7

    .line 630
    new-instance v0, Lcom/appsflyer/AppsFlyerLib$c;

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v8}, Lcom/appsflyer/AppsFlyerLib$c;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/concurrent/ExecutorService;Lcom/appsflyer/AppsFlyerLib$1;)V

    const-wide/16 v2, 0x5

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v7, v0, v2, v3, v1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 632
    return-void
.end method

.method private static b(Landroid/content/Context;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1179
    :try_start_0
    const-string v0, "com.google.android.gms.ads.identifier.AdvertisingIdClient"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 1180
    invoke-static {p0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v0

    .line 1181
    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v1

    .line 1182
    const-string v2, "advertiserId"

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1183
    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    .line 1184
    const-string v2, "advertiserIdEnabled"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1185
    invoke-static {}, Lcom/appsflyer/c;->a()Lcom/appsflyer/c;

    move-result-object v2

    const-string v3, "advertiserId"

    invoke-virtual {v2, v3, v1}, Lcom/appsflyer/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1186
    invoke-static {}, Lcom/appsflyer/c;->a()Lcom/appsflyer/c;

    move-result-object v1

    const-string v2, "advertiserIdEnabled"

    invoke-virtual {v1, v2, v0}, Lcom/appsflyer/c;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1209
    :cond_0
    :goto_1
    return-void

    .line 1183
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1187
    :catch_0
    move-exception v0

    .line 1188
    invoke-static {p0}, Lcom/appsflyer/AppsFlyerLib;->g(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1189
    const-string v0, "AppsFlyer_3.0"

    const-string v1, "WARNING:Google Play services SDK jar is missing."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1191
    :catch_1
    move-exception v0

    .line 1192
    invoke-static {}, Lcom/appsflyer/c;->a()Lcom/appsflyer/c;

    move-result-object v1

    const-string v2, "advertiserId"

    invoke-virtual {v1, v2}, Lcom/appsflyer/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1193
    if-eqz v1, :cond_2

    .line 1194
    const-string v2, "advertiserId"

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1197
    :cond_2
    invoke-static {}, Lcom/appsflyer/c;->a()Lcom/appsflyer/c;

    move-result-object v1

    const-string v2, "advertiserIdEnabled"

    invoke-virtual {v1, v2}, Lcom/appsflyer/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1198
    if-eqz v1, :cond_3

    .line 1199
    const-string v2, "advertiserIdEnabled"

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1201
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 1202
    const-string v1, "AppsFlyer_3.0"

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1207
    :goto_2
    const-string v1, "Could not fetch advertiser id: "

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, p0}, Lcom/appsflyer/AppsFlyerLib;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_1

    .line 1204
    :cond_4
    const-string v1, "AppsFlyer_3.0"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public static b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 301
    const-string v0, "AppsFlyerKey"

    invoke-static {v0, p0}, Lcom/appsflyer/AppsFlyerLib;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    invoke-static {p0}, Lcom/appsflyer/i;->a(Ljava/lang/String;)V

    .line 303
    return-void
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ref/WeakReference;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1328
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1329
    invoke-virtual {p3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-static {v1}, Lcom/appsflyer/AppsFlyerLib;->g(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1330
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1332
    :cond_0
    const-string v2, "call server."

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\nPOST:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-static {v2, v3, v1}, Lcom/appsflyer/AppsFlyerLib;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 1333
    invoke-virtual {p3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-static {v1}, Lcom/appsflyer/AppsFlyerLib;->g(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1335
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/appsflyer/i;->b(Ljava/lang/String;)V

    .line 1337
    :cond_1
    invoke-virtual {p3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const-string v2, "EVENT_DATA"

    invoke-static {v1, p5, v2, p1}, Lcom/appsflyer/AppsFlyerLib;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1338
    if-eqz p6, :cond_2

    .line 1339
    invoke-static {}, Lcom/appsflyer/c;->a()Lcom/appsflyer/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appsflyer/c;->d()V

    :cond_2
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    .line 1342
    :try_start_0
    invoke-static/range {v0 .. v6}, Lcom/appsflyer/AppsFlyerLib;->a(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ref/WeakReference;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1355
    :goto_0
    return-void

    .line 1343
    :catch_0
    move-exception v1

    .line 1345
    invoke-static {}, Lcom/appsflyer/c;->a()Lcom/appsflyer/c;

    move-result-object v0

    const-string v2, "useHttpFallback"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/appsflyer/c;->b(Ljava/lang/String;Z)Z

    move-result v0

    .line 1346
    if-eqz v0, :cond_3

    .line 1347
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https failed: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {p3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v1, v2, v0}, Lcom/appsflyer/AppsFlyerLib;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 1348
    new-instance v0, Ljava/net/URL;

    const-string v1, "https:"

    const-string v2, "http:"

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-static/range {v0 .. v6}, Lcom/appsflyer/AppsFlyerLib;->a(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ref/WeakReference;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 1350
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to send requeset to server. "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1351
    invoke-virtual {p3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-string v2, "ERROR"

    invoke-virtual {v1}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, p5, v2, v3}, Lcom/appsflyer/AppsFlyerLib;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1352
    throw v1
.end method

.method private static c(Ljava/util/Map;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 635
    const-string v0, "af_timestamp"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 636
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x5

    if-ge v1, v2, :cond_1

    .line 637
    :cond_0
    const-string v0, "AppsFlyer_3.0"

    .line 639
    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AppsFlyer_3.0-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static c(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Map;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 549
    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    .line 550
    const-string v0, "&"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 553
    array-length v8, v7

    move v4, v5

    move v2, v5

    :goto_0
    if-ge v4, v8, :cond_6

    aget-object v1, v7, v4

    .line 554
    const-string v0, "="

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    .line 555
    if-lez v9, :cond_2

    invoke-virtual {v1, v5, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 556
    :goto_1
    invoke-interface {v6, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 558
    const-string v3, "c"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 559
    const-string v0, "campaign"

    .line 567
    :cond_0
    :goto_2
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3}, Ljava/lang/String;-><init>()V

    invoke-interface {v6, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    move v3, v2

    move-object v2, v0

    .line 569
    if-lez v9, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v10, v9, 0x1

    if-le v0, v10, :cond_5

    add-int/lit8 v0, v9, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 570
    :goto_3
    invoke-interface {v6, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 553
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    move v2, v3

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 555
    goto :goto_1

    .line 560
    :cond_3
    const-string v3, "pid"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 561
    const-string v0, "media_source"

    goto :goto_2

    .line 562
    :cond_4
    const-string v3, "af_prt"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 563
    const/4 v2, 0x1

    .line 564
    const-string v0, "agency"

    goto :goto_2

    .line 569
    :cond_5
    const/4 v0, 0x0

    goto :goto_3

    .line 573
    :cond_6
    :try_start_0
    const-string v0, "install_time"

    invoke-interface {v6, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 574
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 576
    iget-wide v0, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    .line 577
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd hh:mm:ss"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 578
    const-string v4, "install_time"

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 583
    :cond_7
    :goto_4
    const-string v0, "af_status"

    invoke-interface {v6, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 584
    const-string v0, "af_status"

    const-string v1, "Non-organic"

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 587
    :cond_8
    if-eqz v2, :cond_9

    .line 588
    const-string v0, "media_source"

    invoke-interface {v6, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 592
    :cond_9
    return-object v6

    .line 580
    :catch_0
    move-exception v0

    .line 581
    const-string v0, "AppsFlyer_3.0"

    const-string v1, "Could not fetch install time"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method private static c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 15

    .prologue
    .line 645
    const-string v2, "AppsFlyer_3.0"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AsendTrackingWithEvent from activity: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    if-nez p2, :cond_14

    const/4 v6, 0x1

    .line 647
    :goto_0
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 648
    const-string v2, "af_timestamp"

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 649
    invoke-static {v4}, Lcom/appsflyer/AppsFlyerLib;->c(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v8

    .line 652
    :try_start_0
    invoke-static {p0}, Lcom/appsflyer/AppsFlyerLib;->g(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 653
    const-string v2, "collect data for server"

    const-string v3, ""

    invoke-static {v2, v3, p0}, Lcom/appsflyer/AppsFlyerLib;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 655
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "******* sendTrackingWithEvent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v6, :cond_15

    const-string v2, "Launch"

    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    const-string v3, "********* sendTrackingWithEvent: "

    if-eqz v6, :cond_16

    const-string v2, "Launch"

    :goto_2
    invoke-static {v3, v2, p0}, Lcom/appsflyer/AppsFlyerLib;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 658
    :cond_0
    const-string v3, "EVENT_CREATED_WITH_NAME"

    if-eqz v6, :cond_17

    const-string v2, "Launch"

    :goto_3
    invoke-static {p0, v8, v3, v2}, Lcom/appsflyer/AppsFlyerLib;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    invoke-static {}, Lcom/appsflyer/a/a;->a()Lcom/appsflyer/a/a;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/appsflyer/a/a;->a(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 663
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x1000

    invoke-virtual {v2, v3, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 664
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 665
    const-string v3, "android.permission.INTERNET"

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 666
    const-string v3, "AppsFlyer_3.0"

    const-string v5, "Permission android.permission.INTERNET is missing in the AndroidManifest.xml"

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    const/4 v3, 0x0

    const-string v5, "PERMISSION_INTERNET_MISSING"

    const/4 v7, 0x0

    invoke-static {p0, v3, v5, v7}, Lcom/appsflyer/AppsFlyerLib;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    :cond_1
    const-string v3, "android.permission.ACCESS_NETWORK_STATE"

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 670
    const-string v3, "AppsFlyer_3.0"

    const-string v5, "Permission android.permission.ACCESS_NETWORK_STATE is missing in the AndroidManifest.xml"

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    :cond_2
    const-string v3, "android.permission.ACCESS_WIFI_STATE"

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 673
    const-string v2, "AppsFlyer_3.0"

    const-string v3, "Permission android.permission.ACCESS_WIFI_STATE is missing in the AndroidManifest.xml"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 679
    :cond_3
    :goto_4
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 680
    if-eqz p5, :cond_18

    const-string v2, "https://events.appsflyer.com/api/v3/androidevent?buildnumber=3.0&app_id="

    :goto_5
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 681
    if-eqz p5, :cond_4

    .line 682
    const-string v2, "af_events_api"

    const-string v3, "1"

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 684
    :cond_4
    const-string v2, "brand"

    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 685
    const-string v2, "device"

    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 686
    const-string v2, "product"

    sget-object v3, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 687
    const-string v2, "sdk"

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 688
    const-string v2, "model"

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 689
    const-string v2, "deviceType"

    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 691
    const-string v2, "additionalCustomData"

    invoke-static {v2}, Lcom/appsflyer/AppsFlyerLib;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 692
    if-eqz v2, :cond_5

    .line 693
    const-string v3, "customData"

    invoke-interface {v4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 696
    :cond_5
    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 697
    if-eqz v2, :cond_6

    .line 698
    const-string v3, "installer_package"

    invoke-interface {v4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_a
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 704
    :cond_6
    :goto_6
    :try_start_4
    invoke-static {}, Lcom/appsflyer/c;->a()Lcom/appsflyer/c;

    move-result-object v2

    const-string v3, "sdkExtension"

    invoke-virtual {v2, v3}, Lcom/appsflyer/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 705
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_7

    .line 706
    const-string v3, "sdkExtension"

    invoke-interface {v4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 709
    :cond_7
    invoke-static {p0}, Lcom/appsflyer/AppsFlyerLib;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 711
    invoke-static {p0, v2}, Lcom/appsflyer/AppsFlyerLib;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 712
    if-eqz v3, :cond_8

    .line 713
    const-string v7, "channel"

    invoke-interface {v4, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 716
    :cond_8
    if-eqz v3, :cond_9

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    :cond_9
    if-nez v3, :cond_b

    if-eqz v2, :cond_b

    .line 718
    :cond_a
    const-string v3, "af_latestchannel"

    invoke-interface {v4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 721
    :cond_b
    invoke-static {p0}, Lcom/appsflyer/AppsFlyerLib;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 722
    if-eqz v2, :cond_c

    .line 723
    const-string v3, "af_installstore"

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 726
    :cond_c
    invoke-static {p0}, Lcom/appsflyer/AppsFlyerLib;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 727
    if-eqz v2, :cond_d

    .line 728
    const-string v3, "af_preinstall_name"

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 731
    :cond_d
    invoke-static {p0}, Lcom/appsflyer/AppsFlyerLib;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 732
    if-eqz v2, :cond_e

    .line 733
    const-string v3, "af_currentstore"

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 737
    :cond_e
    if-eqz p1, :cond_f

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_10

    .line 738
    :cond_f
    const-string v2, "AppsFlyerKey"

    invoke-static {v2}, Lcom/appsflyer/AppsFlyerLib;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 740
    :cond_10
    if-eqz p1, :cond_19

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_19

    .line 741
    const-string v2, "appsflyerKey"

    move-object/from16 v0, p1

    invoke-interface {v4, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 742
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x8

    if-le v2, v3, :cond_11

    .line 743
    const-string v2, "dkh"

    const/4 v3, 0x0

    const/16 v7, 0x8

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 752
    :cond_11
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->a()Ljava/lang/String;

    move-result-object v2

    .line 753
    if-eqz v2, :cond_12

    .line 754
    const-string v3, "appUserId"

    invoke-interface {v4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 757
    :cond_12
    invoke-static {}, Lcom/appsflyer/c;->a()Lcom/appsflyer/c;

    move-result-object v2

    const-string v3, "userEmails"

    invoke-virtual {v2, v3}, Lcom/appsflyer/c;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 759
    if-eqz v7, :cond_2a

    array-length v2, v7

    if-lez v2, :cond_2a

    .line 760
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 761
    invoke-static {}, Lcom/appsflyer/c;->a()Lcom/appsflyer/c;

    move-result-object v2

    const-string v3, "userEmailsCryptType"

    const/4 v10, 0x1

    invoke-virtual {v2, v3, v10}, Lcom/appsflyer/c;->a(Ljava/lang/String;I)I

    move-result v10

    .line 762
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3}, Ljava/lang/String;-><init>()V

    .line 763
    array-length v11, v7

    const/4 v2, 0x0

    move v14, v2

    move-object v2, v3

    move v3, v14

    :goto_7
    if-ge v3, v11, :cond_1a

    aget-object v2, v7, v3

    .line 764
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    const/4 v13, 0x1

    if-le v12, v13, :cond_13

    .line 765
    const/16 v12, 0x2c

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 767
    :cond_13
    packed-switch v10, :pswitch_data_0

    .line 770
    :pswitch_0
    invoke-static {v2}, Lcom/appsflyer/HashUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 771
    const-string v2, "sha1_el_arr"

    .line 763
    :goto_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 646
    :cond_14
    const/4 v6, 0x0

    goto/16 :goto_0

    :cond_15
    move-object/from16 v2, p2

    .line 655
    goto/16 :goto_1

    :cond_16
    move-object/from16 v2, p2

    .line 656
    goto/16 :goto_2

    :cond_17
    move-object/from16 v2, p2

    .line 658
    goto/16 :goto_3

    .line 680
    :cond_18
    const-string v2, "https://t.appsflyer.col/api/v3/androidevent?buildnumber=3.0&app_id="

    goto/16 :goto_5

    .line 746
    :cond_19
    const-string v2, "AppsFlyer dev key is missing!!! Please use  AppsFlyerLib.setAppsFlyerKey(...) to set it. "

    invoke-static {v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    const-string v2, "DEV_KEY_MISSING"

    const/4 v3, 0x0

    invoke-static {p0, v8, v2, v3}, Lcom/appsflyer/AppsFlyerLib;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    const-string v2, "AppsFlyer will not track this event."

    invoke-static {v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    :goto_9
    return-void

    .line 774
    :pswitch_1
    invoke-static {v2}, Lcom/appsflyer/HashUtils;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 775
    const-string v2, "md5_el_arr"

    goto :goto_8

    .line 778
    :pswitch_2
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 779
    const-string v2, "plain_el_arr"

    goto :goto_8

    .line 784
    :cond_1a
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 793
    :cond_1b
    :goto_a
    if-eqz p2, :cond_1c

    .line 794
    const-string v2, "eventName"

    move-object/from16 v0, p2

    invoke-interface {v4, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 795
    if-eqz p3, :cond_1c

    .line 796
    const-string v2, "eventValue"

    move-object/from16 v0, p3

    invoke-interface {v4, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 800
    :cond_1c
    const-string v2, "appid"

    invoke-static {v2}, Lcom/appsflyer/AppsFlyerLib;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1d

    .line 801
    const-string v2, "appid"

    const-string v3, "appid"

    invoke-static {v3}, Lcom/appsflyer/AppsFlyerLib;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 803
    :cond_1d
    const-string v2, "currencyCode"

    invoke-static {v2}, Lcom/appsflyer/AppsFlyerLib;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 804
    if-eqz v2, :cond_1f

    .line 805
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v7, 0x3

    if-eq v3, v7, :cond_1e

    .line 806
    const-string v3, "AppsFlyer_3.0"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "WARNING:currency code should be 3 characters!!! \'"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "\' is not a legal value."

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    :cond_1e
    const-string v3, "currency"

    invoke-interface {v4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 811
    :cond_1f
    const-string v2, "IS_UPDATE"

    invoke-static {v2}, Lcom/appsflyer/AppsFlyerLib;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 812
    if-eqz v2, :cond_20

    .line 813
    const-string v3, "isUpdate"

    invoke-interface {v4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 815
    :cond_20
    invoke-static {p0}, Lcom/appsflyer/AppsFlyerLib;->c(Landroid/content/Context;)Z

    move-result v2

    .line 816
    const-string v3, "af_preinstalled"

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 818
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2}, Lcom/appsflyer/AppsFlyerLib;->a(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v2

    .line 819
    if-eqz v2, :cond_21

    .line 820
    const-string v3, "fb"

    invoke-interface {v4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 823
    :cond_21
    invoke-static {p0, v4}, Lcom/appsflyer/AppsFlyerLib;->a(Landroid/content/Context;Ljava/util/Map;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 826
    :try_start_5
    invoke-static {p0}, Lcom/appsflyer/h;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 827
    if-eqz v2, :cond_22

    .line 828
    const-string v3, "uid"

    invoke-interface {v4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    .line 835
    :cond_22
    :goto_b
    :try_start_6
    const-string v2, "lang"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_9
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    .line 841
    :goto_c
    :try_start_7
    const-string v2, "lang_code"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_8
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0

    .line 847
    :goto_d
    :try_start_8
    const-string v2, "country"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0

    .line 852
    :goto_e
    :try_start_9
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 853
    const-string v3, "operator"

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 854
    const-string v3, "carrier"

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0

    .line 860
    :goto_f
    :try_start_a
    const-string v2, "network"

    invoke-static {p0}, Lcom/appsflyer/AppsFlyerLib;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_2

    .line 879
    :goto_10
    :try_start_b
    invoke-static {p0, v4}, Lcom/appsflyer/AppsFlyerLib;->b(Landroid/content/Context;Ljava/util/Map;)V

    .line 880
    invoke-static {p0, v4}, Lcom/appsflyer/AppsFlyerLib;->c(Landroid/content/Context;Ljava/util/Map;)V

    .line 882
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd_hhmmZ"

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v3, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 884
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_0

    const/16 v7, 0x9

    if-lt v3, v7, :cond_23

    .line 886
    :try_start_c
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    invoke-virtual {v3, v7, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-wide v10, v3, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    .line 887
    const-string v3, "installDate"

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_0

    .line 894
    :cond_23
    :goto_11
    :try_start_d
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    invoke-virtual {v3, v7, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 896
    const-string v7, "appsflyer-data"

    const/4 v9, 0x0

    invoke-virtual {p0, v7, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 897
    const-string v9, "versionCode"

    const/4 v10, 0x0

    invoke-interface {v7, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 899
    iget v9, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    if-le v9, v7, :cond_24

    .line 902
    const-string v7, "appsflyerConversionDataRequestRetries"

    const/4 v9, 0x0

    invoke-static {p0, v7, v9}, Lcom/appsflyer/AppsFlyerLib;->b(Landroid/content/Context;Ljava/lang/String;I)V

    .line 903
    const-string v7, "versionCode"

    iget v9, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {p0, v7, v9}, Lcom/appsflyer/AppsFlyerLib;->b(Landroid/content/Context;Ljava/lang/String;I)V

    .line 907
    :cond_24
    const-string v7, "app_version_code"

    iget v9, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 908
    const-string v7, "app_version_name"

    iget-object v9, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-interface {v4, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 911
    iget-wide v10, v3, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    .line 912
    iget-wide v12, v3, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    .line 914
    const-string v3, "date1"

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 915
    const-string v3, "date2"

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7, v12, v13}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 916
    invoke-static {v2, p0}, Lcom/appsflyer/AppsFlyerLib;->a(Ljava/text/SimpleDateFormat;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 917
    const-string v3, "firstLaunchDate"

    invoke-interface {v4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_d .. :try_end_d} :catch_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_0

    .line 927
    :goto_12
    :try_start_e
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_25

    .line 928
    const-string v2, "referrer"

    move-object/from16 v0, p4

    invoke-interface {v4, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 931
    :cond_25
    const-string v2, "appsflyer-data"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 932
    const-string v3, "attributionId"

    const/4 v7, 0x0

    invoke-interface {v2, v3, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 933
    if-eqz v2, :cond_26

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_26

    .line 934
    const-string v3, "installAttribution"

    invoke-interface {v4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 937
    :cond_26
    if-eqz v6, :cond_29

    instance-of v2, p0, Landroid/app/Activity;

    if-eqz v2, :cond_29

    .line 938
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 939
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 941
    const-string v7, "android.intent.action.VIEW"

    if-ne v3, v7, :cond_29

    .line 942
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 944
    const-string v2, "af_deeplink"

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 947
    const-string v2, "af_deeplink"

    invoke-virtual {v3, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2b

    .line 948
    invoke-virtual {v3}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/appsflyer/AppsFlyerLib;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 950
    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_27

    .line 951
    const-string v7, "path"

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 954
    :cond_27
    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_28

    .line 955
    const-string v7, "scheme"

    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 963
    :cond_28
    :goto_13
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    .line 964
    const-string v7, "deeplinkAttribution"

    invoke-static {p0, v7, v3}, Lcom/appsflyer/AppsFlyerLib;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 967
    sget-object v3, Lcom/appsflyer/AppsFlyerLib;->c:Lcom/appsflyer/a;

    if-eqz v3, :cond_29

    .line 968
    sget-object v3, Lcom/appsflyer/AppsFlyerLib;->c:Lcom/appsflyer/a;

    invoke-interface {v3, v2}, Lcom/appsflyer/a;->b(Ljava/util/Map;)V

    .line 972
    :cond_29
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "AppsFlyerLib.sendTrackingWithEvent"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 973
    new-instance v2, Lcom/appsflyer/AppsFlyerLib$e;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/appsflyer/AppsFlyerLib$e;-><init>(Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;ZLcom/appsflyer/AppsFlyerLib$1;)V

    invoke-virtual {v2}, Lcom/appsflyer/AppsFlyerLib$e;->run()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_0

    goto/16 :goto_9

    .line 975
    :catch_0
    move-exception v2

    .line 976
    invoke-virtual {v2}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_9

    .line 787
    :cond_2a
    :try_start_f
    const-string v2, "userEmail"

    invoke-static {v2}, Lcom/appsflyer/AppsFlyerLib;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 788
    if-eqz v2, :cond_1b

    .line 789
    const-string v3, "sha1_el"

    invoke-static {v2}, Lcom/appsflyer/HashUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_a

    .line 830
    :catch_1
    move-exception v2

    .line 831
    const-string v3, "AppsFlyer_3.0"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ERROR:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "ERROR:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "could not get uid "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 861
    :catch_2
    move-exception v2

    .line 862
    const-string v3, "AppsFlyer_3.0"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "checking network error "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10

    .line 959
    :cond_2b
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 960
    const-string v7, "link"

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_0

    goto/16 :goto_13

    .line 923
    :catch_3
    move-exception v2

    goto/16 :goto_12

    .line 921
    :catch_4
    move-exception v2

    goto/16 :goto_12

    .line 888
    :catch_5
    move-exception v3

    goto/16 :goto_11

    .line 855
    :catch_6
    move-exception v2

    goto/16 :goto_f

    .line 848
    :catch_7
    move-exception v2

    goto/16 :goto_e

    .line 842
    :catch_8
    move-exception v2

    goto/16 :goto_d

    .line 836
    :catch_9
    move-exception v2

    goto/16 :goto_c

    .line 700
    :catch_a
    move-exception v2

    goto/16 :goto_6

    .line 675
    :catch_b
    move-exception v2

    goto/16 :goto_4

    .line 767
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static c(Landroid/content/Context;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1214
    const-string v0, "com.unity3d.player.UnityPlayer"

    .line 1216
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 1217
    const-string v0, "platformextension"

    const-string v1, "android_unity"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1227
    :goto_0
    return-void

    .line 1219
    :catch_0
    move-exception v0

    .line 1221
    const-string v0, "platformextension"

    const-string v1, "android_native"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1224
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 330
    invoke-static {}, Lcom/appsflyer/c;->a()Lcom/appsflyer/c;

    move-result-object v0

    const-string v1, "currencyCode"

    invoke-virtual {v0, v1, p0}, Lcom/appsflyer/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    return-void
.end method

.method static synthetic c()Z
    .locals 1

    .prologue
    .line 32
    sget-boolean v0, Lcom/appsflyer/AppsFlyerLib;->e:Z

    return v0
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1132
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 1137
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 1138
    const/4 v0, 0x1

    .line 1143
    :cond_0
    :goto_0
    return v0

    .line 1140
    :catch_0
    move-exception v1

    .line 1141
    const-string v2, "AppsFlyer_3.0"

    const-string v3, "Could not check if app is pre installed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1319
    invoke-static {p0}, Lcom/appsflyer/h;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 1147
    const-string v0, "appsflyer-data"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1148
    const-string v1, "CACHED_CHANNEL"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1149
    const-string v1, "CACHED_CHANNEL"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1153
    :goto_0
    return-object p1

    .line 1152
    :cond_0
    const-string v0, "CACHED_CHANNEL"

    invoke-static {p0, v0, p1}, Lcom/appsflyer/AppsFlyerLib;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic d(Ljava/lang/String;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 32
    invoke-static {p0}, Lcom/appsflyer/AppsFlyerLib;->e(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/appsflyer/AppsFlyerLib;->g:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method private static e(Ljava/lang/String;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 599
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 602
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 603
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 604
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 605
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 606
    sget-object v4, Lcom/appsflyer/AppsFlyerLib;->b:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 607
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 610
    :catch_0
    move-exception v0

    .line 611
    const-string v1, "AppsFlyer_3.0"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 612
    const/4 v0, 0x0

    .line 615
    :goto_1
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method static synthetic e(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 32
    invoke-static {p0}, Lcom/appsflyer/AppsFlyerLib;->g(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic f(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    invoke-static {p0}, Lcom/appsflyer/AppsFlyerLib;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static g(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 189
    invoke-static {}, Lcom/appsflyer/c;->a()Lcom/appsflyer/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsflyer/c;->e()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static h(Landroid/content/Context;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1031
    const-string v1, "appsflyer-data"

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1033
    const-string v2, "appsFlyerCount"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private static i(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1037
    const-string v1, "appsflyer-data"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1038
    const-string v2, "INSTALL_STORE"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1039
    const-string v2, "INSTALL_STORE"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1044
    :goto_0
    return-object v0

    .line 1041
    :cond_0
    invoke-static {p0}, Lcom/appsflyer/AppsFlyerLib;->h(Landroid/content/Context;)Z

    move-result v1

    .line 1042
    if-eqz v1, :cond_1

    invoke-static {p0}, Lcom/appsflyer/AppsFlyerLib;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1043
    :cond_1
    const-string v1, "INSTALL_STORE"

    invoke-static {p0, v1, v0}, Lcom/appsflyer/AppsFlyerLib;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static j(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 1051
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1052
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 1053
    if-eqz v0, :cond_1

    .line 1054
    const-string v1, "AF_STORE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1055
    if-eqz v0, :cond_1

    .line 1056
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    .line 1064
    :goto_0
    return-object v0

    .line 1056
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 1059
    :catch_0
    move-exception v0

    .line 1060
    invoke-static {p0}, Lcom/appsflyer/AppsFlyerLib;->g(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1061
    const-string v1, "AppsFlyer_3.0"

    const-string v2, "Could not find AF_STORE value in the manifest"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1064
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static k(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1068
    const-string v0, "appsflyer-data"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1069
    const-string v2, "preInstallName"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1070
    const-string v2, "preInstallName"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1093
    :goto_0
    return-object v1

    .line 1072
    :cond_0
    invoke-static {p0}, Lcom/appsflyer/AppsFlyerLib;->h(Landroid/content/Context;)Z

    move-result v2

    .line 1073
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 1075
    if-eqz v2, :cond_1

    .line 1077
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1078
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 1079
    if-eqz v0, :cond_3

    .line 1080
    const-string v2, "AF_PRE_INSTALL_NAME"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1081
    if-eqz v0, :cond_3

    .line 1082
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_2

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object v1, v0

    .line 1092
    :cond_1
    :goto_2
    const-string v0, "preInstallName"

    invoke-static {p0, v0, v1}, Lcom/appsflyer/AppsFlyerLib;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1082
    :cond_2
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_1

    .line 1085
    :catch_0
    move-exception v0

    .line 1086
    invoke-static {p0}, Lcom/appsflyer/AppsFlyerLib;->g(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1087
    const-string v2, "AppsFlyer_3.0"

    const-string v3, "Could not find AF_PRE_INSTALL_NAME value in the manifest"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method private static l(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 1099
    sget-boolean v0, Lcom/appsflyer/AppsFlyerLib;->e:Z

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/appsflyer/AppsFlyerLib;->f:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3a98

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 1107
    :cond_0
    :goto_0
    return-void

    .line 1102
    :cond_1
    sget-object v0, Lcom/appsflyer/AppsFlyerLib;->g:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v0, :cond_0

    .line 1105
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcom/appsflyer/AppsFlyerLib;->g:Ljava/util/concurrent/ScheduledExecutorService;

    .line 1106
    sget-object v0, Lcom/appsflyer/AppsFlyerLib;->g:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/appsflyer/AppsFlyerLib$b;

    invoke-direct {v1, p0}, Lcom/appsflyer/AppsFlyerLib$b;-><init>(Landroid/content/Context;)V

    const-wide/16 v2, 0x1

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0
.end method

.method private static m(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 1111
    invoke-static {}, Lcom/appsflyer/c;->a()Lcom/appsflyer/c;

    move-result-object v0

    const-string v1, "channel"

    invoke-virtual {v0, v1}, Lcom/appsflyer/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1112
    if-nez v1, :cond_0

    .line 1114
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1115
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 1116
    if-eqz v0, :cond_2

    .line 1117
    const-string v2, "CHANNEL"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1118
    if-eqz v0, :cond_2

    .line 1119
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_1

    check-cast v0, Ljava/lang/String;

    :goto_0
    move-object v1, v0

    .line 1126
    :cond_0
    :goto_1
    return-object v1

    .line 1119
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 1122
    :catch_0
    move-exception v0

    .line 1123
    const-string v2, "AppsFlyer_3.0"

    const-string v3, "Could not load CHANNEL value"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method private static n(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1305
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1307
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 1308
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1309
    const-string v0, "WIFI"

    .line 1315
    :goto_0
    return-object v0

    .line 1311
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 1312
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1313
    const-string v0, "MOBILE"

    goto :goto_0

    .line 1315
    :cond_1
    const-string v0, "unkown"

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 96
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    const-string v0, "AppsFlyer_3.0"

    const-string v2, "Received ACTION_PACKAGE_REMOVED intent"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 100
    const-string v2, "android.intent.extra.DATA_REMOVED"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "android.intent.extra.DATA_REMOVED"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    .line 104
    const-string v1, "AppsFlyer_3.0"

    const-string v2, "Package removed"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-direct {p0, v0, p1}, Lcom/appsflyer/AppsFlyerLib;->a(Ljava/lang/String;Landroid/content/Context;)V

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 109
    :cond_1
    const-string v0, "shouldMonitor"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 110
    if-eqz v0, :cond_2

    .line 111
    const-string v2, "AppsFlyer_3.0"

    const-string v3, "Turning on monitoring."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    invoke-static {}, Lcom/appsflyer/c;->a()Lcom/appsflyer/c;

    move-result-object v2

    const-string v3, "shouldMonitor"

    const-string v4, "true"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v2, v3, v0}, Lcom/appsflyer/c;->a(Ljava/lang/String;Z)V

    .line 113
    const-string v0, "START_TRACKING"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v0, v2}, Lcom/appsflyer/AppsFlyerLib;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 116
    :cond_2
    invoke-static {p1}, Lcom/appsflyer/AppsFlyerLib;->g(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 117
    const-string v0, "AppsFlyer_3.0"

    const-string v2, "****** onReceive called *******"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :cond_3
    const-string v0, "******* onReceive: "

    const-string v2, ""

    invoke-static {v0, v2, p1}, Lcom/appsflyer/AppsFlyerLib;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 122
    invoke-static {}, Lcom/appsflyer/c;->a()Lcom/appsflyer/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsflyer/c;->b()V

    .line 124
    const-string v0, "referrer"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 125
    invoke-static {p1}, Lcom/appsflyer/AppsFlyerLib;->g(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 126
    const-string v0, "AppsFlyer_3.0"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Play store referrer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :cond_4
    if-eqz v4, :cond_0

    .line 129
    const-string v0, "BroadcastReceiver got referrer: "

    invoke-static {v0, v4, p1}, Lcom/appsflyer/AppsFlyerLib;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 130
    const-string v0, "onRecieve called. refferer="

    invoke-static {v0, v4, p1}, Lcom/appsflyer/AppsFlyerLib;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 132
    const-string v0, "referrer"

    invoke-static {p1, v0, v4}, Lcom/appsflyer/AppsFlyerLib;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    invoke-static {}, Lcom/appsflyer/c;->a()Lcom/appsflyer/c;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/appsflyer/c;->c(Ljava/lang/String;)V

    .line 137
    invoke-static {}, Lcom/appsflyer/c;->a()Lcom/appsflyer/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsflyer/c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    const-string v0, "AppsFlyer_3.0"

    const-string v2, "onReceive: isLaunchCalled"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    const/4 v5, 0x0

    move-object v0, p1

    move-object v2, v1

    move-object v3, v1

    invoke-static/range {v0 .. v5}, Lcom/appsflyer/AppsFlyerLib;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0
.end method
