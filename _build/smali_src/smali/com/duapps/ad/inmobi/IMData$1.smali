.class final Lcom/duapps/ad/inmobi/IMData$1;
.super Ljava/lang/Object;
.source "IMData.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duapps/ad/inmobi/IMData;
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
        "Lcom/duapps/ad/inmobi/IMData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/duapps/ad/inmobi/IMData;
    .locals 2

    .prologue
    .line 173
    new-instance v0, Lcom/duapps/ad/inmobi/IMData;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/duapps/ad/inmobi/IMData;-><init>(Landroid/os/Parcel;Lcom/duapps/ad/inmobi/IMData$1;)V

    return-object v0
.end method

.method public a(I)[Lcom/duapps/ad/inmobi/IMData;
    .locals 1

    .prologue
    .line 178
    new-array v0, p1, [Lcom/duapps/ad/inmobi/IMData;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 170
    invoke-virtual {p0, p1}, Lcom/duapps/ad/inmobi/IMData$1;->a(Landroid/os/Parcel;)Lcom/duapps/ad/inmobi/IMData;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 170
    invoke-virtual {p0, p1}, Lcom/duapps/ad/inmobi/IMData$1;->a(I)[Lcom/duapps/ad/inmobi/IMData;

    move-result-object v0

    return-object v0
.end method
