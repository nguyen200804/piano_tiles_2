.class Lcom/facebook/notifications/internal/view/a$1;
.super Landroid/widget/RelativeLayout$LayoutParams;
.source "ActionsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/notifications/internal/view/a;-><init>(Landroid/content/Context;Lcom/facebook/notifications/internal/asset/a;Lcom/facebook/notifications/internal/view/a$a;Lcom/facebook/notifications/internal/configuration/CardConfiguration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/notifications/internal/view/a;


# direct methods
.method constructor <init>(Lcom/facebook/notifications/internal/view/a;II)V
    .locals 2

    .prologue
    const v1, 0x7cc9a8c8

    .line 128
    iput-object p1, p0, Lcom/facebook/notifications/internal/view/a$1;->a:Lcom/facebook/notifications/internal/view/a;

    invoke-direct {p0, p2, p3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 129
    const/4 v0, 0x6

    invoke-virtual {p0, v0, v1}, Lcom/facebook/notifications/internal/view/a$1;->addRule(II)V

    .line 130
    const/16 v0, 0x8

    invoke-virtual {p0, v0, v1}, Lcom/facebook/notifications/internal/view/a$1;->addRule(II)V

    .line 131
    return-void
.end method
