.class public final Lcom/mopub/dg/d/b/b;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/util/HashMap;


# instance fields
.field private b:Lcom/mopub/dg/d/b/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mopub/dg/d/b/b;->a:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1, p2}, Lcom/mopub/dg/d/b/c;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/mopub/dg/d/b/c;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/dg/d/b/b;->b:Lcom/mopub/dg/d/b/a;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/mopub/dg/d/b/b;
    .locals 1

    const-string v0, "dgspinfo"

    invoke-static {p0, v0}, Lcom/mopub/dg/d/b/b;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/mopub/dg/d/b/b;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Lcom/mopub/dg/d/b/b;
    .locals 2

    sget-object v0, Lcom/mopub/dg/d/b/b;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/dg/d/b/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/mopub/dg/d/b/b;

    invoke-direct {v0, p0, p1}, Lcom/mopub/dg/d/b/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sget-object v1, Lcom/mopub/dg/d/b/b;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final a()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/mopub/dg/d/b/b;->b:Lcom/mopub/dg/d/b/a;

    invoke-virtual {v0}, Lcom/mopub/dg/d/b/a;->a()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/mopub/dg/d/b/b;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final a(Ljava/lang/String;J)Z
    .locals 2

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/mopub/dg/d/b/b;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/mopub/dg/d/b/b;->b:Lcom/mopub/dg/d/b/a;

    invoke-virtual {v0, p1, p2}, Lcom/mopub/dg/d/b/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final a(Ljava/lang/String;Z)Z
    .locals 1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/mopub/dg/d/b/b;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final b(Ljava/lang/String;J)J
    .locals 2

    iget-object v0, p0, Lcom/mopub/dg/d/b/b;->b:Lcom/mopub/dg/d/b/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/mopub/dg/d/b/a;->a(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mopub/dg/d/b/b;->b:Lcom/mopub/dg/d/b/a;

    invoke-virtual {v0, p1}, Lcom/mopub/dg/d/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mopub/dg/d/b/b;->b:Lcom/mopub/dg/d/b/a;

    invoke-virtual {v0, p1, p2}, Lcom/mopub/dg/d/b/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/mopub/dg/d/b/b;->b:Lcom/mopub/dg/d/b/a;

    invoke-virtual {v0, p1}, Lcom/mopub/dg/d/b/a;->b(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final d(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/mopub/dg/d/b/b;->b:Lcom/mopub/dg/d/b/a;

    invoke-virtual {v0, p1}, Lcom/mopub/dg/d/b/a;->c(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
