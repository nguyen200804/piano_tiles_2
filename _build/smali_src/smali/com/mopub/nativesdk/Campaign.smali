.class public Lcom/mopub/nativesdk/Campaign;
.super Ljava/lang/Object;
.source "Campaign.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:J

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:D

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:J

.field private q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private r:Ljava/lang/String;

.field private s:I

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:I

.field private x:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mopub/nativesdk/PermissionItem;",
            ">;"
        }
    .end annotation
.end field

.field private y:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mopub/nativesdk/CategoryItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/mopub/nativesdk/Campaign;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getAppCategoryID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/mopub/nativesdk/Campaign;->j:Ljava/lang/String;

    return-object v0
.end method

.method public getAppDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/mopub/nativesdk/Campaign;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/mopub/nativesdk/Campaign;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getAppScore()D
    .locals 2

    .prologue
    .line 121
    iget-wide v0, p0, Lcom/mopub/nativesdk/Campaign;->h:D

    return-wide v0
.end method

.method public getCategoryIconURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/mopub/nativesdk/Campaign;->v:Ljava/lang/String;

    return-object v0
.end method

.method public getCategoryList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mopub/nativesdk/CategoryItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 284
    iget-object v0, p0, Lcom/mopub/nativesdk/Campaign;->y:Ljava/util/List;

    return-object v0
.end method

.method public getClickUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/mopub/nativesdk/Campaign;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getDataUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/mopub/nativesdk/Campaign;->m:Ljava/lang/String;

    return-object v0
.end method

.method public getDeveloper()Ljava/lang/String;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/mopub/nativesdk/Campaign;->u:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadNum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/mopub/nativesdk/Campaign;->t:Ljava/lang/String;

    return-object v0
.end method

.method public getFileMD5()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/mopub/nativesdk/Campaign;->n:Ljava/lang/String;

    return-object v0
.end method

.method public getFileSizeLong()J
    .locals 2

    .prologue
    .line 178
    iget-wide v0, p0, Lcom/mopub/nativesdk/Campaign;->p:J

    return-wide v0
.end method

.method public getFileSizeText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/mopub/nativesdk/Campaign;->o:Ljava/lang/String;

    return-object v0
.end method

.method public getIconUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/mopub/nativesdk/Campaign;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 73
    iget-wide v0, p0, Lcom/mopub/nativesdk/Campaign;->a:J

    return-wide v0
.end method

.method public getImageSize()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/mopub/nativesdk/Campaign;->l:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/mopub/nativesdk/Campaign;->k:Ljava/lang/String;

    return-object v0
.end method

.method public getImpressionUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/mopub/nativesdk/Campaign;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/mopub/nativesdk/Campaign;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getPermissionList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mopub/nativesdk/PermissionItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 268
    iget-object v0, p0, Lcom/mopub/nativesdk/Campaign;->x:Ljava/util/List;

    return-object v0
.end method

.method public getPermissionsNum()I
    .locals 1

    .prologue
    .line 260
    iget v0, p0, Lcom/mopub/nativesdk/Campaign;->w:I

    return v0
.end method

.method public getScreenShot()Ljava/util/List;
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
    .line 186
    iget-object v0, p0, Lcom/mopub/nativesdk/Campaign;->q:Ljava/util/List;

    return-object v0
.end method

.method public getVersionCode()I
    .locals 1

    .prologue
    .line 228
    iget v0, p0, Lcom/mopub/nativesdk/Campaign;->s:I

    return v0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/mopub/nativesdk/Campaign;->r:Ljava/lang/String;

    return-object v0
.end method

