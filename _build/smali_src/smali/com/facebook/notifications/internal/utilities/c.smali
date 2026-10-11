.class public abstract Lcom/facebook/notifications/internal/utilities/c;
.super Ljava/lang/Object;
.source "JSONObjectVisitor.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lorg/json/JSONObject;Lcom/facebook/notifications/internal/utilities/c;)V
    .locals 0

    .prologue
    .line 28
    invoke-virtual {p1, p0}, Lcom/facebook/notifications/internal/utilities/c;->a(Lorg/json/JSONObject;)V

    .line 29
    return-void
.end method


# virtual methods
.method protected a(Lorg/json/JSONArray;)V
    .locals 3

    .prologue
    .line 51
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 52
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v1

    .line 54
    instance-of v0, v1, Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 55
    check-cast v0, Lorg/json/JSONObject;

    invoke-virtual {p0, v0}, Lcom/facebook/notifications/internal/utilities/c;->a(Lorg/json/JSONObject;)V

    .line 58
    :cond_0
    instance-of v0, v1, Lorg/json/JSONArray;

    if-eqz v0, :cond_1

    .line 59
    check-cast v1, Lorg/json/JSONArray;

    invoke-virtual {p0, v1}, Lcom/facebook/notifications/internal/utilities/c;->a(Lorg/json/JSONArray;)V

    .line 51
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 62
    :cond_2
    return-void
.end method

.method protected a(Lorg/json/JSONObject;)V
    .locals 3

    .prologue
    .line 36
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 37
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 38
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 40
    instance-of v0, v1, Lorg/json/JSONObject;

    if-eqz v0, :cond_1

    move-object v0, v1

    .line 41
    check-cast v0, Lorg/json/JSONObject;

    invoke-virtual {p0, v0}, Lcom/facebook/notifications/internal/utilities/c;->a(Lorg/json/JSONObject;)V

    .line 44
    :cond_1
    instance-of v0, v1, Lorg/json/JSONArray;

    if-eqz v0, :cond_0

    .line 45
    check-cast v1, Lorg/json/JSONArray;

    invoke-virtual {p0, v1}, Lcom/facebook/notifications/internal/utilities/c;->a(Lorg/json/JSONArray;)V

    goto :goto_0

    .line 48
    :cond_2
    return-void
.end method
