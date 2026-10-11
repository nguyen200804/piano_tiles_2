.class Lcom/cmplay/util/s$31;
.super Ljava/lang/Object;
.source "NativeInterfaceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/util/s;->aX()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/cmplay/util/s;


# direct methods
.method constructor <init>(Lcom/cmplay/util/s;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 2562
    iput-object p1, p0, Lcom/cmplay/util/s$31;->b:Lcom/cmplay/util/s;

    iput-object p2, p0, Lcom/cmplay/util/s$31;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 2566
    iget-object v0, p0, Lcom/cmplay/util/s$31;->a:Landroid/app/Activity;

    check-cast v0, Lcom/cmplay/tile2/ui/AppActivity;

    invoke-virtual {v0}, Lcom/cmplay/tile2/ui/AppActivity;->a()V

    .line 2567
    return-void
.end method
