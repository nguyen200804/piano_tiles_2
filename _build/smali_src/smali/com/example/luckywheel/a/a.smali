.class public abstract Lcom/example/luckywheel/a/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/example/luckywheel/a/a$a;
    }
.end annotation


# static fields
.field private static final c:Ljava/lang/String;

.field private static final d:Ljava/lang/String;


# instance fields
.field protected a:Landroid/content/Context;

.field protected b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private e:I

.field private f:I

.field private g:Lcom/example/luckywheel/a/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/example/luckywheel/a/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/example/luckywheel/a/a;->c:Ljava/lang/String;

    invoke-static {}, Lcom/example/luckywheel/a/k;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/example/luckywheel/a/a;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/example/luckywheel/a/a;->a:Landroid/content/Context;

    iput-object v1, p0, Lcom/example/luckywheel/a/a;->b:Ljava/util/Map;

    const/16 v0, 0x3a98

    iput v0, p0, Lcom/example/luckywheel/a/a;->e:I

    const v0, 0xea60

    iput v0, p0, Lcom/example/luckywheel/a/a;->f:I

    iput-object v1, p0, Lcom/example/luckywheel/a/a;->g:Lcom/example/luckywheel/a/j;

    iput-object p1, p0, Lcom/example/luckywheel/a/a;->a:Landroid/content/Context;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/example/luckywheel/a/a;->b:Ljava/util/Map;

    return-void
.end method

.method static synthetic a(Lcom/example/luckywheel/a/a;)Lcom/example/luckywheel/a/j;
    .locals 1

    iget-object v0, p0, Lcom/example/luckywheel/a/a;->g:Lcom/example/luckywheel/a/j;

    return-object v0
.end method

.method static synthetic e()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/example/luckywheel/a/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method private f()V
    .locals 6

    iget-object v0, p0, Lcom/example/luckywheel/a/a;->b:Ljava/util/Map;

    const-string v1, "xaid"

    iget-object v2, p0, Lcom/example/luckywheel/a/a;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/example/luckywheel/a/d;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/example/luckywheel/a/a;->b:Ljava/util/Map;

    const-string v1, "cnl"

    sget-object v2, Lcom/example/luckywheel/a/c;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/example/luckywheel/a/a;->b:Ljava/util/Map;

    const-string v1, "cv"

    sget-object v2, Lcom/example/luckywheel/a/c;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/example/luckywheel/a/a;->b:Ljava/util/Map;

    const-string v1, "mcc"

    iget-object v2, p0, Lcom/example/luckywheel/a/a;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/example/luckywheel/a/d;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/example/luckywheel/a/a;->b:Ljava/util/Map;

    const-string v1, "tstamp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private g()V
    .locals 7

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/example/luckywheel/a/a;->g:Lcom/example/luckywheel/a/j;

    if-nez v0, :cond_0

    sget-object v0, Lcom/example/luckywheel/a/a;->c:Ljava/lang/String;

    const-string v1, "mServerCallback = null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/example/luckywheel/a/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/example/luckywheel/a/a;->c:Ljava/lang/String;

    const-string v1, "subUrl is empty"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/example/luckywheel/a/a;->g:Lcom/example/luckywheel/a/j;

    const/16 v1, 0x9

    const-string v2, "subUrl is empty"

    invoke-interface {v0, v1, v2}, Lcom/example/luckywheel/a/j;->a(ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/example/luckywheel/a/a;->b:Ljava/util/Map;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/example/luckywheel/a/a;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_3

    :cond_2
    sget-object v0, Lcom/example/luckywheel/a/a;->c:Ljava/lang/String;

    const-string v1, "RequestData is empty"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/example/luckywheel/a/a;->g:Lcom/example/luckywheel/a/j;

    const/4 v1, 0x2

    const-string v2, "RequestData is empty"

    invoke-interface {v0, v1, v2}, Lcom/example/luckywheel/a/j;->a(ILjava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/example/luckywheel/a/a;->d()Ljava/lang/String;

    move-result-object v4

    sget-object v0, Lcom/example/luckywheel/a/a;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":request body is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v4, :cond_4

    sget-object v0, Lcom/example/luckywheel/a/a;->c:Ljava/lang/String;

    const-string v1, "RequestData is empty"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/example/luckywheel/a/a;->g:Lcom/example/luckywheel/a/j;

    const/16 v1, 0x3ea

    const-string v2, "RequestData is empty"

    invoke-interface {v0, v1, v2}, Lcom/example/luckywheel/a/j;->a(ILjava/lang/Object;)V

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/example/luckywheel/a/c;->a:Ljava/lang/String;

    invoke-static {v4, v0}, Lcom/example/luckywheel/a/f;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v1, "Authorization"

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/example/luckywheel/a/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/example/luckywheel/a/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/example/luckywheel/a/a;->c:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HttpClient ["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "] is ready to do http!"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "POST"

    new-instance v3, Lcom/example/luckywheel/a/l;

    const/4 v5, 0x0

    invoke-direct {v3, p0, v5, v4}, Lcom/example/luckywheel/a/l;-><init>(Lcom/example/luckywheel/a/a;Lcom/example/luckywheel/a/g$b;Ljava/lang/String;)V

    iget v4, p0, Lcom/example/luckywheel/a/a;->e:I

    iget v5, p0, Lcom/example/luckywheel/a/a;->f:I

    invoke-static/range {v0 .. v5}, Lcom/example/luckywheel/a/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/example/luckywheel/a/g$c;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    instance-of v1, v0, Ljava/net/UnknownHostException;

    if-eqz v1, :cond_5

    iget-object v0, p0, Lcom/example/luckywheel/a/a;->g:Lcom/example/luckywheel/a/j;

    const/16 v1, 0x1f4

    invoke-interface {v0, v1, v6}, Lcom/example/luckywheel/a/j;->a(ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_5
    sget-object v1, Lcom/example/luckywheel/a/a;->c:Ljava/lang/String;

    const-string v2, "beginRequest catch exception! reason is "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v1, p0, Lcom/example/luckywheel/a/a;->g:Lcom/example/luckywheel/a/j;

    const/16 v2, 0x3ec

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/example/luckywheel/a/j;->a(ILjava/lang/Object;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public a(Ljava/io/InputStream;)Lcom/example/luckywheel/a/i;
    .locals 1

    new-instance v0, Lcom/example/luckywheel/a/i;

    invoke-direct {v0, p1}, Lcom/example/luckywheel/a/i;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method public abstract a()Ljava/lang/String;
.end method

.method public a(Lcom/example/luckywheel/a/j;)V
    .locals 0

    iput-object p1, p0, Lcom/example/luckywheel/a/a;->g:Lcom/example/luckywheel/a/j;

    return-void
.end method

.method public abstract b()V
.end method

.method public c()V
    .locals 0

    invoke-direct {p0}, Lcom/example/luckywheel/a/a;->f()V

    invoke-virtual {p0}, Lcom/example/luckywheel/a/a;->b()V

    invoke-direct {p0}, Lcom/example/luckywheel/a/a;->g()V

    return-void
.end method

.method protected d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/example/luckywheel/a/a;->b:Ljava/util/Map;

    invoke-static {v0}, Lcom/example/luckywheel/a/h;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
