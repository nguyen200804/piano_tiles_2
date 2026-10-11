.class Lcom/facebook/y$1;
.super Ljava/lang/Object;
.source "ProgressOutputStream.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/y;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/p$b;

.field final synthetic b:Lcom/facebook/y;


# direct methods
.method constructor <init>(Lcom/facebook/y;Lcom/facebook/p$b;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/facebook/y$1;->b:Lcom/facebook/y;

    iput-object p2, p0, Lcom/facebook/y$1;->a:Lcom/facebook/p$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 79
    iget-object v0, p0, Lcom/facebook/y$1;->a:Lcom/facebook/p$b;

    iget-object v1, p0, Lcom/facebook/y$1;->b:Lcom/facebook/y;

    invoke-static {v1}, Lcom/facebook/y;->a(Lcom/facebook/y;)Lcom/facebook/p;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/y$1;->b:Lcom/facebook/y;

    invoke-static {v2}, Lcom/facebook/y;->b(Lcom/facebook/y;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/facebook/y$1;->b:Lcom/facebook/y;

    invoke-static {v4}, Lcom/facebook/y;->c(Lcom/facebook/y;)J

    move-result-wide v4

    invoke-interface/range {v0 .. v5}, Lcom/facebook/p$b;->a(Lcom/facebook/p;JJ)V

    .line 83
    return-void
.end method
