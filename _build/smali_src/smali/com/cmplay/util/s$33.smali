.class Lcom/cmplay/util/s$33;
.super Ljava/lang/Object;
.source "NativeInterfaceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/util/s;->c(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/cmplay/util/s;


# direct methods
.method constructor <init>(Lcom/cmplay/util/s;II)V
    .locals 0

    .prologue
    .line 805
    iput-object p1, p0, Lcom/cmplay/util/s$33;->c:Lcom/cmplay/util/s;

    iput p2, p0, Lcom/cmplay/util/s$33;->a:I

    iput p3, p0, Lcom/cmplay/util/s$33;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 808
    iget v0, p0, Lcom/cmplay/util/s$33;->a:I

    iget v1, p0, Lcom/cmplay/util/s$33;->b:I

    invoke-static {v0, v1}, Lcom/cmplay/util/NativeUtil;->gameRequestCallback(II)V

    .line 809
    return-void
.end method
