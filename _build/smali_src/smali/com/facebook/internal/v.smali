.class public final Lcom/facebook/internal/v;
.super Ljava/lang/Object;
.source "NativeProtocol.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/internal/v$d;,
        Lcom/facebook/internal/v$b;,
        Lcom/facebook/internal/v$a;,
        Lcom/facebook/internal/v$c;
    }
.end annotation


# static fields
.field private static final a:Lcom/facebook/internal/v$c;

.field private static b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/internal/v$c;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/internal/v$c;",
            ">;>;"
        }
    .end annotation
.end field

.field private static d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 313
    new-instance v0, Lcom/facebook/internal/v$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/internal/v$a;-><init>(Lcom/facebook/internal/v$1;)V

    sput-object v0, Lcom/facebook/internal/v;->a:Lcom/facebook/internal/v$c;

    .line 314
    invoke-static {}, Lcom/facebook/internal/v;->e()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/facebook/internal/v;->b:Ljava/util/List;

    .line 315
    invoke-static {}, Lcom/facebook/internal/v;->f()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/facebook/internal/v;->c:Ljava/util/Map;

    .line 316
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/facebook/internal/v;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 455
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/Integer;

    const v1, 0x13354a2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const v2, 0x1335433

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const v2, 0x13353e4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const v2, 0x13353c9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const v2, 0x133529d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const v2, 0x1335124

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const v2, 0x13350ac

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const v2, 0x1332d23

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const v2, 0x1332b3a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const v2, 0x1332ac6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const v2, 0x133060d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/facebook/internal/v;->e:Ljava/util/List;

    return-void
.end method

