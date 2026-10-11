.class Lcom/cmplay/tile2/ui/LoveShareActivity$1;
.super Ljava/lang/Object;
.source "LoveShareActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/tile2/ui/LoveShareActivity;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmplay/tile2/ui/LoveShareActivity;


# direct methods
.method constructor <init>(Lcom/cmplay/tile2/ui/LoveShareActivity;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lcom/cmplay/tile2/ui/LoveShareActivity$1;->a:Lcom/cmplay/tile2/ui/LoveShareActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 188
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 168
    return-void
.end method

.method public onPageSelected(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 172
    if-nez p1, :cond_0

    .line 173
    iget-object v0, p0, Lcom/cmplay/tile2/ui/LoveShareActivity$1;->a:Lcom/cmplay/tile2/ui/LoveShareActivity;

    invoke-static {v0}, Lcom/cmplay/tile2/ui/LoveShareActivity;->a(Lcom/cmplay/tile2/ui/LoveShareActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 178
    :goto_0
    iget-object v0, p0, Lcom/cmplay/tile2/ui/LoveShareActivity$1;->a:Lcom/cmplay/tile2/ui/LoveShareActivity;

    invoke-static {v0}, Lcom/cmplay/tile2/ui/LoveShareActivity;->b(Lcom/cmplay/tile2/ui/LoveShareActivity;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_1

    .line 179
    iget-object v0, p0, Lcom/cmplay/tile2/ui/LoveShareActivity$1;->a:Lcom/cmplay/tile2/ui/LoveShareActivity;

    invoke-static {v0}, Lcom/cmplay/tile2/ui/LoveShareActivity;->c(Lcom/cmplay/tile2/ui/LoveShareActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 183
    :goto_1
    return-void

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/cmplay/tile2/ui/LoveShareActivity$1;->a:Lcom/cmplay/tile2/ui/LoveShareActivity;

    invoke-static {v0}, Lcom/cmplay/tile2/ui/LoveShareActivity;->a(Lcom/cmplay/tile2/ui/LoveShareActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 181
    :cond_1
    iget-object v0, p0, Lcom/cmplay/tile2/ui/LoveShareActivity$1;->a:Lcom/cmplay/tile2/ui/LoveShareActivity;

    invoke-static {v0}, Lcom/cmplay/tile2/ui/LoveShareActivity;->c(Lcom/cmplay/tile2/ui/LoveShareActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method
