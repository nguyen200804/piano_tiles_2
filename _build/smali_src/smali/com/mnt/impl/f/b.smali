.class public Lcom/mnt/impl/f/b;
.super Lcom/mnt/impl/b/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mnt/impl/f/b$b;,
        Lcom/mnt/impl/f/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mnt/impl/b/e",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static e:Lcom/mnt/impl/f/b$b;

.field private static final f:Ljava/lang/String;

.field private static final g:Ljava/lang/String;

.field private static h:J


# instance fields
.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:Lcom/mnt/impl/f/b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/mnt/impl/e;->gG:Ljava/lang/String;

    .line 28
    sget-object v0, Lcom/mnt/impl/e;->gH:Ljava/lang/String;

    sput-object v0, Lcom/mnt/impl/f/b;->a:Ljava/lang/String;

    .line 32
    const/4 v0, 0x0

    sput-object v0, Lcom/mnt/impl/f/b;->e:Lcom/mnt/impl/f/b$b;

    .line 33
    sget-object v0, Lcom/mnt/impl/e;->gI:Ljava/lang/String;

    sput-object v0, Lcom/mnt/impl/f/b;->f:Ljava/lang/String;

    .line 34
    sget-object v0, Lcom/mnt/impl/e;->gJ:Ljava/lang/String;

    sput-object v0, Lcom/mnt/impl/f/b;->g:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/mnt/impl/f/b$a;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/mnt/impl/b/e;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/mnt/impl/f/b;->b:Landroid/content/Context;

    .line 39
    iput-object p2, p0, Lcom/mnt/impl/f/b;->c:Ljava/lang/String;

    .line 40
    iput-object p3, p0, Lcom/mnt/impl/f/b;->d:Lcom/mnt/impl/f/b$a;

    .line 41
    return-void
.end method

.method private a(Ljava/lang/String;Z)Lcom/mnt/impl/f/b$b;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 139
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 163
    :cond_0
    :goto_0
    return-object v0

    .line 143
    :cond_1
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 144
    sget-object v2, Lcom/mnt/impl/e;->gL:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 145
    sget-object v2, Lcom/mnt/impl/e;->gM:Ljava/lang/String;

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 146
    sget-object v3, Lcom/mnt/impl/e;->gN:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 147
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 148
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 149
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/mnt/impl/f/b$b;->a:Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 151
    :cond_2
    const/16 v1, 0xc8

    if-ne v2, v1, :cond_0

    .line 152
    if-eqz p2, :cond_3

    .line 153
    sget-object v1, Lcom/mnt/impl/f/b;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/mnt/impl/f/b;->b:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/mnt/a/a;->a(Ljava/lang/String;Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 154
    sget-object v2, Lcom/mnt/impl/f/b;->g:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 155
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 157
    :cond_3
    new-instance v1, Lcom/mnt/impl/f/b$b;

    invoke-direct {v1, v4}, Lcom/mnt/impl/f/b$b;-><init>(Ljava/util/Map;)V

    .line 158
    sput-object v1, Lcom/mnt/impl/f/b;->e:Lcom/mnt/impl/f/b$b;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    .line 161
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private d()Ljava/lang/Boolean;
    .locals 4

    .prologue
    .line 63
    const-class v1, Lcom/mnt/impl/f/b;

    monitor-enter v1

    .line 1101
    :try_start_0
    sget-object v0, Lcom/mnt/impl/f/b;->e:Lcom/mnt/impl/f/b$b;

    if-eqz v0, :cond_1

    .line 1102
    sget-object v0, Lcom/mnt/impl/f/b;->e:Lcom/mnt/impl/f/b$b;

    .line 1088
    :goto_0
    if-nez v0, :cond_0

    .line 1089
    invoke-direct {p0}, Lcom/mnt/impl/f/b;->e()Lcom/mnt/impl/f/b$b;

    move-result-object v0

    .line 65
    :cond_0
    if-nez v0, :cond_2

    .line 66
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    monitor-exit v1

    .line 77
    :goto_1
    return-object v0

    .line 1104
    :cond_1
    sget-object v0, Lcom/mnt/impl/f/b;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/mnt/impl/f/b;->b:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/mnt/a/a;->a(Ljava/lang/String;Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v2, Lcom/mnt/impl/f/b;->g:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1106
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/mnt/impl/f/b;->a(Ljava/lang/String;Z)Lcom/mnt/impl/f/b$b;

    move-result-object v0

    .line 1107
    sput-object v0, Lcom/mnt/impl/f/b;->e:Lcom/mnt/impl/f/b$b;

    goto :goto_0

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1187
    :cond_2
    :try_start_1
    iget-object v0, v0, Lcom/mnt/impl/f/b$b;->b:Ljava/util/Map;

    .line 69
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/mnt/impl/f/b;->c:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 70
    :cond_3
    invoke-direct {p0}, Lcom/mnt/impl/f/b;->e()Lcom/mnt/impl/f/b$b;

    move-result-object v0

    .line 71
    if-eqz v0, :cond_5

    .line 2187
    iget-object v0, v0, Lcom/mnt/impl/f/b$b;->b:Ljava/util/Map;

    .line 77
    :cond_4
    :goto_2
    iget-object v2, p0, Lcom/mnt/impl/f/b;->c:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    monitor-exit v1

    goto :goto_1

    .line 74
    :cond_5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method private e()Lcom/mnt/impl/f/b$b;
    .locals 4

    .prologue
    .line 116
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/mnt/impl/f/b;->h:J

    sub-long/2addr v0, v2

    .line 117
    const-wide/32 v2, 0x1b7740

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 119
    const/4 v0, 0x0

    .line 129
    :goto_0
    return-object v0

    .line 122
    :cond_0
    new-instance v0, Lcom/mnt/impl/f/e;

    invoke-direct {v0}, Lcom/mnt/impl/f/e;-><init>()V

    .line 123
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 124
    sget-object v2, Lcom/mnt/impl/e;->gK:Ljava/lang/String;

    iget-object v3, p0, Lcom/mnt/impl/f/b;->b:Landroid/content/Context;

    invoke-static {v3}, Lcom/mnt/impl/b/h;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/mnt/impl/f/b;->h:J

    .line 126
    sget-object v2, Lcom/mnt/impl/f/b;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/mnt/impl/f/b;->b:Landroid/content/Context;

    invoke-static {v3}, Lcom/mnt/impl/b/k;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v1, v3}, Lcom/mnt/impl/f/e;->a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 128
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/mnt/impl/f/b;->a(Ljava/lang/String;Z)Lcom/mnt/impl/f/b$b;

    move-result-object v0

    .line 129
    sput-object v0, Lcom/mnt/impl/f/b;->e:Lcom/mnt/impl/f/b$b;

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/mnt/impl/f/b;->d()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 26
    check-cast p1, Ljava/lang/Boolean;

    .line 3051
    iget-object v0, p0, Lcom/mnt/impl/f/b;->d:Lcom/mnt/impl/f/b$a;

    if-nez v0, :cond_0

    .line 3055
    :goto_0
    return-void

    .line 3054
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3055
    iget-object v0, p0, Lcom/mnt/impl/f/b;->d:Lcom/mnt/impl/f/b$a;

    invoke-interface {v0}, Lcom/mnt/impl/f/b$a;->a()V

    goto :goto_0

    .line 3057
    :cond_1
    iget-object v0, p0, Lcom/mnt/impl/f/b;->d:Lcom/mnt/impl/f/b$a;

    invoke-interface {v0}, Lcom/mnt/impl/f/b$a;->b()V

    goto :goto_0
.end method
