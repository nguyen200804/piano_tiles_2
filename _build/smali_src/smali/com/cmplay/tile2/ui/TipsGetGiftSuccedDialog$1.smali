.class Lcom/cmplay/tile2/ui/TipsGetGiftSuccedDialog$1;
.super Ljava/lang/Object;
.source "TipsGetGiftSuccedDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/tile2/ui/TipsGetGiftSuccedDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmplay/tile2/ui/TipsGetGiftSuccedDialog;


# direct methods
.method constructor <init>(Lcom/cmplay/tile2/ui/TipsGetGiftSuccedDialog;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/cmplay/tile2/ui/TipsGetGiftSuccedDialog$1;->a:Lcom/cmplay/tile2/ui/TipsGetGiftSuccedDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/cmplay/tile2/ui/TipsGetGiftSuccedDialog$1;->a:Lcom/cmplay/tile2/ui/TipsGetGiftSuccedDialog;

    invoke-virtual {v0}, Lcom/cmplay/tile2/ui/TipsGetGiftSuccedDialog;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/cmplay/tile2/ui/TipsGetGiftSuccedDialog$1;->a:Lcom/cmplay/tile2/ui/TipsGetGiftSuccedDialog;

    invoke-virtual {v0}, Lcom/cmplay/tile2/ui/TipsGetGiftSuccedDialog;->finish()V

    .line 59
    :cond_0
    return-void
.end method
