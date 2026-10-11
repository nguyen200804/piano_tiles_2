.class final Lcom/cmcm/orion/utils/internal/a$9;
.super Landroid/database/ContentObserver;
.source "AppInstallationTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmcm/orion/utils/internal/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmcm/orion/utils/internal/a;


# direct methods
.method constructor <init>(Lcom/cmcm/orion/utils/internal/a;)V
    .locals 1

    .prologue
    .line 927
    iput-object p1, p0, Lcom/cmcm/orion/utils/internal/a$9;->a:Lcom/cmcm/orion/utils/internal/a;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 1
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 930
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 931
    new-instance v0, Lcom/cmcm/orion/utils/internal/a$9$1;

    invoke-direct {v0, p0, p2}, Lcom/cmcm/orion/utils/internal/a$9$1;-><init>(Lcom/cmcm/orion/utils/internal/a$9;Landroid/net/Uri;)V

    invoke-static {v0}, Lcom/cmcm/orion/utils/a;->a(Ljava/lang/Runnable;)V

    .line 937
    return-void
.end method
