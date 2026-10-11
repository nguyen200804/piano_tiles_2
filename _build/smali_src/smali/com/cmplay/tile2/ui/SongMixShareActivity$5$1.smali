.class Lcom/cmplay/tile2/ui/SongMixShareActivity$5$1;
.super Ljava/lang/Object;
.source "SongMixShareActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/tile2/ui/SongMixShareActivity$5;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/cmplay/tile2/ui/SongMixShareActivity$5;


# direct methods
.method constructor <init>(Lcom/cmplay/tile2/ui/SongMixShareActivity$5;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 237
    iput-object p1, p0, Lcom/cmplay/tile2/ui/SongMixShareActivity$5$1;->b:Lcom/cmplay/tile2/ui/SongMixShareActivity$5;

    iput-object p2, p0, Lcom/cmplay/tile2/ui/SongMixShareActivity$5$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 241
    iget-object v0, p0, Lcom/cmplay/tile2/ui/SongMixShareActivity$5$1;->b:Lcom/cmplay/tile2/ui/SongMixShareActivity$5;

    iget-object v0, v0, Lcom/cmplay/tile2/ui/SongMixShareActivity$5;->a:Lcom/cmplay/tile2/ui/SongMixShareActivity;

    invoke-static {v0}, Lcom/cmplay/tile2/ui/SongMixShareActivity;->e(Lcom/cmplay/tile2/ui/SongMixShareActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 242
    iget-object v0, p0, Lcom/cmplay/tile2/ui/SongMixShareActivity$5$1;->b:Lcom/cmplay/tile2/ui/SongMixShareActivity$5;

    iget-object v0, v0, Lcom/cmplay/tile2/ui/SongMixShareActivity$5;->a:Lcom/cmplay/tile2/ui/SongMixShareActivity;

    invoke-static {v0}, Lcom/cmplay/tile2/ui/SongMixShareActivity;->f(Lcom/cmplay/tile2/ui/SongMixShareActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 243
    invoke-static {}, Lcom/cmplay/h/f;->b()Lcom/cmplay/h/f;

    move-result-object v0

    iget-object v1, p0, Lcom/cmplay/tile2/ui/SongMixShareActivity$5$1;->b:Lcom/cmplay/tile2/ui/SongMixShareActivity$5;

    iget-object v1, v1, Lcom/cmplay/tile2/ui/SongMixShareActivity$5;->a:Lcom/cmplay/tile2/ui/SongMixShareActivity;

    iget-object v4, p0, Lcom/cmplay/tile2/ui/SongMixShareActivity$5$1;->a:Ljava/lang/String;

    const/4 v5, 0x2

    invoke-virtual/range {v0 .. v5}, Lcom/cmplay/h/f;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 245
    invoke-static {}, Lcom/cmplay/h/b;->a()Lcom/cmplay/h/b;

    move-result-object v0

    const-string v1, "clk_share_btn_h5_pg"

    invoke-virtual {v0, v1}, Lcom/cmplay/h/b;->a(Ljava/lang/String;)V

    .line 246
    return-void
.end method
