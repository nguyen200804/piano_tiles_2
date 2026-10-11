.class Lcom/jirbo/adcolony/x$2;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jirbo/adcolony/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jirbo/adcolony/x;


# direct methods
.method constructor <init>(Lcom/jirbo/adcolony/x;)V
    .locals 0

    .prologue
    .line 597
    iput-object p1, p0, Lcom/jirbo/adcolony/x$2;->a:Lcom/jirbo/adcolony/x;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "m"    # Landroid/os/Message;

    .prologue
    .line 600
    iget-object v0, p0, Lcom/jirbo/adcolony/x$2;->a:Lcom/jirbo/adcolony/x;

    iget-object v0, v0, Lcom/jirbo/adcolony/x;->d:Lcom/jirbo/adcolony/ADCVideo;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/ADCVideo;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 603
    :cond_0
    :goto_0
    return-void

    .line 601
    :cond_1
    iget-object v0, p0, Lcom/jirbo/adcolony/x$2;->a:Lcom/jirbo/adcolony/x;

    iget-object v0, v0, Lcom/jirbo/adcolony/x;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideo;->D:Lcom/jirbo/adcolony/e;

    if-eqz v0, :cond_0

    .line 602
    iget-object v0, p0, Lcom/jirbo/adcolony/x$2;->a:Lcom/jirbo/adcolony/x;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/x;->a(I)V

    goto :goto_0
.end method
