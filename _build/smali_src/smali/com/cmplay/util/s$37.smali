.class Lcom/cmplay/util/s$37;
.super Ljava/lang/Object;
.source "NativeInterfaceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/util/s;->bH()V
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
    .line 3239
    iput-object p1, p0, Lcom/cmplay/util/s$37;->a:Lcom/cmplay/util/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 3242
    invoke-static {}, Lcom/cmplay/tile2/ui/AppActivity;->c()Landroid/app/Activity;

    move-result-object v0

    .line 3243
    if-eqz v0, :cond_0

    .line 3244
    invoke-static {v0}, Lcom/cmplay/internalpush/b;->a(Landroid/app/Activity;)V

    .line 3246
    :cond_0
    return-void
.end method
