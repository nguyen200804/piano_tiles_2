.class Lcom/cmplay/tile2/ui/a$2;
.super Ljava/lang/Object;
.source "GameProblemLayout.java"

# interfaces
.implements Landroid/text/Html$ImageGetter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/tile2/ui/a;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmplay/tile2/ui/a;


# direct methods
.method constructor <init>(Lcom/cmplay/tile2/ui/a;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/cmplay/tile2/ui/a$2;->a:Lcom/cmplay/tile2/ui/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 143
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 144
    iget-object v1, p0, Lcom/cmplay/tile2/ui/a$2;->a:Lcom/cmplay/tile2/ui/a;

    invoke-virtual {v1}, Lcom/cmplay/tile2/ui/a;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 145
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 146
    return-object v0
.end method
