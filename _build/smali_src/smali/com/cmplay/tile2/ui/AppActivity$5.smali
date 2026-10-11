.class Lcom/cmplay/tile2/ui/AppActivity$5;
.super Ljava/lang/Object;
.source "AppActivity.java"

# interfaces
.implements Lcom/facebook/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/tile2/ui/AppActivity;->z()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/g",
        "<",
        "Lcom/facebook/login/f;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/cmplay/tile2/ui/AppActivity;


# direct methods
.method constructor <init>(Lcom/cmplay/tile2/ui/AppActivity;)V
    .locals 0

    .prologue
    .line 978
    iput-object p1, p0, Lcom/cmplay/tile2/ui/AppActivity$5;->a:Lcom/cmplay/tile2/ui/AppActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 998
    const/4 v0, 0x0

    invoke-static {v1, v1, v0}, Lcom/cmplay/util/NativeUtil;->loginCallbackOnGLThread(IILjava/lang/String;)V

    .line 999
    return-void
.end method

.method public a(Lcom/facebook/i;)V
    .locals 3

    .prologue
    .line 1006
    const-string v0, "unknow facebook login error!"

    .line 1007
    if-eqz p1, :cond_0

    .line 1008
    invoke-virtual {p1}, Lcom/facebook/i;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 1010
    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-static {v1, v2, v0}, Lcom/cmplay/util/NativeUtil;->loginCallbackOnGLThread(IILjava/lang/String;)V

    .line 1011
    return-void
.end method

.method public a(Lcom/facebook/login/f;)V
    .locals 3

    .prologue
    .line 990
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/cmplay/util/NativeUtil;->loginCallbackOnGLThread(IILjava/lang/String;)V

    .line 991
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 978
    check-cast p1, Lcom/facebook/login/f;

    invoke-virtual {p0, p1}, Lcom/cmplay/tile2/ui/AppActivity$5;->a(Lcom/facebook/login/f;)V

    return-void
.end method
