.class final Lcom/duapps/ad/entity/AdModel$1;
.super Ljava/lang/Object;
.source "AdModel.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duapps/ad/entity/AdModel;
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
        "Lcom/duapps/ad/entity/AdModel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/duapps/ad/entity/AdModel;
    .locals 2

    .prologue
    .line 133
    new-instance v0, Lcom/duapps/ad/entity/AdModel;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/duapps/ad/entity/AdModel;-><init>(Landroid/os/Parcel;Lcom/duapps/ad/entity/AdModel$1;)V

    return-object v0
.end method

.method public a(I)[Lcom/duapps/ad/entity/AdModel;
    .locals 1

    .prologue
    .line 137
    new-array v0, p1, [Lcom/duapps/ad/entity/AdModel;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 131
    invoke-virtual {p0, p1}, Lcom/duapps/ad/entity/AdModel$1;->a(Landroid/os/Parcel;)Lcom/duapps/ad/entity/AdModel;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 131
    invoke-virtual {p0, p1}, Lcom/duapps/ad/entity/AdModel$1;->a(I)[Lcom/duapps/ad/entity/AdModel;

    move-result-object v0

    return-object v0
.end method
