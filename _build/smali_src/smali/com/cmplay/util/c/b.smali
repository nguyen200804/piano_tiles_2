.class public Lcom/cmplay/util/c/b;
.super Ljava/lang/Object;
.source "ReporterConfigManager.java"


# static fields
.field private static a:Lcom/cmplay/util/c/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    sput-object v0, Lcom/cmplay/util/c/b;->a:Lcom/cmplay/util/c/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    return-void
.end method

.method public static a()Lcom/cmplay/util/c/b;
    .locals 2

    .prologue
    .line 41
    sget-object v0, Lcom/cmplay/util/c/b;->a:Lcom/cmplay/util/c/b;

    if-nez v0, :cond_1

    .line 42
    const-class v1, Lcom/cmplay/util/c/b;

    monitor-enter v1

    .line 43
    :try_start_0
    sget-object v0, Lcom/cmplay/util/c/b;->a:Lcom/cmplay/util/c/b;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lcom/cmplay/util/c/b;

    invoke-direct {v0}, Lcom/cmplay/util/c/b;-><init>()V

    sput-object v0, Lcom/cmplay/util/c/b;->a:Lcom/cmplay/util/c/b;

    .line 46
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    :cond_1
    sget-object v0, Lcom/cmplay/util/c/b;->a:Lcom/cmplay/util/c/b;

    return-object v0

    .line 46
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .prologue
    .line 71
    const-string v0, "current_battery_percentage"

    invoke-static {v0, p1}, Lcom/cmplay/util/aa;->a(Ljava/lang/String;I)V

    .line 72
    return-void
.end method

.method public a(J)V
    .locals 1

    .prologue
    .line 60
    const-string v0, "report_service"

    invoke-static {v0, p1, p2}, Lcom/cmplay/util/aa;->a(Ljava/lang/String;J)V

    .line 61
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 167
    const-string v0, "r_g_versi"

    invoke-static {v0, p1}, Lcom/cmplay/util/aa;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    return-void
.end method

.method public b()J
    .locals 4

    .prologue
    .line 56
    const-string v0, "report_service"

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/cmplay/util/aa;->b(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public b(I)V
    .locals 1

    .prologue
    .line 111
    const-string v0, "nti_eat_charge_times"

    invoke-static {v0, p1}, Lcom/cmplay/util/aa;->a(Ljava/lang/String;I)V

    .line 112
    return-void
.end method

.method public b(J)V
    .locals 1

    .prologue
    .line 87
    const-string v0, "nti_eat_permanent_service_start_time"

    invoke-static {v0, p1, p2}, Lcom/cmplay/util/aa;->a(Ljava/lang/String;J)V

    .line 88
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 175
    const-string v0, "r_g_vendo"

    invoke-static {v0, p1}, Lcom/cmplay/util/aa;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    return-void
.end method

.method public c()I
    .locals 2

    .prologue
    .line 67
    const-string v0, "current_battery_percentage"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/cmplay/util/aa;->b(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public c(I)V
    .locals 1

    .prologue
    .line 143
    const-string v0, "current_battery_voltage"

    invoke-static {v0, p1}, Lcom/cmplay/util/aa;->a(Ljava/lang/String;I)V

    .line 144
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 183
    const-string v0, "r_g_RENDERER"

    invoke-static {v0, p1}, Lcom/cmplay/util/aa;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    return-void
.end method

.method public d()I
    .locals 2

    .prologue
    .line 107
    const-string v0, "nti_eat_charge_times"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/cmplay/util/aa;->b(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public e()I
    .locals 2

    .prologue
    .line 139
    const-string v0, "current_battery_voltage"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/cmplay/util/aa;->b(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method
