.class Lcom/cmplay/internalpush/ui/InsertScreenActivity$1;
.super Ljava/lang/Object;
.source "InsertScreenActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/internalpush/ui/InsertScreenActivity;->a(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmplay/internalpush/ui/InsertScreenActivity;


# direct methods
.method constructor <init>(Lcom/cmplay/internalpush/ui/InsertScreenActivity;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcom/cmplay/internalpush/ui/InsertScreenActivity$1;->a:Lcom/cmplay/internalpush/ui/InsertScreenActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 10

    .prologue
    const/4 v3, 0x1

    .line 143
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/InsertScreenActivity$1;->a:Lcom/cmplay/internalpush/ui/InsertScreenActivity;

    invoke-static {v0}, Lcom/cmplay/internalpush/ui/InsertScreenActivity;->a(Lcom/cmplay/internalpush/ui/InsertScreenActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 144
    const v5, 0x3f4a3d71    # 0.79f

    .line 145
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/InsertScreenActivity$1;->a:Lcom/cmplay/internalpush/ui/InsertScreenActivity;

    invoke-static {v0}, Lcom/cmplay/internalpush/ui/InsertScreenActivity;->b(Lcom/cmplay/internalpush/ui/InsertScreenActivity;)Lcom/cmplay/internalpush/data/f;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/InsertScreenActivity$1;->a:Lcom/cmplay/internalpush/ui/InsertScreenActivity;

    invoke-static {v0}, Lcom/cmplay/internalpush/ui/InsertScreenActivity;->b(Lcom/cmplay/internalpush/ui/InsertScreenActivity;)Lcom/cmplay/internalpush/data/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmplay/internalpush/data/f;->q()D

    move-result-wide v0

    double-to-float v5, v0

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/InsertScreenActivity$1;->a:Lcom/cmplay/internalpush/ui/InsertScreenActivity;

    iget-object v1, p0, Lcom/cmplay/internalpush/ui/InsertScreenActivity$1;->a:Lcom/cmplay/internalpush/ui/InsertScreenActivity;

    invoke-static {v1}, Lcom/cmplay/internalpush/ui/InsertScreenActivity;->a(Lcom/cmplay/internalpush/ui/InsertScreenActivity;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/cmplay/internalpush/ui/InsertScreenActivity$1;->a:Lcom/cmplay/internalpush/ui/InsertScreenActivity;

    invoke-static {v2}, Lcom/cmplay/internalpush/ui/InsertScreenActivity;->c(Lcom/cmplay/internalpush/ui/InsertScreenActivity;)Landroid/widget/ImageView;

    move-result-object v2

    const/4 v4, 0x2

    invoke-virtual/range {v0 .. v5}, Lcom/cmplay/internalpush/ui/InsertScreenActivity;->a(Landroid/widget/ImageView;Landroid/widget/ImageView;ZIF)V

    .line 149
    iget-object v4, p0, Lcom/cmplay/internalpush/ui/InsertScreenActivity$1;->a:Lcom/cmplay/internalpush/ui/InsertScreenActivity;

    iget-object v0, p0, Lcom/cmplay/internalpush/ui/InsertScreenActivity$1;->a:Lcom/cmplay/internalpush/ui/InsertScreenActivity;

    invoke-static {v0}, Lcom/cmplay/internalpush/ui/InsertScreenActivity;->a(Lcom/cmplay/internalpush/ui/InsertScreenActivity;)Landroid/widget/ImageView;

    move-result-object v5

    iget-object v0, p0, Lcom/cmplay/internalpush/ui/InsertScreenActivity$1;->a:Lcom/cmplay/internalpush/ui/InsertScreenActivity;

    invoke-static {v0}, Lcom/cmplay/internalpush/ui/InsertScreenActivity;->d(Lcom/cmplay/internalpush/ui/InsertScreenActivity;)Landroid/widget/ImageView;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v9, 0x0

    move v8, v3

    invoke-virtual/range {v4 .. v9}, Lcom/cmplay/internalpush/ui/InsertScreenActivity;->a(Landroid/widget/ImageView;Landroid/widget/ImageView;ZIF)V

    .line 150
    return-void
.end method
