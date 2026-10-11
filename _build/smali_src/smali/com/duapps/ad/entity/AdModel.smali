.class public Lcom/duapps/ad/entity/AdModel;
.super Ljava/lang/Object;
.source "AdModel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/duapps/ad/entity/AdModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:I

.field public d:Ljava/lang/String;

.field public e:I

.field public f:I

.field public g:I

.field public final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/duapps/ad/entity/AdData;",
            ">;"
        }
    .end annotation
.end field

.field public i:J

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 131
    new-instance v0, Lcom/duapps/ad/entity/AdModel$1;

    invoke-direct {v0}, Lcom/duapps/ad/entity/AdModel$1;-><init>()V

    sput-object v0, Lcom/duapps/ad/entity/AdModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/duapps/ad/entity/AdModel;->h:Ljava/util/List;

    .line 34
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/duapps/ad/entity/AdModel;->h:Ljava/util/List;

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duapps/ad/entity/AdModel;->a:Ljava/lang/String;

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duapps/ad/entity/AdModel;->b:Ljava/lang/String;

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/duapps/ad/entity/AdModel;->c:I

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duapps/ad/entity/AdModel;->d:Ljava/lang/String;

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/duapps/ad/entity/AdModel;->e:I

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/duapps/ad/entity/AdModel;->f:I

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/duapps/ad/entity/AdModel;->g:I

    .line 122
    iget-object v0, p0, Lcom/duapps/ad/entity/AdModel;->h:Ljava/util/List;

    sget-object v1, Lcom/duapps/ad/entity/AdData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duapps/ad/entity/AdModel;->j:Ljava/lang/String;

    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duapps/ad/entity/AdModel;->k:Ljava/lang/String;

    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duapps/ad/entity/AdModel;->l:Ljava/lang/String;

    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duapps/ad/entity/AdModel;->m:Ljava/lang/String;

    .line 127
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/duapps/ad/entity/AdModel;->i:J

    .line 128
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duapps/ad/entity/AdModel;->n:Ljava/lang/String;

    .line 129
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/duapps/ad/entity/AdModel$1;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/duapps/ad/entity/AdModel;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Lorg/json/JSONObject;J)V
    .locals 15

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/duapps/ad/entity/AdModel;->h:Ljava/util/List;

    .line 42
    move-object/from16 v0, p1

    iput-object v0, p0, Lcom/duapps/ad/entity/AdModel;->a:Ljava/lang/String;

    .line 43
    move/from16 v0, p2

    iput v0, p0, Lcom/duapps/ad/entity/AdModel;->c:I

    .line 44
    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/duapps/ad/entity/AdModel;->d:Ljava/lang/String;

    .line 46
    if-nez p4, :cond_1

    .line 73
    :cond_0
    return-void

    .line 49
    :cond_1
    const-string v2, "sId"

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 50
    move/from16 v0, p2

    if-ne v0, v2, :cond_0

    .line 52
    const-string v2, "pk"

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/duapps/ad/entity/AdModel;->n:Ljava/lang/String;

    .line 53
    const-string v2, "pn"

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/duapps/ad/entity/AdModel;->e:I

    .line 54
    const-string v2, "ps"

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/duapps/ad/entity/AdModel;->f:I

    .line 55
    const-string v2, "total"

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/duapps/ad/entity/AdModel;->g:I

    .line 56
    const-string v2, "logId"

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/duapps/ad/entity/AdModel;->b:Ljava/lang/String;

    .line 58
    const-string v2, "ext"

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/duapps/ad/entity/AdModel;->j:Ljava/lang/String;

    .line 59
    const-string v2, "title"

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/duapps/ad/entity/AdModel;->k:Ljava/lang/String;

    .line 60
    const-string v2, "shortdesc"

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/duapps/ad/entity/AdModel;->l:Ljava/lang/String;

    .line 61
    const-string v2, "description"

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/duapps/ad/entity/AdModel;->m:Ljava/lang/String;

    .line 62
    const-string v2, "list"

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    .line 63
    if-eqz v11, :cond_0

    .line 66
    const/4 v2, 0x0

    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v12

    move v10, v2

    :goto_0
    if-ge v10, v12, :cond_0

    .line 67
    invoke-virtual {v11, v10}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 68
    if-nez v7, :cond_2

    .line 66
    :goto_1
    add-int/lit8 v2, v10, 0x1

    move v10, v2

    goto :goto_0

    .line 71
    :cond_2
    iget-object v13, p0, Lcom/duapps/ad/entity/AdModel;->h:Ljava/util/List;

    new-instance v2, Lcom/duapps/ad/entity/AdData;

    iget-object v6, p0, Lcom/duapps/ad/entity/AdModel;->b:Ljava/lang/String;

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move-wide/from16 v8, p5

    invoke-direct/range {v2 .. v9}, Lcom/duapps/ad/entity/AdData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;J)V

    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/duapps/ad/entity/AdModel;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/duapps/ad/entity/AdModel;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 100
    iget v0, p0, Lcom/duapps/ad/entity/AdModel;->c:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    iget-object v0, p0, Lcom/duapps/ad/entity/AdModel;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 102
    iget v0, p0, Lcom/duapps/ad/entity/AdModel;->e:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 103
    iget v0, p0, Lcom/duapps/ad/entity/AdModel;->f:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 104
    iget v0, p0, Lcom/duapps/ad/entity/AdModel;->g:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    iget-object v0, p0, Lcom/duapps/ad/entity/AdModel;->h:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 106
    iget-object v0, p0, Lcom/duapps/ad/entity/AdModel;->j:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/duapps/ad/entity/AdModel;->k:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/duapps/ad/entity/AdModel;->l:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/duapps/ad/entity/AdModel;->m:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 110
    iget-wide v0, p0, Lcom/duapps/ad/entity/AdModel;->i:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 111
    iget-object v0, p0, Lcom/duapps/ad/entity/AdModel;->n:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 112
    return-void
.end method
