.class public Lcom/b/a/b/b;
.super Ljava/lang/Object;
.source "OnlineConfigAgent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/b/a/b/b$d;,
        Lcom/b/a/b/b$c;,
        Lcom/b/a/b/b$a;,
        Lcom/b/a/b/b$b;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private d:Lcom/b/a/b/a;

.field private e:Lcom/b/a/b/d;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-string v0, "last_config_time"

    iput-object v0, p0, Lcom/b/a/b/b;->a:Ljava/lang/String;

    .line 28
    const-string v0, "report_policy"

    iput-object v0, p0, Lcom/b/a/b/b;->b:Ljava/lang/String;

    .line 30
    const-string v0, "online_config"

    iput-object v0, p0, Lcom/b/a/b/b;->c:Ljava/lang/String;

    .line 41
    iput-object v1, p0, Lcom/b/a/b/b;->d:Lcom/b/a/b/a;

    .line 42
    iput-object v1, p0, Lcom/b/a/b/b;->e:Lcom/b/a/b/d;

    .line 44
    return-void
.end method

.method static synthetic a(Lcom/b/a/b/b;Landroid/content/Context;)J
    .locals 2

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/b/a/b/b;->b(Landroid/content/Context;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic a(Lcom/b/a/b/b;)Lcom/b/a/b/d;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/b/a/b/b;->e:Lcom/b/a/b/d;

    return-object v0
.end method

.method private a(Landroid/content/Context;Lcom/b/a/b/c;)V
    .locals 3

    .prologue
    .line 89
    iget v0, p2, Lcom/b/a/b/c;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 90
    invoke-static {p1}, Lcom/b/a/k;->a(Landroid/content/Context;)Lcom/b/a/k;

    move-result-object v0

    iget v1, p2, Lcom/b/a/b/c;->c:I

    iget v2, p2, Lcom/b/a/b/c;->d:I

    invoke-virtual {v0, v1, v2}, Lcom/b/a/k;->a(II)V

    .line 92
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/b/a/b/b;Landroid/content/Context;Lcom/b/a/b/c;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/b/a/b/b;->a(Landroid/content/Context;Lcom/b/a/b/c;)V

    return-void
.end method

.method static synthetic a(Lcom/b/a/b/b;Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/b/a/b/b;->a(Lorg/json/JSONObject;)V

    return-void
.end method

.method private a(Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/b/a/b/b;->d:Lcom/b/a/b/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b/a/b/b;->d:Lcom/b/a/b/a;

    invoke-interface {v0, p1}, Lcom/b/a/b/a;->a(Lorg/json/JSONObject;)V

    .line 81
    :cond_0
    return-void
.end method

.method private b(Landroid/content/Context;)J
    .locals 4

    .prologue
    .line 84
    invoke-static {p1}, Lcom/b/a/k;->a(Landroid/content/Context;)Lcom/b/a/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/k;->i()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 85
    const-string v1, "oc_mdf_told"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private b(Landroid/content/Context;Lcom/b/a/b/c;)V
    .locals 5

    .prologue
    .line 95
    iget-object v0, p2, Lcom/b/a/b/c;->a:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/b/a/b/c;->a:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    invoke-static {p1}, Lcom/b/a/k;->a(Landroid/content/Context;)Lcom/b/a/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/k;->i()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 100
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 103
    :try_start_0
    iget-object v2, p2, Lcom/b/a/b/c;->a:Lorg/json/JSONObject;

    .line 106
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 108
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 109
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 110
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v0, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 117
    :catch_0
    move-exception v0

    .line 118
    const-string v1, "MobclickAgent"

    const-string v2, "save online config params"

    invoke-static {v1, v2, v0}, Lb/a/ap;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 113
    :cond_2
    :try_start_1
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 115
    const-string v0, "MobclickAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get online setting params: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lb/a/ap;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method static synthetic b(Lcom/b/a/b/b;Landroid/content/Context;Lcom/b/a/b/c;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/b/a/b/b;->b(Landroid/content/Context;Lcom/b/a/b/c;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 52
    if-nez p1, :cond_0

    .line 53
    :try_start_0
    const-string v0, "MobclickAgent"

    const-string v1, "unexpected null context in updateOnlineConfig"

    invoke-static {v0, v1}, Lb/a/ap;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    :goto_0
    return-void

    .line 57
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/b/a/b/b$b;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/b/a/b/b$b;-><init>(Lcom/b/a/b/b;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 58
    :catch_0
    move-exception v0

    .line 59
    const-string v0, "MobclickAgent"

    const-string v1, "exception in updateOnlineConfig"

    invoke-static {v0, v1}, Lb/a/ap;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lcom/b/a/b/d;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/b/a/b/b;->e:Lcom/b/a/b/d;

    .line 73
    return-void
.end method
