.class Lcom/cmplay/util/s$26$1$2;
.super Ljava/lang/Object;
.source "NativeInterfaceImpl.java"

# interfaces
.implements Lcom/cmplay/util/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/util/s$26$1;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/cmplay/util/s$26$1;


# direct methods
.method constructor <init>(Lcom/cmplay/util/s$26$1;Z)V
    .locals 0

    .prologue
    .line 2074
    iput-object p1, p0, Lcom/cmplay/util/s$26$1$2;->b:Lcom/cmplay/util/s$26$1;

    iput-boolean p2, p0, Lcom/cmplay/util/s$26$1$2;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 2077
    iget-boolean v0, p0, Lcom/cmplay/util/s$26$1$2;->a:Z

    if-eqz v0, :cond_0

    .line 2078
    new-instance v0, Lcom/cmplay/util/c/a/a;

    invoke-direct {v0}, Lcom/cmplay/util/c/a/a;-><init>()V

    iget-object v1, p0, Lcom/cmplay/util/s$26$1$2;->b:Lcom/cmplay/util/s$26$1;

    iget-object v1, v1, Lcom/cmplay/util/s$26$1;->b:Lcom/cmplay/util/s$26;

    iget v1, v1, Lcom/cmplay/util/s$26;->a:I

    int-to-byte v1, v1

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/cmplay/util/s$26$1$2;->b:Lcom/cmplay/util/s$26$1;

    iget v3, v3, Lcom/cmplay/util/s$26$1;->a:I

    int-to-short v3, v3

    iget-object v4, p0, Lcom/cmplay/util/s$26$1$2;->b:Lcom/cmplay/util/s$26$1;

    iget-object v4, v4, Lcom/cmplay/util/s$26$1;->b:Lcom/cmplay/util/s$26;

    iget v4, v4, Lcom/cmplay/util/s$26;->c:I

    int-to-byte v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/cmplay/util/c/a/a;->a(BBSB)V

    .line 2079
    iget-object v0, p0, Lcom/cmplay/util/s$26$1$2;->b:Lcom/cmplay/util/s$26$1;

    iget v0, v0, Lcom/cmplay/util/s$26$1;->a:I

    iget-object v1, p0, Lcom/cmplay/util/s$26$1$2;->b:Lcom/cmplay/util/s$26$1;

    iget-object v1, v1, Lcom/cmplay/util/s$26$1;->b:Lcom/cmplay/util/s$26;

    iget v1, v1, Lcom/cmplay/util/s$26;->b:I

    invoke-static {v5, v0, v1}, Lcom/cmplay/util/NativeUtil;->adStatusCallback(III)V

    .line 2090
    :goto_0
    return-void

    .line 2081
    :cond_0
    const-string v0, "key_ad_video_show"

    invoke-static {v0, v4}, Lcom/cmplay/util/aa;->b(Ljava/lang/String;I)I

    move-result v0

    .line 2082
    add-int/lit8 v0, v0, 0x1

    .line 2083
    const-string v1, "AdUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "video = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cmplay/util/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2084
    const/4 v1, 0x1

    invoke-static {v1, v0, v4}, Lcom/cmplay/ad/g/a;->a(IIZ)V

    .line 2085
    new-instance v0, Lcom/cmplay/util/c/a/a;

    invoke-direct {v0}, Lcom/cmplay/util/c/a/a;-><init>()V

    iget-object v1, p0, Lcom/cmplay/util/s$26$1$2;->b:Lcom/cmplay/util/s$26$1;

    iget-object v1, v1, Lcom/cmplay/util/s$26$1;->b:Lcom/cmplay/util/s$26;

    iget v1, v1, Lcom/cmplay/util/s$26;->a:I

    int-to-byte v1, v1

    iget-object v2, p0, Lcom/cmplay/util/s$26$1$2;->b:Lcom/cmplay/util/s$26$1;

    iget v2, v2, Lcom/cmplay/util/s$26$1;->a:I

    int-to-short v2, v2

    iget-object v3, p0, Lcom/cmplay/util/s$26$1$2;->b:Lcom/cmplay/util/s$26$1;

    iget-object v3, v3, Lcom/cmplay/util/s$26$1;->b:Lcom/cmplay/util/s$26;

    iget v3, v3, Lcom/cmplay/util/s$26;->c:I

    int-to-byte v3, v3

    invoke-virtual {v0, v1, v5, v2, v3}, Lcom/cmplay/util/c/a/a;->a(BBSB)V

    .line 2086
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/cmplay/util/s$26$1$2;->b:Lcom/cmplay/util/s$26$1;

    iget v1, v1, Lcom/cmplay/util/s$26$1;->a:I

    int-to-short v1, v1

    iget-object v2, p0, Lcom/cmplay/util/s$26$1$2;->b:Lcom/cmplay/util/s$26$1;

    iget-object v2, v2, Lcom/cmplay/util/s$26$1;->b:Lcom/cmplay/util/s$26;

    iget v2, v2, Lcom/cmplay/util/s$26;->b:I

    invoke-static {v0, v1, v2}, Lcom/cmplay/util/NativeUtil;->adStatusCallback(III)V

    .line 2088
    sget-object v0, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmplay/g/a;->a(Landroid/content/Context;)V

    goto :goto_0
.end method
