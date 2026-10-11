.class Lcom/cmplay/util/s$26$1$3;
.super Ljava/lang/Object;
.source "NativeInterfaceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/util/s$26$1;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmplay/util/s$26$1;


# direct methods
.method constructor <init>(Lcom/cmplay/util/s$26$1;)V
    .locals 0

    .prologue
    .line 2097
    iput-object p1, p0, Lcom/cmplay/util/s$26$1$3;->a:Lcom/cmplay/util/s$26$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2100
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/cmplay/util/s$26$1$3;->a:Lcom/cmplay/util/s$26$1;

    iget v1, v1, Lcom/cmplay/util/s$26$1;->a:I

    int-to-short v1, v1

    iget-object v2, p0, Lcom/cmplay/util/s$26$1$3;->a:Lcom/cmplay/util/s$26$1;

    iget-object v2, v2, Lcom/cmplay/util/s$26$1;->b:Lcom/cmplay/util/s$26;

    iget v2, v2, Lcom/cmplay/util/s$26;->b:I

    invoke-static {v0, v1, v2}, Lcom/cmplay/util/NativeUtil;->adStatusCallback(III)V

    .line 2101
    return-void
.end method
