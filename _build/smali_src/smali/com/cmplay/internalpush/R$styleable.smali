.class public final Lcom/cmplay/internalpush/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmplay/internalpush/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final DynamicImageView:[I

.field public static final DynamicImageView_height_aspect:I = 0x1

.field public static final DynamicImageView_width_aspect:I = 0x0

.field public static final GifTextureView:[I

.field public static final GifTextureView_gifSource:I = 0x0

.field public static final GifTextureView_isOpaque:I = 0x1

.field public static final GifView:[I

.field public static final GifView_freezesAnimation:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x2

    .line 161
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/cmplay/internalpush/R$styleable;->DynamicImageView:[I

    .line 164
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/cmplay/internalpush/R$styleable;->GifTextureView:[I

    .line 167
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7f010022

    aput v2, v0, v1

    sput-object v0, Lcom/cmplay/internalpush/R$styleable;->GifView:[I

    return-void

    .line 161
    nop

    :array_0
    .array-data 4
        0x7f01001a
        0x7f01001b
    .end array-data

    .line 164
    :array_1
    .array-data 4
        0x7f010020
        0x7f010021
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
