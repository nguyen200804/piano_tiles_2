.class final Lcom/cmplay/webview/d/b$1;
.super Ljava/lang/Object;
.source "GamePageJumpHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/webview/d/b;->a(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 17
    iput p1, p0, Lcom/cmplay/webview/d/b$1;->a:I

    iput-object p2, p0, Lcom/cmplay/webview/d/b$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 20
    iget v0, p0, Lcom/cmplay/webview/d/b$1;->a:I

    iget-object v1, p0, Lcom/cmplay/webview/d/b$1;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/cmplay/webview/d/b;->b(ILjava/lang/String;)V

    .line 21
    return-void
.end method
