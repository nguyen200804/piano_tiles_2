.class Lcom/cmplay/util/s$26$2;
.super Ljava/lang/Object;
.source "NativeInterfaceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 2128
    iput-object p1, p0, Lcom/cmplay/util/s$26$2;->b:Lcom/cmplay/util/s$26;

    iput p2, p0, Lcom/cmplay/util/s$26$2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2132
    const/4 v0, 0x5

    iget v1, p0, Lcom/cmplay/util/s$26$2;->a:I

    int-to-short v1, v1

    iget-object v2, p0, Lcom/cmplay/util/s$26$2;->b:Lcom/cmplay/util/s$26;

    iget v2, v2, Lcom/cmplay/util/s$26;->b:I

    invoke-static {v0, v1, v2}, Lcom/cmplay/util/NativeUtil;->adStatusCallback(III)V

    .line 2133
    return-void
.end method
