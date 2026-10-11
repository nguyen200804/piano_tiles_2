.class Lcom/appsflyer/AppsFlyerLib$c;
.super Ljava/lang/Object;
.source "AppsFlyerLib.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/AppsFlyerLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/util/concurrent/ExecutorService;

.field private g:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/concurrent/ExecutorService;)V
    .locals 0

    .prologue
    .line 1468
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1469
    iput-object p1, p0, Lcom/appsflyer/AppsFlyerLib$c;->a:Landroid/content/Context;

    .line 1470
    iput-object p2, p0, Lcom/appsflyer/AppsFlyerLib$c;->b:Ljava/lang/String;

    .line 1471
    iput-object p3, p0, Lcom/appsflyer/AppsFlyerLib$c;->c:Ljava/lang/String;

    .line 1472
    iput-object p4, p0, Lcom/appsflyer/AppsFlyerLib$c;->d:Ljava/lang/String;

    .line 1473
    iput-object p5, p0, Lcom/appsflyer/AppsFlyerLib$c;->e:Ljava/lang/String;

    .line 1474
    iput-boolean p6, p0, Lcom/appsflyer/AppsFlyerLib$c;->g:Z

    .line 1475
    iput-object p7, p0, Lcom/appsflyer/AppsFlyerLib$c;->f:Ljava/util/concurrent/ExecutorService;

    .line 1476
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/concurrent/ExecutorService;Lcom/appsflyer/AppsFlyerLib$1;)V
    .locals 0

    .prologue
    .line 1452
    invoke-direct/range {p0 .. p7}, Lcom/appsflyer/AppsFlyerLib$c;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/concurrent/ExecutorService;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 1479
    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLib$c;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/appsflyer/AppsFlyerLib$c;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/appsflyer/AppsFlyerLib$c;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/appsflyer/AppsFlyerLib$c;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/appsflyer/AppsFlyerLib$c;->e:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/appsflyer/AppsFlyerLib$c;->g:Z

    invoke-static/range {v0 .. v5}, Lcom/appsflyer/AppsFlyerLib;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1480
    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLib$c;->f:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 1481
    return-void
.end method
