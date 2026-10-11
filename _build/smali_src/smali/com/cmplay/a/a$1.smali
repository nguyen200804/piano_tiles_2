.class Lcom/cmplay/a/a$1;
.super Ljava/lang/Object;
.source "FBLogin.java"

# interfaces
.implements Lcom/facebook/GraphRequest$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/a/a;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/AccessToken;

.field final synthetic b:Lcom/cmplay/a/a;


# direct methods
.method constructor <init>(Lcom/cmplay/a/a;Lcom/facebook/AccessToken;)V
    .locals 0

    .prologue
    .line 205
    iput-object p1, p0, Lcom/cmplay/a/a$1;->b:Lcom/cmplay/a/a;

    iput-object p2, p0, Lcom/cmplay/a/a$1;->a:Lcom/facebook/AccessToken;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;Lcom/facebook/q;)V
    .locals 4

    .prologue
    .line 208
    if-eqz p1, :cond_0

    .line 211
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 212
    const-string v1, "data"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 213
    const-string v1, "key_h5_login"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/cmplay/util/aa;->b(Ljava/lang/String;Z)Z

    move-result v1

    .line 214
    const/4 v2, 0x1

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v1}, Lcom/cmplay/util/NativeUtil;->reqMeInfoCallbackOnGLThread(ILjava/lang/String;Z)V

    .line 220
    iget-object v0, p0, Lcom/cmplay/a/a$1;->b:Lcom/cmplay/a/a;

    new-instance v1, Lcom/cmplay/a/e;

    const-string v2, "id"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "name"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/cmplay/a/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/cmplay/a/a;->a(Lcom/cmplay/a/a;Lcom/cmplay/a/e;)Lcom/cmplay/a/e;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    :cond_0
    :goto_0
    return-void

    .line 221
    :catch_0
    move-exception v0

    .line 222
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
