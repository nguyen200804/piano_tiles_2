.class Lcom/cmplay/kinfoc/report/service/KinfocReportSerivce$1;
.super Ljava/lang/Object;
.source "KinfocReportSerivce.java"

# interfaces
.implements Lcom/cmplay/kinfoc/report/service/NetWorkChangeReceiver$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmplay/kinfoc/report/service/KinfocReportSerivce;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmplay/kinfoc/report/service/KinfocReportSerivce;


# direct methods
.method constructor <init>(Lcom/cmplay/kinfoc/report/service/KinfocReportSerivce;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/cmplay/kinfoc/report/service/KinfocReportSerivce$1;->a:Lcom/cmplay/kinfoc/report/service/KinfocReportSerivce;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 31
    invoke-static {}, Lcom/cmplay/kinfoc/report/d;->a()Lcom/cmplay/kinfoc/report/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmplay/kinfoc/report/d;->b()V

    .line 33
    :cond_0
    return-void
.end method
