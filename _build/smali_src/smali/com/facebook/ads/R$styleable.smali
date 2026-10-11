.class public final Lcom/facebook/ads/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/R;
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

.field public static final LoadingImageView:[I

.field public static final LoadingImageView_circleCrop:I = 0x2

.field public static final LoadingImageView_imageAspectRatio:I = 0x1

.field public static final LoadingImageView_imageAspectRatioAdjust:I = 0x0

.field public static final RecyclerView:[I

.field public static final RecyclerView_android_orientation:I = 0x0

.field public static final RecyclerView_layoutManager:I = 0x1

.field public static final RecyclerView_reverseLayout:I = 0x3

.field public static final RecyclerView_spanCount:I = 0x2

.field public static final RecyclerView_stackFromEnd:I = 0x4

.field public static final SignInButton:[I

.field public static final SignInButton_buttonSize:I = 0x0

.field public static final SignInButton_colorScheme:I = 0x1

.field public static final SignInButton_scopeUris:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 122
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/R$styleable;->AdsAttrs:[I

    .line 126
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/facebook/ads/R$styleable;->LoadingImageView:[I

    .line 130
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/facebook/ads/R$styleable;->RecyclerView:[I

    .line 136
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/facebook/ads/R$styleable;->SignInButton:[I

    return-void

    .line 122
    nop

    :array_0
    .array-data 4
        0x7f010001
        0x7f010002
        0x7f010003
    .end array-data

    .line 126
    :array_1
    .array-data 4
        0x7f010023
        0x7f010024
        0x7f010025
    .end array-data

    .line 130
    :array_2
    .array-data 4
        0x10100c4
        0x7f010026
        0x7f010027
        0x7f010028
        0x7f010029
    .end array-data

    .line 136
    :array_3
    .array-data 4
        0x7f010039
        0x7f01003a
        0x7f01003b
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
