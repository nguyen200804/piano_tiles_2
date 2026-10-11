.class Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity$2;
.super Ljava/lang/Object;
.source "IncentiveVideoPlayActivity.java"

# interfaces
.implements Lcom/cmplay/base/util/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;


# direct methods
.method constructor <init>(Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;)V
    .locals 0

    .prologue
    .line 233
    iput-object p1, p0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity$2;->a:Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 242
    const-string v0, "internal_push_VideoPlay"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "preloadImageForLandingPage  \u52a0\u8f7d\u80cc\u666f\u56fe\u7247\u6210\u529f   bitmap:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    if-eqz p1, :cond_0

    .line 244
    iget-object v0, p0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity$2;->a:Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v0, v1}, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->a(Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    .line 248
    :goto_0
    return-void

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity$2;->a:Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->a(Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 236
    const-string v0, "internal_push_VideoPlay"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "preloadImageForLandingPage  \u52a0\u8f7d\u80cc\u666f\u56fe\u7247\u5931\u8d25  errorCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    iget-object v0, p0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity$2;->a:Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->a(Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    .line 238
    return-void
.end method
