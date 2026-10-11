.class public final Lcom/mnt/impl/f/k;
.super Lcom/mnt/impl/b/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mnt/impl/b/e",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/mnt/impl/f/f;

.field private b:Lcom/mnt/impl/f/a;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/mnt/impl/f/f;Lcom/mnt/impl/f/a;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/mnt/impl/b/e;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/mnt/impl/f/k;->a:Lcom/mnt/impl/f/f;

    .line 21
    iput-object p2, p0, Lcom/mnt/impl/f/k;->b:Lcom/mnt/impl/f/a;

    .line 22
    return-void
.end method


# virtual methods
.method protected final synthetic a()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 13
    .line 1027
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1029
    new-instance v0, Lcom/mnt/impl/f/e;

    invoke-direct {v0}, Lcom/mnt/impl/f/e;-><init>()V

    iget-object v1, p0, Lcom/mnt/impl/f/k;->a:Lcom/mnt/impl/f/f;

    invoke-interface {v1}, Lcom/mnt/impl/f/f;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mnt/impl/f/k;->a:Lcom/mnt/impl/f/f;

    invoke-interface {v2}, Lcom/mnt/impl/f/f;->b()Ljava/util/Map;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/mnt/impl/f/e;->a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mnt/impl/f/k;->c:Ljava/lang/String;

    .line 1031
    iget-object v0, p0, Lcom/mnt/impl/f/k;->c:Ljava/lang/String;

    .line 13
    return-object v0
.end method

.method protected final bridge synthetic a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 13
    check-cast p1, Ljava/lang/String;

    .line 1036
    iget-object v0, p0, Lcom/mnt/impl/f/k;->b:Lcom/mnt/impl/f/a;

    if-eqz v0, :cond_0

    .line 1037
    iget-object v0, p0, Lcom/mnt/impl/f/k;->b:Lcom/mnt/impl/f/a;

    invoke-interface {v0, p1}, Lcom/mnt/impl/f/a;->a(Ljava/lang/String;)V

    .line 13
    :cond_0
    return-void
.end method
