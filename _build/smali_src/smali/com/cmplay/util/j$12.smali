.class final Lcom/cmplay/util/j$12;
.super Ljava/lang/Thread;
.source "HttpUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/util/j;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/cmplay/util/j$12;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/cmplay/util/j$12;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 158
    sget-boolean v0, Lcom/cmplay/h/d;->j:Z

    if-eqz v0, :cond_0

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://p2.cmcm.com/shares/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cmplay/util/j$12;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/audio"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 160
    invoke-static {v0}, Lcom/cmplay/util/j;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 161
    sget-object v1, Lcom/cmplay/util/ab$a;->d:Lcom/cmplay/util/ab$a;

    invoke-static {v1, v0}, Lcom/cmplay/util/j;->a(Lcom/cmplay/util/ab$a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 162
    iget-object v1, p0, Lcom/cmplay/util/j$12;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/cmplay/util/j;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 169
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 170
    if-eqz v1, :cond_0

    .line 171
    const-string v0, "data"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 172
    if-eqz v0, :cond_0

    .line 173
    const-string v1, "audio_url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 174
    const-string v1, "audio_url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 175
    const-string v1, "key_share_audio_url"

    invoke-static {v1, v0}, Lcom/cmplay/util/aa;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    :cond_0
    :goto_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/cmplay/h/d;->j:Z

    .line 191
    return-void

    .line 183
    :catch_0
    move-exception v0

    .line 184
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
