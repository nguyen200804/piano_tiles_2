.class Lcom/cmplay/util/s$14;
.super Ljava/lang/Object;
.source "NativeInterfaceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/util/s;->a(IILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/cmplay/util/s;


# direct methods
.method constructor <init>(Lcom/cmplay/util/s;IILjava/lang/String;)V
    .locals 0

    .prologue
    .line 1607
    iput-object p1, p0, Lcom/cmplay/util/s$14;->d:Lcom/cmplay/util/s;

    iput p2, p0, Lcom/cmplay/util/s$14;->a:I

    iput p3, p0, Lcom/cmplay/util/s$14;->b:I

    iput-object p4, p0, Lcom/cmplay/util/s$14;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1610
    const-string v0, "ly"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "platformType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/cmplay/util/s$14;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/cmplay/util/s$14;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1611
    iget v0, p0, Lcom/cmplay/util/s$14;->a:I

    iget v1, p0, Lcom/cmplay/util/s$14;->b:I

    iget-object v2, p0, Lcom/cmplay/util/s$14;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/cmplay/util/NativeUtil;->loginCallback(IILjava/lang/String;)V

    .line 1612
    return-void
.end method
