.class public Lcom/cmcm/dmc/sdk/a/k;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/cmcm/dmc/sdk/a/k;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private c:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-wide/16 v4, 0x0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/cmcm/dmc/sdk/a/k;->a:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/cmcm/dmc/sdk/a/k;->b:Ljava/util/HashMap;

    sget-object v0, Lcom/cmcm/dmc/sdk/a/k;->b:Ljava/util/HashMap;

    const-string v1, "report_timestamp"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/cmcm/dmc/sdk/a/k;->b:Ljava/util/HashMap;

    const-string v1, "config_version"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/cmcm/dmc/sdk/a/k;->b:Ljava/util/HashMap;

    const-string v1, "config_verion_timestamp"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/cmcm/dmc/sdk/a/k;->b:Ljava/util/HashMap;

    const-string v1, "config_update_timestamp"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/cmcm/dmc/sdk/a/k;->b:Ljava/util/HashMap;

    const-string v1, "receiver_priority_version"

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/cmcm/dmc/sdk/a/k;->b:Ljava/util/HashMap;

    const-string v1, "report_heartbeat"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/cmcm/dmc/sdk/a/k;->b:Ljava/util/HashMap;

    const-string v1, "report_heartbeat_day"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/cmcm/dmc/sdk/a/k;->b:Ljava/util/HashMap;

    const-string v1, "report_sequence"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/cmcm/dmc/sdk/a/k;->b:Ljava/util/HashMap;

    const-string v1, "config_music_last_added_time"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/cmcm/dmc/sdk/a/k;->b:Ljava/util/HashMap;

    const-string v1, "config_photo_last_added_time"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/cmcm/dmc/sdk/a/k;->b:Ljava/util/HashMap;

    const-string v1, "last_app_install_list_time"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/cmcm/dmc/sdk/a/c;->a(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/cmcm/dmc/sdk/a/k;->c:Landroid/content/SharedPreferences;

    return-void
.end method

.method public static a()Lcom/cmcm/dmc/sdk/a/k;
    .locals 1

    const-string v0, "default"

    invoke-static {v0}, Lcom/cmcm/dmc/sdk/a/k;->a(Ljava/lang/String;)Lcom/cmcm/dmc/sdk/a/k;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized a(Ljava/lang/String;)Lcom/cmcm/dmc/sdk/a/k;
    .locals 3

    const-class v1, Lcom/cmcm/dmc/sdk/a/k;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/cmcm/dmc/sdk/a/k;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmcm/dmc/sdk/a/k;

    if-nez v0, :cond_0

    new-instance v0, Lcom/cmcm/dmc/sdk/a/k;

    invoke-direct {v0, p0}, Lcom/cmcm/dmc/sdk/a/k;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/cmcm/dmc/sdk/a/k;->a:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Landroid/content/SharedPreferences$Editor;)V
    .locals 2

    if-eqz p0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_1

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method


# virtual methods
.method public b(Ljava/lang/String;)I
    .locals 2

    sget-object v0, Lcom/cmcm/dmc/sdk/a/k;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v1, p0, Lcom/cmcm/dmc/sdk/a/k;->c:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v1, p1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public b()Landroid/content/SharedPreferences;
    .locals 1

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/a/k;->c:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public c(Ljava/lang/String;)J
    .locals 3

    sget-object v0, Lcom/cmcm/dmc/sdk/a/k;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    iget-object v2, p0, Lcom/cmcm/dmc/sdk/a/k;->c:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    invoke-interface {v2, p1, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0
.end method

.method public c()Landroid/content/SharedPreferences$Editor;
    .locals 1

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/a/k;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/cmcm/dmc/sdk/a/k;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/cmcm/dmc/sdk/a/k;->c:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
