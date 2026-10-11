.class Lcom/cmplay/webview/c/a$4;
.super Ljava/util/TimerTask;
.source "SoundManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/webview/c/a;->a(Ljava/lang/String;Ljava/lang/String;FI)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/cmplay/webview/c/a;


# direct methods
.method constructor <init>(Lcom/cmplay/webview/c/a;I)V
    .locals 0

    .prologue
    .line 264
    iput-object p1, p0, Lcom/cmplay/webview/c/a$4;->b:Lcom/cmplay/webview/c/a;

    iput p2, p0, Lcom/cmplay/webview/c/a$4;->a:I

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 267
    iget-object v0, p0, Lcom/cmplay/webview/c/a$4;->b:Lcom/cmplay/webview/c/a;

    invoke-static {v0}, Lcom/cmplay/webview/c/a;->g(Lcom/cmplay/webview/c/a;)Landroid/media/SoundPool;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/cmplay/webview/c/a$4;->b:Lcom/cmplay/webview/c/a;

    invoke-static {v0}, Lcom/cmplay/webview/c/a;->g(Lcom/cmplay/webview/c/a;)Landroid/media/SoundPool;

    move-result-object v0

    iget v1, p0, Lcom/cmplay/webview/c/a$4;->a:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->stop(I)V

    .line 270
    :cond_0
    return-void
.end method
