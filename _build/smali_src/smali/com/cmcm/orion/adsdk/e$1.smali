.class final Lcom/cmcm/orion/adsdk/e$1;
.super Ljava/lang/Object;
.source "OrionSdk.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmcm/orion/adsdk/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/cmcm/orion/adsdk/e$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/cmcm/orion/adsdk/e$1;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/cmcm/orion/adsdk/e$1;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/cmcm/orion/picks/a/a/h;->h(Ljava/lang/String;)V

    .line 69
    :cond_0
    invoke-static {}, Lcom/cmcm/orion/adsdk/e;->h()V

    .line 70
    invoke-static {}, Lcom/cmcm/orion/adsdk/e;->i()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/cmcm/orion/utils/internal/ReceiverUtils;->a(Landroid/content/Context;)V

    .line 71
    invoke-static {}, Lcom/cmcm/orion/utils/internal/a;->a()Lcom/cmcm/orion/utils/internal/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmcm/orion/utils/internal/a;->b()V

    .line 72
    return-void
.end method
