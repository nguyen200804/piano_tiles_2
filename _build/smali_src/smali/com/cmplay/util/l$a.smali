.class Lcom/cmplay/util/l$a;
.super Ljava/lang/Object;
.source "JumpAnimator.java"

# interfaces
.implements Landroid/animation/TimeInterpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmplay/util/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/cmplay/util/l;

.field private b:F


# direct methods
.method public constructor <init>(Lcom/cmplay/util/l;F)V
    .locals 1

    .prologue
    .line 102
    iput-object p1, p0, Lcom/cmplay/util/l$a;->a:Lcom/cmplay/util/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Lcom/cmplay/util/l$a;->b:F

    .line 104
    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 4
    .param p1, "input"    # F

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    .line 108
    iget v1, p0, Lcom/cmplay/util/l$a;->b:F

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_0

    .line 109
    iget v1, p0, Lcom/cmplay/util/l$a;->b:F

    div-float v1, p1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    double-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    .line 111
    :cond_0
    return v0
.end method
