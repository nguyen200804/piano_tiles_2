.class public Lcom/cmplay/webview/d/b;
.super Ljava/lang/Object;
.source "GamePageJumpHelper.java"


# direct methods
.method public static a(ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 17
    invoke-static {}, Lcom/cmplay/tile2/GameApp;->g()Lcom/cmplay/tile2/GameApp;

    move-result-object v0

    new-instance v1, Lcom/cmplay/webview/d/b$1;

    invoke-direct {v1, p0, p1}, Lcom/cmplay/webview/d/b$1;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/cmplay/tile2/GameApp;->a(Ljava/lang/Runnable;)V

    .line 23
    return-void
.end method

.method static synthetic b(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 9
    invoke-static {p0, p1}, Lcom/cmplay/webview/d/b;->c(ILjava/lang/String;)V

    return-void
.end method

.method private static c(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 26
    packed-switch p0, :pswitch_data_0

    .line 33
    :goto_0
    return-void

    .line 28
    :pswitch_0
    invoke-static {}, Lcom/cmplay/util/NativeUtil;->touchGhost()Z

    goto :goto_0

    .line 26
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
