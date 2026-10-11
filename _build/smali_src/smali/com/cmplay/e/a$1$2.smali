.class Lcom/cmplay/e/a$1$2;
.super Ljava/lang/Object;
.source "MessageBoxImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/e/a$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmplay/e/a$1;


# direct methods
.method constructor <init>(Lcom/cmplay/e/a$1;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/cmplay/e/a$1$2;->a:Lcom/cmplay/e/a$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/cmplay/e/a$1$2;->a:Lcom/cmplay/e/a$1;

    iget-object v0, v0, Lcom/cmplay/e/a$1;->c:Lcom/cmplay/e/a$a;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/cmplay/e/a$a;->a(Landroid/graphics/Bitmap;)V

    .line 107
    return-void
.end method
