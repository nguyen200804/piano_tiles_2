.class public abstract Lcom/cmcm/orion/adsdk/e;
.super Ljava/lang/Object;
.source "OrionSdk.java"


# static fields
.field public static volatile a:Z

.field private static b:Landroid/content/Context;

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static e:Z

.field private static f:Ljava/util/Map;
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

.field private static g:Lcom/cmcm/orion/adsdk/c;

.field private static h:Lcom/cmcm/orion/adsdk/f;

.field private static i:Ljava/lang/String;

.field private static j:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    sput-boolean v0, Lcom/cmcm/orion/adsdk/e;->e:Z

    .line 30
    const/4 v0, 0x1

    sput-boolean v0, Lcom/cmcm/orion/adsdk/e;->a:Z

    .line 32
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/cmcm/orion/adsdk/e;->f:Ljava/util/Map;

    return-void
.end method

.method public static a()Landroid/content/Context;
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lcom/cmcm/orion/adsdk/e;->b:Landroid/content/Context;

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;J)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 270
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 271
    const-string v1, "posid"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    const-string v1, "adTypeName"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    const-string v1, "loadTime"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 262
    invoke-static {p0, p1, p2, p3}, Lcom/cmcm/orion/adsdk/e;->a(Ljava/lang/String;Ljava/lang/String;J)Ljava/util/Map;

    move-result-object v0

    .line 263
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 264
    const-string v1, "errorcode"

    invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    :cond_0
    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 51
    const-string v0, ""

    invoke-static {p0, p1, v0}, Lcom/cmcm/orion/adsdk/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 56
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "PublisherID cannot be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_0
    sput-object p0, Lcom/cmcm/orion/adsdk/e;->b:Landroid/content/Context;

    .line 60
    sput-object p1, Lcom/cmcm/orion/adsdk/e;->c:Ljava/lang/String;

    .line 61
    sput-object p2, Lcom/cmcm/orion/adsdk/e;->d:Ljava/lang/String;

    .line 62
    new-instance v0, Lcom/cmcm/orion/adsdk/e$1;

    invoke-direct {v0, p1}, Lcom/cmcm/orion/adsdk/e$1;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/cmcm/orion/utils/a;->a(Ljava/lang/Runnable;)V

    .line 74
    return-void
.end method

.method public static a(Lcom/cmcm/orion/adsdk/b$a;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cmcm/orion/adsdk/b$a;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 234
    sget-object v0, Lcom/cmcm/orion/adsdk/e;->h:Lcom/cmcm/orion/adsdk/f;

    if-eqz v0, :cond_1

    .line 235
    invoke-static {p1, p2, p3, p4, p5}, Lcom/cmcm/orion/adsdk/e;->a(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 236
    if-eqz p6, :cond_0

    .line 237
    invoke-interface {v0, p6}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 239
    :cond_0
    sget-object v1, Lcom/cmcm/orion/adsdk/e;->h:Lcom/cmcm/orion/adsdk/f;

    invoke-interface {v1, p0, v0}, Lcom/cmcm/orion/adsdk/f;->a(Lcom/cmcm/orion/adsdk/b$a;Ljava/util/Map;)V

    .line 241
    :cond_1
    return-void
.end method

.method public static a(Lcom/cmcm/orion/adsdk/c;)V
    .locals 0

    .prologue
    .line 163
    sput-object p0, Lcom/cmcm/orion/adsdk/e;->g:Lcom/cmcm/orion/adsdk/c;

    .line 164
    return-void
.end method

.method public static a(Ljava/lang/String;IJI)V
    .locals 8

    .prologue
    .line 278
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 286
    :cond_0
    :goto_0
    return-void

    .line 282
    :cond_1
    sget-object v0, Lcom/cmcm/orion/adsdk/e;->h:Lcom/cmcm/orion/adsdk/f;

    if-eqz v0, :cond_0

    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "posid is :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "errorCode is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isNet:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 284
    sget-object v1, Lcom/cmcm/orion/adsdk/e;->h:Lcom/cmcm/orion/adsdk/f;

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    move v6, p4

    invoke-interface/range {v1 .. v6}, Lcom/cmcm/orion/adsdk/f;->a(Ljava/lang/String;IJI)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;IJLjava/lang/String;I)V
    .locals 8

    .prologue
    .line 289
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 296
    :cond_0
    :goto_0
    return-void

    .line 292
    :cond_1
    sget-object v0, Lcom/cmcm/orion/adsdk/e;->h:Lcom/cmcm/orion/adsdk/f;

    if-eqz v0, :cond_0

    .line 293
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "posid is :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " responseCode is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " costTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " dataCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 294
    sget-object v1, Lcom/cmcm/orion/adsdk/e;->h:Lcom/cmcm/orion/adsdk/f;

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    move-object v6, p4

    move v7, p5

    invoke-interface/range {v1 .. v7}, Lcom/cmcm/orion/adsdk/f;->a(Ljava/lang/String;IJLjava/lang/String;I)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 40
    sput-object p0, Lcom/cmcm/orion/adsdk/e;->b:Landroid/content/Context;

    .line 41
    invoke-static {}, Lcom/cmcm/orion/picks/a/a/h;->q()Ljava/lang/String;

    move-result-object v0

    .line 42
    if-eqz p0, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 43
    invoke-static {p0, v0}, Lcom/cmcm/orion/adsdk/e;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 44
    const/4 v0, 0x1

    .line 47
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/cmcm/orion/adsdk/e;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    sget-object v0, Lcom/cmcm/orion/adsdk/e;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static d()Z
    .locals 1

    .prologue
    .line 109
    sget-boolean v0, Lcom/cmcm/orion/adsdk/e;->e:Z

    return v0
.end method

.method public static e()Z
    .locals 1

    .prologue
    .line 139
    sget-boolean v0, Lcom/cmcm/orion/adsdk/e;->a:Z

    return v0
.end method

.method public static f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    sget-object v0, Lcom/cmcm/orion/adsdk/e;->i:Ljava/lang/String;

    return-object v0
.end method

.method public static g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    sget-object v0, Lcom/cmcm/orion/adsdk/e;->j:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h()V
    .locals 2

    .prologue
    .line 1078
    const-string v0, "config_last_save_time"

    invoke-static {v0}, Lcom/cmcm/orion/picks/a/a/h;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1079
    invoke-static {}, Lcom/cmcm/orion/picks/a/a/g;->a()Lcom/cmcm/orion/picks/a/a/g;

    move-result-object v0

    invoke-static {}, Lcom/cmcm/orion/adsdk/e;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmcm/orion/picks/a/a/g;->a(Ljava/lang/String;)V

    .line 21
    :cond_0
    return-void
.end method

.method static synthetic i()Landroid/content/Context;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/cmcm/orion/adsdk/e;->b:Landroid/content/Context;

    return-object v0
.end method
