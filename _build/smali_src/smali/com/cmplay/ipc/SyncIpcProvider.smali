.class public Lcom/cmplay/ipc/SyncIpcProvider;
.super Ljava/lang/Object;
.source "SyncIpcProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmplay/ipc/SyncIpcProvider$b;,
        Lcom/cmplay/ipc/SyncIpcProvider$a;
    }
.end annotation


# static fields
.field private static sContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    sput-object v0, Lcom/cmplay/ipc/SyncIpcProvider;->sContext:Landroid/content/Context;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method static synthetic access$002(Landroid/content/Context;)Landroid/content/Context;
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 24
    sput-object p0, Lcom/cmplay/ipc/SyncIpcProvider;->sContext:Landroid/content/Context;

    return-object p0
.end method

.method public static notifyLevelingDataChanged()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 54
    invoke-static {}, Lcom/cmplay/i/c;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    invoke-static {}, Lcom/cmplay/tile2/GameApp;->g()Lcom/cmplay/tile2/GameApp;

    move-result-object v0

    new-instance v1, Lcom/cmplay/ipc/SyncIpcProvider$1;

    invoke-direct {v1}, Lcom/cmplay/ipc/SyncIpcProvider$1;-><init>()V

    invoke-virtual {v0, v1}, Lcom/cmplay/tile2/GameApp;->a(Ljava/lang/Runnable;)V

    .line 65
    :goto_0
    return-void

    .line 63
    :cond_0
    invoke-static {}, Lcom/cmplay/ipc/SyncIpcProvider$b;->b()Lcom/cmplay/ipc/SyncIpcProvider$b;

    move-result-object v0

    const-string v1, "notifyLevelingDataChanged"

    invoke-virtual {v0, v1, v2, v2, v2}, Lcom/cmplay/ipc/SyncIpcProvider$b;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static setDmcSdkEnabled(Z)V
    .locals 6
    .param p0, "enabled"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 32
    invoke-static {}, Lcom/cmplay/i/c;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    invoke-static {}, Lcom/cmcm/dmc/sdk/c;->a()Lcom/cmcm/dmc/sdk/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/cmcm/dmc/sdk/c;->a(Z)V

    .line 37
    :goto_0
    return-void

    .line 35
    :cond_0
    invoke-static {}, Lcom/cmplay/ipc/SyncIpcProvider$b;->b()Lcom/cmplay/ipc/SyncIpcProvider$b;

    move-result-object v0

    const-string v1, "setDmcSdkEnabled"

    new-array v2, v4, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v5

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v5

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/cmplay/ipc/SyncIpcProvider$b;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static setLanguage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p0, "languageCode"    # Ljava/lang/String;
    .param p1, "countryCode"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 40
    invoke-static {}, Lcom/cmplay/i/c;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    sget-object v0, Lcom/cmplay/ipc/SyncIpcProvider;->sContext:Landroid/content/Context;

    invoke-static {v0, p0, p1}, Lcom/cmplay/util/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const-string v0, "key_language_selected"

    invoke-static {v0, p0}, Lcom/cmplay/util/aa;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const-string v0, "key_country_selected"

    invoke-static {v0, p1}, Lcom/cmplay/util/aa;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-static {}, Lcom/cmplay/d/b;->a()Lcom/cmplay/d/b;

    move-result-object v0

    sget-object v1, Lcom/cmplay/ipc/SyncIpcProvider;->sContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p0, p1}, Lcom/cmplay/d/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    :goto_0
    return-void

    .line 49
    :cond_0
    invoke-static {}, Lcom/cmplay/ipc/SyncIpcProvider$b;->b()Lcom/cmplay/ipc/SyncIpcProvider$b;

    move-result-object v0

    const-string v1, "setLanguage"

    new-array v2, v6, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v4

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v5

    new-array v3, v6, [Ljava/lang/Object;

    aput-object p0, v3, v4

    aput-object p1, v3, v5

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/cmplay/ipc/SyncIpcProvider$b;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    goto :goto_0
.end method
