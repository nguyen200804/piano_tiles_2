.class Lcom/duapps/ad/entity/c$2;
.super Ljava/lang/Object;
.source "NativeAdDLWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duapps/ad/entity/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duapps/ad/entity/c;


# direct methods
.method constructor <init>(Lcom/duapps/ad/entity/c;)V
    .locals 0

    .prologue
    .line 431
    iput-object p1, p0, Lcom/duapps/ad/entity/c$2;->a:Lcom/duapps/ad/entity/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 434
    iget-object v0, p0, Lcom/duapps/ad/entity/c$2;->a:Lcom/duapps/ad/entity/c;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/duapps/ad/entity/c;->a(Lcom/duapps/ad/entity/c;Z)Z

    .line 435
    iget-object v0, p0, Lcom/duapps/ad/entity/c$2;->a:Lcom/duapps/ad/entity/c;

    invoke-static {v0}, Lcom/duapps/ad/entity/c;->m(Lcom/duapps/ad/entity/c;)V

    .line 436
    iget-object v0, p0, Lcom/duapps/ad/entity/c$2;->a:Lcom/duapps/ad/entity/c;

    invoke-static {v0}, Lcom/duapps/ad/entity/c;->g(Lcom/duapps/ad/entity/c;)V

    .line 437
    return-void
.end method
