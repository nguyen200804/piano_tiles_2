.class Lcom/duapps/ad/stats/d$3;
.super Ljava/lang/Object;
.source "ToolClickHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duapps/ad/stats/d;->b(Lcom/duapps/ad/stats/f;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duapps/ad/stats/f;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/duapps/ad/stats/d;


# direct methods
.method constructor <init>(Lcom/duapps/ad/stats/d;Lcom/duapps/ad/stats/f;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 993
    iput-object p1, p0, Lcom/duapps/ad/stats/d$3;->c:Lcom/duapps/ad/stats/d;

    iput-object p2, p0, Lcom/duapps/ad/stats/d$3;->a:Lcom/duapps/ad/stats/f;

    iput-object p3, p0, Lcom/duapps/ad/stats/d$3;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 996
    iget-object v0, p0, Lcom/duapps/ad/stats/d$3;->c:Lcom/duapps/ad/stats/d;

    iget-object v1, p0, Lcom/duapps/ad/stats/d$3;->a:Lcom/duapps/ad/stats/f;

    iget-object v2, p0, Lcom/duapps/ad/stats/d$3;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/duapps/ad/stats/d;->c(Lcom/duapps/ad/stats/f;Ljava/lang/String;)V

    .line 997
    return-void
.end method
