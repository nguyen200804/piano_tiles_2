.class Lcom/cmplay/base/util/c$2;
.super Lcom/cmplay/base/util/c$d;
.source "AsyncTaskEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/base/util/c;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/cmplay/base/util/c$d",
        "<TParams;TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/cmplay/base/util/c;


# direct methods
.method constructor <init>(Lcom/cmplay/base/util/c;)V
    .locals 1

    .prologue
    .line 256
    iput-object p1, p0, Lcom/cmplay/base/util/c$2;->a:Lcom/cmplay/base/util/c;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/cmplay/base/util/c$d;-><init>(Lcom/cmplay/base/util/c$1;)V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 258
    iget-object v0, p0, Lcom/cmplay/base/util/c$2;->a:Lcom/cmplay/base/util/c;

    invoke-static {v0}, Lcom/cmplay/base/util/c;->a(Lcom/cmplay/base/util/c;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 260
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 261
    iget-object v0, p0, Lcom/cmplay/base/util/c$2;->a:Lcom/cmplay/base/util/c;

    iget-object v1, p0, Lcom/cmplay/base/util/c$2;->a:Lcom/cmplay/base/util/c;

    iget-object v2, p0, Lcom/cmplay/base/util/c$2;->b:[Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/cmplay/base/util/c;->a([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmplay/base/util/c;->a(Lcom/cmplay/base/util/c;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
