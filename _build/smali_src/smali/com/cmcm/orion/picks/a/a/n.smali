.class public final Lcom/cmcm/orion/picks/a/a/n;
.super Ljava/lang/Object;
.source "PreferenceHelper.java"


# static fields
.field public static final a:Ljava/lang/String;

.field private static final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/SharedPreferences;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 16
    const-string v0, "%s_%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "cmadsdk"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {}, Lcom/cmcm/orion/adsdk/e;->b()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cmcm/orion/picks/a/a/n;->a:Ljava/lang/String;

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/cmcm/orion/picks/a/a/n;->b:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/cmcm/orion/picks/a/a/n;->c:Ljava/lang/String;

    .line 24
    return-void
.end method

.method private a()Landroid/content/SharedPreferences;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 30
    iget-object v1, p0, Lcom/cmcm/orion/picks/a/a/n;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 47
    :goto_0
    return-object v0

    .line 35
    :cond_0
    sget-object v1, Lcom/cmcm/orion/picks/a/a/n;->b:Ljava/util/HashMap;

    monitor-enter v1

    .line 36
    :try_start_0
    sget-object v2, Lcom/cmcm/orion/picks/a/a/n;->b:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/cmcm/orion/picks/a/a/n;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 37
    sget-object v0, Lcom/cmcm/orion/picks/a/a/n;->b:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/cmcm/orion/picks/a/a/n;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    .line 45
    :cond_1
    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 39
    :cond_2
    :try_start_1
    invoke-static {}, Lcom/cmcm/orion/adsdk/e;->a()Landroid/content/Context;

    move-result-object v2

    .line 40
    if-eqz v2, :cond_1

    .line 41
    iget-object v0, p0, Lcom/cmcm/orion/picks/a/a/n;->c:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 42
    sget-object v2, Lcom/cmcm/orion/picks/a/a/n;->b:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/cmcm/orion/picks/a/a/n;->c:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private static a(Landroid/content/SharedPreferences$Editor;)V
    .locals 2

    .prologue
    .line 56
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    .line 57
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 61
    :goto_0
    return-void

    .line 59
    :cond_0
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method private b()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/cmcm/orion/picks/a/a/n;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 52
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 99
    invoke-direct {p0}, Lcom/cmcm/orion/picks/a/a/n;->a()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 100
    if-eqz v1, :cond_0

    invoke-interface {v1, p1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    :cond_0
    return v0
.end method

.method public final a(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/cmcm/orion/picks/a/a/n;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 92
    if-eqz v0, :cond_0

    .line 93
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 94
    invoke-static {v0}, Lcom/cmcm/orion/picks/a/a/n;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 96
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/cmcm/orion/picks/a/a/n;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 105
    if-eqz v0, :cond_0

    .line 106
    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 107
    invoke-static {v0}, Lcom/cmcm/orion/picks/a/a/n;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 109
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/cmcm/orion/picks/a/a/n;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 65
    if-eqz v0, :cond_0

    .line 66
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 67
    invoke-static {v0}, Lcom/cmcm/orion/picks/a/a/n;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 69
    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;J)J
    .locals 2

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/cmcm/orion/picks/a/a/n;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 113
    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p2

    :cond_0
    return-wide p2
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/cmcm/orion/picks/a/a/n;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 73
    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_0
    return-object p2
.end method
