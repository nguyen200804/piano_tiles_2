.class public final Lcom/facebook/l;
.super Ljava/lang/Object;
.source "FacebookSdk.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/l$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/facebook/u;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile c:Ljava/util/concurrent/Executor;

.field private static volatile d:Ljava/lang/String;

.field private static volatile e:Ljava/lang/String;

.field private static volatile f:Ljava/lang/String;

.field private static volatile g:I

.field private static volatile h:Ljava/lang/String;

.field private static i:Ljava/util/concurrent/atomic/AtomicLong;

.field private static volatile j:Z

.field private static k:Z

.field private static l:Lcom/facebook/internal/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/internal/r",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private static m:Landroid/content/Context;

.field private static n:I

.field private static final o:Ljava/lang/Object;

.field private static final p:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static final q:Ljava/util/concurrent/ThreadFactory;

.field private static r:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 62
    const-class v0, Lcom/facebook/l;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/l;->a:Ljava/lang/String;

    .line 63
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/facebook/u;

    sget-object v2, Lcom/facebook/u;->f:Lcom/facebook/u;

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/facebook/l;->b:Ljava/util/HashSet;

    .line 71
    const-string v0, "facebook.com"

    sput-object v0, Lcom/facebook/l;->h:Ljava/lang/String;

    .line 72
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/32 v2, 0x10000

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lcom/facebook/l;->i:Ljava/util/concurrent/atomic/AtomicLong;

    .line 73
    sput-boolean v4, Lcom/facebook/l;->j:Z

    .line 74
    sput-boolean v4, Lcom/facebook/l;->k:Z

    .line 80
    const v0, 0xface

    sput v0, Lcom/facebook/l;->n:I

    .line 81
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/facebook/l;->o:Ljava/lang/Object;

    .line 88
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Lcom/facebook/l;->p:Ljava/util/concurrent/BlockingQueue;

    .line 91
    new-instance v0, Lcom/facebook/l$1;

    invoke-direct {v0}, Lcom/facebook/l$1;-><init>()V

    sput-object v0, Lcom/facebook/l;->q:Ljava/util/concurrent/ThreadFactory;

    .line 126
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/facebook/l;->r:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 785
    return-void
.end method

