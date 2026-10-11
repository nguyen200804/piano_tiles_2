.class final Lcom/facebook/notifications/internal/configuration/CardConfiguration$1;
.super Ljava/lang/Object;
.source "CardConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/notifications/internal/configuration/CardConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/facebook/notifications/internal/configuration/CardConfiguration;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/facebook/notifications/internal/configuration/CardConfiguration;
    .locals 3

    .prologue
    .line 71
    :try_start_0
    new-instance v0, Lcom/facebook/notifications/internal/configuration/CardConfiguration;

    invoke-direct {v0, p1}, Lcom/facebook/notifications/internal/configuration/CardConfiguration;-><init>(Landroid/os/Parcel;)V

    .line 72
    invoke-virtual {v0}, Lcom/facebook/notifications/internal/configuration/CardConfiguration;->a()V
    :try_end_0
    .catch Lcom/facebook/notifications/internal/asset/Asset$a; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :goto_0
    return-object v0

    .line 75
    :catch_0
    move-exception v0

    .line 76
    invoke-static {}, Lcom/facebook/notifications/internal/configuration/CardConfiguration;->i()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed to decode card configuration"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 77
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(I)[Lcom/facebook/notifications/internal/configuration/CardConfiguration;
    .locals 1

    .prologue
    .line 83
    new-array v0, p1, [Lcom/facebook/notifications/internal/configuration/CardConfiguration;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 67
    invoke-virtual {p0, p1}, Lcom/facebook/notifications/internal/configuration/CardConfiguration$1;->a(Landroid/os/Parcel;)Lcom/facebook/notifications/internal/configuration/CardConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 67
    invoke-virtual {p0, p1}, Lcom/facebook/notifications/internal/configuration/CardConfiguration$1;->a(I)[Lcom/facebook/notifications/internal/configuration/CardConfiguration;

    move-result-object v0

    return-object v0
.end method
