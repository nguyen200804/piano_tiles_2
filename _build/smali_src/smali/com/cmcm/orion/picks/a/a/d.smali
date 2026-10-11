.class public Lcom/cmcm/orion/picks/a/a/d;
.super Ljava/lang/Object;
.source "BaseRequestBuilder.java"


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Ljava/lang/String;

.field protected c:I

.field protected d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    invoke-static {}, Lcom/cmcm/orion/picks/a/a/h;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmcm/orion/picks/a/a/d;->a:Ljava/lang/String;

    .line 11
    invoke-static {}, Lcom/cmcm/orion/picks/a/a/h;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmcm/orion/picks/a/a/d;->b:Ljava/lang/String;

    .line 12
    const/4 v0, -0x1

    iput v0, p0, Lcom/cmcm/orion/picks/a/a/d;->c:I

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cmcm/orion/picks/a/a/d;->d:Ljava/util/List;

    .line 1022
    iget-object v0, p0, Lcom/cmcm/orion/picks/a/a/d;->d:Ljava/util/List;

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "v"

    const-string v3, "25"

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    return-void
.end method
