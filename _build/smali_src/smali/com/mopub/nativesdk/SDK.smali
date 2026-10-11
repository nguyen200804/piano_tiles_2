.class public Lcom/mopub/nativesdk/SDK;
.super Ljava/lang/Object;
.source "SDK.java"


# static fields
.field public static CLICKED_TYPE_BROWSER:I

.field public static CLICKED_TYPE_DOWNLOAD:I

.field public static CLICKED_TYPE_GOOGLE_PLAY:I

.field private static a:Lcom/mopub/nativesdk/SDK;

.field private static b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x1

    sput v0, Lcom/mopub/nativesdk/SDK;->CLICKED_TYPE_GOOGLE_PLAY:I

    .line 19
    const/4 v0, 0x2

    sput v0, Lcom/mopub/nativesdk/SDK;->CLICKED_TYPE_BROWSER:I

    .line 20
    const/4 v0, 0x3

    sput v0, Lcom/mopub/nativesdk/SDK;->CLICKED_TYPE_DOWNLOAD:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/mopub/nativesdk/SDK;
    .locals 2

    .prologue
    .line 49
    sget-object v0, Lcom/mopub/nativesdk/SDK;->a:Lcom/mopub/nativesdk/SDK;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lcom/mopub/nativesdk/SDK;

    invoke-direct {v0}, Lcom/mopub/nativesdk/SDK;-><init>()V

    sput-object v0, Lcom/mopub/nativesdk/SDK;->a:Lcom/mopub/nativesdk/SDK;

    .line 53
    :cond_0
    if-nez p0, :cond_1

    .line 54
    const-string v0, "Arrkii SDK"

    const-string v1, "Parameter Error: Context Null."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    const/4 v0, 0x0

    .line 61
    :goto_0
    return-object v0

    .line 58
    :cond_1
    sput-object p0, Lcom/mopub/nativesdk/SDK;->b:Landroid/content/Context;

    .line 59
    invoke-static {}, Lcom/mopub/nativesdk/core/a;->b()Lcom/mopub/nativesdk/core/a;

    sget-object v0, Lcom/mopub/nativesdk/SDK;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mopub/nativesdk/core/a;->a(Landroid/content/Context;)V

    .line 61
    sget-object v0, Lcom/mopub/nativesdk/SDK;->a:Lcom/mopub/nativesdk/SDK;

    goto :goto_0
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 31
    .line 32
    sput-object p0, Lcom/mopub/nativesdk/SDK;->b:Landroid/content/Context;

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lcom/mopub/nativesdk/core/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 33
    return-void
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6

    .prologue
    .line 37
    .line 38
    sput-object p0, Lcom/mopub/nativesdk/SDK;->b:Landroid/content/Context;

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/mopub/nativesdk/core/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 39
    return-void
.end method

.method public static release()V
    .locals 0

    .prologue
    .line 43
    invoke-static {}, Lcom/mopub/nativesdk/core/a;->a()V

    .line 44
    return-void
.end method


# virtual methods
.method public clickAd(Lcom/mopub/nativesdk/Campaign;ZLcom/mopub/nativesdk/ClickListener;)V
    .locals 2

    .prologue
    .line 142
    if-nez p1, :cond_0

    .line 143
    const-string v0, "Arrkii SDK"

    const-string v1, "clickAd() called but param campaign is null."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :goto_0
    return-void

    .line 147
    :cond_0
    invoke-static {}, Lcom/mopub/nativesdk/core/a;->b()Lcom/mopub/nativesdk/core/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/mopub/nativesdk/core/a;->a(Lcom/mopub/nativesdk/Campaign;ZLcom/mopub/nativesdk/ClickListener;)V

    goto :goto_0
.end method

.method public installed(Lcom/mopub/nativesdk/Campaign;)Z
    .locals 2

    .prologue
    .line 161
    if-nez p1, :cond_0

    .line 162
    const-string v0, "Arrkii SDK"

    const-string v1, "install() called but param campaign is null."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    const/4 v0, 0x0

    .line 166
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/mopub/nativesdk/core/a;->b()Lcom/mopub/nativesdk/core/a;

    .line 1433
    invoke-virtual {p1}, Lcom/mopub/nativesdk/Campaign;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/nativesdk/core/a;->b(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public installed(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 178
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    const-string v0, "Arrkii SDK"

    const-string v1, "install() called but param packageName is empty."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    const/4 v0, 0x0

    .line 183
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/mopub/nativesdk/core/a;->b()Lcom/mopub/nativesdk/core/a;

    invoke-static {p1}, Lcom/mopub/nativesdk/core/a;->b(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public loadAd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/mopub/nativesdk/AdListener;)V
    .locals 6

    .prologue
    .line 93
    invoke-static {}, Lcom/mopub/nativesdk/core/a;->b()Lcom/mopub/nativesdk/core/a;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/mopub/nativesdk/core/a;->a(Ljava/lang/String;Ljava/lang/String;IILcom/mopub/nativesdk/AdListener;)V

    .line 95
    return-void
.end method

.method public preLoadAd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mopub/nativesdk/AdListener;)V
    .locals 3

    .prologue
    .line 109
    invoke-static {}, Lcom/mopub/nativesdk/core/a;->b()Lcom/mopub/nativesdk/core/a;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p3, p4}, Lcom/mopub/nativesdk/core/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/mopub/nativesdk/AdListener;)V

    .line 111
    return-void
.end method

.method public setDevInfo(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 76
    invoke-static {}, Lcom/mopub/nativesdk/core/a;->b()Lcom/mopub/nativesdk/core/a;

    invoke-static {p1}, Lcom/mopub/nativesdk/core/a;->a(Ljava/util/Map;)V

    .line 78
    return-void
.end method

.method public setGAID(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 69
    sget-object v0, Lcom/mopub/nativesdk/SDK;->b:Landroid/content/Context;

    const-string v1, "ak.native.sdk"

    const-string v2, "GAID"

    invoke-static {v0, v1, v2, p1}, Lcom/mopub/nativesdk/d/q;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method public showAd(Lcom/mopub/nativesdk/Campaign;)V
    .locals 2

    .prologue
    .line 123
    if-nez p1, :cond_0

    .line 124
    const-string v0, "Arrkii SDK"

    const-string v1, "showAd() called but param campaign is null."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :goto_0
    return-void

    .line 128
    :cond_0
    invoke-static {}, Lcom/mopub/nativesdk/core/a;->b()Lcom/mopub/nativesdk/core/a;

    invoke-static {p1}, Lcom/mopub/nativesdk/core/a;->b(Lcom/mopub/nativesdk/Campaign;)V

    goto :goto_0
.end method

.method public startMarketApp(Lcom/mopub/nativesdk/Campaign;Lcom/mopub/nativesdk/ClickListener;)V
    .locals 2

    .prologue
    .line 197
    if-nez p1, :cond_0

    .line 198
    const-string v0, "Arrkii SDK"

    const-string v1, "clickAd() called but param campaign is null."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :goto_0
    return-void

    .line 202
    :cond_0
    invoke-static {}, Lcom/mopub/nativesdk/core/a;->b()Lcom/mopub/nativesdk/core/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mopub/nativesdk/core/a;->c(Lcom/mopub/nativesdk/Campaign;)Z

    goto :goto_0
.end method
