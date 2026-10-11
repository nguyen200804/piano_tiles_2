.class Lcom/cmplay/util/s$39;
.super Ljava/lang/Object;
.source "NativeInterfaceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/util/s;->bK()V
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
    .line 3271
    iput-object p1, p0, Lcom/cmplay/util/s$39;->a:Lcom/cmplay/util/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 3274
    invoke-static {}, Lcom/cmplay/tile2/ui/AppActivity;->c()Landroid/app/Activity;

    move-result-object v0

    .line 3275
    if-eqz v0, :cond_0

    .line 3276
    invoke-static {v0}, Lcom/cmplay/internalpush/b;->b(Landroid/app/Activity;)V

    .line 3278
    :cond_0
    return-void
.end method
