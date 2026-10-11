.class public final enum Lcom/facebook/notifications/internal/content/Content$VerticalAlignment;
.super Ljava/lang/Enum;
.source "Content.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/notifications/internal/content/Content;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VerticalAlignment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/notifications/internal/content/Content$VerticalAlignment;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/facebook/notifications/internal/content/Content$VerticalAlignment;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum a:Lcom/facebook/notifications/internal/content/Content$VerticalAlignment;

.field public static final enum b:Lcom/facebook/notifications/internal/content/Content$VerticalAlignment;

.field public static final enum c:Lcom/facebook/notifications/internal/content/Content$VerticalAlignment;

.field private static final synthetic d:[Lcom/facebook/notifications/internal/content/Content$VerticalAlignment;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 28
    new-instance v0, Lcom/facebook/notifications/internal/content/Content$VerticalAlignment;

    const-string v1, "Top"

    invoke-direct {v0, v1, v2}, Lcom/facebook/notifications/internal/content/Content$VerticalAlignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/notifications/internal/content/Content$VerticalAlignment;->a:Lcom/facebook/notifications/internal/content/Content$VerticalAlignment;

    .line 29
    new-instance v0, Lcom/facebook/notifications/internal/content/Content$VerticalAlignment;

    const-string v1, "Center"

    invoke-direct {v0, v1, v3}, Lcom/facebook/notifications/internal/content/Content$VerticalAlignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/notifications/internal/content/Content$VerticalAlignment;->b:Lcom/facebook/notifications/internal/content/Content$VerticalAlignment;

    .line 30
    new-instance v0, Lcom/facebook/notifications/internal/content/Content$VerticalAlignment;

    const-string v1, "Bottom"

    invoke-direct {v0, v1, v4}, Lcom/facebook/notifications/internal/content/Content$VerticalAlignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/notifications/internal/content/Content$VerticalAlignment;->c:Lcom/facebook/notifications/internal/content/Content$VerticalAlignment;

    .line 27
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/facebook/notifications/internal/content/Content$VerticalAlignment;

    sget-object v1, Lcom/facebook/notifications/internal/content/Content$VerticalAlignment;->a:Lcom/facebook/notifications/internal/content/Content$VerticalAlignment;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/notifications/internal/content/Content$VerticalAlignment;->b:Lcom/facebook/notifications/internal/content/Content$VerticalAlignment;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/notifications/internal/content/Content$VerticalAlignment;->c:Lcom/facebook/notifications/internal/content/Content$VerticalAlignment;

    aput-object v1, v0, v4

    sput-object v0, Lcom/facebook/notifications/internal/content/Content$VerticalAlignment;->d:[Lcom/facebook/notifications/internal/content/Content$VerticalAlignment;

    .line 32
    new-instance v0, Lcom/facebook/notifications/internal/utilities/a;

    const-class v1, Lcom/facebook/notifications/internal/content/Content$VerticalAlignment;

    invoke-static {}, Lcom/facebook/notifications/internal/content/Content$VerticalAlignment;->values()[Lcom/facebook/notifications/internal/content/Content$VerticalAlignment;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/facebook/notifications/internal/utilities/a;-><init>(Ljava/lang/Class;[Ljava/lang/Enum;)V

    sput-object v0, Lcom/facebook/notifications/internal/content/Content$VerticalAlignment;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/facebook/notifications/internal/content/Content$VerticalAlignment;
    .locals 2

    .prologue
    .line 35
    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 39
    sget-object v0, Lcom/facebook/notifications/internal/content/Content$VerticalAlignment;->b:Lcom/facebook/notifications/internal/content/Content$VerticalAlignment;

    :goto_1
    return-object v0

    .line 35
    :sswitch_0
    const-string v1, "top"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v1, "center"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v1, "bottom"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    .line 36
    :pswitch_0
    sget-object v0, Lcom/facebook/notifications/internal/content/Content$VerticalAlignment;->a:Lcom/facebook/notifications/internal/content/Content$VerticalAlignment;

    goto :goto_1

    .line 37
    :pswitch_1
    sget-object v0, Lcom/facebook/notifications/internal/content/Content$VerticalAlignment;->b:Lcom/facebook/notifications/internal/content/Content$VerticalAlignment;

    goto :goto_1

    .line 38
    :pswitch_2
    sget-object v0, Lcom/facebook/notifications/internal/content/Content$VerticalAlignment;->c:Lcom/facebook/notifications/internal/content/Content$VerticalAlignment;

    goto :goto_1

    .line 35
    nop

    :sswitch_data_0
    .sparse-switch
        -0x527265d5 -> :sswitch_2
        -0x514d33ab -> :sswitch_1
        0x1c155 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/notifications/internal/content/Content$VerticalAlignment;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 27
    const-class v0, Lcom/facebook/notifications/internal/content/Content$VerticalAlignment;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/notifications/internal/content/Content$VerticalAlignment;

    return-object v0
.end method

.method public static values()[Lcom/facebook/notifications/internal/content/Content$VerticalAlignment;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/facebook/notifications/internal/content/Content$VerticalAlignment;->d:[Lcom/facebook/notifications/internal/content/Content$VerticalAlignment;

    invoke-virtual {v0}, [Lcom/facebook/notifications/internal/content/Content$VerticalAlignment;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/notifications/internal/content/Content$VerticalAlignment;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/facebook/notifications/internal/content/Content$VerticalAlignment;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 51
    return-void
.end method
