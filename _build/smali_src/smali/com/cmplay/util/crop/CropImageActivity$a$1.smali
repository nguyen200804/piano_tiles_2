.class Lcom/cmplay/util/crop/CropImageActivity$a$1;
.super Ljava/lang/Object;
.source "CropImageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/util/crop/CropImageActivity$a;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmplay/util/crop/CropImageActivity$a;


# direct methods
.method constructor <init>(Lcom/cmplay/util/crop/CropImageActivity$a;)V
    .locals 0

    .prologue
    .line 244
    iput-object p1, p0, Lcom/cmplay/util/crop/CropImageActivity$a$1;->a:Lcom/cmplay/util/crop/CropImageActivity$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 246
    iget-object v0, p0, Lcom/cmplay/util/crop/CropImageActivity$a$1;->a:Lcom/cmplay/util/crop/CropImageActivity$a;

    invoke-static {v0}, Lcom/cmplay/util/crop/CropImageActivity$a;->a(Lcom/cmplay/util/crop/CropImageActivity$a;)V

    .line 247
    iget-object v0, p0, Lcom/cmplay/util/crop/CropImageActivity$a$1;->a:Lcom/cmplay/util/crop/CropImageActivity$a;

    iget-object v0, v0, Lcom/cmplay/util/crop/CropImageActivity$a;->a:Lcom/cmplay/util/crop/CropImageActivity;

    invoke-static {v0}, Lcom/cmplay/util/crop/CropImageActivity;->b(Lcom/cmplay/util/crop/CropImageActivity;)Lcom/cmplay/util/crop/CropImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmplay/util/crop/CropImageView;->invalidate()V

    .line 248
    iget-object v0, p0, Lcom/cmplay/util/crop/CropImageActivity$a$1;->a:Lcom/cmplay/util/crop/CropImageActivity$a;

    iget-object v0, v0, Lcom/cmplay/util/crop/CropImageActivity$a;->a:Lcom/cmplay/util/crop/CropImageActivity;

    invoke-static {v0}, Lcom/cmplay/util/crop/CropImageActivity;->b(Lcom/cmplay/util/crop/CropImageActivity;)Lcom/cmplay/util/crop/CropImageView;

    move-result-object v0

    iget-object v0, v0, Lcom/cmplay/util/crop/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 249
    iget-object v0, p0, Lcom/cmplay/util/crop/CropImageActivity$a$1;->a:Lcom/cmplay/util/crop/CropImageActivity$a;

    iget-object v1, v0, Lcom/cmplay/util/crop/CropImageActivity$a;->a:Lcom/cmplay/util/crop/CropImageActivity;

    iget-object v0, p0, Lcom/cmplay/util/crop/CropImageActivity$a$1;->a:Lcom/cmplay/util/crop/CropImageActivity$a;

    iget-object v0, v0, Lcom/cmplay/util/crop/CropImageActivity$a;->a:Lcom/cmplay/util/crop/CropImageActivity;

    invoke-static {v0}, Lcom/cmplay/util/crop/CropImageActivity;->b(Lcom/cmplay/util/crop/CropImageActivity;)Lcom/cmplay/util/crop/CropImageView;

    move-result-object v0

    iget-object v0, v0, Lcom/cmplay/util/crop/CropImageView;->a:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmplay/util/crop/c;

    invoke-static {v1, v0}, Lcom/cmplay/util/crop/CropImageActivity;->a(Lcom/cmplay/util/crop/CropImageActivity;Lcom/cmplay/util/crop/c;)Lcom/cmplay/util/crop/c;

    .line 250
    iget-object v0, p0, Lcom/cmplay/util/crop/CropImageActivity$a$1;->a:Lcom/cmplay/util/crop/CropImageActivity$a;

    iget-object v0, v0, Lcom/cmplay/util/crop/CropImageActivity$a;->a:Lcom/cmplay/util/crop/CropImageActivity;

    invoke-static {v0}, Lcom/cmplay/util/crop/CropImageActivity;->g(Lcom/cmplay/util/crop/CropImageActivity;)Lcom/cmplay/util/crop/c;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/cmplay/util/crop/c;->a(Z)V

    .line 252
    :cond_0
    return-void
.end method
