.class public Lcom/duapps/ad/entity/AdData;
.super Ljava/lang/Object;
.source "AdData.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duapps/ad/entity/AdData$a;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/duapps/ad/entity/AdData;",
            ">;"
        }
    .end annotation
.end field

.field private static final J:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public A:I

.field public B:Ljava/lang/String;

.field public C:J

.field public D:J

.field public E:Ljava/lang/String;

.field public F:[Ljava/lang/String;

.field public G:[Ljava/lang/String;

.field public H:I

.field public I:I

.field private K:Lcom/duapps/ad/entity/AdData$a;

.field public a:I

.field public b:J

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:I

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Z

.field public k:Z

.field public l:F

.field public m:I

.field public n:I

.field public o:Ljava/lang/String;

.field public p:J

.field public q:I

.field public r:F

.field public s:I

.field public t:Ljava/lang/String;

.field public u:Ljava/lang/String;

.field public v:Ljava/lang/String;

.field public w:Ljava/lang/String;

.field public x:Ljava/lang/String;

.field public y:I

.field public z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 51
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/duapps/ad/entity/AdData;->J:Ljava/util/HashSet;

    .line 53
    sget-object v0, Lcom/duapps/ad/entity/AdData;->J:Ljava/util/HashSet;

    const-string v1, "sites"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 54
    sget-object v0, Lcom/duapps/ad/entity/AdData;->J:Ljava/util/HashSet;

    const-string v1, "yeahmobi"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 55
    sget-object v0, Lcom/duapps/ad/entity/AdData;->J:Ljava/util/HashSet;

    const-string v1, "matomy"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 56
    sget-object v0, Lcom/duapps/ad/entity/AdData;->J:Ljava/util/HashSet;

    const-string v1, "kissmyads"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 57
    sget-object v0, Lcom/duapps/ad/entity/AdData;->J:Ljava/util/HashSet;

    const-string v1, "applift"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 58
    sget-object v0, Lcom/duapps/ad/entity/AdData;->J:Ljava/util/HashSet;

    const-string v1, "glispa"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 59
    sget-object v0, Lcom/duapps/ad/entity/AdData;->J:Ljava/util/HashSet;

    const-string v1, "appflood"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 60
    sget-object v0, Lcom/duapps/ad/entity/AdData;->J:Ljava/util/HashSet;

    const-string v1, "efun"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 61
    sget-object v0, Lcom/duapps/ad/entity/AdData;->J:Ljava/util/HashSet;

    const-string v1, "motiveinteractive"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 62
    sget-object v0, Lcom/duapps/ad/entity/AdData;->J:Ljava/util/HashSet;

    const-string v1, "apploop"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 63
    sget-object v0, Lcom/duapps/ad/entity/AdData;->J:Ljava/util/HashSet;

    const-string v1, "performence"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 64
    sget-object v0, Lcom/duapps/ad/entity/AdData;->J:Ljava/util/HashSet;

    const-string v1, "admobix"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 381
    new-instance v0, Lcom/duapps/ad/entity/AdData$1;

    invoke-direct {v0}, Lcom/duapps/ad/entity/AdData$1;-><init>()V

    sput-object v0, Lcom/duapps/ad/entity/AdData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput v0, p0, Lcom/duapps/ad/entity/AdData;->g:I

    .line 117
    iput v0, p0, Lcom/duapps/ad/entity/AdData;->n:I

    .line 154
    const-string v0, "download"

    iput-object v0, p0, Lcom/duapps/ad/entity/AdData;->E:Ljava/lang/String;

    .line 164
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v0, -0x1

    .line 343
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput v0, p0, Lcom/duapps/ad/entity/AdData;->g:I

    .line 117
    iput v0, p0, Lcom/duapps/ad/entity/AdData;->n:I

    .line 154
    const-string v0, "download"

    iput-object v0, p0, Lcom/duapps/ad/entity/AdData;->E:Ljava/lang/String;

    .line 344
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/duapps/ad/entity/AdData;->b:J

    .line 345
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duapps/ad/entity/AdData;->c:Ljava/lang/String;

    .line 346
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duapps/ad/entity/AdData;->d:Ljava/lang/String;

    .line 347
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duapps/ad/entity/AdData;->e:Ljava/lang/String;

    .line 348
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duapps/ad/entity/AdData;->f:Ljava/lang/String;

    .line 349
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/duapps/ad/entity/AdData;->g:I

    .line 350
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duapps/ad/entity/AdData;->h:Ljava/lang/String;

    .line 351
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duapps/ad/entity/AdData;->i:Ljava/lang/String;

    .line 352
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/duapps/ad/entity/AdData;->j:Z

    .line 353
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/duapps/ad/entity/AdData;->k:Z

    .line 354
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/duapps/ad/entity/AdData;->l:F

    .line 355
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/duapps/ad/entity/AdData;->m:I

    .line 356
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/duapps/ad/entity/AdData;->n:I

    .line 357
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duapps/ad/entity/AdData;->o:Ljava/lang/String;

    .line 358
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/duapps/ad/entity/AdData;->p:J

    .line 359
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/duapps/ad/entity/AdData;->q:I

    .line 360
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/duapps/ad/entity/AdData;->r:F

    .line 361
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/duapps/ad/entity/AdData;->s:I

    .line 362
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duapps/ad/entity/AdData;->u:Ljava/lang/String;

    .line 363
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duapps/ad/entity/AdData;->v:Ljava/lang/String;

    .line 364
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/duapps/ad/entity/AdData;->A:I

    .line 365
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/duapps/ad/entity/AdData;->H:I

    .line 366
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duapps/ad/entity/AdData;->t:Ljava/lang/String;

    .line 367
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duapps/ad/entity/AdData;->w:Ljava/lang/String;

    .line 368
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duapps/ad/entity/AdData;->x:Ljava/lang/String;

    .line 369
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/duapps/ad/entity/AdData;->y:I

    .line 370
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duapps/ad/entity/AdData;->z:Ljava/lang/String;

    .line 371
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duapps/ad/entity/AdData;->B:Ljava/lang/String;

    .line 372
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/duapps/ad/entity/AdData;->D:J

    .line 373
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/duapps/ad/entity/AdData;->C:J

    .line 374
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duapps/ad/entity/AdData;->F:[Ljava/lang/String;

    .line 375
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duapps/ad/entity/AdData;->G:[Ljava/lang/String;

    .line 376
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/duapps/ad/entity/AdData;->H:I

    .line 377
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/duapps/ad/entity/AdData;->I:I

    .line 378
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/duapps/ad/entity/AdData;->a:I

    .line 379
    return-void

    :cond_0
    move v0, v2

    .line 352
    goto/16 :goto_0

    :cond_1
    move v1, v2

    .line 353
    goto/16 :goto_1
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/duapps/ad/entity/AdData$1;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/duapps/ad/entity/AdData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput v4, p0, Lcom/duapps/ad/entity/AdData;->g:I

    .line 117
    iput v4, p0, Lcom/duapps/ad/entity/AdData;->n:I

    .line 154
    const-string v0, "download"

    iput-object v0, p0, Lcom/duapps/ad/entity/AdData;->E:Ljava/lang/String;

    .line 201
    iput-object p1, p0, Lcom/duapps/ad/entity/AdData;->x:Ljava/lang/String;

    .line 202
    iput p2, p0, Lcom/duapps/ad/entity/AdData;->y:I

    .line 203
    iput-object p3, p0, Lcom/duapps/ad/entity/AdData;->z:Ljava/lang/String;

    .line 204
    iput-object p4, p0, Lcom/duapps/ad/entity/AdData;->w:Ljava/lang/String;

    .line 206
    const-string v0, "id"

    invoke-virtual {p5, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/duapps/ad/entity/AdData;->b:J

    .line 207
    const-string v0, "title"

    invoke-virtual {p5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duapps/ad/entity/AdData;->c:Ljava/lang/String;

    .line 208
    const-string v0, "source"

    invoke-virtual {p5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duapps/ad/entity/AdData;->o:Ljava/lang/String;

    .line 209
    const-string v0, "adUrl"

    invoke-virtual {p5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duapps/ad/entity/AdData;->i:Ljava/lang/String;

    .line 211
    :try_start_0
    iget-object v0, p0, Lcom/duapps/ad/entity/AdData;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/duapps/ad/c/b/c;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duapps/ad/entity/AdData;->i:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    :goto_0
    const-string v0, "pkg"

    invoke-virtual {p5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duapps/ad/entity/AdData;->d:Ljava/lang/String;

    .line 217
    :try_start_1
    iget-object v0, p0, Lcom/duapps/ad/entity/AdData;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/duapps/ad/c/b/c;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duapps/ad/entity/AdData;->d:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 221
    :goto_1
    const-string v0, "shortDesc"

    invoke-virtual {p5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duapps/ad/entity/AdData;->f:Ljava/lang/String;

    .line 222
    const-string v0, "description"

    invoke-virtual {p5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duapps/ad/entity/AdData;->e:Ljava/lang/String;

    .line 223
    const-string v0, "openType"

    invoke-virtual {p5, v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/duapps/ad/entity/AdData;->n:I

    .line 225
    const-string v0, "integral"

    invoke-virtual {p5, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/duapps/ad/entity/AdData;->m:I

    .line 226
    const-string v0, "pts"

    const-wide/high16 v2, 0x4012000000000000L    # 4.5

    invoke-virtual {p5, v0, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/duapps/ad/entity/AdData;->l:F

    .line 227
    const-string v0, "contentRating"

    const-wide/16 v2, 0x0

    invoke-virtual {p5, v0, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/duapps/ad/entity/AdData;->r:F

    .line 228
    const-string v0, "label"

    invoke-virtual {p5, v0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/duapps/ad/entity/AdData;->s:I

    .line 229
    const-string v0, "cate"

    invoke-virtual {p5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duapps/ad/entity/AdData;->u:Ljava/lang/String;

    .line 230
    const-string v0, "exg"

    invoke-virtual {p5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duapps/ad/entity/AdData;->v:Ljava/lang/String;

    .line 231
    const-string v0, "preClick"

    invoke-virtual {p5, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/duapps/ad/entity/AdData;->A:I

    .line 232
    const-string v0, "pp"

    invoke-virtual {p5, v0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/duapps/ad/entity/AdData;->H:I

    .line 233
    const-string v0, "tts"

    invoke-virtual {p5, v0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/duapps/ad/entity/AdData;->a:I

    .line 235
    const-string v0, "images"

    invoke-virtual {p5, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 236
    invoke-static {v0, v6}, Lcom/duapps/ad/entity/AdData;->a(Lorg/json/JSONArray;Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/duapps/ad/entity/AdData;->h:Ljava/lang/String;

    .line 237
    invoke-static {v0}, Lcom/duapps/ad/entity/AdData;->a(Lorg/json/JSONArray;)Lcom/duapps/ad/entity/AdData$a;

    move-result-object v0

    iput-object v0, p0, Lcom/duapps/ad/entity/AdData;->K:Lcom/duapps/ad/entity/AdData$a;

    .line 238
    const-string v0, "bigImages"

    invoke-virtual {p5, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 239
    invoke-static {v0, v6}, Lcom/duapps/ad/entity/AdData;->a(Lorg/json/JSONArray;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duapps/ad/entity/AdData;->t:Ljava/lang/String;

    .line 240
    const-string v0, "buttonDes"

    invoke-virtual {p5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duapps/ad/entity/AdData;->B:Ljava/lang/String;

    .line 241
    const-string v0, "cacheTime"

    const-wide/16 v2, 0x78

    invoke-virtual {p5, v0, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/duapps/ad/entity/AdData;->D:J

    .line 242
    const-string v0, "impUrls"

    invoke-virtual {p5, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lcom/duapps/ad/entity/AdData;->b(Lorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duapps/ad/entity/AdData;->F:[Ljava/lang/String;

    .line 243
    const-string v0, "cUrls"

    invoke-virtual {p5, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lcom/duapps/ad/entity/AdData;->b(Lorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duapps/ad/entity/AdData;->G:[Ljava/lang/String;

    .line 244
    const-string v0, "inctRank"

    invoke-virtual {p5, v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/duapps/ad/entity/AdData;->I:I

    .line 245
    return-void

    .line 212
    :catch_0
    move-exception v0

    .line 213
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 218
    :catch_1
    move-exception v0

    .line 219
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;J)V
    .locals 0

    .prologue
    .line 196
    invoke-direct/range {p0 .. p5}, Lcom/duapps/ad/entity/AdData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 197
    iput-wide p6, p0, Lcom/duapps/ad/entity/AdData;->C:J

    .line 198
    return-void
.end method

.method public static a(Lorg/json/JSONArray;)Lcom/duapps/ad/entity/AdData$a;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 556
    if-nez p0, :cond_1

    .line 577
    :cond_0
    :goto_0
    return-object v0

    .line 559
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    :goto_1
    if-ge v1, v2, :cond_0

    .line 560
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 561
    if-eqz v3, :cond_2

    .line 563
    new-instance v0, Lcom/duapps/ad/entity/AdData$a;

    invoke-direct {v0}, Lcom/duapps/ad/entity/AdData$a;-><init>()V

    .line 564
    const-string v1, "id"

    const-string v2, ""

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/duapps/ad/entity/AdData$a;->a:Ljava/lang/String;

    .line 566
    :try_start_0
    const-string v1, "url"

    const-string v2, ""

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/duapps/ad/c/b/c;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/duapps/ad/entity/AdData$a;->b:Ljava/lang/String;

    .line 567
    const-string v1, "decode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parseImages decode succ: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v0, Lcom/duapps/ad/entity/AdData$a;->b:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 572
    :goto_2
    const-string v1, "type"

    const-string v2, ""

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/duapps/ad/entity/AdData$a;->c:Ljava/lang/String;

    .line 573
    const-string v1, "res"

    const-string v2, ""

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/duapps/ad/entity/AdData$a;->d:Ljava/lang/String;

    goto :goto_0

    .line 568
    :catch_0
    move-exception v1

    .line 569
    const-string v1, "url"

    const-string v2, ""

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/duapps/ad/entity/AdData$a;->b:Ljava/lang/String;

    .line 570
    const-string v1, "decode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parseImages decode fail: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v0, Lcom/duapps/ad/entity/AdData$a;->b:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 559
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/duapps/ad/entity/AdData;
    .locals 4

    .prologue
    .line 176
    new-instance v0, Lcom/duapps/ad/entity/AdData;

    invoke-direct {v0}, Lcom/duapps/ad/entity/AdData;-><init>()V

    .line 177
    invoke-static {p0}, Lcom/duapps/ad/base/p;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/duapps/ad/entity/AdData;->x:Ljava/lang/String;

    .line 178
    const/16 v1, -0x3e9

    iput v1, v0, Lcom/duapps/ad/entity/AdData;->y:I

    .line 179
    int-to-long v2, p1

    iput-wide v2, v0, Lcom/duapps/ad/entity/AdData;->b:J

    .line 180
    const-string v1, "directflow"

    iput-object v1, v0, Lcom/duapps/ad/entity/AdData;->w:Ljava/lang/String;

    .line 181
    const-string v1, "directflow"

    iput-object v1, v0, Lcom/duapps/ad/entity/AdData;->z:Ljava/lang/String;

    .line 182
    iput-object p2, v0, Lcom/duapps/ad/entity/AdData;->c:Ljava/lang/String;

    .line 183
    iput-object p3, v0, Lcom/duapps/ad/entity/AdData;->d:Ljava/lang/String;

    .line 184
    iput-object p4, v0, Lcom/duapps/ad/entity/AdData;->i:Ljava/lang/String;

    .line 185
    const/4 v1, 0x1

    iput v1, v0, Lcom/duapps/ad/entity/AdData;->n:I

    .line 187
    return-object v0
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/duapps/ad/entity/AdData;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 455
    new-instance v0, Lcom/duapps/ad/entity/AdData;

    invoke-direct {v0}, Lcom/duapps/ad/entity/AdData;-><init>()V

    .line 457
    const-string v1, "channel"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/duapps/ad/entity/AdData;->E:Ljava/lang/String;

    .line 458
    const-string v1, "id"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/duapps/ad/entity/AdData;->b:J

    .line 459
    const-string v1, "name"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/duapps/ad/entity/AdData;->c:Ljava/lang/String;

    .line 460
    const-string v1, "pkg"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/duapps/ad/entity/AdData;->d:Ljava/lang/String;

    .line 461
    const-string v1, "desc"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/duapps/ad/entity/AdData;->e:Ljava/lang/String;

    .line 462
    const-string v1, "sdesc"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/duapps/ad/entity/AdData;->f:Ljava/lang/String;

    .line 463
    const-string v1, "pos"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/duapps/ad/entity/AdData;->g:I

    .line 464
    const-string v1, "opentype"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/duapps/ad/entity/AdData;->n:I

    .line 465
    const-string v1, "urlsource"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/duapps/ad/entity/AdData;->o:Ljava/lang/String;

    .line 466
    const-string v1, "icon"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/duapps/ad/entity/AdData;->h:Ljava/lang/String;

    .line 467
    const-string v1, "playurl"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/duapps/ad/entity/AdData;->i:Ljava/lang/String;

    .line 468
    const-string v1, "pts"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v2

    double-to-float v1, v2

    iput v1, v0, Lcom/duapps/ad/entity/AdData;->l:F

    .line 469
    const-string v1, "points"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/duapps/ad/entity/AdData;->m:I

    .line 470
    const-string v1, "down"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/duapps/ad/entity/AdData;->p:J

    .line 471
    const-string v1, "adtype"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/duapps/ad/entity/AdData;->q:I

    .line 472
    const-string v1, "rating"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v2

    double-to-float v1, v2

    iput v1, v0, Lcom/duapps/ad/entity/AdData;->r:F

    .line 473
    const-string v1, "logId"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/duapps/ad/entity/AdData;->w:Ljava/lang/String;

    .line 474
    const-string v1, "license"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/duapps/ad/entity/AdData;->x:Ljava/lang/String;

    .line 475
    const-string v1, "sid"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/duapps/ad/entity/AdData;->y:I

    .line 476
    const-string v1, "sType"

    const-string v2, "native"

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/duapps/ad/entity/AdData;->z:Ljava/lang/String;

    .line 477
    const-string v1, "label"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/duapps/ad/entity/AdData;->s:I

    .line 478
    const-string v1, "ttc"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/duapps/ad/entity/AdData;->A:I

    .line 479
    const-string v1, "preClick"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/duapps/ad/entity/AdData;->A:I

    .line 480
    const-string v1, "pp"

    invoke-virtual {p0, v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/duapps/ad/entity/AdData;->H:I

    .line 481
    const-string v1, "cate"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/duapps/ad/entity/AdData;->u:Ljava/lang/String;

    .line 482
    const-string v1, "exg"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/duapps/ad/entity/AdData;->v:Ljava/lang/String;

    .line 483
    const-string v1, "impUrls"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v1}, Lcom/duapps/ad/entity/AdData;->b(Lorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/duapps/ad/entity/AdData;->F:[Ljava/lang/String;

    .line 484
    const-string v1, "cUrls"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v1}, Lcom/duapps/ad/entity/AdData;->b(Lorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/duapps/ad/entity/AdData;->G:[Ljava/lang/String;

    .line 485
    const-string v1, "pp"

    invoke-virtual {p0, v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/duapps/ad/entity/AdData;->H:I

    .line 486
    const-string v1, "inctRank"

    const/4 v2, -0x1

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/duapps/ad/entity/AdData;->I:I

    .line 487
    return-object v0
.end method

.method public static a(Lorg/json/JSONArray;Z)Ljava/lang/String;
    .locals 3

    .prologue
    .line 533
    if-nez p0, :cond_0

    .line 534
    const-string v0, ""

    .line 552
    :goto_0
    return-object v0

    .line 537
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    :goto_1
    if-ge v0, v1, :cond_3

    .line 538
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 539
    if-eqz v2, :cond_2

    .line 541
    if-nez p1, :cond_1

    .line 542
    const-string v0, "url"

    const-string v1, ""

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 545
    :cond_1
    :try_start_0
    const-string v0, "url"

    const-string v1, ""

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/duapps/ad/c/b/c;->e(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 546
    :catch_0
    move-exception v0

    .line 547
    const-string v0, "url"

    const-string v1, ""

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 537
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 552
    :cond_3
    const-string v0, ""

    goto :goto_0
.end method

.method public static a(Lcom/duapps/ad/entity/AdData;)Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 497
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 499
    const-string v1, "channel"

    iget-object v2, p0, Lcom/duapps/ad/entity/AdData;->E:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 500
    const-string v1, "id"

    iget-wide v2, p0, Lcom/duapps/ad/entity/AdData;->b:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 501
    const-string v1, "name"

    iget-object v2, p0, Lcom/duapps/ad/entity/AdData;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 502
    const-string v1, "pkg"

    iget-object v2, p0, Lcom/duapps/ad/entity/AdData;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 503
    const-string v1, "desc"

    iget-object v2, p0, Lcom/duapps/ad/entity/AdData;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 504
    const-string v1, "sdesc"

    iget-object v2, p0, Lcom/duapps/ad/entity/AdData;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 505
    const-string v1, "pos"

    iget v2, p0, Lcom/duapps/ad/entity/AdData;->g:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 506
    const-string v1, "opentype"

    iget v2, p0, Lcom/duapps/ad/entity/AdData;->n:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 507
    const-string v1, "urlsource"

    iget-object v2, p0, Lcom/duapps/ad/entity/AdData;->o:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 508
    const-string v1, "icon"

    iget-object v2, p0, Lcom/duapps/ad/entity/AdData;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 509
    const-string v1, "playurl"

    iget-object v2, p0, Lcom/duapps/ad/entity/AdData;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 510
    const-string v1, "pts"

    iget v2, p0, Lcom/duapps/ad/entity/AdData;->l:F

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 511
    const-string v1, "points"

    iget v2, p0, Lcom/duapps/ad/entity/AdData;->m:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 512
    const-string v1, "down"

    iget-wide v2, p0, Lcom/duapps/ad/entity/AdData;->p:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 513
    const-string v1, "adtype"

    iget v2, p0, Lcom/duapps/ad/entity/AdData;->q:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 514
    const-string v1, "rating"

    iget v2, p0, Lcom/duapps/ad/entity/AdData;->r:F

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 515
    const-string v1, "logId"

    iget-object v2, p0, Lcom/duapps/ad/entity/AdData;->w:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 516
    const-string v1, "license"

    iget-object v2, p0, Lcom/duapps/ad/entity/AdData;->x:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 517
    const-string v1, "sid"

    iget v2, p0, Lcom/duapps/ad/entity/AdData;->y:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 518
    const-string v1, "sType"

    iget-object v2, p0, Lcom/duapps/ad/entity/AdData;->z:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 519
    const-string v1, "label"

    iget v2, p0, Lcom/duapps/ad/entity/AdData;->s:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 520
    const-string v1, "preClick"

    iget v2, p0, Lcom/duapps/ad/entity/AdData;->A:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 521
    const-string v1, "pp"

    iget v2, p0, Lcom/duapps/ad/entity/AdData;->H:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 522
    const-string v1, "cate"

    iget-object v2, p0, Lcom/duapps/ad/entity/AdData;->u:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 523
    const-string v1, "exg"

    iget-object v2, p0, Lcom/duapps/ad/entity/AdData;->v:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 524
    const-string v1, "impUrls"

    iget-object v2, p0, Lcom/duapps/ad/entity/AdData;->F:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 525
    const-string v1, "cUrls"

    iget-object v2, p0, Lcom/duapps/ad/entity/AdData;->G:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 526
    const-string v1, "pp"

    iget v2, p0, Lcom/duapps/ad/entity/AdData;->H:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 527
    const-string v1, "ttc"

    iget v2, p0, Lcom/duapps/ad/entity/AdData;->A:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 528
    const-string v1, "inctRank"

    iget v2, p0, Lcom/duapps/ad/entity/AdData;->I:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 529
    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/duapps/ad/entity/AdData;)Z
    .locals 1

    .prologue
    .line 429
    iget v0, p1, Lcom/duapps/ad/entity/AdData;->A:I

    if-lez v0, :cond_0

    .line 430
    const/4 v0, 0x1

    .line 432
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Lcom/duapps/ad/entity/AdData;)Z
    .locals 1

    .prologue
    .line 589
    if-eqz p0, :cond_0

    iget v0, p0, Lcom/duapps/ad/entity/AdData;->a:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Lorg/json/JSONArray;)[Ljava/lang/String;
    .locals 4

    .prologue
    .line 249
    if-eqz p0, :cond_0

    .line 250
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 251
    new-array v0, v2, [Ljava/lang/String;

    .line 253
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 254
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    .line 255
    aget-object v3, v0, v1

    invoke-static {v3}, Lcom/duapps/ad/c/b/c;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 253
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 258
    :catch_0
    move-exception v0

    .line 259
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 264
    :cond_0
    :goto_1
    const/4 v0, 0x0

    :cond_1
    return-object v0

    .line 260
    :catch_1
    move-exception v0

    .line 261
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public a()Z
    .locals 6

    .prologue
    .line 445
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/duapps/ad/entity/AdData;->C:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/duapps/ad/entity/AdData;->D:J

    const-wide/16 v4, 0x3c

    mul-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 300
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 404
    if-ne p0, p1, :cond_1

    .line 425
    :cond_0
    :goto_0
    return v0

    .line 406
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 407
    goto :goto_0

    .line 408
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 409
    goto :goto_0

    .line 411
    :cond_3
    check-cast p1, Lcom/duapps/ad/entity/AdData;

    .line 412
    iget-object v2, p0, Lcom/duapps/ad/entity/AdData;->d:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 413
    iget-object v2, p1, Lcom/duapps/ad/entity/AdData;->d:Ljava/lang/String;

    if-eqz v2, :cond_5

    move v0, v1

    .line 414
    goto :goto_0

    .line 415
    :cond_4
    iget-object v2, p0, Lcom/duapps/ad/entity/AdData;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/duapps/ad/entity/AdData;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    .line 416
    goto :goto_0

    .line 418
    :cond_5
    iget-object v2, p0, Lcom/duapps/ad/entity/AdData;->i:Ljava/lang/String;

    if-nez v2, :cond_6

    .line 419
    iget-object v2, p1, Lcom/duapps/ad/entity/AdData;->i:Ljava/lang/String;

    if-eqz v2, :cond_0

    move v0, v1

    .line 420
    goto :goto_0

    .line 422
    :cond_6
    iget-object v2, p0, Lcom/duapps/ad/entity/AdData;->i:Ljava/lang/String;

    iget-object v3, p1, Lcom/duapps/ad/entity/AdData;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 423
    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 395
    .line 397
    iget-object v0, p0, Lcom/duapps/ad/entity/AdData;->d:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 398
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/duapps/ad/entity/AdData;->i:Ljava/lang/String;

    if-nez v2, :cond_1

    :goto_1
    add-int/2addr v0, v1

    .line 399
    return v0

    .line 397
    :cond_0
    iget-object v0, p0, Lcom/duapps/ad/entity/AdData;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 398
    :cond_1
    iget-object v1, p0, Lcom/duapps/ad/entity/AdData;->i:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 305
    iget-wide v4, p0, Lcom/duapps/ad/entity/AdData;->b:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 306
    iget-object v0, p0, Lcom/duapps/ad/entity/AdData;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 307
    iget-object v0, p0, Lcom/duapps/ad/entity/AdData;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 308
    iget-object v0, p0, Lcom/duapps/ad/entity/AdData;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 309
    iget-object v0, p0, Lcom/duapps/ad/entity/AdData;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 310
    iget v0, p0, Lcom/duapps/ad/entity/AdData;->g:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 311
    iget-object v0, p0, Lcom/duapps/ad/entity/AdData;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 312
    iget-object v0, p0, Lcom/duapps/ad/entity/AdData;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 313
    iget-boolean v0, p0, Lcom/duapps/ad/entity/AdData;->j:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 314
    iget-boolean v0, p0, Lcom/duapps/ad/entity/AdData;->k:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 315
    iget v0, p0, Lcom/duapps/ad/entity/AdData;->l:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 316
    iget v0, p0, Lcom/duapps/ad/entity/AdData;->m:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 317
    iget v0, p0, Lcom/duapps/ad/entity/AdData;->n:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 318
    iget-object v0, p0, Lcom/duapps/ad/entity/AdData;->o:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 319
    iget-wide v0, p0, Lcom/duapps/ad/entity/AdData;->p:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 320
    iget v0, p0, Lcom/duapps/ad/entity/AdData;->q:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 321
    iget v0, p0, Lcom/duapps/ad/entity/AdData;->r:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 322
    iget v0, p0, Lcom/duapps/ad/entity/AdData;->s:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 323
    iget-object v0, p0, Lcom/duapps/ad/entity/AdData;->u:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 324
    iget-object v0, p0, Lcom/duapps/ad/entity/AdData;->v:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 325
    iget v0, p0, Lcom/duapps/ad/entity/AdData;->A:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 326
    iget v0, p0, Lcom/duapps/ad/entity/AdData;->H:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 327
    iget-object v0, p0, Lcom/duapps/ad/entity/AdData;->t:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 328
    iget-object v0, p0, Lcom/duapps/ad/entity/AdData;->w:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 329
    iget-object v0, p0, Lcom/duapps/ad/entity/AdData;->x:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 330
    iget v0, p0, Lcom/duapps/ad/entity/AdData;->y:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 331
    iget-object v0, p0, Lcom/duapps/ad/entity/AdData;->z:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 332
    iget-object v0, p0, Lcom/duapps/ad/entity/AdData;->B:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 333
    iget-wide v0, p0, Lcom/duapps/ad/entity/AdData;->D:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 334
    iget-wide v0, p0, Lcom/duapps/ad/entity/AdData;->C:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 335
    iget-object v0, p0, Lcom/duapps/ad/entity/AdData;->F:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 336
    iget-object v0, p0, Lcom/duapps/ad/entity/AdData;->G:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 337
    iget v0, p0, Lcom/duapps/ad/entity/AdData;->H:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 338
    iget v0, p0, Lcom/duapps/ad/entity/AdData;->I:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 339
    iget v0, p0, Lcom/duapps/ad/entity/AdData;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 341
    return-void

    :cond_0
    move v0, v2

    .line 313
    goto/16 :goto_0

    :cond_1
    move v1, v2

    .line 314
    goto/16 :goto_1
.end method
