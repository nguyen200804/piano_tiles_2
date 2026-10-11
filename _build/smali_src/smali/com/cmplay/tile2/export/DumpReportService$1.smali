.class Lcom/cmplay/tile2/export/DumpReportService$1;
.super Ljava/lang/Object;
.source "DumpReportService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/tile2/export/DumpReportService;->a(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Lcom/cmplay/tile2/export/DumpReportService;


# direct methods
.method constructor <init>(Lcom/cmplay/tile2/export/DumpReportService;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/cmplay/tile2/export/DumpReportService$1;->b:Lcom/cmplay/tile2/export/DumpReportService;

    iput-object p2, p0, Lcom/cmplay/tile2/export/DumpReportService$1;->a:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/cmplay/tile2/export/DumpReportService$1;->b:Lcom/cmplay/tile2/export/DumpReportService;

    iget-object v1, p0, Lcom/cmplay/tile2/export/DumpReportService$1;->a:Landroid/content/Intent;

    invoke-static {v0, v1}, Lcom/cmplay/tile2/export/DumpReportService;->a(Lcom/cmplay/tile2/export/DumpReportService;Landroid/content/Intent;)V

    .line 32
    return-void
.end method
