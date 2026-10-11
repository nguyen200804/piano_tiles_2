.class public Lcom/facebook/notifications/internal/view/TextContentLabel;
.super Landroid/widget/TextView;
.source "TextContentLabel.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/notifications/internal/view/TextContentLabel$1;
    }
.end annotation


# instance fields
.field private final a:Lcom/facebook/notifications/internal/content/TextContent;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/notifications/internal/content/TextContent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "cont"    # Lcom/facebook/notifications/internal/content/TextContent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 35
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 36
    iput-object p2, p0, Lcom/facebook/notifications/internal/view/TextContentLabel;->a:Lcom/facebook/notifications/internal/content/TextContent;

    .line 38
    iget-object v0, p0, Lcom/facebook/notifications/internal/view/TextContentLabel;->a:Lcom/facebook/notifications/internal/content/TextContent;

    invoke-virtual {v0}, Lcom/facebook/notifications/internal/content/TextContent;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/notifications/internal/view/TextContentLabel;->setText(Ljava/lang/CharSequence;)V

    .line 39
    iget-object v0, p0, Lcom/facebook/notifications/internal/view/TextContentLabel;->a:Lcom/facebook/notifications/internal/content/TextContent;

    invoke-virtual {v0}, Lcom/facebook/notifications/internal/content/TextContent;->b()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/notifications/internal/view/TextContentLabel;->setTextColor(I)V

    .line 41
    iget-object v0, p0, Lcom/facebook/notifications/internal/view/TextContentLabel;->a:Lcom/facebook/notifications/internal/content/TextContent;

    invoke-virtual {v0}, Lcom/facebook/notifications/internal/content/TextContent;->c()Ljava/lang/String;

    move-result-object v0

    .line 42
    if-nez v0, :cond_0

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 44
    :goto_0
    invoke-virtual {p0, v0}, Lcom/facebook/notifications/internal/view/TextContentLabel;->setTypeface(Landroid/graphics/Typeface;)V

    .line 45
    iget-object v0, p0, Lcom/facebook/notifications/internal/view/TextContentLabel;->a:Lcom/facebook/notifications/internal/content/TextContent;

    invoke-virtual {v0}, Lcom/facebook/notifications/internal/content/TextContent;->d()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/notifications/internal/view/TextContentLabel;->setTextSize(F)V

    .line 47
    sget-object v0, Lcom/facebook/notifications/internal/view/TextContentLabel$1;->a:[I

    iget-object v1, p0, Lcom/facebook/notifications/internal/view/TextContentLabel;->a:Lcom/facebook/notifications/internal/content/TextContent;

    invoke-virtual {v1}, Lcom/facebook/notifications/internal/content/TextContent;->e()Lcom/facebook/notifications/internal/content/TextContent$Alignment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/notifications/internal/content/TextContent$Alignment;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 60
    :goto_1
    return-void

    .line 42
    :cond_0
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_0

    .line 49
    :pswitch_0
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/facebook/notifications/internal/view/TextContentLabel;->setGravity(I)V

    goto :goto_1

    .line 53
    :pswitch_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/notifications/internal/view/TextContentLabel;->setGravity(I)V

    goto :goto_1

    .line 57
    :pswitch_2
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/facebook/notifications/internal/view/TextContentLabel;->setGravity(I)V

    goto :goto_1

    .line 47
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