.method public static final a()I
    .locals 2

    .prologue
    .line 451
    sget-object v0, Lcom/facebook/internal/v;->e:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static a(Landroid/content/Intent;)I
    .locals 2

    .prologue
    .line 599
    const-string v0, "com.facebook.platform.protocol.PROTOCOL_VERSION"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static a(Ljava/lang/String;[I)I
    .locals 1

    .prologue
    .line 723
    sget-object v0, Lcom/facebook/internal/v;->c:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 724
    invoke-static {v0, p1}, Lcom/facebook/internal/v;->a(Ljava/util/List;[I)I

    move-result v0

    return v0
.end method

.method private static a(Ljava/util/List;[I)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/internal/v$c;",
            ">;[I)I"
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 731
    invoke-static {}, Lcom/facebook/internal/v;->b()V

    .line 733
    if-nez p0, :cond_0

    move v0, v1

    .line 750
    :goto_0
    return v0

    .line 738
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/internal/v$c;

    .line 739
    invoke-virtual {v0}, Lcom/facebook/internal/v$c;->b()Ljava/util/TreeSet;

    move-result-object v0

    invoke-static {}, Lcom/facebook/internal/v;->a()I

    move-result v3

    invoke-static {v0, v3, p1}, Lcom/facebook/internal/v;->a(Ljava/util/TreeSet;I[I)I

    move-result v0

    .line 745
    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 750
    goto :goto_0
.end method

.method public static a(Ljava/util/TreeSet;I[I)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeSet",
            "<",
            "Ljava/lang/Integer;",
            ">;I[I)I"
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 816
    array-length v0, p2

    add-int/lit8 v0, v0, -0x1

    .line 817
    invoke-virtual {p0}, Ljava/util/TreeSet;->descendingIterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    move v3, v0

    .line 821
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 822
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 825
    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v1, v3

    .line 828
    :goto_1
    if-ltz v1, :cond_0

    aget v3, p2, v1

    if-le v3, v5, :cond_0

    .line 829
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 832
    :cond_0
    if-gez v1, :cond_2

    .line 851
    :cond_1
    :goto_2
    return v2

    .line 841
    :cond_2
    aget v3, p2, v1

    if-ne v3, v5, :cond_3

    .line 843
    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_2

    :cond_3
    move v3, v1

    move v1, v0

    .line 849
    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Landroid/content/Intent;
    .locals 4

    .prologue
    .line 586
    sget-object v0, Lcom/facebook/internal/v;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/internal/v$c;

    .line 587
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.facebook.platform.PLATFORM_SERVICE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/facebook/internal/v$c;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "android.intent.category.DEFAULT"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 590
    invoke-static {p0, v2, v0}, Lcom/facebook/internal/v;->b(Landroid/content/Context;Landroid/content/Intent;Lcom/facebook/internal/v$c;)Landroid/content/Intent;

    move-result-object v0

    .line 591
    if-eqz v0, :cond_0

    .line 595
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static a(Landroid/content/Context;Landroid/content/Intent;Lcom/facebook/internal/v$c;)Landroid/content/Intent;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 347
    if-nez p1, :cond_1

    move-object p1, v0

    .line 360
    :cond_0
    :goto_0
    return-object p1

    .line 351
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 352
    if-nez v1, :cond_2

    move-object p1, v0

    .line 353
    goto :goto_0

    .line 356
    :cond_2
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, p0, v1}, Lcom/facebook/internal/v$c;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object p1, v0

    .line 357
    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 474
    sget-object v0, Lcom/facebook/internal/v;->c:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 475
    if-nez v0, :cond_1

    move-object v0, v1

    .line 491
    :cond_0
    :goto_0
    return-object v0

    .line 480
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v0, v1

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/internal/v$c;

    .line 481
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0}, Lcom/facebook/internal/v$c;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v3, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 485
    invoke-static {p0, v1, v0}, Lcom/facebook/internal/v;->a(Landroid/content/Context;Landroid/content/Intent;Lcom/facebook/internal/v$c;)Landroid/content/Intent;

    move-result-object v0

    .line 486
    if-eqz v0, :cond_2

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 508
    const-string v0, "com.facebook.platform.PLATFORM_ACTIVITY"

    invoke-static {p0, v0, p2}, Lcom/facebook/internal/v;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 509
    if-nez v0, :cond_0

    .line 510
    const/4 v0, 0x0

    .line 515
    :goto_0
    return-object v0

    .line 513
    :cond_0
    invoke-static {v0, p1, p2, p3, p4}, Lcom/facebook/internal/v;->a(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;ZZLcom/facebook/login/a;Ljava/lang/String;)Landroid/content/Intent;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "ZZ",
            "Lcom/facebook/login/a;",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 389
    sget-object v0, Lcom/facebook/internal/v;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/internal/v$c;

    .line 390
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0}, Lcom/facebook/internal/v$c;->a()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.facebook.katana.ProxyAuth"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "client_id"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 394
    invoke-static {p2}, Lcom/facebook/internal/aa;->a(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 395
    const-string v3, "scope"

    const-string v4, ","

    invoke-static {v4, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 398
    :cond_1
    invoke-static {p3}, Lcom/facebook/internal/aa;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 399
    const-string v3, "e2e"

    invoke-virtual {v2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 402
    :cond_2
    const-string v3, "state"

    invoke-virtual {v2, v3, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 403
    const-string v3, "response_type"

    const-string v4, "token,signed_request"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 406
    const-string v3, "return_scopes"

    const-string v4, "true"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 409
    if-eqz p5, :cond_3

    .line 410
    const-string v3, "default_audience"

    invoke-virtual {p6}, Lcom/facebook/login/a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 416
    :cond_3
    const-string v3, "legacy_override"

    const-string v4, "v2.5"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 421
    if-eqz p4, :cond_4

    .line 422
    const-string v3, "auth_type"

    const-string v4, "rerequest"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 427
    :cond_4
    invoke-static {p0, v2, v0}, Lcom/facebook/internal/v;->a(Landroid/content/Context;Landroid/content/Intent;Lcom/facebook/internal/v$c;)Landroid/content/Intent;

    move-result-object v0

    .line 429
    if-eqz v0, :cond_0

    .line 433
    :goto_0
    return-object v0

    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/Intent;Landroid/os/Bundle;Lcom/facebook/i;)Landroid/content/Intent;
    .locals 4

    .prologue
    .line 562
    invoke-static {p0}, Lcom/facebook/internal/v;->b(Landroid/content/Intent;)Ljava/util/UUID;

    move-result-object v1

    .line 563
    if-nez v1, :cond_1

    .line 564
    const/4 v0, 0x0

    .line 582
    :cond_0
    :goto_0
    return-object v0

    .line 567
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 568
    const-string v2, "com.facebook.platform.protocol.PROTOCOL_VERSION"

    invoke-static {p0}, Lcom/facebook/internal/v;->a(Landroid/content/Intent;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 570
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 571
    const-string v3, "action_id"

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    if-eqz p2, :cond_2

    .line 573
    const-string v1, "error"

    invoke-static {p2}, Lcom/facebook/internal/v;->a(Lcom/facebook/i;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 576
    :cond_2
    const-string v1, "com.facebook.platform.protocol.BRIDGE_ARGS"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 578
    if-eqz p1, :cond_0

    .line 579
    const-string v1, "com.facebook.platform.protocol.RESULT_ARGS"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static a(Lcom/facebook/i;)Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 701
    if-nez p0, :cond_1

    .line 702
    const/4 v0, 0x0

    .line 711
    :cond_0
    :goto_0
    return-object v0

    .line 705
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 706
    const-string v1, "error_description"

    invoke-virtual {p0}, Lcom/facebook/i;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    instance-of v1, p0, Lcom/facebook/j;

    if-eqz v1, :cond_0

    .line 708
    const-string v1, "error_type"

    const-string v2, "UserCanceled"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Landroid/os/Bundle;)Lcom/facebook/i;
    .locals 3

    .prologue
    .line 678
    if-nez p0, :cond_0

    .line 679
    const/4 v0, 0x0

    .line 697
    :goto_0
    return-object v0

    .line 682
    :cond_0
    const-string v0, "error_type"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 683
    if-nez v0, :cond_1

    .line 684
    const-string v0, "com.facebook.platform.status.ERROR_TYPE"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 687
    :cond_1
    const-string v1, "error_description"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 688
    if-nez v1, :cond_2

    .line 689
    const-string v1, "com.facebook.platform.status.ERROR_DESCRIPTION"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 692
    :cond_2
    if-eqz v0, :cond_3

    const-string v2, "UserCanceled"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 693
    new-instance v0, Lcom/facebook/j;

    invoke-direct {v0, v1}, Lcom/facebook/j;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 697
    :cond_3
    new-instance v0, Lcom/facebook/i;

    invoke-direct {v0, v1}, Lcom/facebook/i;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/facebook/internal/v$c;)Ljava/util/TreeSet;
    .locals 1

    .prologue
    .line 49
    invoke-static {p0}, Lcom/facebook/internal/v;->b(Lcom/facebook/internal/v$c;)Ljava/util/TreeSet;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 527
    invoke-static {}, Lcom/facebook/l;->i()Ljava/lang/String;

    move-result-object v0

    .line 528
    invoke-static {}, Lcom/facebook/l;->j()Ljava/lang/String;

    move-result-object v1

    .line 530
    const-string v2, "com.facebook.platform.protocol.PROTOCOL_VERSION"

    invoke-virtual {p0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "com.facebook.platform.protocol.PROTOCOL_ACTION"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "com.facebook.platform.extra.APPLICATION_ID"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 534
    invoke-static {p3}, Lcom/facebook/internal/v;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 536
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 537
    const-string v2, "action_id"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    const-string v2, "app_name"

    invoke-static {v0, v2, v1}, Lcom/facebook/internal/aa;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    const-string v1, "com.facebook.platform.protocol.BRIDGE_ARGS"

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 542
    if-nez p4, :cond_0

    new-instance p4, Landroid/os/Bundle;

    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    .line 543
    :cond_0
    const-string v0, "com.facebook.platform.protocol.METHOD_ARGS"

    invoke-virtual {p0, v0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 552
    :goto_0
    return-void

    .line 546
    :cond_1
    const-string v0, "com.facebook.platform.protocol.CALL_ID"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 547
    invoke-static {v1}, Lcom/facebook/internal/aa;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 548
    const-string v0, "com.facebook.platform.extra.APPLICATION_NAME"

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 550
    :cond_2
    invoke-virtual {p0, p4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static a(I)Z
    .locals 2

    .prologue
    .line 495
    sget-object v0, Lcom/facebook/internal/v;->e:Ljava/util/List;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x133529d

    if-lt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(I)I
    .locals 3

    .prologue
    .line 716
    sget-object v0, Lcom/facebook/internal/v;->b:Ljava/util/List;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    invoke-static {v0, v1}, Lcom/facebook/internal/v;->a(Ljava/util/List;[I)I

    move-result v0

    return v0
.end method

.method static b(Landroid/content/Context;Landroid/content/Intent;Lcom/facebook/internal/v$c;)Landroid/content/Intent;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 364
    if-nez p1, :cond_1

    move-object p1, v0

    .line 377
    :cond_0
    :goto_0
    return-object p1

    .line 368
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 369
    if-nez v1, :cond_2

    move-object p1, v0

    .line 370
    goto :goto_0

    .line 373
    :cond_2
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, p0, v1}, Lcom/facebook/internal/v$c;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object p1, v0

    .line 374
    goto :goto_0
.end method

.method private static b(Lcom/facebook/internal/v$c;)Ljava/util/TreeSet;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/internal/v$c;",
            ")",
            "Ljava/util/TreeSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 774
    new-instance v7, Ljava/util/TreeSet;

    invoke-direct {v7}, Ljava/util/TreeSet;-><init>()V

    .line 776
    invoke-static {}, Lcom/facebook/l;->f()Landroid/content/Context;

    move-result-object v0

    .line 777
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 779
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const-string v1, "version"

    aput-object v1, v2, v3

    .line 780
    invoke-static {p0}, Lcom/facebook/internal/v;->c(Lcom/facebook/internal/v$c;)Landroid/net/Uri;

    move-result-object v1

    .line 786
    :try_start_0
    invoke-static {}, Lcom/facebook/l;->f()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 787
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/facebook/internal/v$c;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".provider.PlatformProvider"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 788
    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v3

    .line 789
    if-eqz v3, :cond_1

    .line 790
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 791
    if-eqz v1, :cond_2

    .line 792
    :goto_0
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 793
    const-string v0, "version"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 794
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 798
    :catch_0
    move-exception v0

    .line 799
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 801
    if-eqz v1, :cond_0

    .line 802
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 806
    :cond_0
    :goto_2
    return-object v7

    :cond_1
    move-object v1, v6

    .line 801
    :cond_2
    if-eqz v1, :cond_0

    .line 802
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 801
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v6, :cond_3

    .line 802
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 801
    :catchall_1
    move-exception v0

    move-object v6, v1

    goto :goto_3

    .line 798
    :catch_1
    move-exception v0

    move-object v1, v6

    goto :goto_1
.end method

.method public static b(Landroid/content/Intent;)Ljava/util/UUID;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 603
    if-nez p0, :cond_1

    .line 624
    :cond_0
    :goto_0
    return-object v1

    .line 606
    :cond_1
    invoke-static {p0}, Lcom/facebook/internal/v;->a(Landroid/content/Intent;)I

    move-result v0

    .line 608
    invoke-static {v0}, Lcom/facebook/internal/v;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 609
    const-string v0, "com.facebook.platform.protocol.BRIDGE_ARGS"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 610
    if-eqz v0, :cond_3

    .line 611
    const-string v2, "action_id"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 618
    :goto_1
    if-eqz v0, :cond_0

    .line 620
    :try_start_0
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 614
    :cond_2
    const-string v0, "com.facebook.platform.protocol.CALL_ID"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 621
    :catch_0
    move-exception v0

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method public static b()V
    .locals 3

    .prologue
    .line 754
    sget-object v0, Lcom/facebook/internal/v;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 770
    :goto_0
    return-void

    .line 758
    :cond_0
    invoke-static {}, Lcom/facebook/l;->d()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/facebook/internal/v$1;

    invoke-direct {v1}, Lcom/facebook/internal/v$1;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private static c(Lcom/facebook/internal/v$c;)Landroid/net/Uri;
    .locals 2

    .prologue
    .line 855
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/facebook/internal/v$c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".provider.PlatformProvider/versions"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static c(Landroid/content/Intent;)Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 628
    invoke-static {p0}, Lcom/facebook/internal/v;->a(Landroid/content/Intent;)I

    move-result v0

    .line 629
    invoke-static {v0}, Lcom/facebook/internal/v;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 630
    const/4 v0, 0x0

    .line 633
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "com.facebook.platform.protocol.BRIDGE_ARGS"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic c()Ljava/util/List;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/facebook/internal/v;->b:Ljava/util/List;

    return-object v0
.end method

.method public static d(Landroid/content/Intent;)Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 637
    invoke-static {p0}, Lcom/facebook/internal/v;->a(Landroid/content/Intent;)I

    move-result v0

    .line 638
    invoke-static {v0}, Lcom/facebook/internal/v;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 639
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 642
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "com.facebook.platform.protocol.METHOD_ARGS"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic d()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/facebook/internal/v;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public static e(Landroid/content/Intent;)Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 646
    invoke-static {p0}, Lcom/facebook/internal/v;->a(Landroid/content/Intent;)I

    move-result v1

    .line 647
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 648
    invoke-static {v1}, Lcom/facebook/internal/v;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 652
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v1, "com.facebook.platform.protocol.RESULT_ARGS"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0
.end method

.method private static e()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/internal/v$c;",
            ">;"
        }
    .end annotation

    .prologue
    .line 319
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 323
    sget-object v1, Lcom/facebook/internal/v;->a:Lcom/facebook/internal/v$c;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 324
    new-instance v1, Lcom/facebook/internal/v$d;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/facebook/internal/v$d;-><init>(Lcom/facebook/internal/v$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 326
    return-object v0
.end method

.method private static f()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/internal/v$c;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 330
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 332
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 333
    new-instance v2, Lcom/facebook/internal/v$b;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/facebook/internal/v$b;-><init>(Lcom/facebook/internal/v$1;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 336
    const-string v2, "com.facebook.platform.action.request.OGACTIONPUBLISH_DIALOG"

    sget-object v3, Lcom/facebook/internal/v;->b:Ljava/util/List;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    const-string v2, "com.facebook.platform.action.request.FEED_DIALOG"

    sget-object v3, Lcom/facebook/internal/v;->b:Ljava/util/List;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    const-string v2, "com.facebook.platform.action.request.LIKE_DIALOG"

    sget-object v3, Lcom/facebook/internal/v;->b:Ljava/util/List;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    const-string v2, "com.facebook.platform.action.request.APPINVITES_DIALOG"

    sget-object v3, Lcom/facebook/internal/v;->b:Ljava/util/List;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    const-string v2, "com.facebook.platform.action.request.MESSAGE_DIALOG"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    const-string v2, "com.facebook.platform.action.request.OGMESSAGEPUBLISH_DIALOG"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    return-object v0
.end method

.method public static f(Landroid/content/Intent;)Z
    .locals 2

    .prologue
    .line 656
    invoke-static {p0}, Lcom/facebook/internal/v;->c(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v0

    .line 657
    if-eqz v0, :cond_0

    .line 658
    const-string v1, "error"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    .line 660
    :goto_0
    return v0

    :cond_0
    const-string v0, "com.facebook.platform.status.ERROR_TYPE"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static g(Landroid/content/Intent;)Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 665
    invoke-static {p0}, Lcom/facebook/internal/v;->f(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 666
    const/4 v0, 0x0

    .line 674
    :goto_0
    return-object v0

    .line 669
    :cond_0
    invoke-static {p0}, Lcom/facebook/internal/v;->c(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v0

    .line 670
    if-eqz v0, :cond_1

    .line 671
    const-string v1, "error"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    .line 674
    :cond_1
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0
.end method
