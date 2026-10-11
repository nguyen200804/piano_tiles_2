.class final Lcom/cmplay/b/c$1;
.super Ljava/lang/Object;
.source "AppCardImageLoader.java"

# interfaces
.implements Lcom/cmplay/b/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/b/c;->a(Lcom/cmplay/b/a;Ljava/lang/String;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmplay/b/a;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/cmplay/b/a;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/cmplay/b/c$1;->a:Lcom/cmplay/b/a;

    iput-object p2, p0, Lcom/cmplay/b/c$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)V
    .locals 4

    .prologue
    .line 55
    if-eqz p1, :cond_0

    .line 56
    iget-object v0, p0, Lcom/cmplay/b/c$1;->a:Lcom/cmplay/b/a;

    iget-object v0, v0, Lcom/cmplay/b/a;->i:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/cmplay/b/c;->a(Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    const/4 v0, 0x2

    .line 61
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 62
    iget-object v1, p0, Lcom/cmplay/b/c$1;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/cmplay/b/d;->a(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/cmplay/b/c$1;->a:Lcom/cmplay/b/a;

    iget v2, v2, Lcom/cmplay/b/a;->a:I

    iget-object v3, p0, Lcom/cmplay/b/c$1;->a:Lcom/cmplay/b/a;

    iget-object v3, v3, Lcom/cmplay/b/a;->h:Ljava/lang/String;

    invoke-static {v1, v2, v3, v0}, Lcom/cmplay/g/d;->a(IILjava/lang/String;I)V

    .line 64
    :cond_0
    return-void

    .line 59
    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method
