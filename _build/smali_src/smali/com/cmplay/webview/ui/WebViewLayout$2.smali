.class Lcom/cmplay/webview/ui/WebViewLayout$2;
.super Ljava/lang/Object;
.source "WebViewLayout.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/webview/ui/WebViewLayout;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmplay/webview/ui/WebViewLayout;


# direct methods
.method constructor <init>(Lcom/cmplay/webview/ui/WebViewLayout;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/cmplay/webview/ui/WebViewLayout$2;->a:Lcom/cmplay/webview/ui/WebViewLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 158
    const/4 v0, 0x0

    return v0
.end method
