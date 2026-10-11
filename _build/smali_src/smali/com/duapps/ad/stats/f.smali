.class public Lcom/duapps/ad/stats/f;
.super Lcom/duapps/ad/stats/b;
.source "ToolDataWrapper.java"


# instance fields
.field public d:Lcom/duapps/ad/entity/AdData;

.field public e:Lcom/duapps/ad/inmobi/IMData;

.field public f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:I

.field private i:J

.field private j:I

.field private k:Ljava/lang/String;

.field private l:I

.field private m:Lcom/duapps/ad/base/j;

.field private n:Ljava/lang/String;

.field private o:I

.field private p:I

.field private q:Z

.field private r:Z

.field private s:I


# direct methods
.method public constructor <init>(Lcom/duapps/ad/entity/AdData;)V
    .locals 1

    .prologue
    .line 37
    const-string v0, ""

    invoke-direct {p0, p1, v0}, Lcom/duapps/ad/stats/f;-><init>(Lcom/duapps/ad/entity/AdData;Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Lcom/duapps/ad/entity/AdData;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 41
    iget-object v0, p1, Lcom/duapps/ad/entity/AdData;->x:Ljava/lang/String;

    iget v1, p1, Lcom/duapps/ad/entity/AdData;->y:I

    iget-object v2, p1, Lcom/duapps/ad/entity/AdData;->z:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/duapps/ad/stats/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 42
    iput-object p1, p0, Lcom/duapps/ad/stats/f;->d:Lcom/duapps/ad/entity/AdData;

    .line 44
    iget-wide v0, p1, Lcom/duapps/ad/entity/AdData;->b:J

    iput-wide v0, p0, Lcom/duapps/ad/stats/f;->i:J

    .line 45
    iget v0, p1, Lcom/duapps/ad/entity/AdData;->m:I

    iput v0, p0, Lcom/duapps/ad/stats/f;->h:I

    .line 46
    iget-object v0, p1, Lcom/duapps/ad/entity/AdData;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/duapps/ad/stats/f;->g:Ljava/lang/String;

    .line 47
    iget v0, p1, Lcom/duapps/ad/entity/AdData;->n:I

    iput v0, p0, Lcom/duapps/ad/stats/f;->j:I

    .line 48
    iget-object v0, p1, Lcom/duapps/ad/entity/AdData;->i:Ljava/lang/String;

    iput-object v0, p0, Lcom/duapps/ad/stats/f;->k:Ljava/lang/String;

    .line 49
    iget v0, p1, Lcom/duapps/ad/entity/AdData;->A:I

    iput v0, p0, Lcom/duapps/ad/stats/f;->l:I

    .line 50
    iget-object v0, p1, Lcom/duapps/ad/entity/AdData;->w:Ljava/lang/String;

    iput-object v0, p0, Lcom/duapps/ad/stats/f;->n:Ljava/lang/String;

    .line 51
    iget v0, p1, Lcom/duapps/ad/entity/AdData;->H:I

    iput v0, p0, Lcom/duapps/ad/stats/f;->o:I

    .line 52
    iget v0, p1, Lcom/duapps/ad/entity/AdData;->a:I

    iput v0, p0, Lcom/duapps/ad/stats/f;->p:I

    .line 53
    iput-object p2, p0, Lcom/duapps/ad/stats/f;->f:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public constructor <init>(Lcom/duapps/ad/inmobi/IMData;)V
    .locals 1

    .prologue
    .line 57
    const-string v0, ""

    invoke-direct {p0, p1, v0}, Lcom/duapps/ad/stats/f;-><init>(Lcom/duapps/ad/inmobi/IMData;Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Lcom/duapps/ad/inmobi/IMData;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 61
    iget-object v0, p1, Lcom/duapps/ad/inmobi/IMData;->a:Ljava/lang/String;

    iget v1, p1, Lcom/duapps/ad/inmobi/IMData;->b:I

    iget-object v2, p1, Lcom/duapps/ad/inmobi/IMData;->d:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/duapps/ad/stats/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 62
    iget-wide v0, p1, Lcom/duapps/ad/inmobi/IMData;->e:J

    iput-wide v0, p0, Lcom/duapps/ad/stats/f;->i:J

    .line 63
    const/4 v0, 0x0

    iput v0, p0, Lcom/duapps/ad/stats/f;->h:I

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/duapps/ad/stats/f;->g:Ljava/lang/String;

    .line 65
    iget v0, p1, Lcom/duapps/ad/inmobi/IMData;->g:I

    iput v0, p0, Lcom/duapps/ad/stats/f;->j:I

    .line 66
    iget-object v0, p1, Lcom/duapps/ad/inmobi/IMData;->r:Ljava/lang/String;

    iput-object v0, p0, Lcom/duapps/ad/stats/f;->k:Ljava/lang/String;

    .line 67
    iget v0, p1, Lcom/duapps/ad/inmobi/IMData;->h:I

    iput v0, p0, Lcom/duapps/ad/stats/f;->l:I

    .line 68
    iget-object v0, p1, Lcom/duapps/ad/inmobi/IMData;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/duapps/ad/stats/f;->n:Ljava/lang/String;

    .line 69
    iput-object p2, p0, Lcom/duapps/ad/stats/f;->f:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/duapps/ad/stats/f;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 194
    if-nez p0, :cond_1

    .line 207
    :cond_0
    :goto_0
    return-object v0

    .line 198
    :cond_1
    const-string v1, "data"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 199
    const-string v2, "download"

    const-string v3, "channel"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 200
    invoke-static {v1}, Lcom/duapps/ad/entity/AdData;->a(Lorg/json/JSONObject;)Lcom/duapps/ad/entity/AdData;

    move-result-object v1

    .line 201
    new-instance v0, Lcom/duapps/ad/stats/f;

    invoke-direct {v0, v1}, Lcom/duapps/ad/stats/f;-><init>(Lcom/duapps/ad/entity/AdData;)V

    goto :goto_0

    .line 202
    :cond_2
    const-string v2, "inmobi"

    const-string v3, "channel"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 203
    invoke-static {v1}, Lcom/duapps/ad/inmobi/IMData;->a(Lorg/json/JSONObject;)Lcom/duapps/ad/inmobi/IMData;

    move-result-object v1

    .line 204
    new-instance v0, Lcom/duapps/ad/stats/f;

    invoke-direct {v0, v1}, Lcom/duapps/ad/stats/f;-><init>(Lcom/duapps/ad/inmobi/IMData;)V

    goto :goto_0
.end method

.method public static a(Lcom/duapps/ad/stats/f;)Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 183
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 185
    iget-object v1, p0, Lcom/duapps/ad/stats/f;->d:Lcom/duapps/ad/entity/AdData;

    if-eqz v1, :cond_1

    .line 186
    const-string v1, "data"

    iget-object v2, p0, Lcom/duapps/ad/stats/f;->d:Lcom/duapps/ad/entity/AdData;

    invoke-static {v2}, Lcom/duapps/ad/entity/AdData;->a(Lcom/duapps/ad/entity/AdData;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 190
    :cond_0
    :goto_0
    return-object v0

    .line 187
    :cond_1
    iget-object v1, p0, Lcom/duapps/ad/stats/f;->e:Lcom/duapps/ad/inmobi/IMData;

    if-eqz v1, :cond_0

    .line 188
    const-string v1, "data"

    iget-object v2, p0, Lcom/duapps/ad/stats/f;->e:Lcom/duapps/ad/inmobi/IMData;

    invoke-static {v2}, Lcom/duapps/ad/inmobi/IMData;->a(Lcom/duapps/ad/inmobi/IMData;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/duapps/ad/stats/f;->g:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 179
    iput p1, p0, Lcom/duapps/ad/stats/f;->s:I

    .line 180
    return-void
.end method

.method public a(Lcom/duapps/ad/base/j;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/duapps/ad/stats/f;->m:Lcom/duapps/ad/base/j;

    .line 102
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 154
    iput-boolean p1, p0, Lcom/duapps/ad/stats/f;->q:Z

    .line 155
    return-void
.end method

.method public b()J
    .locals 2

    .prologue
    .line 81
    iget-wide v0, p0, Lcom/duapps/ad/stats/f;->i:J

    return-wide v0
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 162
    iput-boolean p1, p0, Lcom/duapps/ad/stats/f;->r:Z

    .line 163
    return-void
.end method

.method public c()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/duapps/ad/stats/f;->j:I

    return v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcom/duapps/ad/stats/f;->l:I

    return v0
.end method

.method public e()Lcom/duapps/ad/base/j;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/duapps/ad/stats/f;->m:Lcom/duapps/ad/base/j;

    return-object v0
.end method

.method public f()Lcom/duapps/ad/entity/AdData;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/duapps/ad/stats/f;->d:Lcom/duapps/ad/entity/AdData;

    return-object v0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Lcom/duapps/ad/stats/f;->j:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 118
    iget v1, p0, Lcom/duapps/ad/stats/f;->j:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/duapps/ad/stats/f;->k:Ljava/lang/String;

    return-object v0
.end method

.method public j()I
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lcom/duapps/ad/stats/f;->b:I

    return v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/duapps/ad/stats/f;->c:Ljava/lang/String;

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/duapps/ad/stats/f;->n:Ljava/lang/String;

    return-object v0
.end method

.method public m()I
    .locals 1

    .prologue
    .line 138
    iget v0, p0, Lcom/duapps/ad/stats/f;->o:I

    return v0
.end method

.method public n()Z
    .locals 1

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/duapps/ad/stats/f;->q:Z

    return v0
.end method

.method public o()Z
    .locals 1

    .prologue
    .line 158
    iget-boolean v0, p0, Lcom/duapps/ad/stats/f;->r:Z

    return v0
.end method

.method public p()I
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Lcom/duapps/ad/stats/f;->s:I

    return v0
.end method

.method public q()I
    .locals 1

    .prologue
    .line 169
    iget v0, p0, Lcom/duapps/ad/stats/f;->p:I

    return v0
.end method
