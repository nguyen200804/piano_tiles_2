.class Lcom/cmplay/ad/c/a$1;
.super Ljava/lang/Object;
.source "InnerPushVideoAds.java"

# interfaces
.implements Lcom/cmplay/internalpush/video/b/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/ad/c/a;->onCreate(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmplay/ad/c/a;


# direct methods
.method constructor <init>(Lcom/cmplay/ad/c/a;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/cmplay/ad/c/a$1;->a:Lcom/cmplay/ad/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/cmplay/ad/c/a$1;->a:Lcom/cmplay/ad/c/a;

    invoke-static {v0}, Lcom/cmplay/ad/c/a;->a(Lcom/cmplay/ad/c/a;)Lcom/cmplay/ad/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/cmplay/ad/c/a$1;->a:Lcom/cmplay/ad/c/a;

    invoke-static {v0}, Lcom/cmplay/ad/c/a;->a(Lcom/cmplay/ad/c/a;)Lcom/cmplay/ad/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/cmplay/ad/c;->a()V

    .line 51
    const-string v0, "zzb"

    const-string v1, "\u5f00\u59cb\u64ad\u653e"

    invoke-static {v0, v1}, Lcom/cmplay/util/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 57
    iget-object v0, p0, Lcom/cmplay/ad/c/a$1;->a:Lcom/cmplay/ad/c/a;

    invoke-static {v0}, Lcom/cmplay/ad/c/a;->a(Lcom/cmplay/ad/c/a;)Lcom/cmplay/ad/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/cmplay/ad/c/a$1;->a:Lcom/cmplay/ad/c/a;

    invoke-static {v0}, Lcom/cmplay/ad/c/a;->a(Lcom/cmplay/ad/c/a;)Lcom/cmplay/ad/c;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/cmplay/ad/c;->a(Z)V

    .line 59
    const-string v0, "zzb"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u64ad\u653e\u5931\u8d25:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmplay/util/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/cmplay/ad/c/a$1;->a:Lcom/cmplay/ad/c/a;

    invoke-static {v0}, Lcom/cmplay/ad/c/a;->a(Lcom/cmplay/ad/c/a;)Lcom/cmplay/ad/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/cmplay/ad/c/a$1;->a:Lcom/cmplay/ad/c/a;

    invoke-static {v0}, Lcom/cmplay/ad/c/a;->a(Lcom/cmplay/ad/c/a;)Lcom/cmplay/ad/c;

    move-result-object v1

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lcom/cmplay/ad/c;->a(Z)V

    .line 67
    const-string v0, "zzb"

    const-string v1, "\u64ad\u653e\u5b8c\u6210"

    invoke-static {v0, v1}, Lcom/cmplay/util/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    :cond_0
    return-void

    .line 66
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 0

    .prologue
    .line 73
    return-void
.end method
