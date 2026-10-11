.class Lcom/cmplay/util/s$24;
.super Ljava/lang/Object;
.source "NativeInterfaceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/util/s;->p(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/cmplay/util/s;


# direct methods
.method constructor <init>(Lcom/cmplay/util/s;I)V
    .locals 0

    .prologue
    .line 1886
    iput-object p1, p0, Lcom/cmplay/util/s$24;->b:Lcom/cmplay/util/s;

    iput p2, p0, Lcom/cmplay/util/s$24;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1889
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1890
    const-string v1, "vip_user_state"

    iget v2, p0, Lcom/cmplay/util/s$24;->a:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1891
    invoke-static {}, Lcom/cmplay/h/b;->a()Lcom/cmplay/h/b;

    move-result-object v1

    const-string v2, "vip_user_state"

    invoke-virtual {v1, v2, v0}, Lcom/cmplay/h/b;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1892
    return-void
.end method
