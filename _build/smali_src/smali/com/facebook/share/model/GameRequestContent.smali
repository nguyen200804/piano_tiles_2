.class public final Lcom/facebook/share/model/GameRequestContent;
.super Ljava/lang/Object;
.source "GameRequestContent.java"

# interfaces
.implements Lcom/facebook/share/model/ShareModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/share/model/GameRequestContent$b;,
        Lcom/facebook/share/model/GameRequestContent$c;,
        Lcom/facebook/share/model/GameRequestContent$a;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/facebook/share/model/GameRequestContent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Lcom/facebook/share/model/GameRequestContent$a;

.field private final f:Ljava/lang/String;

.field private final g:Lcom/facebook/share/model/GameRequestContent$c;

.field private final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 159
    new-instance v0, Lcom/facebook/share/model/GameRequestContent$1;

    invoke-direct {v0}, Lcom/facebook/share/model/GameRequestContent$1;-><init>()V

    sput-object v0, Lcom/facebook/share/model/GameRequestContent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/model/GameRequestContent;->a:Ljava/lang/String;

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/model/GameRequestContent;->b:Ljava/util/List;

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/model/GameRequestContent;->c:Ljava/lang/String;

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/model/GameRequestContent;->d:Ljava/lang/String;

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/facebook/share/model/GameRequestContent$a;

    iput-object v0, p0, Lcom/facebook/share/model/GameRequestContent;->e:Lcom/facebook/share/model/GameRequestContent$a;

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/model/GameRequestContent;->f:Ljava/lang/String;

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/facebook/share/model/GameRequestContent$c;

    iput-object v0, p0, Lcom/facebook/share/model/GameRequestContent;->g:Lcom/facebook/share/model/GameRequestContent$c;

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/model/GameRequestContent;->h:Ljava/util/List;

    .line 75
    iget-object v0, p0, Lcom/facebook/share/model/GameRequestContent;->h:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 76
    return-void
.end method

.method private constructor <init>(Lcom/facebook/share/model/GameRequestContent$b;)V
    .locals 1
    .param p1, "builder"    # Lcom/facebook/share/model/GameRequestContent$b;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-static {p1}, Lcom/facebook/share/model/GameRequestContent$b;->a(Lcom/facebook/share/model/GameRequestContent$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/model/GameRequestContent;->a:Ljava/lang/String;

    .line 57
    invoke-static {p1}, Lcom/facebook/share/model/GameRequestContent$b;->b(Lcom/facebook/share/model/GameRequestContent$b;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/model/GameRequestContent;->b:Ljava/util/List;

    .line 58
    invoke-static {p1}, Lcom/facebook/share/model/GameRequestContent$b;->c(Lcom/facebook/share/model/GameRequestContent$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/model/GameRequestContent;->c:Ljava/lang/String;

    .line 59
    invoke-static {p1}, Lcom/facebook/share/model/GameRequestContent$b;->d(Lcom/facebook/share/model/GameRequestContent$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/model/GameRequestContent;->d:Ljava/lang/String;

    .line 60
    invoke-static {p1}, Lcom/facebook/share/model/GameRequestContent$b;->e(Lcom/facebook/share/model/GameRequestContent$b;)Lcom/facebook/share/model/GameRequestContent$a;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/model/GameRequestContent;->e:Lcom/facebook/share/model/GameRequestContent$a;

    .line 61
    invoke-static {p1}, Lcom/facebook/share/model/GameRequestContent$b;->f(Lcom/facebook/share/model/GameRequestContent$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/model/GameRequestContent;->f:Ljava/lang/String;

    .line 62
    invoke-static {p1}, Lcom/facebook/share/model/GameRequestContent$b;->g(Lcom/facebook/share/model/GameRequestContent$b;)Lcom/facebook/share/model/GameRequestContent$c;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/model/GameRequestContent;->g:Lcom/facebook/share/model/GameRequestContent$c;

    .line 63
    invoke-static {p1}, Lcom/facebook/share/model/GameRequestContent$b;->h(Lcom/facebook/share/model/GameRequestContent$b;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/model/GameRequestContent;->h:Ljava/util/List;

    .line 64
    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/share/model/GameRequestContent$b;Lcom/facebook/share/model/GameRequestContent$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/facebook/share/model/GameRequestContent$b;
    .param p2, "x1"    # Lcom/facebook/share/model/GameRequestContent$1;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/facebook/share/model/GameRequestContent;-><init>(Lcom/facebook/share/model/GameRequestContent$b;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/facebook/share/model/GameRequestContent;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 98
    iget-object v0, p0, Lcom/facebook/share/model/GameRequestContent;->b:Ljava/util/List;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/facebook/share/model/GameRequestContent;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/facebook/share/model/GameRequestContent;->d:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x0

    return v0
.end method

.method public e()Lcom/facebook/share/model/GameRequestContent$a;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/facebook/share/model/GameRequestContent;->e:Lcom/facebook/share/model/GameRequestContent$a;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/facebook/share/model/GameRequestContent;->f:Ljava/lang/String;

    return-object v0
.end method

.method public g()Lcom/facebook/share/model/GameRequestContent$c;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/facebook/share/model/GameRequestContent;->g:Lcom/facebook/share/model/GameRequestContent$c;

    return-object v0
.end method

.method public h()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 140
    iget-object v0, p0, Lcom/facebook/share/model/GameRequestContent;->h:Ljava/util/List;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 148
    iget-object v0, p0, Lcom/facebook/share/model/GameRequestContent;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/facebook/share/model/GameRequestContent;->b:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 150
    iget-object v0, p0, Lcom/facebook/share/model/GameRequestContent;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/facebook/share/model/GameRequestContent;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/facebook/share/model/GameRequestContent;->e:Lcom/facebook/share/model/GameRequestContent$a;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 153
    iget-object v0, p0, Lcom/facebook/share/model/GameRequestContent;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/facebook/share/model/GameRequestContent;->g:Lcom/facebook/share/model/GameRequestContent$c;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 155
    iget-object v0, p0, Lcom/facebook/share/model/GameRequestContent;->h:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 156
    return-void
.end method
