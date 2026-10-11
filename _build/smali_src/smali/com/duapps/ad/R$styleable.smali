.class public final Lcom/duapps/ad/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duapps/ad/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final AdsAttrs:[I

.field public static final AdsAttrs_adSize:I = 0x0

.field public static final AdsAttrs_adSizes:I = 0x1

.field public static final AdsAttrs_adUnitId:I = 0x2

.field public static final Arc:[I

.field public static final Arc_ArcColor:I = 0x0

.field public static final Arc_ArcLevel:I = 0x1

.field public static final ShimmerLJYFrameLayout:[I

.field public static final ShimmerLJYFrameLayout_angle:I = 0x6

.field public static final ShimmerLJYFrameLayout_auto_start:I = 0x0

.field public static final ShimmerLJYFrameLayout_base_alpha:I = 0x1

.field public static final ShimmerLJYFrameLayout_dropoff:I = 0x7

.field public static final ShimmerLJYFrameLayout_duration:I = 0x2

.field public static final ShimmerLJYFrameLayout_fixed_height:I = 0x9

.field public static final ShimmerLJYFrameLayout_fixed_width:I = 0x8

.field public static final ShimmerLJYFrameLayout_intensity:I = 0xa

.field public static final ShimmerLJYFrameLayout_relative_height:I = 0xc

.field public static final ShimmerLJYFrameLayout_relative_width:I = 0xb

.field public static final ShimmerLJYFrameLayout_repeat_count:I = 0x3

.field public static final ShimmerLJYFrameLayout_repeat_delay:I = 0x4

.field public static final ShimmerLJYFrameLayout_repeat_mode:I = 0x5

.field public static final ShimmerLJYFrameLayout_shape:I = 0xd

.field public static final ShimmerLJYFrameLayout_tilt:I = 0xe


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 322
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/duapps/ad/R$styleable;->AdsAttrs:[I

    .line 326
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/duapps/ad/R$styleable;->Arc:[I

    .line 329
    const/16 v0, 0xf

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/duapps/ad/R$styleable;->ShimmerLJYFrameLayout:[I

    return-void

    .line 322
    :array_0
    .array-data 4
        0x7f010001
        0x7f010002
        0x7f010003
    .end array-data

    .line 326
    :array_1
    .array-data 4
        0x7f010004
        0x7f010005
    .end array-data

    .line 329
    :array_2
    .array-data 4
        0x7f01002a
        0x7f01002b
        0x7f01002c
        0x7f01002d
        0x7f01002e
        0x7f01002f
        0x7f010030
        0x7f010031
        0x7f010032
        0x7f010033
        0x7f010034
        0x7f010035
        0x7f010036
        0x7f010037
        0x7f010038
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 321
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
