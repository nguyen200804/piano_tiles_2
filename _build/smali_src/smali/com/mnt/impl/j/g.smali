.class final Lcom/mnt/impl/j/g;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/mnt/impl/j/f;


# direct methods
.method constructor <init>(Lcom/mnt/impl/j/f;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/mnt/impl/j/g;->a:Lcom/mnt/impl/j/f;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 72
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 74
    sget-object v1, Lcom/mnt/impl/j/f;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/mnt/impl/j/g;->a:Lcom/mnt/impl/j/f;

    invoke-static {v0}, Lcom/mnt/impl/j/f;->a(Lcom/mnt/impl/j/f;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mnt/impl/j/f$a;

    .line 77
    invoke-interface {v0}, Lcom/mnt/impl/j/f$a;->a()V

    goto :goto_0

    .line 80
    :cond_0
    return-void
.end method
