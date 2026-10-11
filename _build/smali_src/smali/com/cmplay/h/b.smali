.class public Lcom/cmplay/h/b;
.super Ljava/lang/Object;
.source "FBInfocClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmplay/h/b$a;
    }
.end annotation


# instance fields
.field private a:Lcom/facebook/appevents/a;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cmplay/h/b;->a:Lcom/facebook/appevents/a;

    .line 32
    sget-object v0, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/l;->a(Landroid/content/Context;)V

    .line 33
    sget-object v0, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/appevents/a;->b(Landroid/content/Context;)Lcom/facebook/appevents/a;

    move-result-object v0

    iput-object v0, p0, Lcom/cmplay/h/b;->a:Lcom/facebook/appevents/a;

    .line 34
    return-void
.end method

.method synthetic constructor <init>(Lcom/cmplay/h/b$1;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/cmplay/h/b;-><init>()V

    return-void
.end method

.method public static a(II)I
    .locals 2

    .prologue
    const/16 v0, 0x1b59

    .line 421
    const/4 v1, 0x0

    .line 422
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    move v0, v1

    .line 459
    :goto_0
    :pswitch_1
    return v0

    .line 431
    :pswitch_2
    const/16 v0, 0x1b5a

    .line 432
    goto :goto_0

    .line 434
    :pswitch_3
    const/16 v0, 0x1b5b

    .line 435
    goto :goto_0

    .line 437
    :pswitch_4
    const/16 v0, 0x1b5c

    .line 438
    goto :goto_0

    .line 440
    :pswitch_5
    const/16 v0, 0x1b5e

    .line 441
    goto :goto_0

    .line 443
    :pswitch_6
    const/16 v0, 0x1b5f

    goto :goto_0

    .line 422
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static a()Lcom/cmplay/h/b;
    .locals 1

    .prologue
    .line 37
    invoke-static {}, Lcom/cmplay/h/b$a;->a()Lcom/cmplay/h/b;

    move-result-object v0

    return-object v0
.end method

.method public static a(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 276
    packed-switch p0, :pswitch_data_0

    .line 326
    const-string v0, ""

    :goto_0
    return-object v0

    .line 278
    :pswitch_0
    const-string v0, "_main"

    goto :goto_0

    .line 280
    :pswitch_1
    const-string v0, "_result"

    goto :goto_0

    .line 282
    :pswitch_2
    const-string v0, "_setting"

    goto :goto_0

    .line 284
    :pswitch_3
    const-string v0, "_energy"

    goto :goto_0

    .line 286
    :pswitch_4
    const-string v0, "_hall"

    goto :goto_0

    .line 288
    :pswitch_5
    const-string v0, "_top_rank"

    goto :goto_0

    .line 290
    :pswitch_6
    const-string v0, "_sub_rank"

    goto :goto_0

    .line 292
    :pswitch_7
    const-string v0, "_top_rank_chg"

    goto :goto_0

    .line 294
    :pswitch_8
    const-string v0, "_sub_rank_no1"

    goto :goto_0

    .line 296
    :pswitch_9
    const-string v0, "_mf_invite"

    goto :goto_0

    .line 298
    :pswitch_a
    const-string v0, "_h5"

    goto :goto_0

    .line 300
    :pswitch_b
    const-string v0, "_subs"

    goto :goto_0

    .line 302
    :pswitch_c
    const-string v0, "_hw_r"

    goto :goto_0

    .line 304
    :pswitch_d
    const-string v0, "_hw_m"

    goto :goto_0

    .line 306
    :pswitch_e
    const-string v0, "_chr_cp"

    goto :goto_0

    .line 308
    :pswitch_f
    const-string v0, "_chr_cd"

    goto :goto_0

    .line 310
    :pswitch_10
    const-string v0, "_vlt"

    goto :goto_0

    .line 312
    :pswitch_11
    const-string v0, "_mix"

    goto :goto_0

    .line 314
    :pswitch_12
    const-string v0, "_presl"

    goto :goto_0

    .line 316
    :pswitch_13
    const-string v0, "_col_sys"

    goto :goto_0

    .line 318
    :pswitch_14
    const-string v0, "_chr_pic"

    goto :goto_0

    .line 276
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
    .end packed-switch
.end method

.method public static b(I)I
    .locals 3

    .prologue
    const/16 v0, 0x38e

    .line 335
    packed-switch p0, :pswitch_data_0

    .line 390
    :pswitch_0
    const/4 v0, 0x0

    :cond_0
    :goto_0
    :pswitch_1
    return v0

    .line 337
    :pswitch_2
    const/16 v0, 0xc8

    goto :goto_0

    .line 339
    :pswitch_3
    sget v1, Lcom/cmplay/tile2/ui/LoveShareActivity;->a:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 342
    const/16 v0, 0x12c

    goto :goto_0

    .line 344
    :pswitch_4
    sget v0, Lcom/cmplay/h/d;->m:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 345
    const/16 v0, 0x191

    goto :goto_0

    .line 347
    :cond_1
    const/16 v0, 0x190

    goto :goto_0

    .line 350
    :pswitch_5
    const/16 v0, 0x1f4

    goto :goto_0

    .line 352
    :pswitch_6
    const/16 v0, 0x258

    goto :goto_0

    .line 354
    :pswitch_7
    const/16 v0, 0x259

    goto :goto_0

    .line 356
    :pswitch_8
    const/16 v0, 0x25a

    goto :goto_0

    .line 358
    :pswitch_9
    const/16 v0, 0x25b

    goto :goto_0

    .line 360
    :pswitch_a
    const/16 v0, 0x2bc

    goto :goto_0

    .line 362
    :pswitch_b
    const/16 v0, 0x320

    goto :goto_0

    .line 364
    :pswitch_c
    const/16 v0, 0x398

    goto :goto_0

    .line 366
    :pswitch_d
    const/16 v0, 0x399

    goto :goto_0

    .line 368
    :pswitch_e
    const/16 v0, 0x39a

    goto :goto_0

    .line 370
    :pswitch_f
    const/16 v0, 0x39b

    goto :goto_0

    .line 372
    :pswitch_10
    const/16 v0, 0x39d

    goto :goto_0

    .line 376
    :pswitch_11
    const/16 v0, 0x3a2

    goto :goto_0

    .line 378
    :pswitch_12
    const/16 v0, 0x3a3

    goto :goto_0

    .line 380
    :pswitch_13
    const/16 v0, 0xdc

    goto :goto_0

    .line 382
    :pswitch_14
    const/16 v0, 0x3a4

    goto :goto_0

    .line 335
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_10
        :pswitch_f
        :pswitch_1
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
    .end packed-switch
.end method

.method public static e()I
    .locals 1

    .prologue
    .line 398
    sget v0, Lcom/cmplay/h/d;->n:I

    packed-switch v0, :pswitch_data_0

    .line 411
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 400
    :pswitch_0
    const/16 v0, 0x17d4

    goto :goto_0

    .line 403
    :pswitch_1
    const/16 v0, 0x189c

    goto :goto_0

    .line 405
    :pswitch_2
    const/16 v0, 0x1838

    goto :goto_0

    .line 407
    :pswitch_3
    const/16 v0, 0x18d4

    goto :goto_0

    .line 398
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/cmplay/h/b;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 153
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 156
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PT2_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 168
    invoke-virtual {p0}, Lcom/cmplay/h/b;->b()Lcom/facebook/appevents/a;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lcom/facebook/appevents/a;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 170
    :cond_0
    return-void
.end method

.method public b()Lcom/facebook/appevents/a;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/cmplay/h/b;->a:Lcom/facebook/appevents/a;

    return-object v0
.end method

.method public c()V
    .locals 6

    .prologue
    .line 177
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 179
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 180
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 216
    :goto_0
    return-void

    .line 183
    :cond_0
    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 186
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 187
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%s-%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 192
    :cond_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 193
    const-string v2, "locale"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const-string v0, "app_version"

    sget-object v2, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    sget-object v3, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cmplay/util/e;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 196
    const-string v0, "app_Launch_Lan"

    invoke-virtual {p0, v0, v1}, Lcom/cmplay/h/b;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 202
    new-instance v0, Lcom/cmplay/h/b$1;

    invoke-direct {v0, p0}, Lcom/cmplay/h/b$1;-><init>(Lcom/cmplay/h/b;)V

    invoke-static {v0}, Lcom/cmplay/util/i;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public d()V
    .locals 3

    .prologue
    .line 222
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 223
    const-string v1, "custom_id"

    invoke-static {}, Lcom/cmplay/util/NativeUtil;->getAndroidId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    const-string v1, "complete_registration"

    invoke-virtual {p0, v1, v0}, Lcom/cmplay/h/b;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 229
    return-void
.end method
