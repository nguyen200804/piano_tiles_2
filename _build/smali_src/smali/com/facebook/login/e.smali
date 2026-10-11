.class public Lcom/facebook/login/e;
.super Ljava/lang/Object;
.source "LoginManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/login/e$c;,
        Lcom/facebook/login/e$b;,
        Lcom/facebook/login/e$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile b:Lcom/facebook/login/e;


# instance fields
.field private c:Lcom/facebook/login/c;

.field private d:Lcom/facebook/login/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    invoke-static {}, Lcom/facebook/login/e;->c()Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/facebook/login/e;->a:Ljava/util/Set;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    sget-object v0, Lcom/facebook/login/c;->a:Lcom/facebook/login/c;

    iput-object v0, p0, Lcom/facebook/login/e;->c:Lcom/facebook/login/c;

    .line 64
    sget-object v0, Lcom/facebook/login/a;->c:Lcom/facebook/login/a;

    iput-object v0, p0, Lcom/facebook/login/e;->d:Lcom/facebook/login/a;

    .line 67
    invoke-static {}, Lcom/facebook/internal/ab;->a()V

    .line 68
    return-void
.end method

.method private a(Lcom/facebook/login/LoginClient$Request;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 527
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 528
    invoke-static {}, Lcom/facebook/l;->f()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/facebook/FacebookActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 529
    invoke-virtual {p1}, Lcom/facebook/login/LoginClient$Request;->b()Lcom/facebook/login/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/login/c;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 533
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 534
    const-string v2, "request"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 535
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 537
    return-object v0
.end method

.method public static a()Lcom/facebook/login/e;
    .locals 2

    .prologue
    .line 75
    sget-object v0, Lcom/facebook/login/e;->b:Lcom/facebook/login/e;

    if-nez v0, :cond_1

    .line 76
    const-class v1, Lcom/facebook/login/e;

    monitor-enter v1

    .line 77
    :try_start_0
    sget-object v0, Lcom/facebook/login/e;->b:Lcom/facebook/login/e;

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Lcom/facebook/login/e;

    invoke-direct {v0}, Lcom/facebook/login/e;-><init>()V

    sput-object v0, Lcom/facebook/login/e;->b:Lcom/facebook/login/e;

    .line 80
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    :cond_1
    sget-object v0, Lcom/facebook/login/e;->b:Lcom/facebook/login/e;

    return-object v0

    .line 80
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static a(Lcom/facebook/login/LoginClient$Request;Lcom/facebook/AccessToken;)Lcom/facebook/login/f;
    .locals 3

    .prologue
    .line 544
    invoke-virtual {p0}, Lcom/facebook/login/LoginClient$Request;->a()Ljava/util/Set;

    move-result-object v0

    .line 545
    new-instance v1, Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/facebook/AccessToken;->e()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 549
    invoke-virtual {p0}, Lcom/facebook/login/LoginClient$Request;->f()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 550
    invoke-interface {v1, v0}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 553
    :cond_0
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 554
    invoke-interface {v2, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 555
    new-instance v0, Lcom/facebook/login/f;

    invoke-direct {v0, p1, v1, v2}, Lcom/facebook/login/f;-><init>(Lcom/facebook/AccessToken;Ljava/util/Set;Ljava/util/Set;)V

    return-object v0
.end method

.method private a(Landroid/content/Context;Lcom/facebook/login/LoginClient$Request;)V
    .locals 1

    .prologue
    .line 456
    invoke-static {p1}, Lcom/facebook/login/e$c;->a(Landroid/content/Context;)Lcom/facebook/login/d;

    move-result-object v0

    .line 457
    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 458
    invoke-virtual {v0, p2}, Lcom/facebook/login/d;->a(Lcom/facebook/login/LoginClient$Request;)V

    .line 460
    :cond_0
    return-void
.end method

.method private a(Landroid/content/Context;Lcom/facebook/login/LoginClient$Result$a;Ljava/util/Map;Ljava/lang/Exception;ZLcom/facebook/login/LoginClient$Request;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/facebook/login/LoginClient$Result$a;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Exception;",
            "Z",
            "Lcom/facebook/login/LoginClient$Request;",
            ")V"
        }
    .end annotation

    .prologue
    .line 469
    invoke-static {p1}, Lcom/facebook/login/e$c;->a(Landroid/content/Context;)Lcom/facebook/login/d;

    move-result-object v0

    .line 470
    if-nez v0, :cond_0

    .line 494
    :goto_0
    return-void

    .line 473
    :cond_0
    if-nez p6, :cond_1

    .line 475
    const-string v1, "fb_mobile_login_complete"

    const-string v2, "Unexpected call to logCompleteLogin with null pendingAuthorizationRequest."

    invoke-virtual {v0, v1, v2}, Lcom/facebook/login/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 480
    :cond_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 481
    const-string v3, "try_login_activity"

    if-eqz p5, :cond_2

    const-string v1, "1"

    :goto_1
    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    invoke-virtual {p6}, Lcom/facebook/login/LoginClient$Request;->e()Ljava/lang/String;

    move-result-object v1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/login/d;->a(Ljava/lang/String;Ljava/util/Map;Lcom/facebook/login/LoginClient$Result$a;Ljava/util/Map;Ljava/lang/Exception;)V

    goto :goto_0

    .line 481
    :cond_2
    const-string v1, "0"

    goto :goto_1
.end method

.method private a(Lcom/facebook/AccessToken;Lcom/facebook/login/LoginClient$Request;Lcom/facebook/i;ZLcom/facebook/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/AccessToken;",
            "Lcom/facebook/login/LoginClient$Request;",
            "Lcom/facebook/i;",
            "Z",
            "Lcom/facebook/g",
            "<",
            "Lcom/facebook/login/f;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 564
    if-eqz p1, :cond_0

    .line 565
    invoke-static {p1}, Lcom/facebook/AccessToken;->a(Lcom/facebook/AccessToken;)V

    .line 566
    invoke-static {}, Lcom/facebook/Profile;->b()V

    .line 569
    :cond_0
    if-eqz p5, :cond_2

    .line 570
    if-eqz p1, :cond_3

    invoke-static {p2, p1}, Lcom/facebook/login/e;->a(Lcom/facebook/login/LoginClient$Request;Lcom/facebook/AccessToken;)Lcom/facebook/login/f;

    move-result-object v0

    .line 574
    :goto_0
    if-nez p4, :cond_1

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/facebook/login/f;->a()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-nez v1, :cond_4

    .line 577
    :cond_1
    invoke-interface {p5}, Lcom/facebook/g;->a()V

    .line 584
    :cond_2
    :goto_1
    return-void

    .line 570
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 578
    :cond_4
    if-eqz p3, :cond_5

    .line 579
    invoke-interface {p5, p3}, Lcom/facebook/g;->a(Lcom/facebook/i;)V

    goto :goto_1

    .line 580
    :cond_5
    if-eqz p1, :cond_2

    .line 581
    invoke-interface {p5, v0}, Lcom/facebook/g;->a(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private a(Lcom/facebook/internal/l;Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/internal/l;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 295
    invoke-direct {p0, p2}, Lcom/facebook/login/e;->a(Ljava/util/Collection;)V

    .line 297
    invoke-direct {p0, p2}, Lcom/facebook/login/e;->c(Ljava/util/Collection;)Lcom/facebook/login/LoginClient$Request;

    move-result-object v0

    .line 298
    new-instance v1, Lcom/facebook/login/e$b;

    invoke-direct {v1, p1}, Lcom/facebook/login/e$b;-><init>(Lcom/facebook/internal/l;)V

    invoke-direct {p0, v1, v0}, Lcom/facebook/login/e;->a(Lcom/facebook/login/g;Lcom/facebook/login/LoginClient$Request;)V

    .line 299
    return-void
.end method

.method private a(Lcom/facebook/login/g;Lcom/facebook/login/LoginClient$Request;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/i;
        }
    .end annotation

    .prologue
    .line 424
    invoke-interface {p1}, Lcom/facebook/login/g;->a()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/facebook/login/e;->a(Landroid/content/Context;Lcom/facebook/login/LoginClient$Request;)V

    .line 427
    sget-object v0, Lcom/facebook/internal/e$b;->a:Lcom/facebook/internal/e$b;

    invoke-virtual {v0}, Lcom/facebook/internal/e$b;->a()I

    move-result v0

    new-instance v1, Lcom/facebook/login/e$3;

    invoke-direct {v1, p0}, Lcom/facebook/login/e$3;-><init>(Lcom/facebook/login/e;)V

    invoke-static {v0, v1}, Lcom/facebook/internal/e;->a(ILcom/facebook/internal/e$a;)V

    .line 437
    invoke-direct {p0, p1, p2}, Lcom/facebook/login/e;->b(Lcom/facebook/login/g;Lcom/facebook/login/LoginClient$Request;)Z

    move-result v0

    .line 439
    if-nez v0, :cond_0

    .line 440
    new-instance v4, Lcom/facebook/i;

    const-string v0, "Log in attempt failed: FacebookActivity could not be started. Please make sure you added FacebookActivity to the AndroidManifest."

    invoke-direct {v4, v0}, Lcom/facebook/i;-><init>(Ljava/lang/String;)V

    .line 443
    const/4 v5, 0x0

    .line 444
    invoke-interface {p1}, Lcom/facebook/login/g;->a()Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Lcom/facebook/login/LoginClient$Result$a;->c:Lcom/facebook/login/LoginClient$Result$a;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/facebook/login/e;->a(Landroid/content/Context;Lcom/facebook/login/LoginClient$Result$a;Ljava/util/Map;Ljava/lang/Exception;ZLcom/facebook/login/LoginClient$Request;)V

    .line 451
    throw v4

    .line 453
    :cond_0
    return-void
.end method

.method private a(Ljava/util/Collection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 362
    if-nez p1, :cond_1

    .line 374
    :cond_0
    return-void

    .line 365
    :cond_1
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 366
    invoke-static {v0}, Lcom/facebook/login/e;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 367
    new-instance v1, Lcom/facebook/i;

    const-string v2, "Cannot pass a publish or manage permission (%s) to a request for read authorization"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/facebook/i;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private a(Landroid/content/Intent;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 518
    invoke-static {}, Lcom/facebook/l;->f()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 520
    if-nez v1, :cond_0

    .line 523
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 391
    if-eqz p0, :cond_1

    const-string v0, "publish"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "manage"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/facebook/login/e;->a:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Lcom/facebook/internal/l;Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/internal/l;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 343
    invoke-direct {p0, p2}, Lcom/facebook/login/e;->b(Ljava/util/Collection;)V

    .line 345
    invoke-direct {p0, p2}, Lcom/facebook/login/e;->c(Ljava/util/Collection;)Lcom/facebook/login/LoginClient$Request;

    move-result-object v0

    .line 346
    new-instance v1, Lcom/facebook/login/e$b;

    invoke-direct {v1, p1}, Lcom/facebook/login/e$b;-><init>(Lcom/facebook/internal/l;)V

    invoke-direct {p0, v1, v0}, Lcom/facebook/login/e;->a(Lcom/facebook/login/g;Lcom/facebook/login/LoginClient$Request;)V

    .line 347
    return-void
.end method

.method private b(Ljava/util/Collection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 377
    if-nez p1, :cond_1

    .line 388
    :cond_0
    return-void

    .line 380
    :cond_1
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 381
    invoke-static {v0}, Lcom/facebook/login/e;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 382
    new-instance v1, Lcom/facebook/i;

    const-string v2, "Cannot pass a read permission (%s) to a request for publish authorization"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/facebook/i;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private b(Lcom/facebook/login/g;Lcom/facebook/login/LoginClient$Request;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 500
    invoke-direct {p0, p2}, Lcom/facebook/login/e;->a(Lcom/facebook/login/LoginClient$Request;)Landroid/content/Intent;

    move-result-object v1

    .line 502
    invoke-direct {p0, v1}, Lcom/facebook/login/e;->a(Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 514
    :goto_0
    return v0

    .line 507
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/facebook/login/LoginClient;->d()I

    move-result v2

    invoke-interface {p1, v1, v2}, Lcom/facebook/login/g;->a(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 514
    const/4 v0, 0x1

    goto :goto_0

    .line 510
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private c(Ljava/util/Collection;)Lcom/facebook/login/LoginClient$Request;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/facebook/login/LoginClient$Request;"
        }
    .end annotation

    .prologue
    .line 407
    new-instance v0, Lcom/facebook/login/LoginClient$Request;

    iget-object v1, p0, Lcom/facebook/login/e;->c:Lcom/facebook/login/c;

    if-eqz p1, :cond_0

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    :goto_0
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/login/e;->d:Lcom/facebook/login/a;

    invoke-static {}, Lcom/facebook/l;->i()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/facebook/login/LoginClient$Request;-><init>(Lcom/facebook/login/c;Ljava/util/Set;Lcom/facebook/login/a;Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    invoke-static {}, Lcom/facebook/AccessToken;->a()Lcom/facebook/AccessToken;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v0, v1}, Lcom/facebook/login/LoginClient$Request;->a(Z)V

    .line 416
    return-object v0

    .line 407
    :cond_0
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    goto :goto_0

    .line 415
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private static c()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 398
    new-instance v0, Lcom/facebook/login/e$2;

    invoke-direct {v0}, Lcom/facebook/login/e$2;-><init>()V

    .line 403
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lcom/facebook/login/a;)Lcom/facebook/login/e;
    .locals 0

    .prologue
    .line 253
    iput-object p1, p0, Lcom/facebook/login/e;->d:Lcom/facebook/login/a;

    .line 254
    return-object p0
.end method

.method public a(Lcom/facebook/login/c;)Lcom/facebook/login/e;
    .locals 0

    .prologue
    .line 235
    iput-object p1, p0, Lcom/facebook/login/e;->c:Lcom/facebook/login/c;

    .line 236
    return-object p0
.end method

.method public a(Landroid/app/Activity;Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 307
    invoke-direct {p0, p2}, Lcom/facebook/login/e;->a(Ljava/util/Collection;)V

    .line 309
    invoke-direct {p0, p2}, Lcom/facebook/login/e;->c(Ljava/util/Collection;)Lcom/facebook/login/LoginClient$Request;

    move-result-object v0

    .line 310
    new-instance v1, Lcom/facebook/login/e$a;

    invoke-direct {v1, p1}, Lcom/facebook/login/e$a;-><init>(Landroid/app/Activity;)V

    invoke-direct {p0, v1, v0}, Lcom/facebook/login/e;->a(Lcom/facebook/login/g;Lcom/facebook/login/LoginClient$Request;)V

    .line 311
    return-void
.end method

.method public a(Landroid/app/Fragment;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Fragment;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 284
    new-instance v0, Lcom/facebook/internal/l;

    invoke-direct {v0, p1}, Lcom/facebook/internal/l;-><init>(Landroid/app/Fragment;)V

    invoke-direct {p0, v0, p2}, Lcom/facebook/login/e;->a(Lcom/facebook/internal/l;Ljava/util/Collection;)V

    .line 285
    return-void
.end method

.method public a(Landroid/support/v4/app/Fragment;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/Fragment;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 273
    new-instance v0, Lcom/facebook/internal/l;

    invoke-direct {v0, p1}, Lcom/facebook/internal/l;-><init>(Landroid/support/v4/app/Fragment;)V

    invoke-direct {p0, v0, p2}, Lcom/facebook/login/e;->a(Lcom/facebook/internal/l;Ljava/util/Collection;)V

    .line 274
    return-void
.end method

.method public a(Lcom/facebook/e;Lcom/facebook/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/e;",
            "Lcom/facebook/g",
            "<",
            "Lcom/facebook/login/f;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 150
    instance-of v0, p1, Lcom/facebook/internal/e;

    if-nez v0, :cond_0

    .line 151
    new-instance v0, Lcom/facebook/i;

    const-string v1, "Unexpected CallbackManager, please use the provided Factory."

    invoke-direct {v0, v1}, Lcom/facebook/i;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    :cond_0
    check-cast p1, Lcom/facebook/internal/e;

    sget-object v0, Lcom/facebook/internal/e$b;->a:Lcom/facebook/internal/e$b;

    invoke-virtual {v0}, Lcom/facebook/internal/e$b;->a()I

    move-result v0

    new-instance v1, Lcom/facebook/login/e$1;

    invoke-direct {v1, p0, p2}, Lcom/facebook/login/e$1;-><init>(Lcom/facebook/login/e;Lcom/facebook/g;)V

    invoke-virtual {p1, v0, v1}, Lcom/facebook/internal/e;->b(ILcom/facebook/internal/e$a;)V

    .line 166
    return-void
.end method

.method a(ILandroid/content/Intent;)Z
    .locals 1

    .prologue
    .line 169
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/facebook/login/e;->a(ILandroid/content/Intent;Lcom/facebook/g;)Z

    move-result v0

    return v0
.end method

.method a(ILandroid/content/Intent;Lcom/facebook/g;)Z
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/Intent;",
            "Lcom/facebook/g",
            "<",
            "Lcom/facebook/login/f;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 173
    const/4 v4, 0x0

    .line 174
    const/4 v3, 0x0

    .line 175
    sget-object v7, Lcom/facebook/login/LoginClient$Result$a;->c:Lcom/facebook/login/LoginClient$Result$a;

    .line 176
    const/4 v6, 0x0

    .line 177
    const/4 v5, 0x0

    .line 179
    const/4 v2, 0x0

    .line 180
    if-eqz p2, :cond_4

    .line 181
    const-string v1, "com.facebook.LoginFragment:Result"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/facebook/login/LoginClient$Result;

    .line 183
    if-eqz v1, :cond_6

    .line 184
    iget-object v5, v1, Lcom/facebook/login/LoginClient$Result;->e:Lcom/facebook/login/LoginClient$Request;

    .line 185
    iget-object v6, v1, Lcom/facebook/login/LoginClient$Result;->a:Lcom/facebook/login/LoginClient$Result$a;

    .line 186
    const/4 v7, -0x1

    move/from16 v0, p1

    if-ne v0, v7, :cond_3

    .line 187
    iget-object v7, v1, Lcom/facebook/login/LoginClient$Result;->a:Lcom/facebook/login/LoginClient$Result$a;

    sget-object v8, Lcom/facebook/login/LoginClient$Result$a;->a:Lcom/facebook/login/LoginClient$Result$a;

    if-ne v7, v8, :cond_2

    .line 188
    iget-object v3, v1, Lcom/facebook/login/LoginClient$Result;->b:Lcom/facebook/AccessToken;

    .line 195
    :cond_0
    :goto_0
    iget-object v1, v1, Lcom/facebook/login/LoginClient$Result;->f:Ljava/util/Map;

    move-object v14, v5

    move-object v5, v3

    move-object v3, v1

    move-object v1, v14

    move-object v15, v6

    move-object v6, v4

    move-object v4, v15

    :goto_1
    move v12, v2

    move-object v7, v1

    move-object v9, v5

    move-object v5, v6

    move-object v14, v3

    move-object v3, v4

    move-object v4, v14

    .line 202
    :goto_2
    if-nez v5, :cond_1

    if-nez v9, :cond_1

    if-nez v12, :cond_1

    .line 203
    new-instance v5, Lcom/facebook/i;

    const-string v1, "Unexpected call to LoginManager.onActivityResult"

    invoke-direct {v5, v1}, Lcom/facebook/i;-><init>(Ljava/lang/String;)V

    .line 206
    :cond_1
    const/4 v6, 0x1

    .line 207
    const/4 v2, 0x0

    move-object/from16 v1, p0

    .line 208
    invoke-direct/range {v1 .. v7}, Lcom/facebook/login/e;->a(Landroid/content/Context;Lcom/facebook/login/LoginClient$Result$a;Ljava/util/Map;Ljava/lang/Exception;ZLcom/facebook/login/LoginClient$Request;)V

    move-object/from16 v8, p0

    move-object v10, v7

    move-object v11, v5

    move-object/from16 v13, p3

    .line 216
    invoke-direct/range {v8 .. v13}, Lcom/facebook/login/e;->a(Lcom/facebook/AccessToken;Lcom/facebook/login/LoginClient$Request;Lcom/facebook/i;ZLcom/facebook/g;)V

    .line 218
    const/4 v1, 0x1

    return v1

    .line 190
    :cond_2
    new-instance v4, Lcom/facebook/f;

    iget-object v7, v1, Lcom/facebook/login/LoginClient$Result;->c:Ljava/lang/String;

    invoke-direct {v4, v7}, Lcom/facebook/f;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 192
    :cond_3
    if-nez p1, :cond_0

    .line 193
    const/4 v2, 0x1

    goto :goto_0

    .line 197
    :cond_4
    if-nez p1, :cond_5

    .line 198
    const/4 v2, 0x1

    .line 199
    sget-object v7, Lcom/facebook/login/LoginClient$Result$a;->b:Lcom/facebook/login/LoginClient$Result$a;

    move v12, v2

    move-object v9, v3

    move-object v3, v7

    move-object v7, v5

    move-object v5, v4

    move-object v4, v6

    goto :goto_2

    :cond_5
    move v12, v2

    move-object v9, v3

    move-object v3, v7

    move-object v7, v5

    move-object v5, v4

    move-object v4, v6

    goto :goto_2

    :cond_6
    move-object v1, v5

    move-object v5, v3

    move-object v3, v6

    move-object v6, v4

    move-object v4, v7

    goto :goto_1
.end method

.method public b()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 261
    invoke-static {v0}, Lcom/facebook/AccessToken;->a(Lcom/facebook/AccessToken;)V

    .line 262
    invoke-static {v0}, Lcom/facebook/Profile;->a(Lcom/facebook/Profile;)V

    .line 263
    return-void
.end method

.method public b(Landroid/app/Activity;Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 355
    invoke-direct {p0, p2}, Lcom/facebook/login/e;->b(Ljava/util/Collection;)V

    .line 357
    invoke-direct {p0, p2}, Lcom/facebook/login/e;->c(Ljava/util/Collection;)Lcom/facebook/login/LoginClient$Request;

    move-result-object v0

    .line 358
    new-instance v1, Lcom/facebook/login/e$a;

    invoke-direct {v1, p1}, Lcom/facebook/login/e$a;-><init>(Landroid/app/Activity;)V

    invoke-direct {p0, v1, v0}, Lcom/facebook/login/e;->a(Lcom/facebook/login/g;Lcom/facebook/login/LoginClient$Request;)V

    .line 359
    return-void
.end method

.method public b(Landroid/app/Fragment;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Fragment;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 332
    new-instance v0, Lcom/facebook/internal/l;

    invoke-direct {v0, p1}, Lcom/facebook/internal/l;-><init>(Landroid/app/Fragment;)V

    invoke-direct {p0, v0, p2}, Lcom/facebook/login/e;->b(Lcom/facebook/internal/l;Ljava/util/Collection;)V

    .line 333
    return-void
.end method

.method public b(Landroid/support/v4/app/Fragment;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/Fragment;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 321
    new-instance v0, Lcom/facebook/internal/l;

    invoke-direct {v0, p1}, Lcom/facebook/internal/l;-><init>(Landroid/support/v4/app/Fragment;)V

    invoke-direct {p0, v0, p2}, Lcom/facebook/login/e;->b(Lcom/facebook/internal/l;Ljava/util/Collection;)V

    .line 322
    return-void
.end method
