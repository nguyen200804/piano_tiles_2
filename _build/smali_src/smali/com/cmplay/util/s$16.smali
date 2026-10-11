.class Lcom/cmplay/util/s$16;
.super Ljava/lang/Object;
.source "NativeInterfaceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/util/s;->a(ILjava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Z

.field final synthetic d:Lcom/cmplay/util/s;


# direct methods
.method constructor <init>(Lcom/cmplay/util/s;ILjava/lang/String;Z)V
    .locals 0

    .prologue
    .line 1674
    iput-object p1, p0, Lcom/cmplay/util/s$16;->d:Lcom/cmplay/util/s;

    iput p2, p0, Lcom/cmplay/util/s$16;->a:I

    iput-object p3, p0, Lcom/cmplay/util/s$16;->b:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/cmplay/util/s$16;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1677
    iget v0, p0, Lcom/cmplay/util/s$16;->a:I

    iget-object v1, p0, Lcom/cmplay/util/s$16;->b:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/cmplay/util/s$16;->c:Z

    invoke-static {v0, v1, v2}, Lcom/cmplay/util/NativeUtil;->reqMeInfoCallback(ILjava/lang/String;Z)V

    .line 1678
    return-void
.end method
