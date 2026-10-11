.class Lcom/cmplay/b/b$5;
.super Ljava/lang/Object;
.source "AppCardHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/b/b;->b(Lcom/cmplay/b/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmplay/b/a;

.field final synthetic b:Lcom/cmplay/b/b;


# direct methods
.method constructor <init>(Lcom/cmplay/b/b;Lcom/cmplay/b/a;)V
    .locals 0

    .prologue
    .line 315
    iput-object p1, p0, Lcom/cmplay/b/b$5;->b:Lcom/cmplay/b/b;

    iput-object p2, p0, Lcom/cmplay/b/b$5;->a:Lcom/cmplay/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 318
    sget-object v0, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/cmplay/b/b$5;->a:Lcom/cmplay/b/a;

    iget v1, v1, Lcom/cmplay/b/a;->d:I

    iget-object v2, p0, Lcom/cmplay/b/b$5;->a:Lcom/cmplay/b/a;

    iget v2, v2, Lcom/cmplay/b/a;->c:I

    invoke-static {v0, v1, v2}, Lcom/cmplay/tile2/ui/TipsGetGiftSuccedDialog;->a(Landroid/content/Context;II)V

    .line 319
    return-void
.end method
