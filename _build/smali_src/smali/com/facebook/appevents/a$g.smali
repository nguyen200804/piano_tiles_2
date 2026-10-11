.class Lcom/facebook/appevents/a$g;
.super Ljava/lang/Object;
.source "AppEventsLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/appevents/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "g"
.end annotation


# static fields
.field private static final a:Ljava/lang/Object;

.field private static b:Z

.field private static c:Z

.field private static d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/facebook/appevents/a$a;",
            "Lcom/facebook/appevents/b;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1589
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/facebook/appevents/a$g;->a:Ljava/lang/Object;

    .line 1590
    sput-boolean v1, Lcom/facebook/appevents/a$g;->b:Z

    .line 1591
    sput-boolean v1, Lcom/facebook/appevents/a$g;->c:Z

    .line 1594
    new-instance v0, Lcom/facebook/appevents/a$g$1;

    invoke-direct {v0}, Lcom/facebook/appevents/a$g$1;-><init>()V

    sput-object v0, Lcom/facebook/appevents/a$g;->e:Ljava/lang/Runnable;

    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/facebook/appevents/a$a;)Lcom/facebook/appevents/b;
    .locals 2

    .prologue
    .line 1696
    invoke-static {p0}, Lcom/facebook/appevents/a$g;->b(Landroid/content/Context;)V

    .line 1699
    sget-object v0, Lcom/facebook/appevents/a$g;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/appevents/b;

    .line 1700
    if-nez v0, :cond_0

    .line 1701
    new-instance v0, Lcom/facebook/appevents/b;

    invoke-direct {v0}, Lcom/facebook/appevents/b;-><init>()V

    .line 1702
    sget-object v1, Lcom/facebook/appevents/a$g;->d:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1705
    :cond_0
    return-object v0
.end method

.method private static a()V
    .locals 5

    .prologue
    .line 1709
    sget-boolean v0, Lcom/facebook/appevents/a$g;->b:Z

    if-nez v0, :cond_0

    .line 1710
    const/4 v0, 0x1

    sput-boolean v0, Lcom/facebook/appevents/a$g;->b:Z

    .line 1711
    invoke-static {}, Lcom/facebook/appevents/a;->i()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    sget-object v1, Lcom/facebook/appevents/a$g;->e:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1e

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 1716
    :cond_0
    return-void
.end method

