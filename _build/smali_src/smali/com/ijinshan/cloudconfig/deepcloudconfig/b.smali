.class public Lcom/ijinshan/cloudconfig/deepcloudconfig/b;
.super Ljava/lang/Object;
.source "CloudConfigExtra.java"


# static fields
.field private static volatile a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Z

.field private static c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/ijinshan/cloudconfig/deepcloudconfig/b;->a:Ljava/util/HashMap;

    .line 19
    const/4 v0, 0x0

    sput-boolean v0, Lcom/ijinshan/cloudconfig/deepcloudconfig/b;->b:Z

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/ijinshan/cloudconfig/deepcloudconfig/b;->c:Ljava/util/List;

    return-void
.end method

.method public static a(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;D)D
    .locals 1

    .prologue
    .line 70
    invoke-static {p0, p1}, Lcom/ijinshan/cloudconfig/deepcloudconfig/b;->a(Ljava/lang/Integer;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 71
    if-eqz v0, :cond_0

    .line 73
    :try_start_0
    invoke-virtual {v0, p2, p3, p4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p3

    .line 78
    :cond_0
    :goto_0
    return-wide p3

    .line 74
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 1

    .prologue
    .line 34
    invoke-static {p0, p1}, Lcom/ijinshan/cloudconfig/deepcloudconfig/b;->a(Ljava/lang/Integer;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 35
    if-eqz v0, :cond_0

    .line 37
    :try_start_0
    invoke-virtual {v0, p2, p3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result p3

    .line 42
    :cond_0
    :goto_0
    return p3

    .line 38
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;J)J
    .locals 1

    .prologue
    .line 46
    invoke-static {p0, p1}, Lcom/ijinshan/cloudconfig/deepcloudconfig/b;->a(Ljava/lang/Integer;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 47
    if-eqz v0, :cond_0

    .line 49
    :try_start_0
    invoke-virtual {v0, p2, p3, p4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p3

    .line 54
    :cond_0
    :goto_0
    return-wide p3

    .line 50
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    invoke-static {p0, p1}, Lcom/ijinshan/cloudconfig/deepcloudconfig/b;->a(Ljava/lang/Integer;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 23
    if-eqz v0, :cond_0

    .line 25
    :try_start_0
    invoke-virtual {v0, p2, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p3

    .line 30
    :cond_0
    :goto_0
    return-object p3

    .line 26
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static declared-synchronized a(Ljava/lang/Integer;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 82
    const-class v2, Lcom/ijinshan/cloudconfig/deepcloudconfig/b;

    monitor-enter v2

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 83
    sget-object v0, Lcom/ijinshan/cloudconfig/deepcloudconfig/b;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 84
    if-eqz v0, :cond_0

    sget-boolean v4, Lcom/ijinshan/cloudconfig/deepcloudconfig/b;->b:Z

    if-eqz v4, :cond_2

    .line 85
    :cond_0
    invoke-static {}, Lcom/ijinshan/cloudconfig/deepcloudconfig/a;->a()Lcom/ijinshan/cloudconfig/deepcloudconfig/a;

    move-result-object v4

    invoke-virtual {v4, p0, p1}, Lcom/ijinshan/cloudconfig/deepcloudconfig/a;->b(Ljava/lang/Integer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 86
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 87
    if-eqz v0, :cond_1

    .line 88
    sget-object v0, Lcom/ijinshan/cloudconfig/deepcloudconfig/b;->c:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    move-object v0, v1

    .line 99
    :cond_2
    :goto_0
    monitor-exit v2

    return-object v0

    .line 93
    :cond_3
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 94
    sget-object v4, Lcom/ijinshan/cloudconfig/deepcloudconfig/b;->a:Ljava/util/HashMap;

    invoke-virtual {v4, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 95
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 96
    goto :goto_0

    .line 82
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public static a()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 104
    sget-object v0, Lcom/ijinshan/cloudconfig/deepcloudconfig/b;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 105
    sget-object v0, Lcom/ijinshan/cloudconfig/deepcloudconfig/b;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 106
    sget-object v0, Lcom/ijinshan/cloudconfig/deepcloudconfig/b;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 107
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 108
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 110
    sput-boolean v5, Lcom/ijinshan/cloudconfig/deepcloudconfig/b;->b:Z

    .line 111
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 113
    :try_start_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 114
    if-eqz v0, :cond_1

    array-length v2, v0

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 115
    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 116
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v0, v0, v3

    invoke-static {v2, v0}, Lcom/ijinshan/cloudconfig/deepcloudconfig/b;->a(Ljava/lang/Integer;Ljava/lang/String;)Lorg/json/JSONObject;

    goto :goto_0

    .line 121
    :catch_0
    move-exception v0

    goto :goto_0

    .line 117
    :cond_1
    if-eqz v0, :cond_0

    array-length v2, v0

    if-ne v2, v5, :cond_0

    .line 118
    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 119
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, ""

    invoke-static {v0, v2}, Lcom/ijinshan/cloudconfig/deepcloudconfig/b;->a(Ljava/lang/Integer;Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 127
    :cond_2
    sput-boolean v4, Lcom/ijinshan/cloudconfig/deepcloudconfig/b;->b:Z

    .line 129
    sget-object v0, Lcom/ijinshan/cloudconfig/deepcloudconfig/b;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 130
    sget-object v0, Lcom/ijinshan/cloudconfig/deepcloudconfig/b;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 132
    :try_start_1
    sget-object v2, Lcom/ijinshan/cloudconfig/deepcloudconfig/b;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 133
    :catch_1
    move-exception v0

    goto :goto_1

    .line 139
    :cond_3
    return-void
.end method

.method public static a(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1

    .prologue
    .line 58
    invoke-static {p0, p1}, Lcom/ijinshan/cloudconfig/deepcloudconfig/b;->a(Ljava/lang/Integer;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 59
    if-eqz v0, :cond_0

    .line 61
    :try_start_0
    invoke-virtual {v0, p2, p3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result p3

    .line 66
    :cond_0
    :goto_0
    return p3

    .line 62
    :catch_0
    move-exception v0

    goto :goto_0
.end method
