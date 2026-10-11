.class public Lcom/duapps/ad/c/a/c;
.super Ljava/lang/Object;
.source "PriorityPolicy.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public a:I

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/duapps/ad/c/a/c;->b:Ljava/util/List;

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/duapps/ad/c/a/c;->c:Ljava/util/Map;

    return-void
.end method

.method public static a(IZZ)Lcom/duapps/ad/c/a/c;
    .locals 6

    .prologue
    const/4 v3, 0x2

    const-wide/16 v4, 0x7d0

    .line 81
    new-instance v0, Lcom/duapps/ad/c/a/c;

    invoke-direct {v0}, Lcom/duapps/ad/c/a/c;-><init>()V

    .line 82
    iput p0, v0, Lcom/duapps/ad/c/a/c;->a:I

    .line 83
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, v0, Lcom/duapps/ad/c/a/c;->b:Ljava/util/List;

    .line 86
    const-string v2, "facebook"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    const-string v2, "download"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    if-eqz p1, :cond_0

    .line 89
    const-string v2, "admob"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    const-string v2, "dlh"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    const-string v2, "online"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    const-string v2, "inmobi"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, v0, Lcom/duapps/ad/c/a/c;->c:Ljava/util/Map;

    .line 97
    const-string v2, "facebook"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    const-string v2, "download"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    if-eqz p1, :cond_1

    .line 100
    const-string v2, "dlh"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    const-string v2, "inmobi"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    const-string v2, "online"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    const-string v2, "admob"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    :cond_1
    if-eqz p2, :cond_2

    .line 106
    iget-object v1, v0, Lcom/duapps/ad/c/a/c;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 107
    iget-object v1, v0, Lcom/duapps/ad/c/a/c;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 109
    :cond_2
    return-object v0
.end method

.method public static a(Landroid/content/Context;IZZ)Lcom/duapps/ad/c/a/c;
    .locals 2

    .prologue
    .line 56
    invoke-static {p0, p1}, Lcom/duapps/ad/base/m;->e(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 58
    :try_start_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 59
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/duapps/ad/c/a/c;->a(Lorg/json/JSONObject;)Lcom/duapps/ad/c/a/c;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 63
    :goto_0
    return-object v0

    .line 61
    :catch_0
    move-exception v0

    .line 63
    :cond_0
    invoke-static {p1, p2, p3}, Lcom/duapps/ad/c/a/c;->a(IZZ)Lcom/duapps/ad/c/a/c;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/duapps/ad/c/a/c;
    .locals 8

    .prologue
    .line 36
    new-instance v1, Lcom/duapps/ad/c/a/c;

    invoke-direct {v1}, Lcom/duapps/ad/c/a/c;-><init>()V

    .line 37
    const-string v0, "sid"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/duapps/ad/c/a/c;->a:I

    .line 39
    const-string v0, "priority"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 40
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 41
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 42
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    .line 43
    iget-object v4, v1, Lcom/duapps/ad/c/a/c;->b:Ljava/util/List;

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 47
    :cond_0
    const-string v0, "wt"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 48
    iget-object v0, v1, Lcom/duapps/ad/c/a/c;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 49
    iget-object v4, v1, Lcom/duapps/ad/c/a/c;->c:Ljava/util/Map;

    const-wide/16 v6, 0x7d0

    invoke-virtual {v2, v0, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 52
    :cond_1
    return-object v1
.end method


# virtual methods
.method public a(Ljava/lang/String;)J
    .locals 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/duapps/ad/c/a/c;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/duapps/ad/c/a/c;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 32
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x7d0

    goto :goto_0
.end method
