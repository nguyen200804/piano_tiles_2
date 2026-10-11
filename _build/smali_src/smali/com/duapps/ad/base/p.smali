.class public Lcom/duapps/ad/base/p;
.super Ljava/lang/Object;
.source "ToolboxLicenseManager.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcom/duapps/ad/base/p;

.field private static volatile h:Ljava/lang/String;


# instance fields
.field private c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private d:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/duapps/ad/base/p;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/duapps/ad/base/p;->a:Ljava/lang/String;

    .line 43
    const/4 v0, 0x0

    sput-object v0, Lcom/duapps/ad/base/p;->h:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput-object p1, p0, Lcom/duapps/ad/base/p;->g:Landroid/content/Context;

    .line 127
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/duapps/ad/base/p;->c:Landroid/util/SparseArray;

    .line 128
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/duapps/ad/base/p;->d:Landroid/util/SparseArray;

    .line 129
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/duapps/ad/base/p;->f:Landroid/util/SparseArray;

    .line 130
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/duapps/ad/base/p;->e:Landroid/util/SparseArray;

    .line 131
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/duapps/ad/base/p;
    .locals 3

    .prologue
    .line 37
    const-class v1, Lcom/duapps/ad/base/p;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/duapps/ad/base/p;->b:Lcom/duapps/ad/base/p;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lcom/duapps/ad/base/p;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/duapps/ad/base/p;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/duapps/ad/base/p;->b:Lcom/duapps/ad/base/p;

    .line 40
    :cond_0
    sget-object v0, Lcom/duapps/ad/base/p;->b:Lcom/duapps/ad/base/p;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 37
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 45
    sget-object v0, Lcom/duapps/ad/base/p;->h:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 46
    const-class v1, Lcom/duapps/ad/base/p;

    monitor-enter v1

    .line 48
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 49
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    .line 48
    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 50
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "app_license"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 51
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 52
    sget-object v2, Lcom/duapps/ad/base/p;->a:Ljava/lang/String;

    const-string v3, "license should not null"

    invoke-static {v2, v3}, Lcom/duapps/ad/base/h;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    :cond_0
    sput-object v0, Lcom/duapps/ad/base/p;->h:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    :goto_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    :cond_1
    sget-object v0, Lcom/duapps/ad/base/p;->h:Ljava/lang/String;

    return-object v0

    .line 57
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 55
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized a()Ljava/util/HashSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 95
    monitor-enter p0

    :try_start_0
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 96
    iget-object v0, p0, Lcom/duapps/ad/base/p;->c:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    move v1, v0

    .line 97
    :goto_0
    if-lez v1, :cond_0

    .line 98
    add-int/lit8 v0, v1, -0x1

    .line 99
    iget-object v1, p0, Lcom/duapps/ad/base/p;->c:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move v1, v0

    goto :goto_0

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/duapps/ad/base/p;->d:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 104
    :goto_1
    if-lez v0, :cond_1

    .line 105
    add-int/lit8 v0, v0, -0x1

    .line 106
    iget-object v3, p0, Lcom/duapps/ad/base/p;->d:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 95
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 110
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/duapps/ad/base/p;->e:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 111
    :goto_2
    if-lez v0, :cond_2

    .line 112
    add-int/lit8 v0, v0, -0x1

    .line 113
    iget-object v1, p0, Lcom/duapps/ad/base/p;->e:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 115
    :cond_2
    monitor-exit p0

    return-object v2
.end method

