.class final Lcom/cmcm/orion/utils/internal/a$9$1;
.super Ljava/lang/Object;
.source "AppInstallationTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmcm/orion/utils/internal/a$9;->onChange(ZLandroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/net/Uri;

.field final synthetic b:Lcom/cmcm/orion/utils/internal/a$9;


# direct methods
.method constructor <init>(Lcom/cmcm/orion/utils/internal/a$9;Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 931
    iput-object p1, p0, Lcom/cmcm/orion/utils/internal/a$9$1;->b:Lcom/cmcm/orion/utils/internal/a$9;

    iput-object p2, p0, Lcom/cmcm/orion/utils/internal/a$9$1;->a:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 934
    iget-object v0, p0, Lcom/cmcm/orion/utils/internal/a$9$1;->b:Lcom/cmcm/orion/utils/internal/a$9;

    iget-object v0, v0, Lcom/cmcm/orion/utils/internal/a$9;->a:Lcom/cmcm/orion/utils/internal/a;

    iget-object v1, p0, Lcom/cmcm/orion/utils/internal/a$9$1;->a:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/cmcm/orion/utils/internal/a;->a(Lcom/cmcm/orion/utils/internal/a;Landroid/net/Uri;)V

    .line 935
    return-void
.end method
