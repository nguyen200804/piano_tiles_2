.class final Lcom/cmcm/orion/picks/impl/d$4;
.super Landroid/os/AsyncTask;
.source "BrandVCViewP.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmcm/orion/picks/impl/d;->a(Lcom/cmcm/orion/picks/b/a;Ljava/lang/String;Lcom/cmcm/orion/picks/a/a/a;Ljava/util/HashMap;Lcom/cmcm/orion/picks/impl/h;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/cmcm/orion/picks/impl/d;


# direct methods
.method constructor <init>(Lcom/cmcm/orion/picks/impl/d;)V
    .locals 0

    .prologue
    .line 228
    iput-object p1, p0, Lcom/cmcm/orion/picks/impl/d$4;->a:Lcom/cmcm/orion/picks/impl/d;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 232
    :try_start_0
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/d$4;->a:Lcom/cmcm/orion/picks/impl/d;

    invoke-static {v0}, Lcom/cmcm/orion/picks/impl/d;->b(Lcom/cmcm/orion/picks/impl/d;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cmcm/orion/picks/impl/i;->d(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 234
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final onPostExecute(Ljava/lang/Object;)V
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 240
    if-eqz p1, :cond_0

    instance-of v0, p1, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 241
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 242
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/d$4;->a:Lcom/cmcm/orion/picks/impl/d;

    invoke-static {v0}, Lcom/cmcm/orion/picks/impl/d;->c(Lcom/cmcm/orion/picks/impl/d;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-direct {v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 247
    :cond_0
    :goto_0
    return-void

    .line 244
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/d$4;->a:Lcom/cmcm/orion/picks/impl/d;

    invoke-static {v0}, Lcom/cmcm/orion/picks/impl/d;->c(Lcom/cmcm/orion/picks/impl/d;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-direct {v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
