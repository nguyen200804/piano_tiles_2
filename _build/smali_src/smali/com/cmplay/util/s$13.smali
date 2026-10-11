.class Lcom/cmplay/util/s$13;
.super Ljava/lang/Object;
.source "NativeInterfaceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/util/s;->b(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/cmplay/util/s;


# direct methods
.method constructor <init>(Lcom/cmplay/util/s;Z)V
    .locals 0

    .prologue
    .line 1535
    iput-object p1, p0, Lcom/cmplay/util/s$13;->b:Lcom/cmplay/util/s;

    iput-boolean p2, p0, Lcom/cmplay/util/s$13;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1538
    iget-boolean v0, p0, Lcom/cmplay/util/s$13;->a:Z

    invoke-static {v0}, Lcom/cmplay/util/NativeUtil;->notifyWiredHeadState(Z)V

    .line 1539
    return-void
.end method
