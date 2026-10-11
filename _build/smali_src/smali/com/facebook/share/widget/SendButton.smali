.class public final Lcom/facebook/share/widget/SendButton;
.super Lcom/facebook/share/widget/ShareButtonBase;
.source "SendButton.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 45
    const/4 v3, 0x0

    const-string v4, "fb_send_button_create"

    const-string v5, "fb_send_button_did_tap"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/share/widget/ShareButtonBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILjava/lang/String;Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 50
    const-string v4, "fb_send_button_create"

    const-string v5, "fb_send_button_did_tap"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/facebook/share/widget/ShareButtonBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILjava/lang/String;Ljava/lang/String;)V

    .line 56
    return-void
.end method


# virtual methods
.method protected a()I
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/facebook/internal/e$b;->c:Lcom/facebook/internal/e$b;

    invoke-virtual {v0}, Lcom/facebook/internal/e$b;->a()I

    move-result v0

    return v0
.end method

.method protected f()I
    .locals 1

    .prologue
    .line 60
    sget v0, Lcom/facebook/R$style;->com_facebook_button_send:I

    return v0
.end method

.method protected g()Lcom/facebook/internal/h;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/internal/h",
            "<",
            "Lcom/facebook/share/model/ShareContent;",
            "Lcom/facebook/share/a$a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/facebook/share/widget/SendButton;->b()Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 72
    new-instance v0, Lcom/facebook/share/widget/c;

    invoke-virtual {p0}, Lcom/facebook/share/widget/SendButton;->b()Landroid/support/v4/app/Fragment;

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/share/widget/SendButton;->d()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/facebook/share/widget/c;-><init>(Landroid/support/v4/app/Fragment;I)V

    .line 78
    :goto_0
    return-object v0

    .line 73
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/share/widget/SendButton;->c()Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 74
    new-instance v0, Lcom/facebook/share/widget/c;

    invoke-virtual {p0}, Lcom/facebook/share/widget/SendButton;->c()Landroid/app/Fragment;

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/share/widget/SendButton;->d()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/facebook/share/widget/c;-><init>(Landroid/app/Fragment;I)V

    goto :goto_0

    .line 76
    :cond_1
    new-instance v0, Lcom/facebook/share/widget/c;

    invoke-virtual {p0}, Lcom/facebook/share/widget/SendButton;->e()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/share/widget/SendButton;->d()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/facebook/share/widget/c;-><init>(Landroid/app/Activity;I)V

    goto :goto_0
.end method
