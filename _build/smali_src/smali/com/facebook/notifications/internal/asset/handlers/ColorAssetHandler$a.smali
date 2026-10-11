.class Lcom/facebook/notifications/internal/asset/handlers/ColorAssetHandler$a;
.super Landroid/widget/FrameLayout;
.source "ColorAssetHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/notifications/internal/asset/handlers/ColorAssetHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .prologue
    .line 149
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 150
    invoke-virtual {p0, p2}, Lcom/facebook/notifications/internal/asset/handlers/ColorAssetHandler$a;->setBackgroundColor(I)V

    .line 151
    return-void
.end method
