.class Lcom/jirbo/adcolony/x$6;
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
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/jirbo/adcolony/x;


# direct methods
.method constructor <init>(Lcom/jirbo/adcolony/x;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1185
    iput-object p1, p0, Lcom/jirbo/adcolony/x$6;->b:Lcom/jirbo/adcolony/x;

    iput-object p2, p0, Lcom/jirbo/adcolony/x$6;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1188
    iget-object v0, p0, Lcom/jirbo/adcolony/x$6;->b:Lcom/jirbo/adcolony/x;

    iget-object v0, v0, Lcom/jirbo/adcolony/x;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideo;->M:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/jirbo/adcolony/x$6;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 1189
    iget-object v0, p0, Lcom/jirbo/adcolony/x$6;->b:Lcom/jirbo/adcolony/x;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/x;->a(Z)V

    .line 1190
    iget-object v0, p0, Lcom/jirbo/adcolony/x$6;->b:Lcom/jirbo/adcolony/x;

    iget-object v0, v0, Lcom/jirbo/adcolony/x;->d:Lcom/jirbo/adcolony/ADCVideo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/jirbo/adcolony/ADCVideo;->q:J

    .line 1191
    return-void
.end method
