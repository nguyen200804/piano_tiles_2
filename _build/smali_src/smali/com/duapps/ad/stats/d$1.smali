.class Lcom/duapps/ad/stats/d$1;
.super Ljava/lang/Object;
.source "ToolClickHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duapps/ad/stats/d;->a(Lcom/duapps/ad/stats/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duapps/ad/stats/d;


# direct methods
.method constructor <init>(Lcom/duapps/ad/stats/d;)V
    .locals 0

    .prologue
    .line 802
    iput-object p1, p0, Lcom/duapps/ad/stats/d$1;->a:Lcom/duapps/ad/stats/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 805
    iget-object v0, p0, Lcom/duapps/ad/stats/d$1;->a:Lcom/duapps/ad/stats/d;

    iget-object v1, p0, Lcom/duapps/ad/stats/d$1;->a:Lcom/duapps/ad/stats/d;

    invoke-static {v1}, Lcom/duapps/ad/stats/d;->a(Lcom/duapps/ad/stats/d;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/duapps/ad/base/f;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duapps/ad/stats/d;->a(Lcom/duapps/ad/stats/d;Ljava/lang/String;)Ljava/lang/String;

    .line 806
    return-void
.end method
