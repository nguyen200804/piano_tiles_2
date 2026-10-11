.class final Lcom/cmplay/exitpopup/GameExitPopupActivity$1;
.super Ljava/lang/Object;
.source "GameExitPopupActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/exitpopup/GameExitPopupActivity;->a(Landroid/content/Context;Ljava/lang/String;I[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:I

.field final synthetic d:[Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;I[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/cmplay/exitpopup/GameExitPopupActivity$1;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/cmplay/exitpopup/GameExitPopupActivity$1;->b:Ljava/lang/String;

    iput p3, p0, Lcom/cmplay/exitpopup/GameExitPopupActivity$1;->c:I

    iput-object p4, p0, Lcom/cmplay/exitpopup/GameExitPopupActivity$1;->d:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 63
    const-string v0, "Exit game ReporstService------"

    invoke-static {v0}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;)V

    .line 64
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/cmplay/exitpopup/GameExitPopupActivity$1;->a:Landroid/content/Context;

    const-class v2, Lcom/cmplay/exitpopup/GameExitPopupActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 65
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 66
    const-string v1, "game_exit_data"

    iget-object v2, p0, Lcom/cmplay/exitpopup/GameExitPopupActivity$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    const-string v1, "game_exit_songs_num"

    iget v2, p0, Lcom/cmplay/exitpopup/GameExitPopupActivity$1;->c:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 68
    const-string v1, "game_exit_playedsongs_text"

    iget-object v2, p0, Lcom/cmplay/exitpopup/GameExitPopupActivity$1;->d:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    iget-object v1, p0, Lcom/cmplay/exitpopup/GameExitPopupActivity$1;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 70
    return-void
.end method
