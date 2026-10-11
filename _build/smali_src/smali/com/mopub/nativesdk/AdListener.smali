.class public interface abstract Lcom/mopub/nativesdk/AdListener;
.super Ljava/lang/Object;
.source "AdListener.java"


# virtual methods
.method public abstract onLoadFailed(Ljava/lang/String;)V
.end method

.method public abstract onLoadFinish(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mopub/nativesdk/Campaign;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onPreLoadFinish(Lcom/mopub/nativesdk/Campaign;)V
.end method
