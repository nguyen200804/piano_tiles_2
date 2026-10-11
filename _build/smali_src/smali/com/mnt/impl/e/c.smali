.class public final Lcom/mnt/impl/e/c;
.super Lcom/mnt/Ad;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/mnt/impl/e/c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:I

.field public d:Ljava/lang/String;

.field public e:J

.field public f:Ljava/lang/String;

.field public g:I

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:I

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field private m:Lcom/mnt/impl/b/b;

.field private n:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/mnt/impl/e;->li:Ljava/lang/String;

    .line 132
    new-instance v0, Lcom/mnt/impl/e/d;

    invoke-direct {v0}, Lcom/mnt/impl/e/d;-><init>()V

    sput-object v0, Lcom/mnt/impl/e/c;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FFLjava/lang/String;Ljava/lang/String;ILjava/lang/String;JLjava/lang/String;ILjava/util/Map;Lcom/mnt/impl/b/b;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 17
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
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/mnt/impl/b/b;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 115
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    move-object/from16 v14, p19

    move/from16 v15, p18

    move-object/from16 v16, p28

    invoke-direct/range {v3 .. v16}, Lcom/mnt/Ad;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FFLjava/util/Map;ILjava/lang/String;)V

    .line 116
    move-object/from16 v0, p11

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mnt/impl/e/c;->a:Ljava/lang/String;

    .line 117
    move-object/from16 v0, p12

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mnt/impl/e/c;->b:Ljava/lang/String;

    .line 118
    move/from16 v0, p13

    move-object/from16 v1, p0

    iput v0, v1, Lcom/mnt/impl/e/c;->c:I

    .line 119
    move-object/from16 v0, p14

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mnt/impl/e/c;->d:Ljava/lang/String;

    .line 120
    move-wide/from16 v0, p15

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/mnt/impl/e/c;->e:J

    .line 121
    move-object/from16 v0, p17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mnt/impl/e/c;->f:Ljava/lang/String;

    .line 122
    move-object/from16 v0, p20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mnt/impl/e/c;->m:Lcom/mnt/impl/b/b;

    .line 123
    move/from16 v0, p21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/mnt/impl/e/c;->g:I

    .line 124
    move-object/from16 v0, p22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mnt/impl/e/c;->h:Ljava/lang/String;

    .line 125
    move-object/from16 v0, p23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mnt/impl/e/c;->i:Ljava/lang/String;

    .line 126
    move-object/from16 v0, p24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mnt/impl/e/c;->n:Ljava/lang/String;

    .line 127
    move/from16 v0, p25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/mnt/impl/e/c;->j:I

    .line 128
    move-object/from16 v0, p26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mnt/impl/e/c;->k:Ljava/lang/String;

    .line 129
    move-object/from16 v0, p27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mnt/impl/e/c;->l:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public static a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    :try_start_0
    check-cast p0, Lcom/mnt/Ad;

    .line 171
    invoke-virtual {p0}, Lcom/mnt/Ad;->getAdCallToAction()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 176
    :goto_0
    return-object v0

    .line 174
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 176
    sget-object v0, Lcom/mnt/impl/e;->lj:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 93
    invoke-super {p0, p1, p2}, Lcom/mnt/Ad;->writeToParcel(Landroid/os/Parcel;I)V

    .line 94
    iget-object v0, p0, Lcom/mnt/impl/e/c;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/mnt/impl/e/c;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 96
    iget v0, p0, Lcom/mnt/impl/e/c;->c:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    iget-object v0, p0, Lcom/mnt/impl/e/c;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 98
    iget-wide v0, p0, Lcom/mnt/impl/e/c;->e:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 99
    iget-object v0, p0, Lcom/mnt/impl/e/c;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 100
    const/4 v0, -0x1

    .line 101
    iget-object v1, p0, Lcom/mnt/impl/e/c;->m:Lcom/mnt/impl/b/b;

    if-eqz v1, :cond_0

    .line 102
    iget-object v0, p0, Lcom/mnt/impl/e/c;->m:Lcom/mnt/impl/b/b;

    .line 1053
    iget v0, v0, Lcom/mnt/impl/b/b;->c:I

    .line 104
    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    iget v0, p0, Lcom/mnt/impl/e/c;->g:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    iget-object v0, p0, Lcom/mnt/impl/e/c;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/mnt/impl/e/c;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/mnt/impl/e/c;->n:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 109
    iget v0, p0, Lcom/mnt/impl/e/c;->j:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    iget-object v0, p0, Lcom/mnt/impl/e/c;->k:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/mnt/impl/e/c;->l:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 112
    return-void
.end method
