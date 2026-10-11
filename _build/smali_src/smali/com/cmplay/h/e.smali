.class public Lcom/cmplay/h/e;
.super Ljava/lang/Object;
.source "ShareContent.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:I

.field private g:Ljava/lang/String;

.field private h:I

.field private i:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const/4 v0, 0x1

    iput v0, p0, Lcom/cmplay/h/e;->h:I

    .line 78
    sget-object v0, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    .line 79
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050026

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmplay/h/e;->d:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public static a(I)Ljava/lang/String;
    .locals 7

    .prologue
    const v3, 0x7f0500ab

    const/4 v2, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 95
    const/4 v0, 0x0

    .line 96
    if-eq v6, p0, :cond_0

    const/4 v1, 0x5

    if-ne v1, p0, :cond_9

    .line 97
    :cond_0
    sget v1, Lcom/cmplay/h/d;->n:I

    if-ne v5, v1, :cond_3

    .line 99
    sget v0, Lcom/cmplay/h/d;->m:I

    packed-switch v0, :pswitch_data_0

    .line 110
    const-string v0, "key_screenshot_url"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/cmplay/util/aa;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 111
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 112
    const-string v0, "key_share_bannner_url"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/cmplay/util/aa;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 114
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 115
    const-string v0, "http://board.cmcm.com/beta/tmp/005.jpg"

    .line 217
    :cond_2
    :goto_0
    return-object v0

    .line 101
    :pswitch_0
    const-string v0, "key_master_banner_url"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/cmplay/util/aa;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 102
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 103
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 104
    const-string v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 105
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 106
    sget-object v1, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0500a5

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {}, Lcom/cmplay/h/d;->b()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 120
    :cond_3
    sget v1, Lcom/cmplay/h/d;->n:I

    if-nez v1, :cond_7

    .line 121
    sget-boolean v0, Lcom/cmplay/h/d;->i:Z

    if-eqz v0, :cond_5

    .line 123
    const-string v0, "key_share_bannner_url"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/cmplay/util/aa;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 124
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 125
    sget-object v0, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0500ae

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {}, Lcom/cmplay/h/d;->b()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 132
    :cond_4
    :goto_1
    invoke-static {p0}, Lcom/cmplay/h/b;->b(I)I

    move-result v1

    .line 133
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 134
    const-string v0, "http://board.cmcm.com/beta/tmp/003-1.jpg"

    .line 137
    invoke-static {}, Lcom/cmplay/h/b;->a()Lcom/cmplay/h/b;

    move-result-object v2

    const-string v3, "at_use_default_cover"

    invoke-virtual {v2, v3}, Lcom/cmplay/h/b;->a(Ljava/lang/String;)V

    .line 138
    invoke-static {}, Lcom/cmplay/h/f;->b()Lcom/cmplay/h/f;

    move-result-object v2

    const/16 v3, 0x18cf

    invoke-virtual {v2, v1, v3, v4, v4}, Lcom/cmplay/h/f;->a(IIII)V

    goto/16 :goto_0

    .line 129
    :cond_5
    sget-object v0, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0500ae

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {}, Lcom/cmplay/h/d;->b()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 141
    :cond_6
    invoke-static {}, Lcom/cmplay/h/f;->b()Lcom/cmplay/h/f;

    move-result-object v2

    const/16 v3, 0x18d0

    invoke-virtual {v2, v1, v3, v4, v4}, Lcom/cmplay/h/f;->a(IIII)V

    goto/16 :goto_0

    .line 143
    :cond_7
    sget v1, Lcom/cmplay/h/d;->n:I

    if-ne v2, v1, :cond_2

    .line 145
    const-string v0, "key_screenshot_url"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/cmplay/util/aa;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 146
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 147
    const-string v0, "key_share_bannner_url"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/cmplay/util/aa;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 149
    :cond_8
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 150
    const-string v0, "http://board.cmcm.com/beta/tmp/005.jpg"

    goto/16 :goto_0

    .line 154
    :cond_9
    const/4 v0, 0x6

    if-eq v0, p0, :cond_a

    const/16 v0, 0x8

    if-ne v0, p0, :cond_b

    .line 156
    :cond_a
    const-string v0, "key_top_charts_url"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/cmplay/util/aa;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 157
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 158
    sget-object v0, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {}, Lcom/cmplay/h/d;->b()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v3, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 161
    :cond_b
    const/4 v0, 0x7

    if-eq v0, p0, :cond_c

    const/16 v0, 0x9

    if-ne v0, p0, :cond_d

    .line 163
    :cond_c
    const-string v0, "key_singles_ranking_url"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/cmplay/util/aa;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 164
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 165
    sget-object v0, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {}, Lcom/cmplay/h/d;->b()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v3, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 168
    :cond_d
    const/16 v0, 0xc

    if-ne v0, p0, :cond_e

    .line 170
    const-string v0, "key_vip_banner_url"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/cmplay/util/aa;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 171
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 172
    sget-object v0, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0500b5

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {}, Lcom/cmplay/h/f;->h()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {}, Lcom/cmplay/h/d;->b()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 175
    :cond_e
    const/16 v0, 0xd

    if-eq v0, p0, :cond_f

    const/16 v0, 0xe

    if-ne v0, p0, :cond_10

    .line 177
    :cond_f
    const-string v0, "key_halloween_banner_url"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/cmplay/util/aa;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 178
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 179
    sget-object v0, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0500a4

    new-array v2, v2, [Ljava/lang/Object;

    sget v3, Lcom/cmplay/h/d;->p:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {}, Lcom/cmplay/util/j;->e()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    sget v3, Lcom/cmplay/h/d;->q:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 183
    :cond_10
    const/16 v0, 0xf

    if-ne v0, p0, :cond_11

    .line 185
    const-string v0, "key_copy_url"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/cmplay/util/aa;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 186
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 187
    const-string v0, "key_share_bannner_url"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/cmplay/util/aa;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 190
    :cond_11
    const/16 v0, 0x10

    if-ne v0, p0, :cond_12

    .line 192
    const-string v0, "key_christmas_card_url"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/cmplay/util/aa;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 193
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 194
    const-string v0, "key_share_bannner_url"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/cmplay/util/aa;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 197
    :cond_12
    const/16 v0, 0x11

    if-ne v0, p0, :cond_13

    .line 199
    const-string v0, "key_valentine_card_url"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/cmplay/util/aa;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 200
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 201
    sget-object v0, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0500b2

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {}, Lcom/cmplay/h/f;->h()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {}, Lcom/cmplay/h/d;->b()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 204
    :cond_13
    const/16 v0, 0x12

    if-ne v0, p0, :cond_14

    .line 205
    const-string v0, "key_screenshot_url"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/cmplay/util/aa;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 206
    :cond_14
    const/16 v0, 0x14

    if-ne v0, p0, :cond_15

    .line 207
    const-string v0, "key_share_bannner_url"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/cmplay/util/aa;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 211
    :cond_15
    const-string v0, "http://board.cmcm.com/beta/tmp/001-1.png"

    goto/16 :goto_0

    .line 99
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/cmplay/h/e;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(II)V
    .locals 1

    .prologue
    .line 88
    invoke-virtual {p0, p1}, Lcom/cmplay/h/e;->b(I)V

    .line 89
    invoke-virtual {p0, p2}, Lcom/cmplay/h/e;->c(I)V

    .line 90
    invoke-static {p2}, Lcom/cmplay/h/e;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cmplay/h/e;->e(Ljava/lang/String;)V

    .line 91
    invoke-static {p1, p2}, Lcom/cmplay/h/d;->a(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cmplay/h/e;->a(Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 235
    iput-object p1, p0, Lcom/cmplay/h/e;->a:Ljava/lang/String;

    .line 236
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/cmplay/h/e;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(I)V
    .locals 0

    .prologue
    .line 340
    iput p1, p0, Lcom/cmplay/h/e;->e:I

    .line 341
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 251
    iput-object p1, p0, Lcom/cmplay/h/e;->b:Ljava/lang/String;

    .line 254
    sput-object p1, Lcom/cmplay/h/d;->h:Ljava/lang/String;

    .line 255
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/cmplay/h/e;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(I)V
    .locals 0

    .prologue
    .line 352
    iput p1, p0, Lcom/cmplay/h/e;->f:I

    .line 355
    sput p1, Lcom/cmplay/h/d;->l:I

    .line 356
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 286
    iput-object p1, p0, Lcom/cmplay/h/e;->c:Ljava/lang/String;

    .line 287
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/cmplay/h/e;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d(I)V
    .locals 0

    .prologue
    .line 371
    iput p1, p0, Lcom/cmplay/h/e;->h:I

    .line 372
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 302
    iput-object p1, p0, Lcom/cmplay/h/e;->d:Ljava/lang/String;

    .line 303
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/cmplay/h/e;->g:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 311
    iput-object p1, p0, Lcom/cmplay/h/e;->g:Ljava/lang/String;

    .line 312
    return-void
.end method

.method public f()I
    .locals 1

    .prologue
    .line 336
    iget v0, p0, Lcom/cmplay/h/e;->e:I

    return v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 379
    iput-object p1, p0, Lcom/cmplay/h/e;->i:Ljava/lang/String;

    .line 380
    return-void
.end method

.method public g()I
    .locals 1

    .prologue
    .line 348
    iget v0, p0, Lcom/cmplay/h/e;->f:I

    return v0
.end method

.method public h()I
    .locals 1

    .prologue
    .line 363
    iget v0, p0, Lcom/cmplay/h/e;->h:I

    return v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/cmplay/h/e;->i:Ljava/lang/String;

    return-object v0
.end method
