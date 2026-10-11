.class final Lcom/appsflyer/AppsFlyerLib$1;
.super Ljava/lang/Object;
.source "AppsFlyerLib.java"

# interfaces
.implements Lcom/appsflyer/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/AppsFlyerLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/appsflyer/f;


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 533
    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLib$1;->a:Lcom/appsflyer/f;

    invoke-interface {v0, p1}, Lcom/appsflyer/f;->a(Ljava/lang/String;)V

    .line 534
    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 529
    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLib$1;->a:Lcom/appsflyer/f;

    invoke-interface {v0, p1}, Lcom/appsflyer/f;->a(Ljava/util/Map;)V

    .line 530
    return-void
.end method

.method public b(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 538
    return-void
.end method
