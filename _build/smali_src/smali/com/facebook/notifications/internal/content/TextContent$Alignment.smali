.class public final enum Lcom/facebook/notifications/internal/content/TextContent$Alignment;
.super Ljava/lang/Enum;
.source "TextContent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/notifications/internal/content/TextContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Alignment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/notifications/internal/content/TextContent$Alignment;",
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
            "Lcom/facebook/notifications/internal/content/TextContent$Alignment;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum a:Lcom/facebook/notifications/internal/content/TextContent$Alignment;

.field public static final enum b:Lcom/facebook/notifications/internal/content/TextContent$Alignment;

.field public static final enum c:Lcom/facebook/notifications/internal/content/TextContent$Alignment;

.field private static final synthetic d:[Lcom/facebook/notifications/internal/content/TextContent$Alignment;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 34
    new-instance v0, Lcom/facebook/notifications/internal/content/TextContent$Alignment;

    const-string v1, "Left"

    invoke-direct {v0, v1, v2}, Lcom/facebook/notifications/internal/content/TextContent$Alignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/notifications/internal/content/TextContent$Alignment;->a:Lcom/facebook/notifications/internal/content/TextContent$Alignment;

    .line 35
    new-instance v0, Lcom/facebook/notifications/internal/content/TextContent$Alignment;

    const-string v1, "Right"

    invoke-direct {v0, v1, v3}, Lcom/facebook/notifications/internal/content/TextContent$Alignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/notifications/internal/content/TextContent$Alignment;->b:Lcom/facebook/notifications/internal/content/TextContent$Alignment;

    .line 36
    new-instance v0, Lcom/facebook/notifications/internal/content/TextContent$Alignment;

    const-string v1, "Center"

    invoke-direct {v0, v1, v4}, Lcom/facebook/notifications/internal/content/TextContent$Alignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/notifications/internal/content/TextContent$Alignment;->c:Lcom/facebook/notifications/internal/content/TextContent$Alignment;

    .line 33
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/facebook/notifications/internal/content/TextContent$Alignment;

    sget-object v1, Lcom/facebook/notifications/internal/content/TextContent$Alignment;->a:Lcom/facebook/notifications/internal/content/TextContent$Alignment;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/notifications/internal/content/TextContent$Alignment;->b:Lcom/facebook/notifications/internal/content/TextContent$Alignment;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/notifications/internal/content/TextContent$Alignment;->c:Lcom/facebook/notifications/internal/content/TextContent$Alignment;

    aput-object v1, v0, v4

    sput-object v0, Lcom/facebook/notifications/internal/content/TextContent$Alignment;->d:[Lcom/facebook/notifications/internal/content/TextContent$Alignment;

    .line 38
    new-instance v0, Lcom/facebook/notifications/internal/utilities/a;

    const-class v1, Lcom/facebook/notifications/internal/content/TextContent$Alignment;

    invoke-static {}, Lcom/facebook/notifications/internal/content/TextContent$Alignment;->values()[Lcom/facebook/notifications/internal/content/TextContent$Alignment;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/facebook/notifications/internal/utilities/a;-><init>(Ljava/lang/Class;[Ljava/lang/Enum;)V

    sput-object v0, Lcom/facebook/notifications/internal/content/TextContent$Alignment;->CREATOR:Landroid/os/Parcelable$Creator;

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
    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/facebook/notifications/internal/content/TextContent$Alignment;
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 41
    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 45
    sget-object v0, Lcom/facebook/notifications/internal/content/TextContent$Alignment;->a:Lcom/facebook/notifications/internal/content/TextContent$Alignment;

    :goto_1
    return-object v0

    .line 41
    :sswitch_0
    const-string v1, "left"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v1, "right"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v1, "center"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    .line 42
    :pswitch_0
    sget-object v0, Lcom/facebook/notifications/internal/content/TextContent$Alignment;->a:Lcom/facebook/notifications/internal/content/TextContent$Alignment;

    goto :goto_1

    .line 43
    :pswitch_1
    sget-object v0, Lcom/facebook/notifications/internal/content/TextContent$Alignment;->b:Lcom/facebook/notifications/internal/content/TextContent$Alignment;

    goto :goto_1

    .line 44
    :pswitch_2
    sget-object v0, Lcom/facebook/notifications/internal/content/TextContent$Alignment;->c:Lcom/facebook/notifications/internal/content/TextContent$Alignment;

    goto :goto_1

    .line 41
    nop

    :sswitch_data_0
    .sparse-switch
        -0x514d33ab -> :sswitch_2
        0x32a007 -> :sswitch_0
        0x677c21c -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/notifications/internal/content/TextContent$Alignment;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 33
    const-class v0, Lcom/facebook/notifications/internal/content/TextContent$Alignment;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/notifications/internal/content/TextContent$Alignment;

    return-object v0
.end method

.method public static values()[Lcom/facebook/notifications/internal/content/TextContent$Alignment;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/facebook/notifications/internal/content/TextContent$Alignment;->d:[Lcom/facebook/notifications/internal/content/TextContent$Alignment;

    invoke-virtual {v0}, [Lcom/facebook/notifications/internal/content/TextContent$Alignment;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/notifications/internal/content/TextContent$Alignment;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/facebook/notifications/internal/content/TextContent$Alignment;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    return-void
.end method
