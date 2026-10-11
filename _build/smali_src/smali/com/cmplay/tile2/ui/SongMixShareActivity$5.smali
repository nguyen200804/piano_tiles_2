.class Lcom/cmplay/tile2/ui/SongMixShareActivity$5;
.super Ljava/lang/Object;
.source "SongMixShareActivity.java"

# interfaces
.implements Lcom/cmplay/util/j$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/tile2/ui/SongMixShareActivity;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmplay/tile2/ui/SongMixShareActivity;


# direct methods
.method constructor <init>(Lcom/cmplay/tile2/ui/SongMixShareActivity;)V
    .locals 0

    .prologue
    .line 222
    iput-object p1, p0, Lcom/cmplay/tile2/ui/SongMixShareActivity$5;->a:Lcom/cmplay/tile2/ui/SongMixShareActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 225
    iget-object v1, p0, Lcom/cmplay/tile2/ui/SongMixShareActivity$5;->a:Lcom/cmplay/tile2/ui/SongMixShareActivity;

    invoke-static {v1, v0}, Lcom/cmplay/tile2/ui/SongMixShareActivity;->a(Lcom/cmplay/tile2/ui/SongMixShareActivity;Z)Z

    .line 227
    const/4 v1, 0x0

    .line 228
    invoke-static {}, Lcom/cmplay/util/NativeUtil;->isFacebookInstalled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 230
    iget-object v1, p0, Lcom/cmplay/tile2/ui/SongMixShareActivity$5;->a:Lcom/cmplay/tile2/ui/SongMixShareActivity;

    invoke-static {v1}, Lcom/cmplay/tile2/ui/SongMixShareActivity;->e(Lcom/cmplay/tile2/ui/SongMixShareActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/cmplay/tile2/ui/SongMixShareActivity$5;->a:Lcom/cmplay/tile2/ui/SongMixShareActivity;

    invoke-static {v2}, Lcom/cmplay/tile2/ui/SongMixShareActivity;->f(Lcom/cmplay/tile2/ui/SongMixShareActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cmplay/util/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    :goto_0
    const/4 v4, 0x0

    .line 235
    if-eqz v0, :cond_0

    .line 237
    new-instance v0, Lcom/cmplay/tile2/ui/SongMixShareActivity$5$1;

    invoke-direct {v0, p0, v4}, Lcom/cmplay/tile2/ui/SongMixShareActivity$5$1;-><init>(Lcom/cmplay/tile2/ui/SongMixShareActivity$5;Ljava/lang/String;)V

    const-wide/16 v2, 0x7d0

    invoke-static {v0, v2, v3}, Lcom/cmplay/base/util/d;->a(Ljava/lang/Runnable;J)V

    .line 257
    :goto_1
    return-void

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/cmplay/tile2/ui/SongMixShareActivity$5;->a:Lcom/cmplay/tile2/ui/SongMixShareActivity;

    invoke-static {v0}, Lcom/cmplay/tile2/ui/SongMixShareActivity;->e(Lcom/cmplay/tile2/ui/SongMixShareActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 252
    iget-object v0, p0, Lcom/cmplay/tile2/ui/SongMixShareActivity$5;->a:Lcom/cmplay/tile2/ui/SongMixShareActivity;

    invoke-static {v0}, Lcom/cmplay/tile2/ui/SongMixShareActivity;->f(Lcom/cmplay/tile2/ui/SongMixShareActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 253
    invoke-static {}, Lcom/cmplay/h/f;->b()Lcom/cmplay/h/f;

    move-result-object v0

    iget-object v1, p0, Lcom/cmplay/tile2/ui/SongMixShareActivity$5;->a:Lcom/cmplay/tile2/ui/SongMixShareActivity;

    const/4 v5, 0x2

    invoke-virtual/range {v0 .. v5}, Lcom/cmplay/h/f;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 255
    invoke-static {}, Lcom/cmplay/h/b;->a()Lcom/cmplay/h/b;

    move-result-object v0

    const-string v1, "clk_share_btn_h5_pg"

    invoke-virtual {v0, v1}, Lcom/cmplay/h/b;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_0
.end method
