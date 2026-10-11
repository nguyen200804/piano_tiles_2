.class abstract Lcom/cmplay/util/crop/d;
.super Landroid/app/Activity;
.source "MonitoredActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmplay/util/crop/d$a;,
        Lcom/cmplay/util/crop/d$b;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cmplay/util/crop/d$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cmplay/util/crop/d;->a:Ljava/util/ArrayList;

    .line 38
    return-void
.end method


# virtual methods
.method public a(Lcom/cmplay/util/crop/d$b;)V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/cmplay/util/crop/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 52
    return-void
.end method

.method public b(Lcom/cmplay/util/crop/d$b;)V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/cmplay/util/crop/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    :goto_0
    return-void

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/cmplay/util/crop/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 56
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    iget-object v0, p0, Lcom/cmplay/util/crop/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmplay/util/crop/d$b;

    .line 58
    invoke-interface {v0, p0}, Lcom/cmplay/util/crop/d$b;->d(Lcom/cmplay/util/crop/d;)V

    goto :goto_0

    .line 60
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 64
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 65
    iget-object v0, p0, Lcom/cmplay/util/crop/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmplay/util/crop/d$b;

    .line 66
    invoke-interface {v0, p0}, Lcom/cmplay/util/crop/d$b;->a(Lcom/cmplay/util/crop/d;)V

    goto :goto_0

    .line 68
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 72
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 73
    iget-object v0, p0, Lcom/cmplay/util/crop/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmplay/util/crop/d$b;

    .line 74
    invoke-interface {v0, p0}, Lcom/cmplay/util/crop/d$b;->c(Lcom/cmplay/util/crop/d;)V

    goto :goto_0

    .line 76
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 80
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 81
    iget-object v0, p0, Lcom/cmplay/util/crop/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmplay/util/crop/d$b;

    .line 82
    invoke-interface {v0, p0}, Lcom/cmplay/util/crop/d$b;->b(Lcom/cmplay/util/crop/d;)V

    goto :goto_0

    .line 84
    :cond_0
    return-void
.end method
