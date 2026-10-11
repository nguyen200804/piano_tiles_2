.class final Lcom/mnt/impl/f/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/mnt/impl/f/o$b;


# direct methods
.method constructor <init>(Lcom/mnt/impl/f/o$b;)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lcom/mnt/impl/f/p;->a:Lcom/mnt/impl/f/o$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 182
    iget-object v0, p0, Lcom/mnt/impl/f/p;->a:Lcom/mnt/impl/f/o$b;

    invoke-static {v0}, Lcom/mnt/impl/f/o$b;->a(Lcom/mnt/impl/f/o$b;)Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/mnt/impl/f/p;->a:Lcom/mnt/impl/f/o$b;

    sget-object v1, Lcom/mnt/impl/e;->gx:Ljava/lang/String;

    invoke-static {v0}, Lcom/mnt/impl/f/o$b;->b(Lcom/mnt/impl/f/o$b;)V

    .line 184
    iget-object v0, p0, Lcom/mnt/impl/f/p;->a:Lcom/mnt/impl/f/o$b;

    invoke-static {v0}, Lcom/mnt/impl/f/o$b;->a(Lcom/mnt/impl/f/o$b;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 186
    :cond_0
    return-void
.end method