.method public a(Ljava/lang/String;)V
    .locals 17

    .prologue
    .line 139
    :try_start_0
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 140
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "pidsJson cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    :catch_0
    move-exception v1

    .line 254
    sget-object v2, Lcom/duapps/ad/base/p;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "JSON parse Exception :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/duapps/ad/base/h;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    :cond_0
    return-void

    .line 142
    :cond_1
    :try_start_1
    new-instance v3, Lorg/json/JSONObject;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 143
    const-string v1, "list"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 144
    const-string v1, "native"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 145
    const-string v1, "lockscreen"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 146
    const-string v1, "weather"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 147
    const-string v1, "ducaller"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 149
    if-eqz v5, :cond_4

    .line 150
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v9

    .line 151
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v9, :cond_4

    .line 152
    invoke-virtual {v5, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 153
    const-string v1, "pid"

    invoke-virtual {v10, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v11

    .line 154
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 155
    const-string v1, "fbids"

    invoke-virtual {v10, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v13

    .line 156
    if-eqz v13, :cond_3

    .line 157
    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v14

    .line 158
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v14, :cond_3

    .line 159
    invoke-virtual {v13, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v15

    .line 160
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_2

    .line 161
    invoke-interface {v12, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 165
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/duapps/ad/base/p;->c:Landroid/util/SparseArray;

    invoke-virtual {v1, v11, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 166
    const-string v1, "amid"

    invoke-virtual {v10, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 167
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/duapps/ad/base/p;->f:Landroid/util/SparseArray;

    invoke-virtual {v10, v11, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 151
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 171
    :cond_4
    if-eqz v4, :cond_5

    .line 172
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 173
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v2, :cond_5

    .line 174
    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 175
    const-string v9, "pid"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    .line 176
    const-string v10, "fbids"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 177
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/duapps/ad/base/p;->d:Landroid/util/SparseArray;

    invoke-virtual {v10, v9, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 173
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 181
    :cond_5
    if-eqz v6, :cond_8

    .line 182
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v4

    .line 183
    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v4, :cond_8

    .line 184
    invoke-virtual {v6, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 185
    const-string v5, "pid"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    .line 187
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 188
    const-string v10, "fbids"

    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 189
    if-eqz v10, :cond_7

    .line 190
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v11

    .line 191
    const/4 v1, 0x0

    :goto_4
    if-ge v1, v11, :cond_7

    .line 192
    invoke-virtual {v10, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v12

    .line 193
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_6

    .line 194
    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 198
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/duapps/ad/base/p;->c:Landroid/util/SparseArray;

    invoke-virtual {v1, v5, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 183
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_3

    .line 202
    :cond_8
    if-eqz v7, :cond_b

    .line 203
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v4

    .line 204
    const/4 v1, 0x0

    move v2, v1

    :goto_5
    if-ge v2, v4, :cond_b

    .line 205
    invoke-virtual {v7, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 206
    const-string v5, "pid"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    .line 208
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 209
    const-string v9, "fbids"

    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 210
    if-eqz v9, :cond_a

    .line 211
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v10

    .line 212
    const/4 v1, 0x0

    :goto_6
    if-ge v1, v10, :cond_a

    .line 213
    invoke-virtual {v9, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v11

    .line 214
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_9

    .line 215
    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 219
    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/duapps/ad/base/p;->c:Landroid/util/SparseArray;

    invoke-virtual {v1, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 204
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_5

    .line 223
    :cond_b
    const-string v1, "offerwall"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 224
    if-eqz v2, :cond_c

    .line 225
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 226
    const/4 v1, 0x0

    :goto_7
    if-ge v1, v3, :cond_c

    .line 227
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 228
    const-string v5, "pid"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    .line 229
    const-string v6, "fbids"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 230
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/duapps/ad/base/p;->e:Landroid/util/SparseArray;

    invoke-virtual {v6, v5, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 226
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 234
    :cond_c
    if-eqz v8, :cond_0

    .line 235
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 236
    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v2, v3, :cond_0

    .line 237
    invoke-virtual {v8, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 238
    const-string v4, "pid"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    .line 239
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 240
    const-string v6, "fbids"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 241
    if-eqz v6, :cond_e

    .line 242
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    .line 243
    const/4 v1, 0x0

    :goto_9
    if-ge v1, v7, :cond_e

    .line 244
    invoke-virtual {v6, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v9

    .line 245
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_d

    .line 246
    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 250
    :cond_e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/duapps/ad/base/p;->c:Landroid/util/SparseArray;

    invoke-virtual {v1, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 236
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_8
.end method

.method public a(I)Z
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/duapps/ad/base/p;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/duapps/ad/base/p;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/duapps/ad/base/p;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/duapps/ad/base/m;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Lcom/duapps/ad/base/p;->g:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/duapps/ad/base/m;->a(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    .line 75
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/duapps/ad/base/p;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 78
    :cond_1
    return-object v0
.end method

.method public c(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/duapps/ad/base/p;->g:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/duapps/ad/base/m;->a(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    .line 84
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/duapps/ad/base/p;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 87
    :goto_0
    return-object v0

    :cond_1
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public d(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/duapps/ad/base/p;->f:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public e(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/duapps/ad/base/p;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
