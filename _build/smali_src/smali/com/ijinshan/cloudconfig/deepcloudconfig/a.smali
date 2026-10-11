.class public Lcom/ijinshan/cloudconfig/deepcloudconfig/a;
.super Ljava/lang/Object;
.source "CloudConfig.java"


# static fields
.field private static a:Lcom/ijinshan/cloudconfig/deepcloudconfig/a;


# instance fields
.field private b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/ijinshan/cloudconfig/deepcloudconfig/ConfigInfo;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private c:Landroid/content/Context;

.field private final d:Ljava/lang/Object;

.field private e:Ljava/util/List;
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
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ijinshan/cloudconfig/deepcloudconfig/a;->d:Ljava/lang/Object;

    .line 43
    invoke-static {}, Lcom/ijinshan/cloudconfig/c/a;->d()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/ijinshan/cloudconfig/deepcloudconfig/a;->c:Landroid/content/Context;

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ijinshan/cloudconfig/deepcloudconfig/a;->b:Ljava/util/HashMap;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ijinshan/cloudconfig/deepcloudconfig/a;->e:Ljava/util/List;

    .line 46
    return-void
.end method

.method public static a()Lcom/ijinshan/cloudconfig/deepcloudconfig/a;
    .locals 2

    .prologue
    .line 32
    sget-object v0, Lcom/ijinshan/cloudconfig/deepcloudconfig/a;->a:Lcom/ijinshan/cloudconfig/deepcloudconfig/a;

    if-nez v0, :cond_1

    .line 33
    const-class v1, Lcom/ijinshan/cloudconfig/deepcloudconfig/a;

    monitor-enter v1

    .line 34
    :try_start_0
    sget-object v0, Lcom/ijinshan/cloudconfig/deepcloudconfig/a;->a:Lcom/ijinshan/cloudconfig/deepcloudconfig/a;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lcom/ijinshan/cloudconfig/deepcloudconfig/a;

    invoke-direct {v0}, Lcom/ijinshan/cloudconfig/deepcloudconfig/a;-><init>()V

    sput-object v0, Lcom/ijinshan/cloudconfig/deepcloudconfig/a;->a:Lcom/ijinshan/cloudconfig/deepcloudconfig/a;

    .line 37
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    :cond_1
    sget-object v0, Lcom/ijinshan/cloudconfig/deepcloudconfig/a;->a:Lcom/ijinshan/cloudconfig/deepcloudconfig/a;

    return-object v0

    .line 37
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private c()Ljava/lang/String;
    .locals 3

    .prologue
    .line 174
    :try_start_0
    iget-object v0, p0, Lcom/ijinshan/cloudconfig/deepcloudconfig/a;->c:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 175
    invoke-static {}, Lcom/ijinshan/cloudconfig/c/a;->d()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/ijinshan/cloudconfig/deepcloudconfig/a;->c:Landroid/content/Context;

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/ijinshan/cloudconfig/deepcloudconfig/a;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "deep_cloud_config"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 179
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "cloudmsgadv.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 181
    :goto_0
    return-object v0

    .line 180
    :catch_0
    move-exception v0

    .line 181
    const-string v0, ""

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/Integer;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/ijinshan/cloudconfig/deepcloudconfig/ConfigInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 49
    iget-object v0, p0, Lcom/ijinshan/cloudconfig/deepcloudconfig/a;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 50
    if-nez v0, :cond_0

    move-object v0, v1

    .line 62
    :goto_0
    return-object v0

    .line 54
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 55
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 56
    if-eqz v0, :cond_1

    .line 57
    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 59
    :cond_1
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    move-object v0, v2

    .line 60
    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 62
    goto :goto_0
.end method

