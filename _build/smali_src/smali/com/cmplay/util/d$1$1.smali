.class Lcom/cmplay/util/d$1$1;
.super Ljava/lang/Object;
.source "CNodeHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/util/d$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmplay/util/d$1;


# direct methods
.method constructor <init>(Lcom/cmplay/util/d$1;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/cmplay/util/d$1$1;->a:Lcom/cmplay/util/d$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/cmplay/util/d$1$1;->a:Lcom/cmplay/util/d$1;

    iget-object v0, v0, Lcom/cmplay/util/d$1;->a:Lcom/cmplay/util/d$a;

    invoke-interface {v0}, Lcom/cmplay/util/d$a;->a()V

    .line 32
    return-void
.end method
