.class public Lcom/cmplay/crashreport/b;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:Z

.field private static d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/cmplay/crashreport/b;->a:Ljava/lang/String;

    sput-object v0, Lcom/cmplay/crashreport/b;->b:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/cmplay/crashreport/b;->c:Z

    const-string v0, ""

    sput-object v0, Lcom/cmplay/crashreport/b;->d:Ljava/lang/String;

    return-void
.end method

.method static a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/cmplay/crashreport/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/cmplay/crashreport/a;)V
    .locals 3

    const-string v0, "InternalVersion"

    const-string v1, "CnVersion"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "crash_report_cn.config"

    :goto_0
    :try_start_0
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :try_start_1
    invoke-virtual {v1, v0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    const-string v0, "crash_log_url"

    invoke-virtual {v1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cmplay/crashreport/b;->a:Ljava/lang/String;

    const-string v0, "anr_dump_url"

    invoke-virtual {v1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cmplay/crashreport/b;->b:Ljava/lang/String;

    const-string v0, "product_id"

    invoke-virtual {v1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cmplay/crashreport/b;->d:Ljava/lang/String;

    const-string v0, "is_cn_version"

    invoke-virtual {v1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    :try_start_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/cmplay/crashreport/b;->c:Z
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :cond_0
    :goto_1
    invoke-static {}, Lcom/cmplay/crashreport/m;->a()Lcom/cmplay/crashreport/m;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/cmplay/crashreport/m;->a(Landroid/content/Context;Lcom/cmplay/crashreport/a;)V

    return-void

    :cond_1
    const-string v0, "crash_report_en.config"

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method static b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/cmplay/crashreport/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method static c()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/cmplay/crashreport/b;->d:Ljava/lang/String;

    return-object v0
.end method

.method static d()Z
    .locals 1

    sget-boolean v0, Lcom/cmplay/crashreport/b;->c:Z

    return v0
.end method
