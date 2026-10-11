.class Lcom/cmplay/tile2/ui/ReportService$2;
.super Ljava/lang/Object;
.source "ReportService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/tile2/ui/ReportService;->onCreate()V
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
    .line 163
    iput-object p1, p0, Lcom/cmplay/tile2/ui/ReportService$2;->a:Lcom/cmplay/tile2/ui/ReportService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 167
    :try_start_0
    invoke-static {}, Lcom/cmplay/util/NativeUtil;->scheduleNotifications()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    :goto_0
    return-void

    .line 168
    :catch_0
    move-exception v0

    goto :goto_0
.end method
