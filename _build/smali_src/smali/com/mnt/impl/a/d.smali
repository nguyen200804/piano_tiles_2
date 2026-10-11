.class final Lcom/mnt/impl/a/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/mnt/impl/a/b;


# direct methods
.method constructor <init>(Lcom/mnt/impl/a/b;)V
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lcom/mnt/impl/a/d;->a:Lcom/mnt/impl/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/mnt/impl/a/d;->a:Lcom/mnt/impl/a/b;

    .line 1033
    iget-object v0, v0, Lcom/mnt/impl/a;->a:Landroid/app/Activity;

    .line 175
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 176
    invoke-static {}, Lcom/mnt/impl/a/g;->a()Lcom/mnt/impl/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mnt/impl/a/g;->b()Lcom/mnt/MntBuild;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 177
    invoke-static {}, Lcom/mnt/impl/a/g;->a()Lcom/mnt/impl/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mnt/impl/a/g;->b()Lcom/mnt/MntBuild;

    move-result-object v0

    iget-object v0, v0, Lcom/mnt/MntBuild;->mAdListener:Lcom/mnt/IAdListener;

    invoke-interface {v0}, Lcom/mnt/IAdListener;->onAdClosed()V

    .line 179
    :cond_0
    return-void
.end method
