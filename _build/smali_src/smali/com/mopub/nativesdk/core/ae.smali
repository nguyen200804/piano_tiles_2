.class final Lcom/mopub/nativesdk/core/ae;
.super Ljava/lang/Object;
.source "RRManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:J

.field private synthetic c:Lcom/mopub/nativesdk/core/ad;


# direct methods
.method constructor <init>(Lcom/mopub/nativesdk/core/ad;Ljava/lang/String;J)V
    .locals 1

    .prologue
    .line 165
    iput-object p1, p0, Lcom/mopub/nativesdk/core/ae;->c:Lcom/mopub/nativesdk/core/ad;

    iput-object p2, p0, Lcom/mopub/nativesdk/core/ae;->a:Ljava/lang/String;

    iput-wide p3, p0, Lcom/mopub/nativesdk/core/ae;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 168
    iget-object v0, p0, Lcom/mopub/nativesdk/core/ae;->c:Lcom/mopub/nativesdk/core/ad;

    iget-object v0, v0, Lcom/mopub/nativesdk/core/ad;->a:Lcom/mopub/nativesdk/core/ac;

    iget-object v0, v0, Lcom/mopub/nativesdk/core/ac;->b:Lcom/mopub/nativesdk/core/n;

    iget-object v1, p0, Lcom/mopub/nativesdk/core/ae;->c:Lcom/mopub/nativesdk/core/ad;

    iget-object v1, v1, Lcom/mopub/nativesdk/core/ad;->a:Lcom/mopub/nativesdk/core/ac;

    iget-object v1, v1, Lcom/mopub/nativesdk/core/ac;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/mopub/nativesdk/core/ae;->a:Ljava/lang/String;

    iget-wide v4, p0, Lcom/mopub/nativesdk/core/ae;->b:J

    invoke-static {v0, v1, v2, v4, v5}, Lcom/mopub/nativesdk/core/n;->a(Lcom/mopub/nativesdk/core/n;Ljava/lang/String;Ljava/lang/String;J)V

    .line 169
    return-void
.end method
