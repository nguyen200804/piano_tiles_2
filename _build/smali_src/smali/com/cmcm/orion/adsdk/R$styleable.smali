.class public final Lcom/cmcm/orion/adsdk/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmcm/orion/adsdk/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final CustomTheme:[I

.field public static final CustomTheme_gifMoviewViewStyle:I = 0x0

.field public static final DynamicImageView_incentive:[I

.field public static final DynamicImageView_incentive_height_aspect_view:I = 0x1

.field public static final DynamicImageView_incentive_width_aspect_view:I = 0x0

.field public static final GifMoviewView:[I

.field public static final GifMoviewView_gif:I = 0x0

.field public static final GifMoviewView_paused:I = 0x1

.field public static final RecyclerView:[I

.field public static final RecyclerView_android_orientation:I = 0x0

.field public static final RecyclerView_layoutManager:I = 0x1

.field public static final RecyclerView_reverseLayout:I = 0x3

.field public static final RecyclerView_spanCount:I = 0x2

.field public static final RecyclerView_stackFromEnd:I = 0x4


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 197
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7f010019

    aput v2, v0, v1

    sput-object v0, Lcom/cmcm/orion/adsdk/R$styleable;->CustomTheme:[I

    .line 199
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/cmcm/orion/adsdk/R$styleable;->DynamicImageView_incentive:[I

    .line 202
    new-array v0, v3, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/cmcm/orion/adsdk/R$styleable;->GifMoviewView:[I

    .line 205
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/cmcm/orion/adsdk/R$styleable;->RecyclerView:[I

    return-void

    .line 199
    nop

    :array_0
    .array-data 4
        0x7f01001c
        0x7f01001d
    .end array-data

    .line 202
    :array_1
    .array-data 4
        0x7f01001e
        0x7f01001f
    .end array-data

    .line 205
    :array_2
    .array-data 4
        0x10100c4
        0x7f010026
        0x7f010027
        0x7f010028
        0x7f010029
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
