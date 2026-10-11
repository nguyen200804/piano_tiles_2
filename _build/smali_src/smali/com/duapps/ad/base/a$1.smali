.class Lcom/duapps/ad/base/a$1;
.super Ljava/lang/Object;
.source "DuAdNetwork.java"

# interfaces
.implements Lcom/duapps/ad/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duapps/ad/base/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duapps/ad/base/a;


# direct methods
.method constructor <init>(Lcom/duapps/ad/base/a;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/duapps/ad/base/a$1;->a:Lcom/duapps/ad/base/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 94
    iget-object v0, p0, Lcom/duapps/ad/base/a$1;->a:Lcom/duapps/ad/base/a;

    invoke-static {v0}, Lcom/duapps/ad/base/a;->a(Lcom/duapps/ad/base/a;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/duapps/ad/c/b/c;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 95
    iget-object v1, p0, Lcom/duapps/ad/base/a$1;->a:Lcom/duapps/ad/base/a;

    invoke-static {v1}, Lcom/duapps/ad/base/a;->a(Lcom/duapps/ad/base/a;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/duapps/ad/base/m;->s(Landroid/content/Context;)Z

    move-result v1

    .line 96
    iget-object v2, p0, Lcom/duapps/ad/base/a$1;->a:Lcom/duapps/ad/base/a;

    invoke-static {v2}, Lcom/duapps/ad/base/a;->a(Lcom/duapps/ad/base/a;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p2, v0, p1, v1}, Lcom/duapps/ad/stats/c;->a(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;Z)V

    .line 97
    if-eqz v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/duapps/ad/base/a$1;->a:Lcom/duapps/ad/base/a;

    invoke-static {v0}, Lcom/duapps/ad/base/a;->a(Lcom/duapps/ad/base/a;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/duapps/ad/base/a;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 100
    :cond_0
    return-void
.end method
