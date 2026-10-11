.class final Lcom/mopub/nativesdk/core/aa;
.super Ljava/lang/Object;
.source "RRManager.java"

# interfaces
.implements Lcom/mopub/nativesdk/core/w;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/mopub/nativesdk/core/n;


# direct methods
.method constructor <init>(Lcom/mopub/nativesdk/core/n;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/mopub/nativesdk/core/aa;->b:Lcom/mopub/nativesdk/core/n;

    iput-object p2, p0, Lcom/mopub/nativesdk/core/aa;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;J)V
    .locals 4

    .prologue
    .line 103
    iget-object v0, p0, Lcom/mopub/nativesdk/core/aa;->b:Lcom/mopub/nativesdk/core/n;

    iget-object v1, p0, Lcom/mopub/nativesdk/core/aa;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, p2, p3, p1}, Lcom/mopub/nativesdk/core/n;->a(Ljava/lang/String;JLjava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/mopub/nativesdk/core/aa;->b:Lcom/mopub/nativesdk/core/n;

    iget-object v1, p0, Lcom/mopub/nativesdk/core/aa;->a:Ljava/lang/String;

    invoke-static {v0, v1, p1, p2, p3}, Lcom/mopub/nativesdk/core/n;->a(Lcom/mopub/nativesdk/core/n;Ljava/lang/String;Ljava/lang/String;J)V

    .line 107
    const/4 v0, 0x2

    new-instance v1, Lcom/mopub/nativesdk/core/ab;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/mopub/nativesdk/core/ab;-><init>(Lcom/mopub/nativesdk/core/aa;Ljava/lang/String;J)V

    const-wide/32 v2, 0xea60

    invoke-static {v0, v1, v2, v3}, Lcom/mopub/nativesdk/d/s;->a(ILjava/lang/Runnable;J)V

    .line 115
    return-void
.end method
