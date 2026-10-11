.class public Lcom/duapps/ad/inmobi/IMData;
.super Ljava/lang/Object;
.source "IMData.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duapps/ad/inmobi/IMData$a;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/duapps/ad/inmobi/IMData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:J

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public o:F

.field public p:Ljava/lang/String;

.field public q:Ljava/lang/String;

.field public r:Ljava/lang/String;

.field public s:Ljava/lang/String;

.field public t:Ljava/lang/String;

.field public u:Ljava/lang/String;

.field public v:J

.field public w:Z

.field public x:Z

.field public y:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 170
    new-instance v0, Lcom/duapps/ad/inmobi/IMData$1;

    invoke-direct {v0}, Lcom/duapps/ad/inmobi/IMData$1;-><init>()V

    sput-object v0, Lcom/duapps/ad/inmobi/IMData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-boolean v0, p0, Lcom/duapps/ad/inmobi/IMData;->w:Z

    .line 50
    iput-boolean v0, p0, Lcom/duapps/ad/inmobi/IMData;->x:Z

    .line 51
    const-string v0, "inmobi"

    iput-object v0, p0, Lcom/duapps/ad/inmobi/IMData;->y:Ljava/lang/String;

    .line 80
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-boolean v2, p0, Lcom/duapps/ad/inmobi/IMData;->w:Z

    .line 50
    iput-boolean v2, p0, Lcom/duapps/ad/inmobi/IMData;->x:Z

    .line 51
    const-string v0, "inmobi"

    iput-object v0, p0, Lcom/duapps/ad/inmobi/IMData;->y:Ljava/lang/String;

    .line 183
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duapps/ad/inmobi/IMData;->a:Ljava/lang/String;

    .line 184
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duapps/ad/inmobi/IMData;->c:Ljava/lang/String;

    .line 185
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/duapps/ad/inmobi/IMData;->b:I

    .line 186
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duapps/ad/inmobi/IMData;->d:Ljava/lang/String;

    .line 188
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/duapps/ad/inmobi/IMData;->e:J

    .line 189
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duapps/ad/inmobi/IMData;->k:Ljava/lang/String;

    .line 190
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/duapps/ad/inmobi/IMData;->g:I

    .line 191
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/duapps/ad/inmobi/IMData;->f:I

    .line 192
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/duapps/ad/inmobi/IMData;->i:I

    .line 193
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/duapps/ad/inmobi/IMData;->h:I

    .line 194
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/duapps/ad/inmobi/IMData;->j:I

    .line 196
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duapps/ad/inmobi/IMData;->m:Ljava/lang/String;

    .line 197
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duapps/ad/inmobi/IMData;->n:Ljava/lang/String;

    .line 198
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duapps/ad/inmobi/IMData;->s:Ljava/lang/String;

    .line 199
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duapps/ad/inmobi/IMData;->p:Ljava/lang/String;

    .line 200
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duapps/ad/inmobi/IMData;->q:Ljava/lang/String;

    .line 201
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duapps/ad/inmobi/IMData;->r:Ljava/lang/String;

    .line 202
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duapps/ad/inmobi/IMData;->t:Ljava/lang/String;

    .line 203
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duapps/ad/inmobi/IMData;->u:Ljava/lang/String;

    .line 204
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/duapps/ad/inmobi/IMData;->o:F

    .line 205
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/duapps/ad/inmobi/IMData;->v:J

    .line 206
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/duapps/ad/inmobi/IMData;->w:Z

    .line 207
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/duapps/ad/inmobi/IMData;->x:Z

    .line 208
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duapps/ad/inmobi/IMData;->l:Ljava/lang/String;

    .line 209
    return-void

    :cond_0
    move v0, v2

    .line 206
    goto :goto_0

    :cond_1
    move v1, v2

    .line 207
    goto :goto_1
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/duapps/ad/inmobi/IMData$1;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/duapps/ad/inmobi/IMData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILorg/json/JSONObject;J)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-boolean v0, p0, Lcom/duapps/ad/inmobi/IMData;->w:Z

    .line 50
    iput-boolean v0, p0, Lcom/duapps/ad/inmobi/IMData;->x:Z

    .line 51
    const-string v0, "inmobi"

    iput-object v0, p0, Lcom/duapps/ad/inmobi/IMData;->y:Ljava/lang/String;

    .line 84
    iput-object p1, p0, Lcom/duapps/ad/inmobi/IMData;->a:Ljava/lang/String;

    .line 85
    iput p2, p0, Lcom/duapps/ad/inmobi/IMData;->b:I

    .line 86
    iput-object p3, p0, Lcom/duapps/ad/inmobi/IMData;->d:Ljava/lang/String;

    .line 87
    iput-object p4, p0, Lcom/duapps/ad/inmobi/IMData;->c:Ljava/lang/String;

    .line 89
    const-string v0, "id"

    invoke-virtual {p6, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/duapps/ad/inmobi/IMData;->e:J

    .line 90
    const-string v0, "source"

    invoke-virtual {p6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duapps/ad/inmobi/IMData;->k:Ljava/lang/String;

    .line 91
    const-string v0, "openType"

    const/4 v1, -0x1

    invoke-virtual {p6, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/duapps/ad/inmobi/IMData;->g:I

    .line 92
    const-string v0, "mType"

    invoke-virtual {p6, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/duapps/ad/inmobi/IMData;->f:I

    .line 93
    const-string v0, "label"

    invoke-virtual {p6, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/duapps/ad/inmobi/IMData;->i:I

    .line 94
    const-string v0, "preClick"

    invoke-virtual {p6, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/duapps/ad/inmobi/IMData;->h:I

    .line 95
    const-string v0, "cacheTime"

    invoke-virtual {p6, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/duapps/ad/inmobi/IMData;->j:I

    .line 96
    iput-wide p7, p0, Lcom/duapps/ad/inmobi/IMData;->v:J

    .line 98
    const-string v0, "ads"

    invoke-virtual {p6, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 99
    invoke-virtual {v0, p5}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 100
    if-eqz v0, :cond_0

    .line 101
    const-string v1, "pubContent"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 102
    const-string v2, "contextCode"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/duapps/ad/inmobi/IMData;->t:Ljava/lang/String;

    .line 103
    const-string v2, "namespace"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duapps/ad/inmobi/IMData;->u:Ljava/lang/String;

    .line 104
    invoke-static {v1}, Lcom/duapps/ad/inmobi/IMData;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 105
    if-eqz v0, :cond_0

    .line 107
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 108
    const-string v0, "IMData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "imAd=="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const-string v0, "title"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duapps/ad/inmobi/IMData;->m:Ljava/lang/String;

    .line 110
    const-string v0, "description"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duapps/ad/inmobi/IMData;->n:Ljava/lang/String;

    .line 111
    const-string v0, "rating"

    const-wide/high16 v2, 0x4012000000000000L    # 4.5

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v2

    double-to-float v0, v2

    iput v0, p0, Lcom/duapps/ad/inmobi/IMData;->o:F

    .line 112
    const-string v0, "cta"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duapps/ad/inmobi/IMData;->s:Ljava/lang/String;

    .line 113
    const-string v0, "icon"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 114
    const-string v2, "url"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duapps/ad/inmobi/IMData;->p:Ljava/lang/String;

    .line 115
    const-string v0, "screenshots"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 116
    const-string v2, "url"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duapps/ad/inmobi/IMData;->q:Ljava/lang/String;

    .line 117
    const-string v0, "landingURL"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duapps/ad/inmobi/IMData;->r:Ljava/lang/String;

    .line 118
    const-string v0, "package_name"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duapps/ad/inmobi/IMData;->l:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 119
    :catch_0
    move-exception v0

    .line 120
    const-string v1, "IMData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JSONException:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/duapps/ad/base/h;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-boolean v0, p0, Lcom/duapps/ad/inmobi/IMData;->w:Z

    .line 50
    iput-boolean v0, p0, Lcom/duapps/ad/inmobi/IMData;->x:Z

    .line 51
    const-string v0, "inmobi"

    iput-object v0, p0, Lcom/duapps/ad/inmobi/IMData;->y:Ljava/lang/String;

    .line 129
    iput-object p1, p0, Lcom/duapps/ad/inmobi/IMData;->u:Ljava/lang/String;

    .line 130
    iput-object p2, p0, Lcom/duapps/ad/inmobi/IMData;->t:Ljava/lang/String;

    .line 131
    iput-wide p3, p0, Lcom/duapps/ad/inmobi/IMData;->v:J

    .line 132
    return-void
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/duapps/ad/inmobi/IMData;
    .locals 4

    .prologue
    .line 285
    new-instance v0, Lcom/duapps/ad/inmobi/IMData;

    invoke-direct {v0}, Lcom/duapps/ad/inmobi/IMData;-><init>()V

    .line 287
    const-string v1, "channel"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/duapps/ad/inmobi/IMData;->y:Ljava/lang/String;

    .line 288
    const-string v1, "license"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/duapps/ad/inmobi/IMData;->a:Ljava/lang/String;

    .line 289
    const-string v1, "logId"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/duapps/ad/inmobi/IMData;->c:Ljava/lang/String;

    .line 290
    const-string v1, "sid"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/duapps/ad/inmobi/IMData;->b:I

    .line 291
    const-string v1, "sType"

    const-string v2, "native"

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/duapps/ad/inmobi/IMData;->d:Ljava/lang/String;

    .line 293
    const-string v1, "id"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/duapps/ad/inmobi/IMData;->e:J

    .line 294
    const-string v1, "source"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/duapps/ad/inmobi/IMData;->k:Ljava/lang/String;

    .line 295
    const-string v1, "label"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/duapps/ad/inmobi/IMData;->i:I

    .line 296
    const-string v1, "preClick"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/duapps/ad/inmobi/IMData;->h:I

    .line 297
    const-string v1, "opentype"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/duapps/ad/inmobi/IMData;->g:I

    .line 298
    const-string v1, "cacheTime"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/duapps/ad/inmobi/IMData;->j:I

    .line 299
    const-string v1, "mType"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/duapps/ad/inmobi/IMData;->f:I

    .line 301
    const-string v1, "title"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/duapps/ad/inmobi/IMData;->m:Ljava/lang/String;

    .line 302
    const-string v1, "description"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/duapps/ad/inmobi/IMData;->n:Ljava/lang/String;

    .line 303
    const-string v1, "cta"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/duapps/ad/inmobi/IMData;->s:Ljava/lang/String;

    .line 304
    const-string v1, "icon"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/duapps/ad/inmobi/IMData;->p:Ljava/lang/String;

    .line 305
    const-string v1, "screenshots"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/duapps/ad/inmobi/IMData;->q:Ljava/lang/String;

    .line 306
    const-string v1, "landingURL"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/duapps/ad/inmobi/IMData;->r:Ljava/lang/String;

    .line 307
    const-string v1, "rating"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    long-to-float v1, v2

    iput v1, v0, Lcom/duapps/ad/inmobi/IMData;->o:F

    .line 308
    const-string v1, "package_name"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/duapps/ad/inmobi/IMData;->l:Ljava/lang/String;

    .line 309
    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 217
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v1

    .line 229
    :goto_0
    return-object v0

    .line 221
    :cond_1
    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 223
    new-instance v0, Ljava/lang/String;

    const/4 v3, 0x0

    array-length v4, v2

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Landroid/util/Base64;->decode([BIII)[B

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-direct {v0, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 225
    :catch_0
    move-exception v0

    .line 226
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    move-object v0, v1

    .line 229
    goto :goto_0
.end method

.method public static a(Lcom/duapps/ad/inmobi/IMData;)Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 313
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 315
    const-string v1, "channel"

    iget-object v2, p0, Lcom/duapps/ad/inmobi/IMData;->y:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 316
    const-string v1, "license"

    iget-object v2, p0, Lcom/duapps/ad/inmobi/IMData;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 317
    const-string v1, "logId"

    iget-object v2, p0, Lcom/duapps/ad/inmobi/IMData;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 318
    const-string v1, "sid"

    iget v2, p0, Lcom/duapps/ad/inmobi/IMData;->b:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 319
    const-string v1, "sType"

    iget-object v2, p0, Lcom/duapps/ad/inmobi/IMData;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 321
    const-string v1, "id"

    iget-wide v2, p0, Lcom/duapps/ad/inmobi/IMData;->e:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 322
    const-string v1, "source"

    iget-object v2, p0, Lcom/duapps/ad/inmobi/IMData;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 323
    const-string v1, "label"

    iget v2, p0, Lcom/duapps/ad/inmobi/IMData;->i:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 324
    const-string v1, "preClick"

    iget v2, p0, Lcom/duapps/ad/inmobi/IMData;->h:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 325
    const-string v1, "opentype"

    iget v2, p0, Lcom/duapps/ad/inmobi/IMData;->g:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 326
    const-string v1, "cacheTime"

    iget v2, p0, Lcom/duapps/ad/inmobi/IMData;->j:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 327
    const-string v1, "mType"

    iget v2, p0, Lcom/duapps/ad/inmobi/IMData;->f:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 329
    const-string v1, "title"

    iget-object v2, p0, Lcom/duapps/ad/inmobi/IMData;->m:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 330
    const-string v1, "description"

    iget-object v2, p0, Lcom/duapps/ad/inmobi/IMData;->n:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 331
    const-string v1, "cta"

    iget-object v2, p0, Lcom/duapps/ad/inmobi/IMData;->s:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 332
    const-string v1, "icon"

    iget-object v2, p0, Lcom/duapps/ad/inmobi/IMData;->p:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 333
    const-string v1, "screenshots"

    iget-object v2, p0, Lcom/duapps/ad/inmobi/IMData;->q:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 334
    const-string v1, "landingURL"

    iget-object v2, p0, Lcom/duapps/ad/inmobi/IMData;->r:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 335
    const-string v1, "rating"

    iget v2, p0, Lcom/duapps/ad/inmobi/IMData;->o:F

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 336
    const-string v1, "package_name"

    iget-object v2, p0, Lcom/duapps/ad/inmobi/IMData;->l:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 337
    return-object v0
.end method


# virtual methods
.method public a(Lcom/duapps/ad/inmobi/IMData$a;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 249
    invoke-virtual {p1}, Lcom/duapps/ad/inmobi/IMData$a;->a()I

    move-result v1

    .line 250
    iget-object v2, p0, Lcom/duapps/ad/inmobi/IMData;->t:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    const-string v2, "<script>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    iget-object v2, p0, Lcom/duapps/ad/inmobi/IMData;->u:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "recordEvent("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    const-string v1, "</script>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a()Z
    .locals 4

    .prologue
    .line 212
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/duapps/ad/inmobi/IMData;->v:J

    sub-long/2addr v0, v2

    iget v2, p0, Lcom/duapps/ad/inmobi/IMData;->j:I

    mul-int/lit8 v2, v2, 0x3c

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 259
    sget-object v0, Lcom/duapps/ad/inmobi/IMData$a;->b:Lcom/duapps/ad/inmobi/IMData$a;

    invoke-virtual {p0, v0}, Lcom/duapps/ad/inmobi/IMData;->a(Lcom/duapps/ad/inmobi/IMData$a;)Ljava/lang/String;

    move-result-object v0

    .line 260
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<script>recordEvent(8)</script>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 261
    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 136
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 141
    iget-object v0, p0, Lcom/duapps/ad/inmobi/IMData;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/duapps/ad/inmobi/IMData;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 143
    iget v0, p0, Lcom/duapps/ad/inmobi/IMData;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    iget-object v0, p0, Lcom/duapps/ad/inmobi/IMData;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 146
    iget-wide v4, p0, Lcom/duapps/ad/inmobi/IMData;->e:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 147
    iget-object v0, p0, Lcom/duapps/ad/inmobi/IMData;->k:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 148
    iget v0, p0, Lcom/duapps/ad/inmobi/IMData;->g:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 149
    iget v0, p0, Lcom/duapps/ad/inmobi/IMData;->f:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 150
    iget v0, p0, Lcom/duapps/ad/inmobi/IMData;->i:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 151
    iget v0, p0, Lcom/duapps/ad/inmobi/IMData;->h:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 152
    iget v0, p0, Lcom/duapps/ad/inmobi/IMData;->j:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 154
    iget-object v0, p0, Lcom/duapps/ad/inmobi/IMData;->m:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/duapps/ad/inmobi/IMData;->n:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lcom/duapps/ad/inmobi/IMData;->s:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/duapps/ad/inmobi/IMData;->p:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/duapps/ad/inmobi/IMData;->q:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lcom/duapps/ad/inmobi/IMData;->r:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/duapps/ad/inmobi/IMData;->t:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcom/duapps/ad/inmobi/IMData;->u:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 162
    iget v0, p0, Lcom/duapps/ad/inmobi/IMData;->o:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 163
    iget-wide v4, p0, Lcom/duapps/ad/inmobi/IMData;->v:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 164
    iget-boolean v0, p0, Lcom/duapps/ad/inmobi/IMData;->w:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 165
    iget-boolean v0, p0, Lcom/duapps/ad/inmobi/IMData;->x:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 166
    iget-object v0, p0, Lcom/duapps/ad/inmobi/IMData;->l:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 168
    return-void

    :cond_0
    move v0, v2

    .line 164
    goto :goto_0

    :cond_1
    move v1, v2

    .line 165
    goto :goto_1
.end method
