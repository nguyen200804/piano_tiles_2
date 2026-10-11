.class final enum Lcom/mopub/mobileads/o;
.super Ljava/lang/Enum;
.source "VideoTrackingEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mopub/mobileads/o;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum COMPANION_AD_CLICK:Lcom/mopub/mobileads/o;

.field public static final enum COMPANION_AD_VIEW:Lcom/mopub/mobileads/o;

.field public static final enum COMPLETE:Lcom/mopub/mobileads/o;

.field public static final enum FIRST_QUARTILE:Lcom/mopub/mobileads/o;

.field public static final enum MIDPOINT:Lcom/mopub/mobileads/o;

.field public static final enum START:Lcom/mopub/mobileads/o;

.field public static final enum THIRD_QUARTILE:Lcom/mopub/mobileads/o;

.field public static final enum UNKNOWN:Lcom/mopub/mobileads/o;

.field private static final synthetic b:[Lcom/mopub/mobileads/o;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 10
    new-instance v0, Lcom/mopub/mobileads/o;

    const-string v1, "START"

    const-string v2, "start"

    invoke-direct {v0, v1, v4, v2}, Lcom/mopub/mobileads/o;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/mobileads/o;->START:Lcom/mopub/mobileads/o;

    .line 11
    new-instance v0, Lcom/mopub/mobileads/o;

    const-string v1, "FIRST_QUARTILE"

    const-string v2, "firstQuartile"

    invoke-direct {v0, v1, v5, v2}, Lcom/mopub/mobileads/o;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/mobileads/o;->FIRST_QUARTILE:Lcom/mopub/mobileads/o;

    .line 12
    new-instance v0, Lcom/mopub/mobileads/o;

    const-string v1, "MIDPOINT"

    const-string v2, "midpoint"

    invoke-direct {v0, v1, v6, v2}, Lcom/mopub/mobileads/o;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/mobileads/o;->MIDPOINT:Lcom/mopub/mobileads/o;

    .line 13
    new-instance v0, Lcom/mopub/mobileads/o;

    const-string v1, "THIRD_QUARTILE"

    const-string v2, "thirdQuartile"

    invoke-direct {v0, v1, v7, v2}, Lcom/mopub/mobileads/o;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/mobileads/o;->THIRD_QUARTILE:Lcom/mopub/mobileads/o;

    .line 14
    new-instance v0, Lcom/mopub/mobileads/o;

    const-string v1, "COMPLETE"

    const-string v2, "complete"

    invoke-direct {v0, v1, v8, v2}, Lcom/mopub/mobileads/o;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/mobileads/o;->COMPLETE:Lcom/mopub/mobileads/o;

    .line 15
    new-instance v0, Lcom/mopub/mobileads/o;

    const-string v1, "COMPANION_AD_VIEW"

    const/4 v2, 0x5

    const-string v3, "companionAdView"

    invoke-direct {v0, v1, v2, v3}, Lcom/mopub/mobileads/o;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/mobileads/o;->COMPANION_AD_VIEW:Lcom/mopub/mobileads/o;

    .line 16
    new-instance v0, Lcom/mopub/mobileads/o;

    const-string v1, "COMPANION_AD_CLICK"

    const/4 v2, 0x6

    const-string v3, "companionAdClick"

    invoke-direct {v0, v1, v2, v3}, Lcom/mopub/mobileads/o;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/mobileads/o;->COMPANION_AD_CLICK:Lcom/mopub/mobileads/o;

    .line 17
    new-instance v0, Lcom/mopub/mobileads/o;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x7

    const-string v3, ""

    invoke-direct {v0, v1, v2, v3}, Lcom/mopub/mobileads/o;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/mobileads/o;->UNKNOWN:Lcom/mopub/mobileads/o;

    .line 9
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/mopub/mobileads/o;

    sget-object v1, Lcom/mopub/mobileads/o;->START:Lcom/mopub/mobileads/o;

    aput-object v1, v0, v4

    sget-object v1, Lcom/mopub/mobileads/o;->FIRST_QUARTILE:Lcom/mopub/mobileads/o;

    aput-object v1, v0, v5

    sget-object v1, Lcom/mopub/mobileads/o;->MIDPOINT:Lcom/mopub/mobileads/o;

    aput-object v1, v0, v6

    sget-object v1, Lcom/mopub/mobileads/o;->THIRD_QUARTILE:Lcom/mopub/mobileads/o;

    aput-object v1, v0, v7

    sget-object v1, Lcom/mopub/mobileads/o;->COMPLETE:Lcom/mopub/mobileads/o;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/mopub/mobileads/o;->COMPANION_AD_VIEW:Lcom/mopub/mobileads/o;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/mopub/mobileads/o;->COMPANION_AD_CLICK:Lcom/mopub/mobileads/o;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/mopub/mobileads/o;->UNKNOWN:Lcom/mopub/mobileads/o;

    aput-object v2, v0, v1

    sput-object v0, Lcom/mopub/mobileads/o;->b:[Lcom/mopub/mobileads/o;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 22
    iput-object p3, p0, Lcom/mopub/mobileads/o;->a:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/mopub/mobileads/o;
    .locals 5
    .param p0, "name"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 32
    if-nez p0, :cond_1

    .line 33
    sget-object v0, Lcom/mopub/mobileads/o;->UNKNOWN:Lcom/mopub/mobileads/o;

    .line 42
    :cond_0
    :goto_0
    return-object v0

    .line 36
    :cond_1
    invoke-static {}, Lcom/mopub/mobileads/o;->values()[Lcom/mopub/mobileads/o;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_2

    aget-object v0, v2, v1

    .line 37
    invoke-virtual {v0}, Lcom/mopub/mobileads/o;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 36
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 42
    :cond_2
    sget-object v0, Lcom/mopub/mobileads/o;->UNKNOWN:Lcom/mopub/mobileads/o;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mopub/mobileads/o;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 9
    const-class v0, Lcom/mopub/mobileads/o;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mopub/mobileads/o;

    return-object v0
.end method

.method public static values()[Lcom/mopub/mobileads/o;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/mopub/mobileads/o;->b:[Lcom/mopub/mobileads/o;

    invoke-virtual {v0}, [Lcom/mopub/mobileads/o;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mopub/mobileads/o;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 27
    iget-object v0, p0, Lcom/mopub/mobileads/o;->a:Ljava/lang/String;

    return-object v0
.end method
