.class public Lcom/cmcm/dmc/sdk/b/c;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/cmcm/dmc/sdk/b/c;->a:Ljava/util/Map;

    sget-object v0, Lcom/cmcm/dmc/sdk/b/c;->a:Ljava/util/Map;

    const-string v1, "error_code"

    const-string v2, "ec"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/cmcm/dmc/sdk/b/c;->a:Ljava/util/Map;

    const-string v1, "time"

    const-string v2, "t"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/cmcm/dmc/sdk/b/c;->a:Ljava/util/Map;

    const-string v1, "base_info"

    const-string v2, "bi"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/cmcm/dmc/sdk/b/c;->a:Ljava/util/Map;

    const-string v1, "recovery"

    const-string v2, "re"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/cmcm/dmc/sdk/b/c;->a:Ljava/util/Map;

    const-string v1, "mainboard"

    const-string v2, "mb"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/cmcm/dmc/sdk/b/c;->a:Ljava/util/Map;

    const-string v1, "device_serial"

    const-string v2, "ds"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/cmcm/dmc/sdk/b/c;->a:Ljava/util/Map;

    const-string v1, "cpu"

    const-string v2, "cpu"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/cmcm/dmc/sdk/b/c;->a:Ljava/util/Map;

    const-string v1, "screen"

    const-string v2, "sc"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/cmcm/dmc/sdk/b/c;->a:Ljava/util/Map;

    const-string v1, "memory"

    const-string v2, "me"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/cmcm/dmc/sdk/b/c;->a:Ljava/util/Map;

    const-string v1, "os_info"

    const-string v2, "os"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/cmcm/dmc/sdk/b/c;->a:Ljava/util/Map;

    const-string v1, "root"

    const-string v2, "rt"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/cmcm/dmc/sdk/b/c;->a:Ljava/util/Map;

    const-string v1, "type"

    const-string v2, "ty"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/cmcm/dmc/sdk/b/c;->a:Ljava/util/Map;

    const-string v1, "vm"

    const-string v2, "vm"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/cmcm/dmc/sdk/b/c;->a:Ljava/util/Map;

    const-string v1, "lan"

    const-string v2, "la"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/cmcm/dmc/sdk/b/c;->a:Ljava/util/Map;

    const-string v1, "time_zone"

    const-string v2, "tz"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/cmcm/dmc/sdk/b/c;->a:Ljava/util/Map;

    const-string v1, "country"

    const-string v2, "co"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/cmcm/dmc/sdk/b/c;->a:Ljava/util/Map;

    const-string v1, "build"

    const-string v2, "bd"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/cmcm/dmc/sdk/b/c;->a:Ljava/util/Map;

    const-string v1, "kernel"

    const-string v2, "kl"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/cmcm/dmc/sdk/b/c;->a:Ljava/util/Map;

    const-string v1, "aid"

    const-string v2, "ad"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/cmcm/dmc/sdk/b/c;->a:Ljava/util/Map;

    const-string v1, "gid"

    const-string v2, "ga"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/cmcm/dmc/sdk/b/c;->a:Ljava/util/Map;

    const-string v1, "app_info"

    const-string v2, "api"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/cmcm/dmc/sdk/b/c;->a:Ljava/util/Map;

    const-string v1, "app_version"

    const-string v2, "av"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/cmcm/dmc/sdk/b/c;->a:Ljava/util/Map;

    const-string v1, "app_package"

    const-string v2, "apk"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/cmcm/dmc/sdk/b/c;->a:Ljava/util/Map;

    const-string v1, "app_sign"

    const-string v2, "asi"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/cmcm/dmc/sdk/b/c;->a:Ljava/util/Map;

    const-string v1, "app_thread"

    const-string v2, "atr"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/cmcm/dmc/sdk/b/c;->a:Ljava/util/Map;

    const-string v1, "app_uuid"

    const-string v2, "aud"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/cmcm/dmc/sdk/b/c;->a:Ljava/util/Map;

    const-string v1, "sdk_uuid"

    const-string v2, "sud"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/cmcm/dmc/sdk/b/c;->a:Ljava/util/Map;

    const-string v1, "uuid_state"

    const-string v2, "uist"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/cmcm/dmc/sdk/b/c;->a:Ljava/util/Map;

    const-string v1, "app_chanel"

    const-string v2, "ach"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/cmcm/dmc/sdk/b/c;->a:Ljava/util/Map;

    const-string v1, "sensor_info"

    const-string v2, "si"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/cmcm/dmc/sdk/b/c;->a:Ljava/util/Map;

    const-string v1, "sensor_type"

    const-string v2, "st"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/cmcm/dmc/sdk/b/c;->a:Ljava/util/Map;

    const-string v1, "sensor_data"

    const-string v2, "sd"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/cmcm/dmc/sdk/b/c;->a:Ljava/util/Map;

    const-string v1, "x1"

    const-string v2, "x1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/cmcm/dmc/sdk/b/c;->a:Ljava/util/Map;

    const-string v1, "sim_serial"

    const-string v2, "ss"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/cmcm/dmc/sdk/b/c;->a:Ljava/util/Map;

    const-string v1, "mnc"

    const-string v2, "cnm"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/cmcm/dmc/sdk/b/c;->a:Ljava/util/Map;

    const-string v1, "carrier"

    const-string v2, "car"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/cmcm/dmc/sdk/b/c;->a:Ljava/util/Map;

    const-string v1, "sim_state"

    const-string v2, "sst"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/cmcm/dmc/sdk/b/c;->a:Ljava/util/Map;

    const-string v1, "cid"

    const-string v2, "dic"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/cmcm/dmc/sdk/b/c;->a:Ljava/util/Map;

    const-string v1, "lac"

    const-string v2, "cal"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/cmcm/dmc/sdk/b/c;->a:Ljava/util/Map;

    const-string v1, "base_stations"

    const-string v2, "bs"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/cmcm/dmc/sdk/b/c;->a:Ljava/util/Map;

    const-string v1, "level"

    const-string v2, "ll"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/cmcm/dmc/sdk/b/c;->a:Ljava/util/Map;

    const-string v1, "wifi_info"

    const-string v2, "wfi"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/cmcm/dmc/sdk/b/c;->a:Ljava/util/Map;

    const-string v1, "mac"

    const-string v2, "cam"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/cmcm/dmc/sdk/b/c;->a:Ljava/util/Map;

    const-string v1, "ip"

    const-string v2, "pi"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/cmcm/dmc/sdk/b/c;->a:Ljava/util/Map;

    const-string v1, "ssid"

    const-string v2, "ssd"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/cmcm/dmc/sdk/b/c;->a:Ljava/util/Map;

    const-string v1, "rssi"

    const-string v2, "rsd"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/cmcm/dmc/sdk/b/c;->a:Ljava/util/Map;

    const-string v1, "wifis"

    const-string v2, "wis"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/cmcm/dmc/sdk/b/c;->a:Ljava/util/Map;

    const-string v1, "dns"

    const-string v2, "snd"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/cmcm/dmc/sdk/b/c;->a:Ljava/util/Map;

    const-string v1, "location_info"

    const-string v2, "loi"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/cmcm/dmc/sdk/b/c;->a:Ljava/util/Map;

    const-string v1, "longitude"

    const-string v2, "lon"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/cmcm/dmc/sdk/b/c;->a:Ljava/util/Map;

    const-string v1, "latitude"

    const-string v2, "lat"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/cmcm/dmc/sdk/b/c;->a:Ljava/util/Map;

    const-string v1, "provider"

    const-string v2, "pro"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/cmcm/dmc/sdk/b/c;->a:Ljava/util/Map;

    const-string v1, "bluetooth"

    const-string v2, "bt"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/cmcm/dmc/sdk/b/c;->a:Ljava/util/Map;

    const-string v1, "screen_light"

    const-string v2, "sli"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/cmcm/dmc/sdk/b/c;->a:Ljava/util/Map;

    const-string v1, "battery"

    const-string v2, "bay"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/cmcm/dmc/sdk/b/c;->a:Ljava/util/Map;

    const-string v1, "http_proxy"

    const-string v2, "hpxy"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/cmcm/dmc/sdk/b/c;->a:Ljava/util/Map;

    const-string v1, "bootloader"

    const-string v2, "bol"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/cmcm/dmc/sdk/b/c;->a:Ljava/util/Map;

    const-string v1, "hardware"

    const-string v2, "hdw"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/cmcm/dmc/sdk/b/c;->a:Ljava/util/Map;

    const-string v1, "fingerprint"

    const-string v2, "fpt"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/cmcm/dmc/sdk/b/c;->a:Ljava/util/Map;

    const-string v1, "os_version"

    const-string v2, "osv"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/cmcm/dmc/sdk/b/c;->a:Ljava/util/Map;

    const-string v1, "started_time"

    const-string v2, "stat"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/cmcm/dmc/sdk/b/c;->a:Ljava/util/Map;

    const-string v1, "web_agent"

    const-string v2, "webg"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/cmcm/dmc/sdk/b/c;->a:Ljava/util/Map;

    const-string v1, "manufacturer"

    const-string v2, "maf"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/cmcm/dmc/sdk/b/c;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/cmcm/dmc/sdk/b/c;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    move-object v0, p0

    goto :goto_0
.end method
