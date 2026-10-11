.class final Lcom/ijinshan/cloudconfig/a$1;
.super Ljava/lang/Object;
.source "CloudHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ijinshan/cloudconfig/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 52
    const-string v0, "zzb_cloud"

    const-string v1, "initNew  \u521d\u59cb\u5316\u65f6 reloadData()"

    invoke-static {v0, v1}, Lcom/ijinshan/cloudconfig/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-static {}, Lcom/ijinshan/cloudconfig/deepcloudconfig/a;->a()Lcom/ijinshan/cloudconfig/deepcloudconfig/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ijinshan/cloudconfig/deepcloudconfig/a;->b()V

    .line 54
    invoke-static {}, Lcom/ijinshan/cloudconfig/c/a;->f()V

    .line 55
    return-void
.end method
