.class Lcom/cmplay/tile2/ui/SongMixShareActivity$1;
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
    .line 99
    iput-object p1, p0, Lcom/cmplay/tile2/ui/SongMixShareActivity$1;->a:Lcom/cmplay/tile2/ui/SongMixShareActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/cmplay/tile2/ui/SongMixShareActivity$1;->a:Lcom/cmplay/tile2/ui/SongMixShareActivity;

    invoke-static {v0}, Lcom/cmplay/tile2/ui/SongMixShareActivity;->a(Lcom/cmplay/tile2/ui/SongMixShareActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/cmplay/tile2/ui/SongMixShareActivity$1;->a:Lcom/cmplay/tile2/ui/SongMixShareActivity;

    invoke-static {v0}, Lcom/cmplay/tile2/ui/SongMixShareActivity;->b(Lcom/cmplay/tile2/ui/SongMixShareActivity;)V

    .line 105
    :cond_0
    return-void
.end method
