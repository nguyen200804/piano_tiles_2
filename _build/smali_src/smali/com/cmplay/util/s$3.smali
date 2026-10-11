.class Lcom/cmplay/util/s$3;
.super Ljava/lang/Object;
.source "NativeInterfaceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/util/s;->b(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/cmplay/util/s;


# direct methods
.method constructor <init>(Lcom/cmplay/util/s;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 995
    iput-object p1, p0, Lcom/cmplay/util/s$3;->c:Lcom/cmplay/util/s;

    iput-object p2, p0, Lcom/cmplay/util/s$3;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/cmplay/util/s$3;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 998
    invoke-static {}, Lcom/cmplay/util/h;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 999
    iget-object v0, p0, Lcom/cmplay/util/s$3;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/cmplay/util/s$3;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/cmplay/util/NativeUtil;->sendOrderInfo(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1007
    :cond_0
    :goto_0
    return-void

    .line 1000
    :cond_1
    invoke-static {}, Lcom/cmplay/util/h;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1001
    iget-object v0, p0, Lcom/cmplay/util/s$3;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/cmplay/util/s$3;->b:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/cmplay/util/NativeUtil;->sendOrderInfo(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 1002
    :cond_2
    invoke-static {}, Lcom/cmplay/util/h;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1003
    iget-object v0, p0, Lcom/cmplay/util/s$3;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/cmplay/util/s$3;->b:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/cmplay/util/NativeUtil;->sendOrderInfo(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 1004
    :cond_3
    invoke-static {}, Lcom/cmplay/util/h;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1005
    iget-object v0, p0, Lcom/cmplay/util/s$3;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/cmplay/util/s$3;->b:Ljava/lang/String;

    const/16 v2, 0x9

    invoke-static {v0, v1, v2}, Lcom/cmplay/util/NativeUtil;->sendOrderInfo(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method
