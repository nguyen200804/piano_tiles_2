.class final Lcom/mopub/nativesdk/b/n;
.super Ljava/lang/Object;
.source "WEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/mopub/nativesdk/b/h;


# direct methods
.method private constructor <init>(Lcom/mopub/nativesdk/b/h;)V
    .locals 0

    .prologue
    .line 242
    iput-object p1, p0, Lcom/mopub/nativesdk/b/n;->a:Lcom/mopub/nativesdk/b/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mopub/nativesdk/b/h;B)V
    .locals 0

    .prologue
    .line 242
    invoke-direct {p0, p1}, Lcom/mopub/nativesdk/b/n;-><init>(Lcom/mopub/nativesdk/b/h;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "js\u8d85\u65f6\uff01\u8d85\u65f6\u4e0a\u9650\uff1a"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/mopub/nativesdk/b/h;->a()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    iget-object v0, p0, Lcom/mopub/nativesdk/b/n;->a:Lcom/mopub/nativesdk/b/h;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "js_timeout_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/mopub/nativesdk/b/h;->a()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Lcom/mopub/nativesdk/b/h;->a(Lcom/mopub/nativesdk/b/h;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 247
    return-void
.end method
