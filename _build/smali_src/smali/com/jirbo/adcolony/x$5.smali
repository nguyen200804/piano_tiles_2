.class Lcom/jirbo/adcolony/x$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jirbo/adcolony/x;->d()V
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
    .line 1149
    iput-object p1, p0, Lcom/jirbo/adcolony/x$5;->a:Lcom/jirbo/adcolony/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1152
    iget-object v0, p0, Lcom/jirbo/adcolony/x$5;->a:Lcom/jirbo/adcolony/x;

    iget-boolean v0, v0, Lcom/jirbo/adcolony/x;->D:Z

    if-eqz v0, :cond_0

    .line 1154
    iget-object v0, p0, Lcom/jirbo/adcolony/x$5;->a:Lcom/jirbo/adcolony/x;

    iget-object v0, v0, Lcom/jirbo/adcolony/x;->d:Lcom/jirbo/adcolony/ADCVideo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jirbo/adcolony/x$5;->a:Lcom/jirbo/adcolony/x;

    iget-boolean v0, v0, Lcom/jirbo/adcolony/x;->P:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jirbo/adcolony/x$5;->a:Lcom/jirbo/adcolony/x;

    iget-object v0, v0, Lcom/jirbo/adcolony/x;->a:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 1156
    iget-object v0, p0, Lcom/jirbo/adcolony/x$5;->a:Lcom/jirbo/adcolony/x;

    iget-object v0, v0, Lcom/jirbo/adcolony/x;->d:Lcom/jirbo/adcolony/ADCVideo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/jirbo/adcolony/ADCVideo;->l:Z

    .line 1157
    iget-object v0, p0, Lcom/jirbo/adcolony/x$5;->a:Lcom/jirbo/adcolony/x;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/x;->f()V

    .line 1160
    :cond_0
    return-void
.end method
