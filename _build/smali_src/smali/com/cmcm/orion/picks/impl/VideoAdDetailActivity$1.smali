.class final Lcom/cmcm/orion/picks/impl/VideoAdDetailActivity$1;
.super Ljava/lang/Object;
.source "VideoAdDetailActivity.java"

# interfaces
.implements Lcom/cmcm/orion/picks/impl/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmcm/orion/picks/impl/VideoAdDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmcm/orion/picks/impl/VideoAdDetailActivity;


# direct methods
.method constructor <init>(Lcom/cmcm/orion/picks/impl/VideoAdDetailActivity;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lcom/cmcm/orion/picks/impl/VideoAdDetailActivity$1;->a:Lcom/cmcm/orion/picks/impl/VideoAdDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/cmcm/orion/adsdk/d;)V
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/VideoAdDetailActivity$1;->a:Lcom/cmcm/orion/picks/impl/VideoAdDetailActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/cmcm/orion/picks/impl/VideoAdDetailActivity;->a(Lcom/cmcm/orion/picks/impl/VideoAdDetailActivity;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    .line 152
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    .prologue
    .line 139
    :try_start_0
    invoke-static {p2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 140
    if-eqz v0, :cond_0

    .line 141
    iget-object v1, p0, Lcom/cmcm/orion/picks/impl/VideoAdDetailActivity$1;->a:Lcom/cmcm/orion/picks/impl/VideoAdDetailActivity;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v1, v2}, Lcom/cmcm/orion/picks/impl/VideoAdDetailActivity;->a(Lcom/cmcm/orion/picks/impl/VideoAdDetailActivity;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    .line 147
    :goto_0
    return-void

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/VideoAdDetailActivity$1;->a:Lcom/cmcm/orion/picks/impl/VideoAdDetailActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/cmcm/orion/picks/impl/VideoAdDetailActivity;->a(Lcom/cmcm/orion/picks/impl/VideoAdDetailActivity;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 147
    :catch_0
    move-exception v0

    goto :goto_0
.end method
