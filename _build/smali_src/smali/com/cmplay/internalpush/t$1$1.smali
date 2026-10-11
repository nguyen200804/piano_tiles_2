.class Lcom/cmplay/internalpush/t$1$1;
.super Ljava/lang/Object;
.source "WifiStateReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/internalpush/t$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmplay/internalpush/t$1;


# direct methods
.method constructor <init>(Lcom/cmplay/internalpush/t$1;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/cmplay/internalpush/t$1$1;->a:Lcom/cmplay/internalpush/t$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 80
    const-string v0, "zzb_cloud"

    const-string v1, "\u7f51\u7edc\u5207\u6362\uff0c\u62c9\u53d6\u9b54\u65b9-----"

    invoke-static {v0, v1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const/4 v0, 0x1

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/ijinshan/cloudconfig/a;->a(ILjava/lang/String;)V

    .line 84
    return-void
.end method
