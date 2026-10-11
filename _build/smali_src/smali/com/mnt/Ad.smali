.class public Lcom/mnt/Ad;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final AD_CREATIVE_SIZE_1200x627:Ljava/lang/String;

.field public static final AD_CREATIVE_SIZE_320X200:Ljava/lang/String;

.field public static final AD_CREATIVE_SIZE_480x800:Ljava/lang/String;

.field public static final AD_CREATIVE_SIZE_640x100:Ljava/lang/String;

.field public static final APP_TYPE_APP:I = 0x1

.field public static final APP_TYPE_GAME:I = 0x2

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/mnt/Ad;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:F

.field private j:F

.field private k:I

.field private l:Ljava/lang/String;

.field private m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/mnt/impl/e;->a:Ljava/lang/String;

    sput-object v0, Lcom/mnt/Ad;->AD_CREATIVE_SIZE_320X200:Ljava/lang/String;

    .line 21
    sget-object v0, Lcom/mnt/impl/e;->b:Ljava/lang/String;

    sput-object v0, Lcom/mnt/Ad;->AD_CREATIVE_SIZE_480x800:Ljava/lang/String;

    .line 22
    sget-object v0, Lcom/mnt/impl/e;->c:Ljava/lang/String;

    sput-object v0, Lcom/mnt/Ad;->AD_CREATIVE_SIZE_640x100:Ljava/lang/String;

    .line 23
    sget-object v0, Lcom/mnt/impl/e;->d:Ljava/lang/String;

    sput-object v0, Lcom/mnt/Ad;->AD_CREATIVE_SIZE_1200x627:Ljava/lang/String;

    .line 146
    new-instance v0, Lcom/mnt/Ad$1;

    invoke-direct {v0}, Lcom/mnt/Ad$1;-><init>()V

    sput-object v0, Lcom/mnt/Ad;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FFLjava/util/Map;I)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "FF",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;I)V"
        }
    .end annotation

    .prologue
    .line 127
    sget-object v13, Lcom/mnt/impl/e;->e:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move-object/from16 v11, p11

    move/from16 v12, p12

    invoke-direct/range {v0 .. v13}, Lcom/mnt/Ad;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FFLjava/util/Map;ILjava/lang/String;)V

    .line 128
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FFLjava/util/Map;ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "FF",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mnt/Ad;->m:Ljava/util/Map;

    .line 131
    iput-object p1, p0, Lcom/mnt/Ad;->a:Ljava/lang/String;

    .line 132
    iput-object p2, p0, Lcom/mnt/Ad;->b:Ljava/lang/String;

    .line 133
    iput-object p3, p0, Lcom/mnt/Ad;->c:Ljava/lang/String;

    .line 134
    iput-object p4, p0, Lcom/mnt/Ad;->d:Ljava/lang/String;

    .line 135
    iput-object p5, p0, Lcom/mnt/Ad;->e:Ljava/lang/String;

    .line 136
    iput-object p6, p0, Lcom/mnt/Ad;->f:Ljava/lang/String;

    .line 137
    iput-object p7, p0, Lcom/mnt/Ad;->g:Ljava/lang/String;

    .line 138
    iput-object p8, p0, Lcom/mnt/Ad;->h:Ljava/lang/String;

    .line 139
    iput p9, p0, Lcom/mnt/Ad;->i:F

    .line 140
    iput p10, p0, Lcom/mnt/Ad;->j:F

    .line 141
    iput p12, p0, Lcom/mnt/Ad;->k:I

    .line 142
    iput-object p11, p0, Lcom/mnt/Ad;->m:Ljava/util/Map;

    .line 143
    iput-object p13, p0, Lcom/mnt/Ad;->l:Ljava/lang/String;

    .line 144
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    return v0
.end method

.method public getAdCallToAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/mnt/Ad;->l:Ljava/lang/String;

    return-object v0
.end method

.method public getAppType()I
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lcom/mnt/Ad;->k:I

    return v0
.end method

.method public getCampId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/mnt/Ad;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getCreatives(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 115
    iget-object v0, p0, Lcom/mnt/Ad;->m:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getCreatives()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 119
    iget-object v0, p0, Lcom/mnt/Ad;->m:Ljava/util/Map;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/mnt/Ad;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/mnt/Ad;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getInstalls()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/mnt/Ad;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/mnt/Ad;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/mnt/Ad;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getRate()F
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lcom/mnt/Ad;->i:F

    return v0
.end method

.method public getRecommendMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/mnt/Ad;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/mnt/Ad;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getStoreRating()F
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lcom/mnt/Ad;->j:F

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    .prologue
    .line 49
    iget-object v0, p0, Lcom/mnt/Ad;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/mnt/Ad;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/mnt/Ad;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/mnt/Ad;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/mnt/Ad;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/mnt/Ad;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/mnt/Ad;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/mnt/Ad;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 57
    iget v0, p0, Lcom/mnt/Ad;->i:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 58
    iget v0, p0, Lcom/mnt/Ad;->j:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 59
    iget v0, p0, Lcom/mnt/Ad;->k:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    iget-object v0, p0, Lcom/mnt/Ad;->l:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 61
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 62
    iget-object v0, p0, Lcom/mnt/Ad;->m:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/mnt/Ad;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 64
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2, v1, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 67
    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 68
    return-void
.end method
