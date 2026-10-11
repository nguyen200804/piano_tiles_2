.class public Lcom/cmplay/kinfoc/report/d;
.super Ljava/lang/Object;
.source "ReportInst.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmplay/kinfoc/report/d$a;
    }
.end annotation


# instance fields
.field private a:Lcom/cmplay/kinfoc/report/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public static a()Lcom/cmplay/kinfoc/report/d;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/cmplay/kinfoc/report/d$a;->a:Lcom/cmplay/kinfoc/report/d;

    return-object v0
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/cmplay/kinfoc/report/d;->a:Lcom/cmplay/kinfoc/report/b;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/cmplay/kinfoc/report/d;->a:Lcom/cmplay/kinfoc/report/b;

    invoke-interface {v0, p1}, Lcom/cmplay/kinfoc/report/b;->a(Z)V

    .line 86
    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/cmplay/kinfoc/report/d;->a:Lcom/cmplay/kinfoc/report/b;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/cmplay/kinfoc/report/d;->a:Lcom/cmplay/kinfoc/report/b;

    invoke-interface {v0}, Lcom/cmplay/kinfoc/report/b;->a()V

    .line 92
    :cond_0
    return-void
.end method
