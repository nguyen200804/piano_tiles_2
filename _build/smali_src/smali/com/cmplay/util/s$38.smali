.class Lcom/cmplay/util/s$38;
.super Ljava/lang/Object;
.source "NativeInterfaceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/util/s;->bI()V
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
    .line 3253
    iput-object p1, p0, Lcom/cmplay/util/s$38;->a:Lcom/cmplay/util/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 3256
    invoke-static {}, Lcom/cmplay/internalpush/ui/OpenScreenActivity;->b()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/cmplay/internalpush/ui/OpenScreenActivity;

    .line 3257
    if-eqz v0, :cond_0

    .line 3258
    invoke-virtual {v0}, Lcom/cmplay/internalpush/ui/OpenScreenActivity;->a()V

    .line 3260
    :cond_0
    return-void
.end method
