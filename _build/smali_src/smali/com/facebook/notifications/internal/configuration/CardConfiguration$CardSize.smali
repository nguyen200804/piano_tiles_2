.class public final enum Lcom/facebook/notifications/internal/configuration/CardConfiguration$CardSize;
.super Ljava/lang/Enum;
.source "CardConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/notifications/internal/configuration/CardConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CardSize"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/notifications/internal/configuration/CardConfiguration$CardSize;",
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
            "Lcom/facebook/notifications/internal/configuration/CardConfiguration$CardSize;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum a:Lcom/facebook/notifications/internal/configuration/CardConfiguration$CardSize;

.field public static final enum b:Lcom/facebook/notifications/internal/configuration/CardConfiguration$CardSize;

.field public static final enum c:Lcom/facebook/notifications/internal/configuration/CardConfiguration$CardSize;

.field public static final enum d:Lcom/facebook/notifications/internal/configuration/CardConfiguration$CardSize;

.field private static final synthetic e:[Lcom/facebook/notifications/internal/configuration/CardConfiguration$CardSize;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 40
    new-instance v0, Lcom/facebook/notifications/internal/configuration/CardConfiguration$CardSize;

    const-string v1, "Invalid"

    invoke-direct {v0, v1, v2}, Lcom/facebook/notifications/internal/configuration/CardConfiguration$CardSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/notifications/internal/configuration/CardConfiguration$CardSize;->a:Lcom/facebook/notifications/internal/configuration/CardConfiguration$CardSize;

    .line 41
    new-instance v0, Lcom/facebook/notifications/internal/configuration/CardConfiguration$CardSize;

    const-string v1, "Small"

    invoke-direct {v0, v1, v3}, Lcom/facebook/notifications/internal/configuration/CardConfiguration$CardSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/notifications/internal/configuration/CardConfiguration$CardSize;->b:Lcom/facebook/notifications/internal/configuration/CardConfiguration$CardSize;

    .line 42
    new-instance v0, Lcom/facebook/notifications/internal/configuration/CardConfiguration$CardSize;

    const-string v1, "Medium"

    invoke-direct {v0, v1, v4}, Lcom/facebook/notifications/internal/configuration/CardConfiguration$CardSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/notifications/internal/configuration/CardConfiguration$CardSize;->c:Lcom/facebook/notifications/internal/configuration/CardConfiguration$CardSize;

    .line 43
    new-instance v0, Lcom/facebook/notifications/internal/configuration/CardConfiguration$CardSize;

    const-string v1, "Large"

    invoke-direct {v0, v1, v5}, Lcom/facebook/notifications/internal/configuration/CardConfiguration$CardSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/notifications/internal/configuration/CardConfiguration$CardSize;->d:Lcom/facebook/notifications/internal/configuration/CardConfiguration$CardSize;

    .line 39
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/facebook/notifications/internal/configuration/CardConfiguration$CardSize;

    sget-object v1, Lcom/facebook/notifications/internal/configuration/CardConfiguration$CardSize;->a:Lcom/facebook/notifications/internal/configuration/CardConfiguration$CardSize;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/notifications/internal/configuration/CardConfiguration$CardSize;->b:Lcom/facebook/notifications/internal/configuration/CardConfiguration$CardSize;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/notifications/internal/configuration/CardConfiguration$CardSize;->c:Lcom/facebook/notifications/internal/configuration/CardConfiguration$CardSize;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/notifications/internal/configuration/CardConfiguration$CardSize;->d:Lcom/facebook/notifications/internal/configuration/CardConfiguration$CardSize;

    aput-object v1, v0, v5

    sput-object v0, Lcom/facebook/notifications/internal/configuration/CardConfiguration$CardSize;->e:[Lcom/facebook/notifications/internal/configuration/CardConfiguration$CardSize;

    .line 45
    new-instance v0, Lcom/facebook/notifications/internal/utilities/a;

    const-class v1, Lcom/facebook/notifications/internal/configuration/CardConfiguration$CardSize;

    invoke-static {}, Lcom/facebook/notifications/internal/configuration/CardConfiguration$CardSize;->values()[Lcom/facebook/notifications/internal/configuration/CardConfiguration$CardSize;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/facebook/notifications/internal/utilities/a;-><init>(Ljava/lang/Class;[Ljava/lang/Enum;)V

    sput-object v0, Lcom/facebook/notifications/internal/configuration/CardConfiguration$CardSize;->CREATOR:Landroid/os/Parcelable$Creator;

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
    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/facebook/notifications/internal/configuration/CardConfiguration$CardSize;
    .locals 2

    .prologue
    .line 48
    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 52
    sget-object v0, Lcom/facebook/notifications/internal/configuration/CardConfiguration$CardSize;->a:Lcom/facebook/notifications/internal/configuration/CardConfiguration$CardSize;

    :goto_1
    return-object v0

    .line 48
    :sswitch_0
    const-string v1, "small"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v1, "medium"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v1, "large"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    .line 49
    :pswitch_0
    sget-object v0, Lcom/facebook/notifications/internal/configuration/CardConfiguration$CardSize;->b:Lcom/facebook/notifications/internal/configuration/CardConfiguration$CardSize;

    goto :goto_1

    .line 50
    :pswitch_1
    sget-object v0, Lcom/facebook/notifications/internal/configuration/CardConfiguration$CardSize;->c:Lcom/facebook/notifications/internal/configuration/CardConfiguration$CardSize;

    goto :goto_1

    .line 51
    :pswitch_2
    sget-object v0, Lcom/facebook/notifications/internal/configuration/CardConfiguration$CardSize;->d:Lcom/facebook/notifications/internal/configuration/CardConfiguration$CardSize;

    goto :goto_1

    .line 48
    nop

    :sswitch_data_0
    .sparse-switch
        -0x4041708b -> :sswitch_1
        0x61fbb3b -> :sswitch_2
        0x6879507 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/notifications/internal/configuration/CardConfiguration$CardSize;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 39
    const-class v0, Lcom/facebook/notifications/internal/configuration/CardConfiguration$CardSize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/notifications/internal/configuration/CardConfiguration$CardSize;

    return-object v0
.end method

.method public static values()[Lcom/facebook/notifications/internal/configuration/CardConfiguration$CardSize;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/facebook/notifications/internal/configuration/CardConfiguration$CardSize;->e:[Lcom/facebook/notifications/internal/configuration/CardConfiguration$CardSize;

    invoke-virtual {v0}, [Lcom/facebook/notifications/internal/configuration/CardConfiguration$CardSize;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/notifications/internal/configuration/CardConfiguration$CardSize;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/facebook/notifications/internal/configuration/CardConfiguration$CardSize;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    return-void
.end method