.method public declared-synchronized a(Lorg/json/JSONObject;)V
    .locals 10

    .prologue
    const/4 v5, 0x0

    const/4 v9, 0x1

    .line 88
    monitor-enter p0

    .line 89
    if-eqz p1, :cond_a

    .line 90
    :try_start_0
    iget-object v0, p0, Lcom/ijinshan/cloudconfig/deepcloudconfig/a;->b:Ljava/util/HashMap;

    if-eqz v0, :cond_9

    .line 91
    new-instance v4, Ljava/util/HashMap;

    iget-object v0, p0, Lcom/ijinshan/cloudconfig/deepcloudconfig/a;->b:Ljava/util/HashMap;

    invoke-direct {v4, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 93
    iget-object v0, p0, Lcom/ijinshan/cloudconfig/deepcloudconfig/a;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/ijinshan/cloudconfig/deepcloudconfig/a;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 97
    const-string v0, "data"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 98
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lt v0, v9, :cond_6

    .line 103
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 104
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 105
    const-string v0, "id"

    const-string v1, ""

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 106
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 107
    iget-object v1, p0, Lcom/ijinshan/cloudconfig/deepcloudconfig/a;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/ijinshan/cloudconfig/deepcloudconfig/a;->b:Ljava/util/HashMap;

    const-string v1, "func_type"

    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 110
    if-nez v0, :cond_8

    .line 111
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v1, v0

    .line 113
    :goto_2
    const-string v0, "section"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 114
    if-nez v0, :cond_1

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 117
    :cond_1
    new-instance v7, Lcom/ijinshan/cloudconfig/deepcloudconfig/ConfigInfo;

    invoke-direct {v7}, Lcom/ijinshan/cloudconfig/deepcloudconfig/ConfigInfo;-><init>()V

    .line 118
    const-string v8, "func_type"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/ijinshan/cloudconfig/deepcloudconfig/ConfigInfo;->a(I)V

    .line 119
    const-string v8, "priority"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/ijinshan/cloudconfig/deepcloudconfig/ConfigInfo;->b(I)V

    .line 120
    const-string v8, "section"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/ijinshan/cloudconfig/deepcloudconfig/ConfigInfo;->a(Ljava/lang/String;)V

    .line 121
    const-string v8, "key_value"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/ijinshan/cloudconfig/deepcloudconfig/ConfigInfo;->b(Ljava/lang/String;)V

    .line 122
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    const-string v7, "section"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    iget-object v0, p0, Lcom/ijinshan/cloudconfig/deepcloudconfig/a;->b:Ljava/util/HashMap;

    const-string v7, "func_type"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_1

    .line 128
    :cond_2
    iget-object v0, p0, Lcom/ijinshan/cloudconfig/deepcloudconfig/a;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 130
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 131
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 132
    iget-object v1, p0, Lcom/ijinshan/cloudconfig/deepcloudconfig/a;->b:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 133
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 134
    :cond_3
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 135
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 136
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 137
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    if-le v8, v9, :cond_3

    .line 138
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 139
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    .line 146
    :catch_0
    move-exception v0

    .line 147
    if-eqz v4, :cond_7

    .line 148
    :try_start_2
    iput-object v4, p0, Lcom/ijinshan/cloudconfig/deepcloudconfig/a;->b:Ljava/util/HashMap;

    .line 149
    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    move-object v0, v5

    .line 154
    :goto_5
    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    .line 155
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 158
    invoke-static {}, Lcom/ijinshan/cloudconfig/deepcloudconfig/b;->a()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 161
    :cond_4
    monitor-exit p0

    return-void

    .line 142
    :cond_5
    :try_start_3
    iget-object v2, p0, Lcom/ijinshan/cloudconfig/deepcloudconfig/a;->b:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 88
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_6
    move-object v0, v4

    .line 152
    goto :goto_5

    :cond_7
    move-object v0, v4

    goto :goto_5

    :cond_8
    move-object v1, v0

    goto/16 :goto_2

    :cond_9
    move-object v4, v5

    goto/16 :goto_0

    :cond_a
    move-object v0, v5

    goto :goto_5
.end method

.method public b(Ljava/lang/Integer;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 66
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 67
    invoke-virtual {p0, p1, p2}, Lcom/ijinshan/cloudconfig/deepcloudconfig/a;->a(Ljava/lang/Integer;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 68
    const-string v3, "cloud"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "listTemp ="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez v2, :cond_2

    const-string v0, "null"

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/ijinshan/cloudconfig/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    if-eqz v2, :cond_0

    .line 70
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 73
    :cond_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_3

    .line 74
    :cond_1
    const-string v0, ""

    .line 80
    :goto_1
    return-object v0

    .line 68
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 76
    :cond_3
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/cloudconfig/deepcloudconfig/ConfigInfo;

    .line 77
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/ijinshan/cloudconfig/deepcloudconfig/ConfigInfo;->a()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    .line 78
    :cond_4
    const-string v0, ""

    goto :goto_1

    .line 80
    :cond_5
    invoke-virtual {v0}, Lcom/ijinshan/cloudconfig/deepcloudconfig/ConfigInfo;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public b()V
    .locals 1

    .prologue
    .line 167
    invoke-direct {p0}, Lcom/ijinshan/cloudconfig/deepcloudconfig/a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ijinshan/cloudconfig/d/b;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 168
    invoke-virtual {p0, v0}, Lcom/ijinshan/cloudconfig/deepcloudconfig/a;->a(Lorg/json/JSONObject;)V

    .line 170
    return-void
.end method
