.class Lcom/cmplay/util/b$2;
.super Lcom/cmplay/util/b$d;
.source "AsyncTaskEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/util/b;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/cmplay/util/b$d",
        "<TParams;TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/cmplay/util/b;


# direct methods
.method constructor <init>(Lcom/cmplay/util/b;)V
    .locals 1

    .prologue
    .line 256
    iput-object p1, p0, Lcom/cmplay/util/b$2;->a:Lcom/cmplay/util/b;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/cmplay/util/b$d;-><init>(Lcom/cmplay/util/b$1;)V

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
    iget-object v0, p0, Lcom/cmplay/util/b$2;->a:Lcom/cmplay/util/b;

    invoke-static {v0}, Lcom/cmplay/util/b;->a(Lcom/cmplay/util/b;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 260
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 261
    iget-object v0, p0, Lcom/cmplay/util/b$2;->a:Lcom/cmplay/util/b;

    iget-object v1, p0, Lcom/cmplay/util/b$2;->a:Lcom/cmplay/util/b;

    iget-object v2, p0, Lcom/cmplay/util/b$2;->b:[Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/cmplay/util/b;->a([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmplay/util/b;->a(Lcom/cmplay/util/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
