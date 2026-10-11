.class public final Lcom/mopub/dg/c/h;
.super Ljava/lang/Object;


# instance fields
.field public a:Lcom/mopub/dg/c/a;

.field public b:Ljava/util/Timer;

.field public c:Z

.field public d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/mopub/dg/c/h;->c:Z

    iput-boolean v0, p0, Lcom/mopub/dg/c/h;->d:Z

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/mopub/dg/b/d;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-static {p1, p3, p4}, Lcom/mopub/dg/e/a/a/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const-string v0, "Error:context is null"

    invoke-static {v0}, Lcom/mopub/dg/d/n;->b(Ljava/lang/String;)I

    :cond_0
    invoke-static {p1, p2, p3, p4}, Lcom/mopub/dg/c/a;->a(Landroid/content/Context;Lcom/mopub/dg/b/d;Ljava/lang/String;Ljava/lang/String;)Lcom/mopub/dg/c/a;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/dg/c/h;->a:Lcom/mopub/dg/c/a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/mopub/dg/d/n;->a(Ljava/lang/Throwable;)I

    goto :goto_0
.end method
