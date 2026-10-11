.class Lcom/cmplay/tile2/ui/SongMixShareActivity$2;
.super Ljava/lang/Object;
.source "SongMixShareActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/tile2/ui/SongMixShareActivity;->b()V
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
    .line 109
    iput-object p1, p0, Lcom/cmplay/tile2/ui/SongMixShareActivity$2;->a:Lcom/cmplay/tile2/ui/SongMixShareActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 112
    invoke-static {}, Lcom/cmplay/h/b;->a()Lcom/cmplay/h/b;

    move-result-object v0

    const-string v1, "clk_quit_chg_cd_cover_pg"

    invoke-virtual {v0, v1}, Lcom/cmplay/h/b;->a(Ljava/lang/String;)V

    .line 113
    const/16 v0, 0x12

    invoke-static {v0}, Lcom/cmplay/h/b;->b(I)I

    move-result v0

    .line 114
    invoke-static {}, Lcom/cmplay/h/f;->b()Lcom/cmplay/h/f;

    move-result-object v1

    const/16 v2, 0x18d3

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/cmplay/h/f;->a(IIII)V

    .line 116
    invoke-static {}, Lcom/cmplay/util/NativeUtil;->onShareH5ViewClosed()V

    .line 117
    iget-object v0, p0, Lcom/cmplay/tile2/ui/SongMixShareActivity$2;->a:Lcom/cmplay/tile2/ui/SongMixShareActivity;

    invoke-virtual {v0}, Lcom/cmplay/tile2/ui/SongMixShareActivity;->finish()V

    .line 118
    return-void
.end method
