.class public Lcom/duapps/ad/base/m;
.super Ljava/lang/Object;
.source "SharedPrefsUtils.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/lang/Object;

.field private static final c:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/duapps/ad/base/m;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/duapps/ad/base/m;->a:Ljava/lang/String;

    .line 28
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/duapps/ad/base/m;->b:Ljava/lang/Object;

    .line 40
    const/16 v0, 0x30

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/duapps/ad/base/m;->c:[B

    return-void

    nop

    :array_0
    .array-data 1
        -0x35t
        -0x31t
        0x7dt
        0x1ft
        0x11t
        0x1at
        0x51t
        0x24t
        -0x35t
        0x11t
        0x27t
        0x2bt
        -0x40t
        0x4ft
        0x30t
        -0x9t
        0x20t
        -0x3ct
        -0x15t
        -0x5ct
        -0x30t
        0x3at
        -0x3bt
        -0x49t
        -0x24t
        -0x79t
        -0x47t
        -0x5ct
        -0x57t
        0x57t
        -0x79t
        0x13t
        -0x5ct
        -0x60t
        0x43t
        0x35t
        0x33t
        0x63t
        0x35t
        0x3bt
        0x39t
        0x21t
        0x79t
        -0x16t
        0x1ft
        -0x50t
        0x76t
        -0x45t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    return-void
.end method

.method public static A(Landroid/content/Context;)I
    .locals 2

    .prologue
    .line 578
    const-string v0, "key_ptas"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/duapps/ad/base/m;->b(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static B(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 603
    const-string v0, "ptay"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/duapps/ad/base/m;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)J
    .locals 4

    .prologue
    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "last_modified_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-static {p0, v0, v2, v3}, Lcom/duapps/ad/base/m;->d(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static a(Landroid/content/Context;I)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 78
    const-string v1, "_toolbox_prefs"

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 79
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "n_pid"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 80
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 81
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 83
    :try_start_0
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 84
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v1

    .line 85
    :goto_0
    if-ge v0, v1, :cond_1

    .line 86
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v4

    .line 87
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 88
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 91
    :catch_0
    move-exception v0

    .line 94
    :cond_1
    return-object v2
.end method

.method public static a(Landroid/content/Context;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 128
    const-string v0, "_toolbox_prefs"

    .line 129
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 130
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 131
    sget-object v1, Lcom/duapps/ad/base/m;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 132
    :try_start_0
    const-string v2, "fb_no_fill_c"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 133
    const-string v2, "fb_no_fill_t"

    const-wide/16 v4, 0x0

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 134
    invoke-static {v0}, Lcom/duapps/ad/c/b/c;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 135
    monitor-exit v1

    .line 136
    return-void

    .line 135
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static a(Landroid/content/Context;IJ)V
    .locals 2

    .prologue
    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "priotity_server"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2, p3}, Lcom/duapps/ad/base/m;->b(Landroid/content/Context;Ljava/lang/String;J)V

    .line 175
    return-void
.end method

.method public static a(Landroid/content/Context;ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 286
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    :goto_0
    return-void

    .line 289
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "priority_policy_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/duapps/ad/base/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;J)V
    .locals 1

    .prologue
    .line 166
    const-string v0, "ls_priotity_server"

    invoke-static {p0, v0, p1, p2}, Lcom/duapps/ad/base/m;->c(Landroid/content/Context;Ljava/lang/String;J)V

    .line 167
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 410
    const-string v0, "_toolbox_prefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 411
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 412
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 413
    invoke-static {v0}, Lcom/duapps/ad/c/b/c;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 414
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 4

    .prologue
    .line 98
    const-string v0, "_toolbox_prefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 99
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "last_modified_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 101
    invoke-static {v0}, Lcom/duapps/ad/c/b/c;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "last_modified_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2, p3}, Lcom/duapps/ad/base/m;->c(Landroid/content/Context;Ljava/lang/String;J)V

    .line 103
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 539
    const-string v0, "_toolbox_prefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 540
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 541
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 542
    invoke-static {v0}, Lcom/duapps/ad/c/b/c;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 543
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 505
    const-string v0, "_toolbox_prefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 506
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 507
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 508
    invoke-static {v0}, Lcom/duapps/ad/c/b/c;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 509
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/util/List;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 63
    const-string v0, "_toolbox_prefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 64
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 66
    :try_start_0
    new-instance v0, Lorg/json/JSONStringer;

    invoke-direct {v0}, Lorg/json/JSONStringer;-><init>()V

    invoke-virtual {v0}, Lorg/json/JSONStringer;->array()Lorg/json/JSONStringer;

    move-result-object v2

    .line 67
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 68
    invoke-virtual {v2, v0}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    goto :goto_0

    .line 73
    :catch_0
    move-exception v0

    .line 75
    :goto_1
    return-void

    .line 70
    :cond_0
    invoke-virtual {v2}, Lorg/json/JSONStringer;->endArray()Lorg/json/JSONStringer;

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "n_pid"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 72
    invoke-static {v1}, Lcom/duapps/ad/c/b/c;->a(Landroid/content/SharedPreferences$Editor;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;Z)V
    .locals 1

    .prologue
    .line 428
    const-string v0, "itwd"

    invoke-static {p0, v0, p1}, Lcom/duapps/ad/base/m;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 429
    return-void
.end method

.method public static a(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 8

    .prologue
    const-wide/32 v6, 0x493e0

    const/4 v0, 0x1

    .line 190
    invoke-static {p0, p1}, Lcom/duapps/ad/base/m;->e(Ljava/lang/String;Landroid/content/Context;)J

    move-result-wide v2

    .line 191
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 200
    :cond_0
    :goto_0
    return v0

    .line 194
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    .line 196
    cmp-long v1, v2, v6

    if-gtz v1, :cond_0

    .line 200
    cmp-long v1, v2, v6

    if-gtz v1, :cond_2

    invoke-static {p0, p1}, Lcom/duapps/ad/base/m;->c(Ljava/lang/String;Landroid/content/Context;)I

    move-result v1

    const/16 v2, 0x3c

    if-lt v1, v2, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 2

    .prologue
    .line 417
    const-string v0, "_toolbox_prefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 418
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 546
    const-string v0, "_toolbox_prefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 547
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 146
    const-string v0, "fb_success_t"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {p0, v0, v2, v3}, Lcom/duapps/ad/base/m;->c(Landroid/content/Context;Ljava/lang/String;J)V

    .line 147
    return-void
.end method

.method public static b(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 150
    const-string v0, "fid_time"

    invoke-static {p0, v0, p1}, Lcom/duapps/ad/base/m;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 151
    return-void
.end method

.method public static b(Landroid/content/Context;J)V
    .locals 1

    .prologue
    .line 357
    const-string v0, "tcpp_ct"

    invoke-static {p0, v0, p1, p2}, Lcom/duapps/ad/base/m;->c(Landroid/content/Context;Ljava/lang/String;J)V

    .line 358
    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 297
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 301
    :goto_0
    return-void

    .line 300
    :cond_0
    const-string v0, "imid"

    invoke-static {p0, v0, p1}, Lcom/duapps/ad/base/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 0

    .prologue
    .line 182
    invoke-static {p0, p1, p2, p3}, Lcom/duapps/ad/base/m;->c(Landroid/content/Context;Ljava/lang/String;J)V

    .line 183
    return-void
.end method

.method public static b(Landroid/content/Context;Z)V
    .locals 1

    .prologue
    .line 469
    const-string v0, "k_allow_charles"

    invoke-static {p0, v0, p1}, Lcom/duapps/ad/base/m;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 470
    return-void
.end method

.method public static b(Ljava/lang/String;Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 220
    invoke-static {p0, p1}, Lcom/duapps/ad/base/m;->e(Ljava/lang/String;Landroid/content/Context;)J

    move-result-wide v0

    .line 221
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    .line 223
    const-wide/32 v2, 0x493e0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 224
    invoke-static {p0, p1}, Lcom/duapps/ad/base/m;->d(Ljava/lang/String;Landroid/content/Context;)V

    .line 225
    const/4 v0, 0x1

    .line 229
    :goto_0
    invoke-static {p1, p0, v0}, Lcom/duapps/ad/base/m;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 230
    return-void

    .line 227
    :cond_0
    invoke-static {p0, p1}, Lcom/duapps/ad/base/m;->c(Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 2

    .prologue
    .line 512
    const-string v0, "_toolbox_prefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 513
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static c(Landroid/content/Context;)I
    .locals 2

    .prologue
    .line 154
    const-string v0, "fid_time"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/duapps/ad/base/m;->b(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static c(Ljava/lang/String;Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 233
    const/4 v0, 0x0

    invoke-static {p1, p0, v0}, Lcom/duapps/ad/base/m;->b(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static c(Landroid/content/Context;I)J
    .locals 2

    .prologue
    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "priotity_server"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/duapps/ad/base/m;->h(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static c(Landroid/content/Context;J)V
    .locals 1

    .prologue
    .line 438
    const-string v0, "c_filter_t"

    invoke-static {p0, v0, p1, p2}, Lcom/duapps/ad/base/m;->c(Landroid/content/Context;Ljava/lang/String;J)V

    .line 439
    return-void
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 385
    const-string v0, "key_priority_browsers"

    invoke-static {p0, v0, p1}, Lcom/duapps/ad/base/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    return-void
.end method

.method private static c(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 493
    const-string v0, "_toolbox_prefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 494
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 495
    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 496
    invoke-static {v0}, Lcom/duapps/ad/c/b/c;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 497
    return-void
.end method

.method public static c(Landroid/content/Context;Z)V
    .locals 1

    .prologue
    .line 479
    const-string v0, "k_allow_tcpdump"

    invoke-static {p0, v0, p1}, Lcom/duapps/ad/base/m;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 480
    return-void
.end method

.method private static d(Landroid/content/Context;Ljava/lang/String;J)J
    .locals 2

    .prologue
    .line 500
    const-string v0, "_toolbox_prefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 501
    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static d(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 158
    const-string v0, "ls_priotity_client"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {p0, v0, v2, v3}, Lcom/duapps/ad/base/m;->c(Landroid/content/Context;Ljava/lang/String;J)V

    .line 159
    return-void
.end method

.method public static d(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 245
    const-string v0, "log_priotity"

    invoke-static {p0, v0, p1}, Lcom/duapps/ad/base/m;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 246
    return-void
.end method

.method public static d(Landroid/content/Context;J)V
    .locals 1

    .prologue
    .line 449
    const-string v0, "k_nu_interval"

    invoke-static {p0, v0, p1, p2}, Lcom/duapps/ad/base/m;->c(Landroid/content/Context;Ljava/lang/String;J)V

    .line 450
    return-void
.end method

.method public static d(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 523
    const-string v0, "k_pk"

    invoke-static {p0, v0}, Lcom/duapps/ad/base/m;->e(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 527
    :cond_0
    :goto_0
    return-void

    .line 526
    :cond_1
    const-string v0, "k_pk"

    invoke-static {p0, v0, p1}, Lcom/duapps/ad/base/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static d(Landroid/content/Context;Z)V
    .locals 1

    .prologue
    .line 489
    const-string v0, "k_allow_simulator"

    invoke-static {p0, v0, p1}, Lcom/duapps/ad/base/m;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 490
    return-void
.end method

.method private static d(Ljava/lang/String;Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_pull_time"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {p1, v0, v2, v3}, Lcom/duapps/ad/base/m;->c(Landroid/content/Context;Ljava/lang/String;J)V

    .line 238
    return-void
.end method

.method public static e(Landroid/content/Context;)J
    .locals 4

    .prologue
    .line 162
    const-string v0, "ls_priotity_client"

    const-wide/16 v2, 0x0

    invoke-static {p0, v0, v2, v3}, Lcom/duapps/ad/base/m;->d(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private static e(Ljava/lang/String;Landroid/content/Context;)J
    .locals 4

    .prologue
    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_pull_time"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-static {p1, v0, v2, v3}, Lcom/duapps/ad/base/m;->d(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static e(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "priority_policy_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/duapps/ad/base/m;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static e(Landroid/content/Context;Z)V
    .locals 1

    .prologue
    .line 564
    const-string v0, "k_isSus"

    invoke-static {p0, v0, p1}, Lcom/duapps/ad/base/m;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 565
    return-void
.end method

.method public static e(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 534
    const-string v0, "_toolbox_prefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 535
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static f(Landroid/content/Context;)J
    .locals 4

    .prologue
    .line 178
    const-string v0, "ls_priotity_server"

    const-wide/16 v2, 0x0

    invoke-static {p0, v0, v2, v3}, Lcom/duapps/ad/base/m;->d(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static f(Landroid/content/Context;I)V
    .locals 2

    .prologue
    .line 315
    const-string v0, "_toolbox_prefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 316
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "tcppTctp"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 317
    return-void
.end method

.method public static f(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 551
    const-string v0, "k_location"

    invoke-static {p0, v0, p1}, Lcom/duapps/ad/base/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    return-void
.end method

.method public static f(Landroid/content/Context;Z)V
    .locals 1

    .prologue
    .line 592
    const-string v0, "k_anit"

    invoke-static {p0, v0, p1}, Lcom/duapps/ad/base/m;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 593
    return-void
.end method

.method public static g(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 361
    const-string v0, "key_tcpp_pull_interval_time"

    invoke-static {p0, v0, p1}, Lcom/duapps/ad/base/m;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 362
    return-void
.end method

.method public static g(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 568
    const-string v0, "k_exg"

    invoke-static {p0, v0, p1}, Lcom/duapps/ad/base/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    return-void
.end method

.method public static g(Landroid/content/Context;Z)V
    .locals 1

    .prologue
    .line 607
    const-string v0, "ptay"

    invoke-static {p0, v0, p1}, Lcom/duapps/ad/base/m;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 608
    return-void
.end method

.method public static g(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 204
    const-string v0, "load_frequently_times"

    invoke-static {v0, p0}, Lcom/duapps/ad/base/m;->a(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private static h(Landroid/content/Context;Ljava/lang/String;)J
    .locals 2

    .prologue
    .line 186
    const-wide/16 v0, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/duapps/ad/base/m;->d(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static h(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 216
    const-string v0, "load_frequently_times"

    invoke-static {v0, p0}, Lcom/duapps/ad/base/m;->b(Ljava/lang/String;Landroid/content/Context;)V

    .line 217
    return-void
.end method

.method public static h(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 381
    const-string v0, "key_fb_ct"

    invoke-static {p0, v0, p1}, Lcom/duapps/ad/base/m;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 382
    return-void
.end method

.method public static i(Landroid/content/Context;)J
    .locals 6

    .prologue
    const-wide/16 v0, 0x0

    .line 253
    const-string v2, "_toolbox_prefs"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 254
    const-string v3, "tts_cache_time"

    const-wide/32 v4, 0x5265c00

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 255
    cmp-long v4, v2, v0

    if-gez v4, :cond_0

    :goto_0
    return-wide v0

    :cond_0
    move-wide v0, v2

    goto :goto_0
.end method

.method public static i(Landroid/content/Context;I)V
    .locals 2

    .prologue
    .line 582
    const-string v0, "_toolbox_prefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 583
    const-string v1, "key_ptas"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    .line 584
    if-nez v0, :cond_0

    .line 585
    const-string v0, "key_ptas"

    invoke-static {p0, v0, p1}, Lcom/duapps/ad/base/m;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 587
    :cond_0
    return-void
.end method

.method public static j(Landroid/content/Context;)I
    .locals 2

    .prologue
    .line 268
    const-string v0, "log_priotity"

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Lcom/duapps/ad/base/m;->b(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static k(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 305
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "8a1n9d0i3c1y0c2f"

    const-string v2, "8a1n9d0i3c1y0c2f"

    sget-object v3, Lcom/duapps/ad/base/m;->c:[B

    invoke-static {v1, v2, v3}, Lcom/duapps/ad/base/b;->a(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 306
    sget-object v1, Lcom/duapps/ad/base/m;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getInID(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    const-string v1, "imid"

    invoke-static {p0, v1, v0}, Lcom/duapps/ad/base/m;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 311
    :goto_0
    return-object v0

    .line 308
    :catch_0
    move-exception v0

    .line 309
    sget-object v1, Lcom/duapps/ad/base/m;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getInID Exception :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/duapps/ad/base/h;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static l(Landroid/content/Context;)I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 320
    const-string v0, "_toolbox_prefs"

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 321
    const-string v1, "tcppTctp"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static m(Landroid/content/Context;)J
    .locals 4

    .prologue
    .line 353
    const-string v0, "tcpp_ct"

    const-wide/32 v2, 0x5265c00

    invoke-static {p0, v0, v2, v3}, Lcom/duapps/ad/base/m;->d(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static n(Landroid/content/Context;)J
    .locals 4

    .prologue
    .line 365
    const-string v0, "key_tcpp_pull_interval_time"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/duapps/ad/base/m;->b(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    const-wide/32 v2, 0xea60

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public static o(Landroid/content/Context;)J
    .locals 4

    .prologue
    .line 369
    const-string v0, "ls_tcpp"

    const-wide/16 v2, 0x0

    invoke-static {p0, v0, v2, v3}, Lcom/duapps/ad/base/m;->d(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static p(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 373
    const-string v0, "ls_tcpp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {p0, v0, v2, v3}, Lcom/duapps/ad/base/m;->c(Landroid/content/Context;Ljava/lang/String;J)V

    .line 374
    return-void
.end method

.method public static q(Landroid/content/Context;)J
    .locals 4

    .prologue
    .line 377
    const-string v0, "key_fb_ct"

    const/16 v1, 0x3c

    invoke-static {p0, v0, v1}, Lcom/duapps/ad/base/m;->b(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    const-wide/32 v2, 0xea60

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public static r(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 389
    const-string v0, "key_priority_browsers"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/duapps/ad/base/m;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static s(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 424
    const-string v0, "itwd"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/duapps/ad/base/m;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static t(Landroid/content/Context;)J
    .locals 4

    .prologue
    .line 434
    const-string v0, "c_filter_t"

    const-wide/16 v2, 0x0

    invoke-static {p0, v0, v2, v3}, Lcom/duapps/ad/base/m;->d(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static u(Landroid/content/Context;)J
    .locals 4

    .prologue
    .line 445
    const-string v0, "k_nu_interval"

    const-wide/32 v2, 0xdbba00

    invoke-static {p0, v0, v2, v3}, Lcom/duapps/ad/base/m;->d(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static v(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 459
    const-string v0, "isNU"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/duapps/ad/base/m;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static w(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 475
    const-string v0, "k_allow_tcpdump"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/duapps/ad/base/m;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static x(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 485
    const-string v0, "k_allow_simulator"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/duapps/ad/base/m;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static y(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 530
    const-string v0, "k_pk"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/duapps/ad/base/m;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static z(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 572
    const-string v0, "k_exg"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/duapps/ad/base/m;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