.method public static a(I)V
    .locals 0

    .prologue
    .line 735
    if-eqz p0, :cond_0

    :goto_0
    sput p0, Lcom/facebook/l;->g:I

    .line 736
    return-void

    .line 735
    :cond_0
    const p0, 0x1030010

    goto :goto_0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 174
    const-class v0, Lcom/facebook/l;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, v1}, Lcom/facebook/l;->a(Landroid/content/Context;Lcom/facebook/l$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    monitor-exit v0

    return-void

    .line 174
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized a(Landroid/content/Context;Lcom/facebook/l$a;)V
    .locals 3

    .prologue
    .line 187
    const-class v1, Lcom/facebook/l;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/facebook/l;->r:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 188
    if-eqz p1, :cond_0

    .line 189
    invoke-interface {p1}, Lcom/facebook/l$a;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    .line 194
    :cond_1
    :try_start_1
    const-string v0, "applicationContext"

    invoke-static {p0, v0}, Lcom/facebook/internal/ab;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 198
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/facebook/internal/ab;->b(Landroid/content/Context;Z)V

    .line 199
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/facebook/internal/ab;->a(Landroid/content/Context;Z)V

    .line 201
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/facebook/l;->m:Landroid/content/Context;

    .line 204
    sget-object v0, Lcom/facebook/l;->m:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/l;->c(Landroid/content/Context;)V

    .line 208
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/facebook/l;->r:Ljava/lang/Boolean;

    .line 211
    sget-object v0, Lcom/facebook/l;->m:Landroid/content/Context;

    sget-object v2, Lcom/facebook/l;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/facebook/internal/aa;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 213
    invoke-static {}, Lcom/facebook/internal/v;->b()V

    .line 215
    sget-object v0, Lcom/facebook/l;->m:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/internal/BoltsMeasurementEventListener;->a(Landroid/content/Context;)Lcom/facebook/internal/BoltsMeasurementEventListener;

    .line 217
    new-instance v0, Lcom/facebook/internal/r;

    new-instance v2, Lcom/facebook/l$2;

    invoke-direct {v2}, Lcom/facebook/l$2;-><init>()V

    invoke-direct {v0, v2}, Lcom/facebook/internal/r;-><init>(Ljava/util/concurrent/Callable;)V

    sput-object v0, Lcom/facebook/l;->l:Lcom/facebook/internal/r;

    .line 225
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v2, Lcom/facebook/l$3;

    invoke-direct {v2, p1}, Lcom/facebook/l$3;-><init>(Lcom/facebook/l$a;)V

    invoke-direct {v0, v2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 244
    invoke-static {}, Lcom/facebook/l;->d()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 187
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 439
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 440
    invoke-static {}, Lcom/facebook/l;->d()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/facebook/l$4;

    invoke-direct {v2, v0, p1}, Lcom/facebook/l$4;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 446
    return-void
.end method

.method public static declared-synchronized a()Z
    .locals 2

    .prologue
    .line 252
    const-class v1, Lcom/facebook/l;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/facebook/l;->r:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Lcom/facebook/u;)Z
    .locals 2

    .prologue
    .line 323
    sget-object v1, Lcom/facebook/l;->b:Ljava/util/HashSet;

    monitor-enter v1

    .line 324
    :try_start_0
    invoke-static {}, Lcom/facebook/l;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/facebook/l;->b:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 325
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static b(Landroid/content/Context;Ljava/lang/String;)Lcom/facebook/q;
    .locals 14

    .prologue
    const-wide/16 v12, 0x0

    const/4 v1, 0x0

    .line 452
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 453
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Both context and applicationId must be non-null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 514
    :catch_0
    move-exception v0

    move-object v2, v0

    .line 516
    const-string v0, "Facebook-publish"

    invoke-static {v0, v2}, Lcom/facebook/internal/aa;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 517
    new-instance v0, Lcom/facebook/q;

    new-instance v3, Lcom/facebook/k;

    invoke-direct {v3, v1, v2}, Lcom/facebook/k;-><init>(Ljava/net/HttpURLConnection;Ljava/lang/Exception;)V

    invoke-direct {v0, v1, v1, v3}, Lcom/facebook/q;-><init>(Lcom/facebook/GraphRequest;Ljava/net/HttpURLConnection;Lcom/facebook/k;)V

    :goto_0
    return-object v0

    .line 455
    :cond_1
    :try_start_1
    invoke-static {p0}, Lcom/facebook/internal/c;->a(Landroid/content/Context;)Lcom/facebook/internal/c;

    move-result-object v0

    .line 456
    const-string v2, "com.facebook.sdk.attributionTracking"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 457
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ping"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 458
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "json"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 459
    const-wide/16 v6, 0x0

    invoke-interface {v2, v3, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 460
    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    .line 464
    :try_start_2
    sget-object v8, Lcom/facebook/internal/b$a;->a:Lcom/facebook/internal/b$a;

    invoke-static {p0}, Lcom/facebook/appevents/a;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-static {p0}, Lcom/facebook/l;->b(Landroid/content/Context;)Z

    move-result v10

    invoke-static {v8, v0, v9, v10, p0}, Lcom/facebook/internal/b;->a(Lcom/facebook/internal/b$a;Lcom/facebook/internal/c;Ljava/lang/String;ZLandroid/content/Context;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    .line 474
    :try_start_3
    const-string v8, "%s/activities"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p1, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 475
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v9, v8, v0, v10}, Lcom/facebook/GraphRequest;->a(Lcom/facebook/AccessToken;Ljava/lang/String;Lorg/json/JSONObject;Lcom/facebook/GraphRequest$b;)Lcom/facebook/GraphRequest;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v8

    .line 477
    cmp-long v0, v6, v12

    if-eqz v0, :cond_3

    .line 480
    if-eqz v5, :cond_5

    .line 481
    :try_start_4
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :goto_1
    move-object v2, v0

    .line 487
    :goto_2
    if-nez v2, :cond_2

    .line 488
    :try_start_5
    const-string v0, "true"

    const/4 v2, 0x0

    new-instance v3, Lcom/facebook/p;

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/facebook/GraphRequest;

    const/4 v5, 0x0

    aput-object v8, v4, v5

    invoke-direct {v3, v4}, Lcom/facebook/p;-><init>([Lcom/facebook/GraphRequest;)V

    invoke-static {v0, v2, v3}, Lcom/facebook/q;->a(Ljava/lang/String;Ljava/net/HttpURLConnection;Lcom/facebook/p;)Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/q;

    goto/16 :goto_0

    .line 470
    :catch_1
    move-exception v0

    .line 471
    new-instance v2, Lcom/facebook/i;

    const-string v3, "An error occurred while publishing install."

    invoke-direct {v2, v3, v0}, Lcom/facebook/i;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 484
    :catch_2
    move-exception v0

    move-object v2, v1

    goto :goto_2

    .line 494
    :cond_2
    new-instance v0, Lcom/facebook/q;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v0, v3, v4, v5, v2}, Lcom/facebook/q;-><init>(Lcom/facebook/GraphRequest;Ljava/net/HttpURLConnection;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto/16 :goto_0

    .line 499
    :cond_3
    invoke-virtual {v8}, Lcom/facebook/GraphRequest;->i()Lcom/facebook/q;

    move-result-object v0

    .line 502
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 503
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 504
    invoke-interface {v2, v3, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 507
    invoke-virtual {v0}, Lcom/facebook/q;->b()Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 508
    invoke-virtual {v0}, Lcom/facebook/q;->b()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 510
    :cond_4
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0

    :cond_5
    move-object v0, v1

    goto :goto_1
.end method

.method public static b()Z
    .locals 1

    .prologue
    .line 332
    sget-boolean v0, Lcom/facebook/l;->j:Z

    return v0
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 539
    invoke-static {}, Lcom/facebook/internal/ab;->a()V

    .line 540
    const-string v0, "com.facebook.sdk.appEventPreferences"

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 542
    const-string v1, "limitEventUsage"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static c(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 581
    if-nez p0, :cond_1

    .line 624
    :cond_0
    :goto_0
    return-void

    .line 587
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 593
    if-eqz v1, :cond_0

    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 597
    sget-object v0, Lcom/facebook/l;->d:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 598
    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "com.facebook.sdk.ApplicationId"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 599
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 600
    check-cast v0, Ljava/lang/String;

    .line 601
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "fb"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 602
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/l;->d:Ljava/lang/String;

    .line 613
    :cond_2
    :goto_1
    sget-object v0, Lcom/facebook/l;->e:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 614
    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "com.facebook.sdk.ApplicationName"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/l;->e:Ljava/lang/String;

    .line 617
    :cond_3
    sget-object v0, Lcom/facebook/l;->f:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 618
    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "com.facebook.sdk.ClientToken"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/l;->f:Ljava/lang/String;

    .line 621
    :cond_4
    sget v0, Lcom/facebook/l;->g:I

    if-nez v0, :cond_0

    .line 622
    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "com.facebook.sdk.WebDialogTheme"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/facebook/l;->a(I)V

    goto :goto_0

    .line 604
    :cond_5
    sput-object v0, Lcom/facebook/l;->d:Ljava/lang/String;

    goto :goto_1

    .line 606
    :cond_6
    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 607
    new-instance v0, Lcom/facebook/i;

    const-string v1, "App Ids cannot be directly placed in the manifest.They must be prefixed by \'fb\' or be placed in the string resource file."

    invoke-direct {v0, v1}, Lcom/facebook/i;-><init>(Ljava/lang/String;)V

    throw v0

    .line 589
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static c()Z
    .locals 1

    .prologue
    .line 349
    sget-boolean v0, Lcom/facebook/l;->k:Z

    return v0
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 632
    invoke-static {}, Lcom/facebook/internal/ab;->a()V

    .line 633
    if-nez p0, :cond_1

    .line 662
    :cond_0
    :goto_0
    return-object v0

    .line 636
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 637
    if-eqz v1, :cond_0

    .line 641
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 644
    const/16 v3, 0x40

    :try_start_0
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 649
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 650
    if-eqz v2, :cond_0

    array-length v2, v2

    if-eqz v2, :cond_0

    .line 656
    :try_start_1
    const-string v2, "SHA-1"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 661
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 662
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    const/16 v1, 0x9

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 645
    :catch_0
    move-exception v1

    goto :goto_0

    .line 657
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public static d()Ljava/util/concurrent/Executor;
    .locals 2

    .prologue
    .line 376
    sget-object v1, Lcom/facebook/l;->o:Ljava/lang/Object;

    monitor-enter v1

    .line 377
    :try_start_0
    sget-object v0, Lcom/facebook/l;->c:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_0

    .line 378
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    sput-object v0, Lcom/facebook/l;->c:Ljava/util/concurrent/Executor;

    .line 380
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 381
    sget-object v0, Lcom/facebook/l;->c:Ljava/util/concurrent/Executor;

    return-object v0

    .line 380
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 404
    sget-object v0, Lcom/facebook/l;->h:Ljava/lang/String;

    return-object v0
.end method

.method public static f()Landroid/content/Context;
    .locals 1

    .prologue
    .line 427
    invoke-static {}, Lcom/facebook/internal/ab;->a()V

    .line 428
    sget-object v0, Lcom/facebook/l;->m:Landroid/content/Context;

    return-object v0
.end method

.method public static g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 527
    const-string v0, "4.10.1"

    return-object v0
.end method

.method public static h()J
    .locals 2

    .prologue
    .line 565
    invoke-static {}, Lcom/facebook/internal/ab;->a()V

    .line 566
    sget-object v0, Lcom/facebook/l;->i:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public static i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 672
    invoke-static {}, Lcom/facebook/internal/ab;->a()V

    .line 673
    sget-object v0, Lcom/facebook/l;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 691
    invoke-static {}, Lcom/facebook/internal/ab;->a()V

    .line 692
    sget-object v0, Lcom/facebook/l;->e:Ljava/lang/String;

    return-object v0
.end method

.method public static k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 709
    invoke-static {}, Lcom/facebook/internal/ab;->a()V

    .line 710
    sget-object v0, Lcom/facebook/l;->f:Ljava/lang/String;

    return-object v0
.end method

.method public static l()I
    .locals 1

    .prologue
    .line 726
    invoke-static {}, Lcom/facebook/internal/ab;->a()V

    .line 727
    sget v0, Lcom/facebook/l;->g:I

    return v0
.end method

.method public static m()Ljava/io/File;
    .locals 1

    .prologue
    .line 745
    invoke-static {}, Lcom/facebook/internal/ab;->a()V

    .line 746
    sget-object v0, Lcom/facebook/l;->l:Lcom/facebook/internal/r;

    invoke-virtual {v0}, Lcom/facebook/internal/r;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    return-object v0
.end method

.method public static n()I
    .locals 1

    .prologue
    .line 764
    invoke-static {}, Lcom/facebook/internal/ab;->a()V

    .line 765
    sget v0, Lcom/facebook/l;->n:I

    return v0
.end method

.method static synthetic o()Landroid/content/Context;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/facebook/l;->m:Landroid/content/Context;

    return-object v0
.end method
