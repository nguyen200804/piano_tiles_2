.class Lcom/cmplay/base/util/o$1;
.super Ljava/lang/Object;
.source "ParseUrlUtils.java"

# interfaces
.implements Lorg/apache/http/client/RedirectHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/base/util/o;->a(Ljava/lang/String;)Lorg/apache/http/HttpResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmplay/base/util/o;


# direct methods
.method constructor <init>(Lcom/cmplay/base/util/o;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/cmplay/base/util/o$1;->a:Lcom/cmplay/base/util/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLocationURI(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Ljava/net/URI;
    .locals 1
    .param p1, "response"    # Lorg/apache/http/HttpResponse;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/ProtocolException;
        }
    .end annotation

    .prologue
    .line 74
    const/4 v0, 0x0

    return-object v0
.end method

.method public isRedirectRequested(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Z
    .locals 1
    .param p1, "response"    # Lorg/apache/http/HttpResponse;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;

    .prologue
    .line 79
    const/4 v0, 0x0

    return v0
.end method
