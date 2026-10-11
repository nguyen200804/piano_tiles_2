.class Lcom/cmplay/util/s$26$1;
.super Ljava/lang/Object;
.source "NativeInterfaceImpl.java"

# interfaces
.implements Lcom/cmplay/ad/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/util/s$26;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/cmplay/util/s$26;


# direct methods
.method constructor <init>(Lcom/cmplay/util/s$26;I)V
    .locals 0

    .prologue
    .line 2061
    iput-object p1, p0, Lcom/cmplay/util/s$26$1;->b:Lcom/cmplay/util/s$26;

    iput p2, p0, Lcom/cmplay/util/s$26$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 2064
    new-instance v0, Lcom/cmplay/util/s$26$1$1;

    invoke-direct {v0, p0}, Lcom/cmplay/util/s$26$1$1;-><init>(Lcom/cmplay/util/s$26$1;)V

    invoke-static {v0}, Lcom/cmplay/util/d;->a(Lcom/cmplay/util/d$a;)V

    .line 2070
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 2074
    new-instance v0, Lcom/cmplay/util/s$26$1$2;

    invoke-direct {v0, p0, p1}, Lcom/cmplay/util/s$26$1$2;-><init>(Lcom/cmplay/util/s$26$1;Z)V

    invoke-static {v0}, Lcom/cmplay/util/d;->a(Lcom/cmplay/util/d$a;)V

    .line 2092
    return-void
.end method

.method public b()V
    .locals 5

    .prologue
    .line 2096
    new-instance v0, Lcom/cmplay/util/c/a/a;

    invoke-direct {v0}, Lcom/cmplay/util/c/a/a;-><init>()V

    iget-object v1, p0, Lcom/cmplay/util/s$26$1;->b:Lcom/cmplay/util/s$26;

    iget v1, v1, Lcom/cmplay/util/s$26;->a:I

    int-to-byte v1, v1

    const/4 v2, 0x3

    const/4 v3, 0x4

    iget-object v4, p0, Lcom/cmplay/util/s$26$1;->b:Lcom/cmplay/util/s$26;

    iget v4, v4, Lcom/cmplay/util/s$26;->c:I

    int-to-byte v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/cmplay/util/c/a/a;->a(BBSB)V

    .line 2097
    new-instance v0, Lcom/cmplay/util/s$26$1$3;

    invoke-direct {v0, p0}, Lcom/cmplay/util/s$26$1$3;-><init>(Lcom/cmplay/util/s$26$1;)V

    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxHelper;->runOnGLThread(Ljava/lang/Runnable;)V

    .line 2103
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 2107
    new-instance v0, Lcom/cmplay/util/s$26$1$4;

    invoke-direct {v0, p0}, Lcom/cmplay/util/s$26$1$4;-><init>(Lcom/cmplay/util/s$26$1;)V

    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxHelper;->runOnGLThread(Ljava/lang/Runnable;)V

    .line 2113
    return-void
.end method
