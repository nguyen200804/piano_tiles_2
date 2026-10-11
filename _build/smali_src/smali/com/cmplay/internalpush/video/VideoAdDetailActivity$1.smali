.class Lcom/cmplay/internalpush/video/VideoAdDetailActivity$1;
.super Ljava/lang/Object;
.source "VideoAdDetailActivity.java"

# interfaces
.implements Lcom/cmplay/base/util/t;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/internalpush/video/VideoAdDetailActivity;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmplay/internalpush/video/VideoAdDetailActivity;


# direct methods
.method constructor <init>(Lcom/cmplay/internalpush/video/VideoAdDetailActivity;)V
    .locals 0

    .prologue
    .line 283
    iput-object p1, p0, Lcom/cmplay/internalpush/video/VideoAdDetailActivity$1;->a:Lcom/cmplay/internalpush/video/VideoAdDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 2

    .prologue
    .line 287
    iget-object v0, p0, Lcom/cmplay/internalpush/video/VideoAdDetailActivity$1;->a:Lcom/cmplay/internalpush/video/VideoAdDetailActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/cmplay/internalpush/video/VideoAdDetailActivity;->a(Lcom/cmplay/internalpush/video/VideoAdDetailActivity;Z)V

    .line 288
    iget-object v0, p0, Lcom/cmplay/internalpush/video/VideoAdDetailActivity$1;->a:Lcom/cmplay/internalpush/video/VideoAdDetailActivity;

    invoke-virtual {v0}, Lcom/cmplay/internalpush/video/VideoAdDetailActivity;->finish()V

    .line 289
    return-void
.end method
