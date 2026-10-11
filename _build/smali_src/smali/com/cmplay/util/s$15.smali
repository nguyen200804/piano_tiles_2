.class Lcom/cmplay/util/s$15;
.super Ljava/lang/Object;
.source "NativeInterfaceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/util/s;->l(I)V
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
    .line 1665
    iput-object p1, p0, Lcom/cmplay/util/s$15;->b:Lcom/cmplay/util/s;

    iput p2, p0, Lcom/cmplay/util/s$15;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1668
    invoke-static {}, Lcom/cmplay/a/c;->a()Lcom/cmplay/a/c;

    move-result-object v0

    iget v1, p0, Lcom/cmplay/util/s$15;->a:I

    invoke-virtual {v0, v1}, Lcom/cmplay/a/c;->d(I)V

    .line 1669
    return-void
.end method
