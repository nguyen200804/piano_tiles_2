.class Lcom/cmplay/util/s$46;
.super Ljava/lang/Object;
.source "NativeInterfaceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/util/s;->f(I)V
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
    .line 975
    iput-object p1, p0, Lcom/cmplay/util/s$46;->b:Lcom/cmplay/util/s;

    iput p2, p0, Lcom/cmplay/util/s$46;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 979
    iget v0, p0, Lcom/cmplay/util/s$46;->a:I

    invoke-static {v0}, Lcom/cmplay/util/NativeUtil;->payCallback(I)V

    .line 980
    return-void
.end method
