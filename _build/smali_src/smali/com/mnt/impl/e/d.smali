.class final Lcom/mnt/impl/e/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/mnt/impl/e/c;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 32

    .prologue
    .line 1140
    sget-object v2, Lcom/mnt/Ad;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p1

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mnt/Ad;

    .line 1141
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 1142
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 1143
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 1144
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 1145
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v18

    .line 1146
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 1147
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-static {v3}, Lcom/mnt/impl/b/b;->a(I)Lcom/mnt/impl/b/b;

    move-result-object v23

    .line 1148
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v24

    .line 1149
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v25

    .line 1150
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v26

    .line 1151
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v27

    .line 1152
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v28

    .line 1153
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v29

    .line 1154
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v30

    .line 1155
    new-instance v3, Lcom/mnt/impl/e/c;

    invoke-virtual {v2}, Lcom/mnt/Ad;->getCampId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/mnt/Ad;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/mnt/Ad;->getIcon()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lcom/mnt/Ad;->getDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Lcom/mnt/Ad;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2}, Lcom/mnt/Ad;->getInstalls()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2}, Lcom/mnt/Ad;->getSize()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2}, Lcom/mnt/Ad;->getRecommendMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2}, Lcom/mnt/Ad;->getRate()F

    move-result v12

    invoke-virtual {v2}, Lcom/mnt/Ad;->getStoreRating()F

    move-result v13

    invoke-virtual {v2}, Lcom/mnt/Ad;->getAppType()I

    move-result v21

    invoke-virtual {v2}, Lcom/mnt/Ad;->getCreatives()Ljava/util/Map;

    move-result-object v22

    invoke-virtual {v2}, Lcom/mnt/Ad;->getAdCallToAction()Ljava/lang/String;

    move-result-object v31

    invoke-direct/range {v3 .. v31}, Lcom/mnt/impl/e/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FFLjava/lang/String;Ljava/lang/String;ILjava/lang/String;JLjava/lang/String;ILjava/util/Map;Lcom/mnt/impl/b/b;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    return-object v3
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 132
    .line 1135
    new-array v0, p1, [Lcom/mnt/impl/e/c;

    .line 132
    return-object v0
.end method
