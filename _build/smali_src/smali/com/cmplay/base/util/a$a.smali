.class public Lcom/cmplay/base/util/a$a;
.super Ljava/lang/Object;
.source "ADLoadingTipsView.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmplay/base/util/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/cmplay/base/util/a;


# direct methods
.method public constructor <init>(Lcom/cmplay/base/util/a;)V
    .locals 0

    .prologue
    .line 223
    iput-object p1, p0, Lcom/cmplay/base/util/a$a;->a:Lcom/cmplay/base/util/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 7
    .param p1, "input"    # F

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    .line 228
    float-to-double v0, p1

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    .line 229
    float-to-double v0, p1

    mul-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    div-float/2addr v0, v6

    .line 233
    :goto_0
    return v0

    .line 231
    :cond_0
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    float-to-double v2, p1

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    sub-double/2addr v0, v2

    double-to-float v0, v0

    div-float/2addr v0, v6

    goto :goto_0
.end method
