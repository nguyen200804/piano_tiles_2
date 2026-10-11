.class Lcom/facebook/notifications/internal/view/c$1;
.super Landroid/widget/RelativeLayout$LayoutParams;
.source "BodyView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/notifications/internal/view/c;-><init>(Landroid/content/Context;Lcom/facebook/notifications/internal/asset/a;Lcom/facebook/notifications/internal/content/a;Lcom/facebook/notifications/internal/configuration/CardConfiguration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/notifications/internal/view/c;


# direct methods
.method constructor <init>(Lcom/facebook/notifications/internal/view/c;II)V
    .locals 2

    .prologue
    const v1, 0x2facb6c8

    .line 81
    iput-object p1, p0, Lcom/facebook/notifications/internal/view/c$1;->a:Lcom/facebook/notifications/internal/view/c;

    invoke-direct {p0, p2, p3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 82
    const/4 v0, 0x6

    invoke-virtual {p0, v0, v1}, Lcom/facebook/notifications/internal/view/c$1;->addRule(II)V

    .line 83
    const/16 v0, 0x8

    invoke-virtual {p0, v0, v1}, Lcom/facebook/notifications/internal/view/c$1;->addRule(II)V

    .line 84
    return-void
.end method
