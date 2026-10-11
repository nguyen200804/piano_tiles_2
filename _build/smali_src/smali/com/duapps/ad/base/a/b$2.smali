.class Lcom/duapps/ad/base/a/b$2;
.super Ljava/lang/Object;
.source "ImageDownloader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duapps/ad/base/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duapps/ad/base/a/b;


# direct methods
.method constructor <init>(Lcom/duapps/ad/base/a/b;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/duapps/ad/base/a/b$2;->a:Lcom/duapps/ad/base/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/duapps/ad/base/a/b$2;->a:Lcom/duapps/ad/base/a/b;

    invoke-virtual {v0}, Lcom/duapps/ad/base/a/b;->b()V

    .line 135
    return-void
.end method
