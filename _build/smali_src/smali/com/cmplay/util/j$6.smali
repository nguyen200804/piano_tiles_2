.class final Lcom/cmplay/util/j$6;
.super Ljava/lang/Thread;
.source "HttpUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/util/j;->a(ILjava/lang/String;IIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:I

.field final synthetic f:I

.field final synthetic g:I

.field final synthetic h:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;IIIIILjava/lang/String;)V
    .locals 0

    .prologue
    .line 913
    iput p1, p0, Lcom/cmplay/util/j$6;->a:I

    iput-object p2, p0, Lcom/cmplay/util/j$6;->b:Ljava/lang/String;

    iput p3, p0, Lcom/cmplay/util/j$6;->c:I

    iput p4, p0, Lcom/cmplay/util/j$6;->d:I

    iput p5, p0, Lcom/cmplay/util/j$6;->e:I

    iput p6, p0, Lcom/cmplay/util/j$6;->f:I

    iput p7, p0, Lcom/cmplay/util/j$6;->g:I

    iput-object p8, p0, Lcom/cmplay/util/j$6;->h:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 916
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 918
    :try_start_0
    const-string v0, "status"

    iget v2, p0, Lcom/cmplay/util/j$6;->a:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 919
    const-string v0, "music_name"

    iget-object v2, p0, Lcom/cmplay/util/j$6;->b:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 920
    const-string v0, "star"

    iget v2, p0, Lcom/cmplay/util/j$6;->c:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 921
    const-string v0, "level"

    iget v2, p0, Lcom/cmplay/util/j$6;->d:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 922
    const-string v0, "score"

    iget v2, p0, Lcom/cmplay/util/j$6;->e:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 923
    const-string v0, "total_score"

    iget v2, p0, Lcom/cmplay/util/j$6;->f:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 924
    const-string v0, "type"

    iget v2, p0, Lcom/cmplay/util/j$6;->g:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 929
    :goto_0
    iget-object v0, p0, Lcom/cmplay/util/j$6;->h:Ljava/lang/String;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmplay/util/j;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 933
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 943
    :goto_1
    return-void

    .line 925
    :catch_0
    move-exception v0

    .line 926
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 937
    :cond_0
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 938
    const-string v0, "data"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "image_url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 939
    const-string v1, "key_copy_url"

    invoke-static {v1, v0}, Lcom/cmplay/util/aa;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 940
    :catch_1
    move-exception v0

    .line 941
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method
