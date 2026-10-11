.class public final enum Lcom/facebook/notifications/internal/configuration/ActionsConfiguration$ActionsStyle;
.super Ljava/lang/Enum;
.source "ActionsConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/notifications/internal/configuration/ActionsConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ActionsStyle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/notifications/internal/configuration/ActionsConfiguration$ActionsStyle;",
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
            "Lcom/facebook/notifications/internal/configuration/ActionsConfiguration$ActionsStyle;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum a:Lcom/facebook/notifications/internal/configuration/ActionsConfiguration$ActionsStyle;

.field public static final enum b:Lcom/facebook/notifications/internal/configuration/ActionsConfiguration$ActionsStyle;

.field private static final synthetic c:[Lcom/facebook/notifications/internal/configuration/ActionsConfiguration$ActionsStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 48
    new-instance v0, Lcom/facebook/notifications/internal/configuration/ActionsConfiguration$ActionsStyle;

    const-string v1, "Attached"

    invoke-direct {v0, v1, v2}, Lcom/facebook/notifications/internal/configuration/ActionsConfiguration$ActionsStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/notifications/internal/configuration/ActionsConfiguration$ActionsStyle;->a:Lcom/facebook/notifications/internal/configuration/ActionsConfiguration$ActionsStyle;

    .line 49
    new-instance v0, Lcom/facebook/notifications/internal/configuration/ActionsConfiguration$ActionsStyle;

    const-string v1, "Detached"

    invoke-direct {v0, v1, v3}, Lcom/facebook/notifications/internal/configuration/ActionsConfiguration$ActionsStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/notifications/internal/configuration/ActionsConfiguration$ActionsStyle;->b:Lcom/facebook/notifications/internal/configuration/ActionsConfiguration$ActionsStyle;

    .line 47
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/facebook/notifications/internal/configuration/ActionsConfiguration$ActionsStyle;

    sget-object v1, Lcom/facebook/notifications/internal/configuration/ActionsConfiguration$ActionsStyle;->a:Lcom/facebook/notifications/internal/configuration/ActionsConfiguration$ActionsStyle;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/notifications/internal/configuration/ActionsConfiguration$ActionsStyle;->b:Lcom/facebook/notifications/internal/configuration/ActionsConfiguration$ActionsStyle;

    aput-object v1, v0, v3

    sput-object v0, Lcom/facebook/notifications/internal/configuration/ActionsConfiguration$ActionsStyle;->c:[Lcom/facebook/notifications/internal/configuration/ActionsConfiguration$ActionsStyle;

    .line 51
    new-instance v0, Lcom/facebook/notifications/internal/utilities/a;

    const-class v1, Lcom/facebook/notifications/internal/configuration/ActionsConfiguration$ActionsStyle;

    invoke-static {}, Lcom/facebook/notifications/internal/configuration/ActionsConfiguration$ActionsStyle;->values()[Lcom/facebook/notifications/internal/configuration/ActionsConfiguration$ActionsStyle;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/facebook/notifications/internal/utilities/a;-><init>(Ljava/lang/Class;[Ljava/lang/Enum;)V

    sput-object v0, Lcom/facebook/notifications/internal/configuration/ActionsConfiguration$ActionsStyle;->CREATOR:Landroid/os/Parcelable$Creator;

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
    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/facebook/notifications/internal/configuration/ActionsConfiguration$ActionsStyle;
    .locals 2

    .prologue
    .line 54
    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 57
    sget-object v0, Lcom/facebook/notifications/internal/configuration/ActionsConfiguration$ActionsStyle;->a:Lcom/facebook/notifications/internal/configuration/ActionsConfiguration$ActionsStyle;

    :goto_1
    return-object v0

    .line 54
    :sswitch_0
    const-string v1, "attached"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v1, "detached"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 55
    :pswitch_0
    sget-object v0, Lcom/facebook/notifications/internal/configuration/ActionsConfiguration$ActionsStyle;->a:Lcom/facebook/notifications/internal/configuration/ActionsConfiguration$ActionsStyle;

    goto :goto_1

    .line 56
    :pswitch_1
    sget-object v0, Lcom/facebook/notifications/internal/configuration/ActionsConfiguration$ActionsStyle;->b:Lcom/facebook/notifications/internal/configuration/ActionsConfiguration$ActionsStyle;

    goto :goto_1

    .line 54
    :sswitch_data_0
    .sparse-switch
        0x201c7da4 -> :sswitch_0
        0x3e428b72 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/notifications/internal/configuration/ActionsConfiguration$ActionsStyle;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 47
    const-class v0, Lcom/facebook/notifications/internal/configuration/ActionsConfiguration$ActionsStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/notifications/internal/configuration/ActionsConfiguration$ActionsStyle;

    return-object v0
.end method

.method public static values()[Lcom/facebook/notifications/internal/configuration/ActionsConfiguration$ActionsStyle;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/facebook/notifications/internal/configuration/ActionsConfiguration$ActionsStyle;->c:[Lcom/facebook/notifications/internal/configuration/ActionsConfiguration$ActionsStyle;

    invoke-virtual {v0}, [Lcom/facebook/notifications/internal/configuration/ActionsConfiguration$ActionsStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/notifications/internal/configuration/ActionsConfiguration$ActionsStyle;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/facebook/notifications/internal/configuration/ActionsConfiguration$ActionsStyle;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 69
    return-void
.end method
