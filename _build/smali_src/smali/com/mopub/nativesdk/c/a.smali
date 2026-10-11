.class public abstract Lcom/mopub/nativesdk/c/a;
.super Ljava/lang/Object;
.source "AbsHttpLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected a:Z

.field private b:Lcom/mopub/nativesdk/c/l;

.field private c:Lcom/mopub/nativesdk/c/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    return-void
.end method

.method static synthetic a(Lcom/mopub/nativesdk/c/a;)Lcom/mopub/nativesdk/c/c;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/mopub/nativesdk/c/a;->c:Lcom/mopub/nativesdk/c/c;

    return-object v0
.end method


# virtual methods
.method protected abstract a()I
.end method

.method protected abstract a(Ljava/util/Map;[B)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;[B)TT;"
        }
    .end annotation
.end method

.method public final a(ILcom/mopub/nativesdk/c/l;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 55
    iput-boolean v2, p0, Lcom/mopub/nativesdk/c/a;->a:Z

    .line 57
    if-eqz p2, :cond_0

    .line 58
    iput-object p2, p0, Lcom/mopub/nativesdk/c/a;->b:Lcom/mopub/nativesdk/c/l;

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/mopub/nativesdk/c/a;->c:Lcom/mopub/nativesdk/c/c;

    if-nez v0, :cond_1

    .line 61
    new-instance v0, Lcom/mopub/nativesdk/c/c;

    iget-object v1, p0, Lcom/mopub/nativesdk/c/a;->b:Lcom/mopub/nativesdk/c/l;

    invoke-direct {v0, v1}, Lcom/mopub/nativesdk/c/c;-><init>(Lcom/mopub/nativesdk/c/l;)V

    iput-object v0, p0, Lcom/mopub/nativesdk/c/a;->c:Lcom/mopub/nativesdk/c/c;

    .line 1110
    :cond_1
    new-instance v0, Lcom/mopub/nativesdk/c/b;

    invoke-direct {v0, p0, v2}, Lcom/mopub/nativesdk/c/b;-><init>(Lcom/mopub/nativesdk/c/a;I)V

    .line 1267
    invoke-static {}, Lcom/mopub/nativesdk/d/a/a;->a()Lcom/mopub/nativesdk/d/a/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mopub/nativesdk/d/a/a;->a(Ljava/lang/Runnable;)V

    .line 65
    return-void
.end method

.method protected abstract b()Ljava/lang/String;
.end method

.method protected abstract c()[B
.end method
