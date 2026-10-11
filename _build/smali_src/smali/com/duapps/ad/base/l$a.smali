.class Lcom/duapps/ad/base/l$a;
.super Ljava/lang/Object;
.source "PreParseCacheParser.java"

# interfaces
.implements Lcom/duapps/ad/base/i$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duapps/ad/base/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/duapps/ad/base/l;


# direct methods
.method private constructor <init>(Lcom/duapps/ad/base/l;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/duapps/ad/base/l$a;->a:Lcom/duapps/ad/base/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/duapps/ad/base/l;Lcom/duapps/ad/base/l$1;)V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/duapps/ad/base/l$a;-><init>(Lcom/duapps/ad/base/l;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/duapps/ad/entity/AdData;IIJ)V
    .locals 6

    .prologue
    .line 103
    iget-object v0, p0, Lcom/duapps/ad/base/l$a;->a:Lcom/duapps/ad/base/l;

    invoke-static {v0}, Lcom/duapps/ad/base/l;->a(Lcom/duapps/ad/base/l;)Landroid/content/Context;

    move-result-object v0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Lcom/duapps/ad/stats/h;->b(Landroid/content/Context;Lcom/duapps/ad/entity/AdData;IIJ)V

    .line 104
    return-void
.end method

.method public a(Lcom/duapps/ad/entity/AdData;Lcom/duapps/ad/base/j;)V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/duapps/ad/base/l$a;->a:Lcom/duapps/ad/base/l;

    invoke-static {v0}, Lcom/duapps/ad/base/l;->a(Lcom/duapps/ad/base/l;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/duapps/ad/stats/i;->a(Landroid/content/Context;)Lcom/duapps/ad/stats/i;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/duapps/ad/stats/i;->b(Lcom/duapps/ad/base/j;)V

    .line 109
    return-void
.end method

.method public b(Lcom/duapps/ad/entity/AdData;Lcom/duapps/ad/base/j;)V
    .locals 4

    .prologue
    .line 113
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "action_notify_preparse_cache_result"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 118
    const-string v1, "ad_id"

    iget-wide v2, p1, Lcom/duapps/ad/entity/AdData;->b:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 119
    const-string v1, "ad_pkgname"

    iget-object v2, p1, Lcom/duapps/ad/entity/AdData;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    const-string v1, "parse_result_type"

    iget v2, p2, Lcom/duapps/ad/base/j;->c:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 121
    iget-object v1, p0, Lcom/duapps/ad/base/l$a;->a:Lcom/duapps/ad/base/l;

    invoke-static {v1}, Lcom/duapps/ad/base/l;->a(Lcom/duapps/ad/base/l;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto :goto_0
.end method
