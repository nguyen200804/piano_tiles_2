.class Lcom/cmplay/util/s$29;
.super Ljava/lang/Object;
.source "NativeInterfaceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/util/s;->x(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/cmplay/util/s;


# direct methods
.method constructor <init>(Lcom/cmplay/util/s;I)V
    .locals 0

    .prologue
    .line 2406
    iput-object p1, p0, Lcom/cmplay/util/s$29;->b:Lcom/cmplay/util/s;

    iput p2, p0, Lcom/cmplay/util/s$29;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 2409
    iget v0, p0, Lcom/cmplay/util/s$29;->a:I

    invoke-static {v0}, Lcom/cmplay/util/NativeUtil;->onUploadDebugInfoRes(I)V

    .line 2410
    return-void
.end method
