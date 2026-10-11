.class final Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$9;
.super Ljava/lang/Object;
.source "Cocos2dxWebViewHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2dx/lib/Cocos2dxWebViewHelper;->loadFile(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$filePath:Ljava/lang/String;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 164
    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$9;->val$index:I

    iput-object p2, p0, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$9;->val$filePath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 167
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper;->access$200()Landroid/util/SparseArray;

    move-result-object v0

    iget v1, p0, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$9;->val$index:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2dx/lib/Cocos2dxWebView;

    .line 168
    if-eqz v0, :cond_0

    .line 169
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxWebViewHelper$9;->val$filePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxWebView;->loadUrl(Ljava/lang/String;)V

    .line 171
    :cond_0
    return-void
.end method
