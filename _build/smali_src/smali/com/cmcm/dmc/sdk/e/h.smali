.class public Lcom/cmcm/dmc/sdk/e/h;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/cmcm/dmc/sdk/e/h;->a:Ljava/util/Map;

    sget-object v0, Lcom/cmcm/dmc/sdk/e/h;->a:Ljava/util/Map;

    const-string v1, "inst_app_list"

    const-class v2, Lcom/cmcm/dmc/sdk/e/k;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/cmcm/dmc/sdk/e/h;->a:Ljava/util/Map;

    const-string v1, "inst_app"

    const-class v2, Lcom/cmcm/dmc/sdk/e/j;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/cmcm/dmc/sdk/e/h;->a:Ljava/util/Map;

    const-string v1, "uninst_app"

    const-class v2, Lcom/cmcm/dmc/sdk/e/r;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/cmcm/dmc/sdk/e/h;->a:Ljava/util/Map;

    const-string v1, "running_with_duration"

    const-class v2, Lcom/cmcm/dmc/sdk/e/e;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/cmcm/dmc/sdk/e/h;->a:Ljava/util/Map;

    const-string v1, "location"

    const-class v2, Lcom/cmcm/dmc/sdk/e/l;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/cmcm/dmc/sdk/e/h;->a:Ljava/util/Map;

    const-string v1, "screen_state"

    const-class v2, Lcom/cmcm/dmc/sdk/e/q;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/cmcm/dmc/sdk/e/h;->a:Ljava/util/Map;

    const-string v1, "bluetooth"

    const-class v2, Lcom/cmcm/dmc/sdk/e/g;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/cmcm/dmc/sdk/e/h;->a:Ljava/util/Map;

    const-string v1, "headset_plug"

    const-class v2, Lcom/cmcm/dmc/sdk/e/i;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/cmcm/dmc/sdk/e/h;->a:Ljava/util/Map;

    const-string v1, "available_network_list"

    const-class v2, Lcom/cmcm/dmc/sdk/e/f;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/cmcm/dmc/sdk/e/h;->a:Ljava/util/Map;

    const-string v1, "photo_stats"

    const-class v2, Lcom/cmcm/dmc/sdk/e/p;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/cmcm/dmc/sdk/e/h;->a:Ljava/util/Map;

    const-string v1, "music_stats"

    const-class v2, Lcom/cmcm/dmc/sdk/e/n;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/cmcm/dmc/sdk/e/h;->a:Ljava/util/Map;

    const-string v1, "account"

    const-class v2, Lcom/cmcm/dmc/sdk/e/c;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/cmcm/dmc/sdk/e/h;->a:Ljava/util/Map;

    const-string v1, "notification_bar"

    const-class v2, Lcom/cmcm/dmc/sdk/e/o;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
