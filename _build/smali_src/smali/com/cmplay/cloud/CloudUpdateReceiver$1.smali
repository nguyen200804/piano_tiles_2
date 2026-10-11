.class Lcom/cmplay/cloud/CloudUpdateReceiver$1;
.super Ljava/lang/Object;
.source "CloudUpdateReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/cloud/CloudUpdateReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/cmplay/cloud/CloudUpdateReceiver;


# direct methods
.method constructor <init>(Lcom/cmplay/cloud/CloudUpdateReceiver;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/cmplay/cloud/CloudUpdateReceiver$1;->b:Lcom/cmplay/cloud/CloudUpdateReceiver;

    iput-object p2, p0, Lcom/cmplay/cloud/CloudUpdateReceiver$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/cmplay/cloud/CloudUpdateReceiver$1;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmplay/notification/c;->a(Landroid/content/Context;)V

    .line 104
    invoke-static {}, Lcom/cmplay/e/b;->a()V

    .line 105
    return-void
.end method
