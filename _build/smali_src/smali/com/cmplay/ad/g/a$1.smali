.class final Lcom/cmplay/ad/g/a$1;
.super Ljava/lang/Object;
.source "AdUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/ad/g/a;->a(IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Z


# direct methods
.method constructor <init>(IIZ)V
    .locals 0

    .prologue
    .line 32
    iput p1, p0, Lcom/cmplay/ad/g/a$1;->a:I

    iput p2, p0, Lcom/cmplay/ad/g/a$1;->b:I

    iput-boolean p3, p0, Lcom/cmplay/ad/g/a$1;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 35
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 36
    iget v1, p0, Lcom/cmplay/ad/g/a$1;->a:I

    if-lez v1, :cond_0

    .line 37
    const-string v1, "http://p2.cmcm.com/adv-stat?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "s="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/cmplay/ad/g/a$1;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "&c="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/cmplay/ad/g/a$1;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "&m="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    sget-object v2, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/cmplay/util/t;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "&v="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    sget-object v2, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/cmplay/util/v;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 39
    const-string v1, "AdUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u8bb0\u5f55 recordAdStatus = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cmplay/util/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cmplay/ad/g/a;->a(Ljava/lang/String;)Z

    move-result v0

    .line 41
    iget v1, p0, Lcom/cmplay/ad/g/a$1;->b:I

    packed-switch v1, :pswitch_data_0

    .line 62
    :cond_0
    :goto_0
    return-void

    .line 43
    :pswitch_0
    if-eqz v0, :cond_1

    .line 44
    const-string v0, "key_ad_video_show"

    invoke-static {v0, v4}, Lcom/cmplay/util/aa;->a(Ljava/lang/String;I)V

    goto :goto_0

    .line 46
    :cond_1
    iget-boolean v0, p0, Lcom/cmplay/ad/g/a$1;->c:Z

    if-nez v0, :cond_0

    .line 47
    const-string v0, "key_ad_video_show"

    iget v1, p0, Lcom/cmplay/ad/g/a$1;->a:I

    invoke-static {v0, v1}, Lcom/cmplay/util/aa;->a(Ljava/lang/String;I)V

    goto :goto_0

    .line 52
    :pswitch_1
    if-eqz v0, :cond_2

    .line 53
    const-string v0, "key_ad_interstitial_show"

    invoke-static {v0, v4}, Lcom/cmplay/util/aa;->a(Ljava/lang/String;I)V

    goto :goto_0

    .line 55
    :cond_2
    iget-boolean v0, p0, Lcom/cmplay/ad/g/a$1;->c:Z

    if-nez v0, :cond_0

    .line 56
    const-string v0, "key_ad_interstitial_show"

    iget v1, p0, Lcom/cmplay/ad/g/a$1;->a:I

    invoke-static {v0, v1}, Lcom/cmplay/util/aa;->a(Ljava/lang/String;I)V

    goto :goto_0

    .line 41
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
