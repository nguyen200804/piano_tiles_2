.class Lcom/cmplay/cloud/CloudUpdateReceiver$2;
.super Ljava/lang/Object;
.source "CloudUpdateReceiver.java"

# interfaces
.implements Lcom/cmplay/util/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/cloud/CloudUpdateReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmplay/cloud/CloudUpdateReceiver;


# direct methods
.method constructor <init>(Lcom/cmplay/cloud/CloudUpdateReceiver;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/cmplay/cloud/CloudUpdateReceiver$2;->a:Lcom/cmplay/cloud/CloudUpdateReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 116
    invoke-static {}, Lcom/cmplay/util/NativeUtil;->cloudUpdateNotify()V

    .line 117
    return-void
.end method
