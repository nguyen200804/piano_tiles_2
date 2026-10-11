.class Lcom/cmplay/tile2/ui/ReportService$5;
.super Ljava/lang/Object;
.source "ReportService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/tile2/ui/ReportService;->a()V
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
    .line 526
    iput-object p1, p0, Lcom/cmplay/tile2/ui/ReportService$5;->a:Lcom/cmplay/tile2/ui/ReportService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x1

    .line 529
    const-string v0, "key_ad_video_show"

    invoke-static {v0, v2}, Lcom/cmplay/util/aa;->b(Ljava/lang/String;I)I

    move-result v0

    .line 530
    const-string v1, "key_ad_interstitial_show"

    invoke-static {v1, v2}, Lcom/cmplay/util/aa;->b(Ljava/lang/String;I)I

    move-result v1

    .line 531
    const-string v2, "ReportService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "video = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "interstitial = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cmplay/util/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    if-lez v0, :cond_0

    .line 533
    invoke-static {v5, v0, v5}, Lcom/cmplay/ad/g/a;->a(IIZ)V

    .line 535
    :cond_0
    if-lez v1, :cond_1

    .line 536
    const/4 v0, 0x2

    invoke-static {v0, v1, v5}, Lcom/cmplay/ad/g/a;->a(IIZ)V

    .line 538
    :cond_1
    return-void
.end method
