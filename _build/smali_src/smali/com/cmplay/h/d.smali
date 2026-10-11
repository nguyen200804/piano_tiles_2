.class public Lcom/cmplay/h/d;
.super Ljava/lang/Object;
.source "ShareCommons.java"


# static fields
.field public static final a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static d:I

.field public static e:Ljava/lang/String;

.field public static f:Ljava/lang/String;

.field public static g:Ljava/lang/String;

.field public static h:Ljava/lang/String;

.field public static i:Z

.field public static j:Z

.field public static k:Z

.field public static l:I

.field public static m:I

.field public static n:I

.field public static o:F

.field public static p:I

.field public static q:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 48
    invoke-static {}, Lcom/cmplay/cloud/a;->a()Lcom/cmplay/cloud/a;

    move-result-object v0

    const/4 v1, 0x2

    const-string v2, "section_common"

    const-string v3, "cloud_key_ip_when_unable_to_resolve_host"

    const-string v4, "52.23.127.237"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/cmplay/cloud/a;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cmplay/h/d;->a:Ljava/lang/String;

    .line 82
    const/4 v0, 0x0

    sput-boolean v0, Lcom/cmplay/h/d;->i:Z

    .line 83
    sput-boolean v5, Lcom/cmplay/h/d;->j:Z

    .line 84
    sput-boolean v5, Lcom/cmplay/h/d;->k:Z

    return-void
.end method

.method public static a(II)Ljava/lang/String;
    .locals 3

    .prologue
    .line 184
    const/4 v0, 0x0

    .line 185
    packed-switch p1, :pswitch_data_0

    .line 280
    :cond_0
    :goto_0
    :pswitch_0
    return-object v0

    .line 187
    :pswitch_1
    packed-switch p0, :pswitch_data_1

    :pswitch_2
    goto :goto_0

    .line 195
    :pswitch_3
    const-string v0, "http://s.p2.cmcm.com/transfer.html"

    goto :goto_0

    .line 208
    :pswitch_4
    const/4 v1, 0x1

    sget v2, Lcom/cmplay/h/d;->n:I

    if-ne v1, v2, :cond_1

    .line 209
    packed-switch p0, :pswitch_data_2

    goto :goto_0

    .line 214
    :pswitch_5
    invoke-static {}, Lcom/cmplay/h/d;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 221
    :pswitch_6
    const-string v0, "http://s.p2.cmcm.com/transfer.html"

    goto :goto_0

    .line 224
    :cond_1
    sget v1, Lcom/cmplay/h/d;->n:I

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    sget v2, Lcom/cmplay/h/d;->n:I

    if-ne v1, v2, :cond_0

    .line 227
    :cond_2
    const-string v0, "key_share_h5_url"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/cmplay/util/aa;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 231
    :pswitch_7
    packed-switch p0, :pswitch_data_3

    :pswitch_8
    goto :goto_0

    .line 239
    :pswitch_9
    const-string v0, "http://s.p2.cmcm.com/transfer.html"

    goto :goto_0

    .line 248
    :pswitch_a
    packed-switch p0, :pswitch_data_4

    :pswitch_b
    goto :goto_0

    .line 255
    :pswitch_c
    invoke-static {}, Lcom/cmplay/h/d;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 263
    :pswitch_d
    const-string v0, "http://s.p2.cmcm.com/transfer.html"

    goto :goto_0

    .line 185
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_4
        :pswitch_7
        :pswitch_0
        :pswitch_4
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_4
    .end packed-switch

    .line 187
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 209
    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch

    .line 231
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_9
        :pswitch_8
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_9
    .end packed-switch

    .line 248
    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method public static a()V
    .locals 1

    .prologue
    .line 169
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cmplay/h/d;->b:Ljava/lang/String;

    .line 173
    return-void
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    sget-object v0, Lcom/cmplay/h/d;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    invoke-static {}, Lcom/cmplay/h/d;->a()V

    .line 180
    :cond_0
    sget-object v0, Lcom/cmplay/h/d;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static c()I
    .locals 2

    .prologue
    const/4 v0, 0x2

    .line 285
    sget v1, Lcom/cmplay/h/d;->m:I

    packed-switch v1, :pswitch_data_0

    .line 306
    :goto_0
    :pswitch_0
    return v0

    .line 291
    :pswitch_1
    const/4 v0, 0x5

    .line 292
    goto :goto_0

    .line 296
    :pswitch_2
    const/16 v0, 0xf

    .line 297
    goto :goto_0

    .line 299
    :pswitch_3
    const/16 v0, 0x11

    .line 300
    goto :goto_0

    .line 302
    :pswitch_4
    const/16 v0, 0x12

    goto :goto_0

    .line 285
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static d()Ljava/lang/String;
    .locals 4

    .prologue
    .line 310
    sget v0, Lcom/cmplay/h/d;->l:I

    invoke-static {v0}, Lcom/cmplay/h/e;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 315
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://p2.cmcm.com/transfer_v2?uuid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/cmplay/h/d;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&title="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050026

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&desc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/cmplay/h/d;->h:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&image_url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
