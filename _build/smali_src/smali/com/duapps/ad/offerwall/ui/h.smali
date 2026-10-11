.class public Lcom/duapps/ad/offerwall/ui/h;
.super Landroid/support/v4/app/Fragment;
.source "TabFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duapps/ad/offerwall/ui/h$a;
    }
.end annotation


# instance fields
.field protected a:I

.field b:Z

.field protected c:Lcom/duapps/ad/offerwall/ui/h$a;

.field protected d:Landroid/content/Context;

.field protected e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/duapps/ad/offerwall/ui/h;->b:Z

    .line 14
    const/4 v0, -0x1

    iput v0, p0, Lcom/duapps/ad/offerwall/ui/h;->e:I

    .line 16
    return-void
.end method


# virtual methods
.method public b(Z)V
    .locals 0

    .prologue
    .line 36
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 22
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 23
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/duapps/ad/offerwall/ui/h;->d:Landroid/content/Context;

    .line 24
    check-cast p1, Lcom/duapps/ad/offerwall/ui/h$a;

    iput-object p1, p0, Lcom/duapps/ad/offerwall/ui/h;->c:Lcom/duapps/ad/offerwall/ui/h$a;

    .line 26
    invoke-virtual {p0}, Lcom/duapps/ad/offerwall/ui/h;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "pid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/duapps/ad/offerwall/ui/h;->a:I

    .line 27
    invoke-virtual {p0}, Lcom/duapps/ad/offerwall/ui/h;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "pos"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/duapps/ad/offerwall/ui/h;->e:I

    .line 28
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 48
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 49
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/h;->c:Lcom/duapps/ad/offerwall/ui/h$a;

    invoke-interface {v0}, Lcom/duapps/ad/offerwall/ui/h$a;->a()I

    move-result v0

    iget v1, p0, Lcom/duapps/ad/offerwall/ui/h;->e:I

    if-ne v0, v1, :cond_0

    .line 50
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/duapps/ad/offerwall/ui/h;->b(Z)V

    .line 52
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 40
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 41
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/h;->c:Lcom/duapps/ad/offerwall/ui/h$a;

    invoke-interface {v0}, Lcom/duapps/ad/offerwall/ui/h$a;->a()I

    move-result v0

    iget v1, p0, Lcom/duapps/ad/offerwall/ui/h;->e:I

    if-ne v0, v1, :cond_0

    .line 42
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/duapps/ad/offerwall/ui/h;->b(Z)V

    .line 44
    :cond_0
    return-void
.end method
