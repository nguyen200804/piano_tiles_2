.class Lcom/cmplay/webview/broadcast/GameBroadcast$1;
.super Ljava/lang/Object;
.source "GameBroadcast.java"

# interfaces
.implements Lcom/cmplay/util/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/webview/broadcast/GameBroadcast;->b(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/cmplay/webview/broadcast/GameBroadcast;


# direct methods
.method constructor <init>(Lcom/cmplay/webview/broadcast/GameBroadcast;II)V
    .locals 0

    .prologue
    .line 267
    iput-object p1, p0, Lcom/cmplay/webview/broadcast/GameBroadcast$1;->c:Lcom/cmplay/webview/broadcast/GameBroadcast;

    iput p2, p0, Lcom/cmplay/webview/broadcast/GameBroadcast$1;->a:I

    iput p3, p0, Lcom/cmplay/webview/broadcast/GameBroadcast$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 270
    const-string v0, "ly"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendGamePrize type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/cmplay/webview/broadcast/GameBroadcast$1;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " num = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/cmplay/webview/broadcast/GameBroadcast$1;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmplay/util/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    iget v0, p0, Lcom/cmplay/webview/broadcast/GameBroadcast$1;->a:I

    iget v1, p0, Lcom/cmplay/webview/broadcast/GameBroadcast$1;->b:I

    invoke-static {v0, v1}, Lcom/cmplay/util/NativeUtil;->halloweenCallback(II)V

    .line 272
    return-void
.end method