.method static a(Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 1638
    const/4 v2, 0x0

    .line 1640
    sget-object v3, Lcom/facebook/appevents/a$g;->a:Ljava/lang/Object;

    monitor-enter v3

    .line 1641
    :try_start_0
    sget-boolean v0, Lcom/facebook/appevents/a$g;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 1643
    :try_start_1
    new-instance v1, Ljava/io/ObjectOutputStream;

    new-instance v0, Ljava/io/BufferedOutputStream;

    const-string v4, "AppEventsLogger.persistedsessioninfo"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1650
    :try_start_2
    sget-object v0, Lcom/facebook/appevents/a$g;->d:Ljava/util/Map;

    invoke-virtual {v1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1651
    const/4 v0, 0x0

    sput-boolean v0, Lcom/facebook/appevents/a$g;->b:Z

    .line 1652
    sget-object v0, Lcom/facebook/u;->e:Lcom/facebook/u;

    const-string v2, "AppEvents"

    const-string v4, "App session info saved"

    invoke-static {v0, v2, v4}, Lcom/facebook/internal/s;->a(Lcom/facebook/u;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1659
    :try_start_3
    invoke-static {v1}, Lcom/facebook/internal/aa;->a(Ljava/io/Closeable;)V

    .line 1662
    :cond_0
    :goto_0
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1663
    return-void

    .line 1656
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 1657
    :goto_1
    :try_start_4
    invoke-static {}, Lcom/facebook/appevents/a;->h()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Got unexpected exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1659
    :try_start_5
    invoke-static {v1}, Lcom/facebook/internal/aa;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 1662
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0

    .line 1659
    :catchall_1
    move-exception v0

    move-object v1, v2

    :goto_2
    :try_start_6
    invoke-static {v1}, Lcom/facebook/internal/aa;->a(Ljava/io/Closeable;)V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_2
    move-exception v0

    goto :goto_2

    .line 1656
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method static a(Landroid/content/Context;Lcom/facebook/appevents/a$a;Lcom/facebook/appevents/a;J)V
    .locals 3

    .prologue
    .line 1685
    sget-object v1, Lcom/facebook/appevents/a$g;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 1686
    :try_start_0
    invoke-static {p0, p1}, Lcom/facebook/appevents/a$g;->a(Landroid/content/Context;Lcom/facebook/appevents/a$a;)Lcom/facebook/appevents/b;

    move-result-object v0

    .line 1687
    invoke-virtual {v0, p2, p3, p4}, Lcom/facebook/appevents/b;->a(Lcom/facebook/appevents/a;J)V

    .line 1688
    invoke-static {}, Lcom/facebook/appevents/a$g;->a()V

    .line 1689
    monitor-exit v1

    .line 1690
    return-void

    .line 1689
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static a(Landroid/content/Context;Lcom/facebook/appevents/a$a;Lcom/facebook/appevents/a;JLjava/lang/String;)V
    .locals 3

    .prologue
    .line 1672
    sget-object v1, Lcom/facebook/appevents/a$g;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 1673
    :try_start_0
    invoke-static {p0, p1}, Lcom/facebook/appevents/a$g;->a(Landroid/content/Context;Lcom/facebook/appevents/a$a;)Lcom/facebook/appevents/b;

    move-result-object v0

    .line 1674
    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/facebook/appevents/b;->a(Lcom/facebook/appevents/a;JLjava/lang/String;)V

    .line 1675
    invoke-static {}, Lcom/facebook/appevents/a$g;->a()V

    .line 1676
    monitor-exit v1

    .line 1677
    return-void

    .line 1676
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static b(Landroid/content/Context;)V
    .locals 7

    .prologue
    .line 1603
    const/4 v0, 0x0

    .line 1605
    sget-object v2, Lcom/facebook/appevents/a$g;->a:Ljava/lang/Object;

    monitor-enter v2

    .line 1606
    :try_start_0
    sget-boolean v1, Lcom/facebook/appevents/a$g;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 1608
    :try_start_1
    new-instance v1, Ljava/io/ObjectInputStream;

    const-string v3, "AppEventsLogger.persistedsessioninfo"

    invoke-virtual {p0, v3}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1611
    :try_start_2
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    sput-object v0, Lcom/facebook/appevents/a$g;->d:Ljava/util/Map;

    .line 1613
    sget-object v0, Lcom/facebook/u;->e:Lcom/facebook/u;

    const-string v3, "AppEvents"

    const-string v4, "App session info loaded"

    invoke-static {v0, v3, v4}, Lcom/facebook/internal/s;->a(Lcom/facebook/u;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1621
    :try_start_3
    invoke-static {v1}, Lcom/facebook/internal/aa;->a(Ljava/io/Closeable;)V

    .line 1622
    const-string v0, "AppEventsLogger.persistedsessioninfo"

    invoke-virtual {p0, v0}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 1623
    sget-object v0, Lcom/facebook/appevents/a$g;->d:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 1624
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/facebook/appevents/a$g;->d:Ljava/util/Map;

    .line 1630
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/facebook/appevents/a$g;->c:Z

    .line 1631
    const/4 v0, 0x0

    sput-boolean v0, Lcom/facebook/appevents/a$g;->b:Z

    .line 1634
    :cond_1
    :goto_0
    monitor-exit v2

    .line 1635
    return-void

    .line 1617
    :catch_0
    move-exception v1

    .line 1621
    :goto_1
    invoke-static {v0}, Lcom/facebook/internal/aa;->a(Ljava/io/Closeable;)V

    .line 1622
    const-string v0, "AppEventsLogger.persistedsessioninfo"

    invoke-virtual {p0, v0}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 1623
    sget-object v0, Lcom/facebook/appevents/a$g;->d:Ljava/util/Map;

    if-nez v0, :cond_2

    .line 1624
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/facebook/appevents/a$g;->d:Ljava/util/Map;

    .line 1630
    :cond_2
    const/4 v0, 0x1

    sput-boolean v0, Lcom/facebook/appevents/a$g;->c:Z

    .line 1631
    const/4 v0, 0x0

    sput-boolean v0, Lcom/facebook/appevents/a$g;->b:Z

    goto :goto_0

    .line 1634
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 1618
    :catch_1
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    .line 1619
    :goto_2
    :try_start_4
    invoke-static {}, Lcom/facebook/appevents/a;->h()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Got unexpected exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1621
    :try_start_5
    invoke-static {v1}, Lcom/facebook/internal/aa;->a(Ljava/io/Closeable;)V

    .line 1622
    const-string v0, "AppEventsLogger.persistedsessioninfo"

    invoke-virtual {p0, v0}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 1623
    sget-object v0, Lcom/facebook/appevents/a$g;->d:Ljava/util/Map;

    if-nez v0, :cond_3

    .line 1624
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/facebook/appevents/a$g;->d:Ljava/util/Map;

    .line 1630
    :cond_3
    const/4 v0, 0x1

    sput-boolean v0, Lcom/facebook/appevents/a$g;->c:Z

    .line 1631
    const/4 v0, 0x0

    sput-boolean v0, Lcom/facebook/appevents/a$g;->b:Z

    goto :goto_0

    .line 1621
    :catchall_1
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_3
    invoke-static {v1}, Lcom/facebook/internal/aa;->a(Ljava/io/Closeable;)V

    .line 1622
    const-string v1, "AppEventsLogger.persistedsessioninfo"

    invoke-virtual {p0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 1623
    sget-object v1, Lcom/facebook/appevents/a$g;->d:Ljava/util/Map;

    if-nez v1, :cond_4

    .line 1624
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/facebook/appevents/a$g;->d:Ljava/util/Map;

    .line 1630
    :cond_4
    const/4 v1, 0x1

    sput-boolean v1, Lcom/facebook/appevents/a$g;->c:Z

    .line 1631
    const/4 v1, 0x0

    sput-boolean v1, Lcom/facebook/appevents/a$g;->b:Z

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1621
    :catchall_2
    move-exception v0

    goto :goto_3

    .line 1618
    :catch_2
    move-exception v0

    goto :goto_2

    .line 1617
    :catch_3
    move-exception v0

    move-object v0, v1

    goto :goto_1
.end method
