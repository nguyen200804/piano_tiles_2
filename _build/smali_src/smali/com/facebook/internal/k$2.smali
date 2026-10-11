.class Lcom/facebook/internal/k$2;
.super Ljava/lang/Object;
.source "FileLruCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/internal/k;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/internal/k;


# direct methods
.method constructor <init>(Lcom/facebook/internal/k;)V
    .locals 0

    .prologue
    .line 303
    iput-object p1, p0, Lcom/facebook/internal/k$2;->a:Lcom/facebook/internal/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/facebook/internal/k$2;->a:Lcom/facebook/internal/k;

    invoke-static {v0}, Lcom/facebook/internal/k;->b(Lcom/facebook/internal/k;)V

    .line 307
    return-void
.end method
