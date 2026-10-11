.class final Lcom/mopub/nativesdk/core/ab;
.super Ljava/lang/Object;
.source "RRManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:J

.field private synthetic c:Lcom/mopub/nativesdk/core/aa;


# direct methods
.method constructor <init>(Lcom/mopub/nativesdk/core/aa;Ljava/lang/String;J)V
    .locals 1

    .prologue
    .line 107
    iput-object p1, p0, Lcom/mopub/nativesdk/core/ab;->c:Lcom/mopub/nativesdk/core/aa;

    iput-object p2, p0, Lcom/mopub/nativesdk/core/ab;->a:Ljava/lang/String;

    iput-wide p3, p0, Lcom/mopub/nativesdk/core/ab;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 110
    iget-object v0, p0, Lcom/mopub/nativesdk/core/ab;->c:Lcom/mopub/nativesdk/core/aa;

    iget-object v0, v0, Lcom/mopub/nativesdk/core/aa;->b:Lcom/mopub/nativesdk/core/n;

    iget-object v1, p0, Lcom/mopub/nativesdk/core/ab;->c:Lcom/mopub/nativesdk/core/aa;

    iget-object v1, v1, Lcom/mopub/nativesdk/core/aa;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/mopub/nativesdk/core/ab;->a:Ljava/lang/String;

    iget-wide v4, p0, Lcom/mopub/nativesdk/core/ab;->b:J

    invoke-static {v0, v1, v2, v4, v5}, Lcom/mopub/nativesdk/core/n;->a(Lcom/mopub/nativesdk/core/n;Ljava/lang/String;Ljava/lang/String;J)V

    .line 111
    return-void
.end method
