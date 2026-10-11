.class Lcom/cmplay/util/s$17;
.super Ljava/lang/Object;
.source "NativeInterfaceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/util/s;->m(I)V
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
    .line 1696
    iput-object p1, p0, Lcom/cmplay/util/s$17;->b:Lcom/cmplay/util/s;

    iput p2, p0, Lcom/cmplay/util/s$17;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1699
    invoke-static {}, Lcom/cmplay/a/c;->a()Lcom/cmplay/a/c;

    move-result-object v0

    iget v1, p0, Lcom/cmplay/util/s$17;->a:I

    invoke-virtual {v0, v1}, Lcom/cmplay/a/c;->e(I)V

    .line 1700
    return-void
.end method
