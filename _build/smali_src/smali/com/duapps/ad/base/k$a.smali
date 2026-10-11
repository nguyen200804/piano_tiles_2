.class Lcom/duapps/ad/base/k$a;
.super Ljava/lang/Object;
.source "PreClickParser.java"

# interfaces
.implements Lcom/duapps/ad/base/i$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duapps/ad/base/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/duapps/ad/base/k;


# direct methods
.method private constructor <init>(Lcom/duapps/ad/base/k;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/duapps/ad/base/k$a;->a:Lcom/duapps/ad/base/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/duapps/ad/base/k;Lcom/duapps/ad/base/k$1;)V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/duapps/ad/base/k$a;-><init>(Lcom/duapps/ad/base/k;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/duapps/ad/entity/AdData;IIJ)V
    .locals 6

    .prologue
    .line 89
    iget-object v0, p0, Lcom/duapps/ad/base/k$a;->a:Lcom/duapps/ad/base/k;

    invoke-static {v0}, Lcom/duapps/ad/base/k;->a(Lcom/duapps/ad/base/k;)Landroid/content/Context;

    move-result-object v0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Lcom/duapps/ad/stats/h;->a(Landroid/content/Context;Lcom/duapps/ad/entity/AdData;IIJ)V

    .line 90
    return-void
.end method

.method public a(Lcom/duapps/ad/entity/AdData;Lcom/duapps/ad/base/j;)V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/duapps/ad/base/k$a;->a:Lcom/duapps/ad/base/k;

    invoke-static {v0}, Lcom/duapps/ad/base/k;->a(Lcom/duapps/ad/base/k;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/duapps/ad/stats/i;->a(Landroid/content/Context;)Lcom/duapps/ad/stats/i;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/duapps/ad/stats/i;->a(Lcom/duapps/ad/base/j;)V

    .line 95
    return-void
.end method

.method public b(Lcom/duapps/ad/entity/AdData;Lcom/duapps/ad/base/j;)V
    .locals 0

    .prologue
    .line 99
    return-void
.end method
