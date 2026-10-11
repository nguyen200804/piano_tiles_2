.class final Lcom/mopub/nativesdk/c/f;
.super Ljava/lang/Object;
.source "AdApiLoader.java"


# instance fields
.field private a:Ljava/lang/StringBuilder;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 554
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 555
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/mopub/nativesdk/c/f;->a:Ljava/lang/StringBuilder;

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 554
    invoke-direct {p0}, Lcom/mopub/nativesdk/c/f;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/Object;)Lcom/mopub/nativesdk/c/f;
    .locals 3

    .prologue
    .line 563
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1578
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 1579
    :cond_0
    const-string v0, ""

    .line 565
    :goto_0
    iget-object v1, p0, Lcom/mopub/nativesdk/c/f;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x3d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 566
    return-object p0

    .line 1581
    :cond_1
    const-string v1, "utf-8"

    invoke-static {v0, v1}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 571
    iget-object v0, p0, Lcom/mopub/nativesdk/c/f;->a:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mopub/nativesdk/c/f;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    const/16 v1, 0x26

    if-ne v0, v1, :cond_0

    .line 572
    iget-object v0, p0, Lcom/mopub/nativesdk/c/f;->a:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mopub/nativesdk/c/f;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 574
    :cond_0
    iget-object v0, p0, Lcom/mopub/nativesdk/c/f;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
