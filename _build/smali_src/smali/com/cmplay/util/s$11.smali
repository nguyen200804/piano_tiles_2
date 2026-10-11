.class Lcom/cmplay/util/s$11;
.super Ljava/lang/Object;
.source "NativeInterfaceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/util/s;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmplay/base/a;

.field final synthetic b:I

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lcom/cmplay/util/s;


# direct methods
.method constructor <init>(Lcom/cmplay/util/s;Lcom/cmplay/base/a;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1178
    iput-object p1, p0, Lcom/cmplay/util/s$11;->f:Lcom/cmplay/util/s;

    iput-object p2, p0, Lcom/cmplay/util/s$11;->a:Lcom/cmplay/base/a;

    iput p3, p0, Lcom/cmplay/util/s$11;->b:I

    iput-object p4, p0, Lcom/cmplay/util/s$11;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/cmplay/util/s$11;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/cmplay/util/s$11;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 1181
    iget-object v0, p0, Lcom/cmplay/util/s$11;->a:Lcom/cmplay/base/a;

    if-nez v0, :cond_0

    .line 1216
    :goto_0
    :pswitch_0
    return-void

    .line 1184
    :cond_0
    iget v0, p0, Lcom/cmplay/util/s$11;->b:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1186
    :pswitch_1
    iget-object v0, p0, Lcom/cmplay/util/s$11;->a:Lcom/cmplay/base/a;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/cmplay/base/a;->asyncGetPrice(Ljava/lang/String;)V

    goto :goto_0

    .line 1189
    :pswitch_2
    iget-object v0, p0, Lcom/cmplay/util/s$11;->a:Lcom/cmplay/base/a;

    invoke-virtual {v0}, Lcom/cmplay/base/a;->Init()V

    goto :goto_0

    .line 1192
    :pswitch_3
    iget-object v0, p0, Lcom/cmplay/util/s$11;->a:Lcom/cmplay/base/a;

    invoke-virtual {v0}, Lcom/cmplay/base/a;->asyncQueryOrders()V

    goto :goto_0

    .line 1195
    :pswitch_4
    iget-object v0, p0, Lcom/cmplay/util/s$11;->a:Lcom/cmplay/base/a;

    iget-object v1, p0, Lcom/cmplay/util/s$11;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/cmplay/base/a;->consumeOrder(Ljava/lang/String;)V

    goto :goto_0

    .line 1198
    :pswitch_5
    iget-object v0, p0, Lcom/cmplay/util/s$11;->a:Lcom/cmplay/base/a;

    iget-object v1, p0, Lcom/cmplay/util/s$11;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/cmplay/base/a;->asyncPurchase(Ljava/lang/String;)V

    goto :goto_0

    .line 1207
    :pswitch_6
    iget-object v0, p0, Lcom/cmplay/util/s$11;->a:Lcom/cmplay/base/a;

    iget-object v1, p0, Lcom/cmplay/util/s$11;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/cmplay/base/a;->getSubscribeInfo(Ljava/lang/String;)V

    goto :goto_0

    .line 1210
    :pswitch_7
    iget-object v0, p0, Lcom/cmplay/util/s$11;->a:Lcom/cmplay/base/a;

    iget-object v1, p0, Lcom/cmplay/util/s$11;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmplay/util/s$11;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmplay/util/s$11;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/cmplay/util/s$11;->f:Lcom/cmplay/util/s;

    invoke-virtual {v4}, Lcom/cmplay/util/s;->Y()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual/range {v0 .. v5}, Lcom/cmplay/base/a;->asyncSubscribePurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1213
    :pswitch_8
    iget-object v0, p0, Lcom/cmplay/util/s$11;->a:Lcom/cmplay/base/a;

    iget-object v1, p0, Lcom/cmplay/util/s$11;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmplay/util/s$11;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmplay/util/s$11;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/cmplay/util/s$11;->f:Lcom/cmplay/util/s;

    invoke-virtual {v4}, Lcom/cmplay/util/s;->Y()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/cmplay/base/a;->asyncScreenPageSubsPay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1184
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
