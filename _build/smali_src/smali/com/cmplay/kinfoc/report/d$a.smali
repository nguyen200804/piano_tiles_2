.class Lcom/cmplay/kinfoc/report/d$a;
.super Ljava/lang/Object;
.source "ReportInst.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmplay/kinfoc/report/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field public static a:Lcom/cmplay/kinfoc/report/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Lcom/cmplay/kinfoc/report/d;

    invoke-direct {v0}, Lcom/cmplay/kinfoc/report/d;-><init>()V

    sput-object v0, Lcom/cmplay/kinfoc/report/d$a;->a:Lcom/cmplay/kinfoc/report/d;

    return-void
.end method
