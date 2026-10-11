.class Lcom/cmplay/tile2/ui/ReportService$1;
.super Ljava/lang/Object;
.source "ReportService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmplay/tile2/ui/ReportService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmplay/tile2/ui/ReportService;


# direct methods
.method constructor <init>(Lcom/cmplay/tile2/ui/ReportService;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/cmplay/tile2/ui/ReportService$1;->a:Lcom/cmplay/tile2/ui/ReportService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 136
    invoke-static {}, Lcom/cmplay/cloud/a;->a()Lcom/cmplay/cloud/a;

    move-result-object v0

    iget-object v1, p0, Lcom/cmplay/tile2/ui/ReportService$1;->a:Lcom/cmplay/tile2/ui/ReportService;

    invoke-virtual {v1}, Lcom/cmplay/tile2/ui/ReportService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/cmplay/cloud/a;->a(Landroid/content/Context;Z)V

    .line 137
    return-void
.end method
