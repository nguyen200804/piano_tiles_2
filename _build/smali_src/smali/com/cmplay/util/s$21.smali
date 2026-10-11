.class Lcom/cmplay/util/s$21;
.super Ljava/lang/Object;
.source "NativeInterfaceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/util/s;->ad()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmplay/util/s;


# direct methods
.method constructor <init>(Lcom/cmplay/util/s;)V
    .locals 0

    .prologue
    .line 1737
    iput-object p1, p0, Lcom/cmplay/util/s$21;->a:Lcom/cmplay/util/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1741
    :try_start_0
    invoke-static {}, Lcom/cmplay/tile2/ui/AppActivity;->c()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/cmplay/tile2/ui/AppActivity;

    .line 1742
    if-eqz v0, :cond_0

    .line 1743
    invoke-virtual {v0}, Lcom/cmplay/tile2/ui/AppActivity;->e()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1747
    :cond_0
    :goto_0
    return-void

    .line 1745
    :catch_0
    move-exception v0

    goto :goto_0
.end method
