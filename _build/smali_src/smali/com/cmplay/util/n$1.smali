.class final Lcom/cmplay/util/n$1;
.super Ljava/lang/Object;
.source "MarketUtil.java"

# interfaces
.implements Lcom/cmplay/util/w$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/util/n;->a(Landroid/content/Context;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/cmplay/util/n$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 36
    invoke-static {}, Lcom/cmplay/tile2/ui/view/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    invoke-static {}, Lcom/cmplay/tile2/ui/view/a;->b()V

    .line 38
    iget-object v0, p0, Lcom/cmplay/util/n$1;->a:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/cmplay/util/n;->a(Landroid/content/Context;Ljava/lang/String;Lcom/cmplay/util/n$a;)V

    .line 44
    :cond_0
    return-void
.end method
