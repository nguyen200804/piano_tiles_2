.class public Lcom/ijinshan/cloudconfig/deepcloudconfig/ConfigInfo;
.super Ljava/lang/Object;
.source "ConfigInfo.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/ijinshan/cloudconfig/deepcloudconfig/ConfigInfo;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/ijinshan/cloudconfig/deepcloudconfig/ConfigInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    new-instance v0, Lcom/ijinshan/cloudconfig/deepcloudconfig/ConfigInfo$1;

    invoke-direct {v0}, Lcom/ijinshan/cloudconfig/deepcloudconfig/ConfigInfo$1;-><init>()V

    sput-object v0, Lcom/ijinshan/cloudconfig/deepcloudconfig/ConfigInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ijinshan/cloudconfig/deepcloudconfig/ConfigInfo;->a:I

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ijinshan/cloudconfig/deepcloudconfig/ConfigInfo;->b:Ljava/lang/String;

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ijinshan/cloudconfig/deepcloudconfig/ConfigInfo;->c:I

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ijinshan/cloudconfig/deepcloudconfig/ConfigInfo;->d:Ljava/lang/String;

    .line 93
    return-void
.end method


# virtual methods
.method public a(Lcom/ijinshan/cloudconfig/deepcloudconfig/ConfigInfo;)I
    .locals 2

    .prologue
    .line 55
    iget v0, p0, Lcom/ijinshan/cloudconfig/deepcloudconfig/ConfigInfo;->c:I

    iget v1, p1, Lcom/ijinshan/cloudconfig/deepcloudconfig/ConfigInfo;->c:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/ijinshan/cloudconfig/deepcloudconfig/ConfigInfo;->d:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 20
    iput p1, p0, Lcom/ijinshan/cloudconfig/deepcloudconfig/ConfigInfo;->a:I

    .line 21
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/ijinshan/cloudconfig/deepcloudconfig/ConfigInfo;->b:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public b(I)V
    .locals 0

    .prologue
    .line 36
    iput p1, p0, Lcom/ijinshan/cloudconfig/deepcloudconfig/ConfigInfo;->c:I

    .line 37
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/ijinshan/cloudconfig/deepcloudconfig/ConfigInfo;->d:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 9
    check-cast p1, Lcom/ijinshan/cloudconfig/deepcloudconfig/ConfigInfo;

    invoke-virtual {p0, p1}, Lcom/ijinshan/cloudconfig/deepcloudconfig/ConfigInfo;->a(Lcom/ijinshan/cloudconfig/deepcloudconfig/ConfigInfo;)I

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConfigInfo [func_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ijinshan/cloudconfig/deepcloudconfig/ConfigInfo;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", section="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ijinshan/cloudconfig/deepcloudconfig/ConfigInfo;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", priority="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ijinshan/cloudconfig/deepcloudconfig/ConfigInfo;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ijinshan/cloudconfig/deepcloudconfig/ConfigInfo;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 65
    iget v0, p0, Lcom/ijinshan/cloudconfig/deepcloudconfig/ConfigInfo;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    iget-object v0, p0, Lcom/ijinshan/cloudconfig/deepcloudconfig/ConfigInfo;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 67
    iget v0, p0, Lcom/ijinshan/cloudconfig/deepcloudconfig/ConfigInfo;->c:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 68
    iget-object v0, p0, Lcom/ijinshan/cloudconfig/deepcloudconfig/ConfigInfo;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 69
    return-void
.end method