.method public setAppCategory(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 248
    iput-object p1, p0, Lcom/mopub/nativesdk/Campaign;->i:Ljava/lang/String;

    .line 249
    return-void
.end method

.method public setAppCategoryID(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Lcom/mopub/nativesdk/Campaign;->j:Ljava/lang/String;

    .line 195
    return-void
.end method

.method public setAppDesc(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/mopub/nativesdk/Campaign;->g:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/mopub/nativesdk/Campaign;->f:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public setAppScore(D)V
    .locals 1

    .prologue
    .line 125
    iput-wide p1, p0, Lcom/mopub/nativesdk/Campaign;->h:D

    .line 126
    return-void
.end method

.method public setCategoryIconURL(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 280
    iput-object p1, p0, Lcom/mopub/nativesdk/Campaign;->v:Ljava/lang/String;

    .line 281
    return-void
.end method

.method public setCategoryList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mopub/nativesdk/CategoryItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 288
    iput-object p1, p0, Lcom/mopub/nativesdk/Campaign;->y:Ljava/util/List;

    .line 289
    return-void
.end method

.method public setClickUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/mopub/nativesdk/Campaign;->b:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public setDataUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcom/mopub/nativesdk/Campaign;->m:Ljava/lang/String;

    .line 150
    return-void
.end method

.method public setDeveloper(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 256
    iput-object p1, p0, Lcom/mopub/nativesdk/Campaign;->u:Ljava/lang/String;

    .line 257
    return-void
.end method

.method public setDownloadNum(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 240
    iput-object p1, p0, Lcom/mopub/nativesdk/Campaign;->t:Ljava/lang/String;

    .line 241
    return-void
.end method

.method public setFileMD5(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lcom/mopub/nativesdk/Campaign;->n:Ljava/lang/String;

    .line 167
    return-void
.end method

.method public setFileSizeLong(J)V
    .locals 1

    .prologue
    .line 182
    iput-wide p1, p0, Lcom/mopub/nativesdk/Campaign;->p:J

    .line 183
    return-void
.end method

.method public setFileSizeText(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lcom/mopub/nativesdk/Campaign;->o:Ljava/lang/String;

    .line 175
    return-void
.end method

.method public setIconUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/mopub/nativesdk/Campaign;->e:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public setId(J)V
    .locals 1

    .prologue
    .line 77
    iput-wide p1, p0, Lcom/mopub/nativesdk/Campaign;->a:J

    .line 78
    return-void
.end method

.method public setImageSize(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/mopub/nativesdk/Campaign;->l:Ljava/lang/String;

    .line 142
    return-void
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/mopub/nativesdk/Campaign;->k:Ljava/lang/String;

    .line 134
    return-void
.end method

.method public setImpressionUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcom/mopub/nativesdk/Campaign;->c:Ljava/lang/String;

    .line 158
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/mopub/nativesdk/Campaign;->d:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public setPermissionList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mopub/nativesdk/PermissionItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 272
    iput-object p1, p0, Lcom/mopub/nativesdk/Campaign;->x:Ljava/util/List;

    .line 273
    return-void
.end method

.method public setPermissionsNum(I)V
    .locals 0

    .prologue
    .line 264
    iput p1, p0, Lcom/mopub/nativesdk/Campaign;->w:I

    .line 265
    return-void
.end method

.method public setScreenShot(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 205
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 206
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mopub/nativesdk/Campaign;->q:Ljava/util/List;

    .line 208
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 209
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    .line 210
    iget-object v3, p0, Lcom/mopub/nativesdk/Campaign;->q:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 217
    :catch_0
    move-exception v0

    :cond_0
    return-void
.end method

.method public setScreenShot(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 198
    iput-object p1, p0, Lcom/mopub/nativesdk/Campaign;->q:Ljava/util/List;

    .line 199
    return-void
.end method

.method public setVersionCode(I)V
    .locals 0

    .prologue
    .line 232
    iput p1, p0, Lcom/mopub/nativesdk/Campaign;->s:I

    .line 233
    return-void
.end method

.method public setVersionName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 224
    iput-object p1, p0, Lcom/mopub/nativesdk/Campaign;->r:Ljava/lang/String;

    .line 225
    return-void
.end method
