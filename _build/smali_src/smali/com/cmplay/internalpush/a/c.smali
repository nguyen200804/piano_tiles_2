.class public Lcom/cmplay/internalpush/a/c;
.super Ljava/lang/Object;
.source "FilterHelper.java"


# static fields
.field public static a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    sput v0, Lcom/cmplay/internalpush/a/c;->a:I

    return-void
.end method

.method public static a(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 430
    .line 431
    sparse-switch p0, :sswitch_data_0

    .line 481
    const-string v0, "ERROR_CODE_NO_ERROR\t\t\u6210\u529f"

    .line 485
    :goto_0
    return-object v0

    .line 433
    :sswitch_0
    const-string v0, "ERROR_CODE_NO_ERROR\t\t\u6210\u529f"

    goto :goto_0

    .line 436
    :sswitch_1
    const-string v0, "ERROR_CODE_INVALID_TIME\t\t\u672a\u5230\u5c55\u793a\u65f6\u95f4"

    goto :goto_0

    .line 439
    :sswitch_2
    const-string v0, "ERROR_CODE_INTERVAL_INVALID\t\t\u8ddd\u79bb\u4e0a\u6b21\u5c55\u793a\uff0c\u672a\u5927\u4e8e\u95f4\u9694\u65f6\u95f4"

    goto :goto_0

    .line 442
    :sswitch_3
    const-string v0, "ERROR_CODE_SHOW_TIMES_LIMIT\t\t\u8d85\u8fc7\u663e\u793a\u6b21\u6570\u9650\u5236"

    goto :goto_0

    .line 445
    :sswitch_4
    const-string v0, "ERROR_CODE_SHOW_TIMES_LIMIT\t\t\u8d85\u8fc7\u8f6e\u8be2\u6b21\u6570\u9650\u5236"

    goto :goto_0

    .line 448
    :sswitch_5
    const-string v0, "ERROR_CODE_IS_HAVE_CLICKED\t\t\u5df2\u7ecf\u70b9\u51fb\u8fc7"

    goto :goto_0

    .line 451
    :sswitch_6
    const-string v0, "ERROR_CODE_IS_HAVE_INSTALLED\t\u5df2\u7ecf\u5b89\u88c5"

    goto :goto_0

    .line 454
    :sswitch_7
    const-string v0, "ERROR_CODE_BG_IMG_NOT_DOWNLOADED\t\u80cc\u666f\u56fe\u7247\u6ca1\u6709\u4e0b\u8f7d"

    goto :goto_0

    .line 457
    :sswitch_8
    const-string v0, "ERROR_CODE_BTN_IMG_NOT_DOWNLOADED\t\u6309\u94ae\u56fe\u7247\u6ca1\u6709\u4e0b\u8f7d"

    goto :goto_0

    .line 460
    :sswitch_9
    const-string v0, "ERROR_CODE_ICON_IMG_NOT_DOWNLOADED\tIcon\u56fe\u7247\u6ca1\u6709\u4e0b\u8f7d"

    goto :goto_0

    .line 463
    :sswitch_a
    const-string v0, "ERROR_CODE_VIDEO_NOT_DOWNLOADED\t\u89c6\u9891\u6ca1\u6709\u4e0b\u8f7d"

    goto :goto_0

    .line 466
    :sswitch_b
    const-string v0, "ERROR_CODE_NEW_USER_NOT_SHOW\t  \u65b0\u7528\u6237\u4e0d\u5c55\u793a"

    goto :goto_0

    .line 469
    :sswitch_c
    const-string v0, "ERROR_CODE_VIDEO_DOWNLOAD_FAIL\t  \u5f53\u524d\u89c6\u9891\u4e0b\u8f7d\u5931\u8d25"

    goto :goto_0

    .line 472
    :sswitch_d
    const-string v0, "ERROR_CODE_SHIELD_TIME\t  \u70b9\u51fb\u4e0d\u611f\u5174\u8da3\u540e,\u672a\u6765\u51e0\u5929\u5185\u4e0d\u5c55\u793a"

    goto :goto_0

    .line 475
    :sswitch_e
    const-string v0, "ERROR_CODE_STARTUP_TIME\t  \u6309\u7167\u542f\u52a8\u6b21\u6570\u505a\u5c55\u793a\u63a7\u5236\uff0c\u6bcf\u9694N\u6b21\u505a\u4e00\u6b21\u5c55\u793a\uff0c\u8fd8\u6ca1\u8fbe\u5230\u95f4\u9694"

    goto :goto_0

    .line 478
    :sswitch_f
    const-string v0, "ERROR_CODE_DAY_LIMIT\t  \u7206\u6b3e\u5c55\u793a\u8fbe\u5230\u6bcf\u5929\u5c55\u793a\u4e0a\u9650"

    goto :goto_0

    .line 431
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_6
        0x2 -> :sswitch_b
        0x3 -> :sswitch_5
        0x5 -> :sswitch_3
        0x6 -> :sswitch_1
        0x7 -> :sswitch_2
        0x8 -> :sswitch_7
        0x9 -> :sswitch_8
        0xb -> :sswitch_9
        0xc -> :sswitch_a
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x3e8 -> :sswitch_4
        0x3e9 -> :sswitch_c
    .end sparse-switch
.end method

.method public static a(Landroid/content/Context;Lcom/cmplay/internalpush/data/c;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 244
    invoke-virtual {p1}, Lcom/cmplay/internalpush/data/c;->P()Ljava/util/ArrayList;

    move-result-object v0

    .line 245
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 246
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmplay/base/util/b;

    .line 247
    if-eqz v0, :cond_0

    .line 248
    iget-object v0, v0, Lcom/cmplay/base/util/b;->b:Ljava/lang/String;

    .line 249
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {p0, v0}, Lcom/cmplay/internalpush/a/b;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    sput v2, Lcom/cmplay/internalpush/a/c;->a:I

    move v0, v1

    .line 265
    :goto_0
    return v0

    .line 257
    :cond_1
    invoke-virtual {p1}, Lcom/cmplay/internalpush/data/c;->r()Ljava/lang/String;

    move-result-object v0

    .line 258
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {p0, v0}, Lcom/cmplay/internalpush/a/b;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 260
    sput v2, Lcom/cmplay/internalpush/a/c;->a:I

    move v0, v1

    .line 261
    goto :goto_0

    :cond_2
    move v0, v2

    .line 265
    goto :goto_0
.end method

.method public static a(Lcom/cmplay/internalpush/data/c;)Z
    .locals 14

    .prologue
    const-wide/16 v12, 0x3e8

    const-wide/16 v10, 0x0

    const/4 v8, 0x6

    const/4 v0, 0x0

    .line 106
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 107
    invoke-virtual {p0}, Lcom/cmplay/internalpush/data/c;->c()J

    move-result-wide v4

    mul-long/2addr v4, v12

    .line 108
    invoke-virtual {p0}, Lcom/cmplay/internalpush/data/c;->d()J

    move-result-wide v6

    mul-long/2addr v6, v12

    .line 113
    cmp-long v1, v4, v10

    if-lez v1, :cond_0

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 114
    sput v8, Lcom/cmplay/internalpush/a/c;->a:I

    .line 123
    :goto_0
    return v0

    .line 118
    :cond_0
    cmp-long v1, v6, v10

    if-lez v1, :cond_1

    cmp-long v1, v2, v6

    if-lez v1, :cond_1

    .line 119
    sput v8, Lcom/cmplay/internalpush/a/c;->a:I

    goto :goto_0

    .line 123
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static a(Lcom/cmplay/internalpush/data/c;J)Z
    .locals 7

    .prologue
    .line 373
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 374
    invoke-virtual {p0}, Lcom/cmplay/internalpush/data/c;->L()I

    move-result v2

    mul-int/lit8 v2, v2, 0x18

    mul-int/lit8 v2, v2, 0x3c

    mul-int/lit8 v2, v2, 0x3c

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    .line 375
    const-string v4, "internal_push"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkShieldTime  curTime:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  lastShieldTime:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  interval:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    invoke-virtual {p0}, Lcom/cmplay/internalpush/data/c;->L()I

    move-result v4

    if-lez v4, :cond_0

    const-wide/16 v4, 0x0

    cmp-long v4, p1, v4

    if-lez v4, :cond_0

    sub-long/2addr v0, p1

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 377
    const/16 v0, 0xd

    sput v0, Lcom/cmplay/internalpush/a/c;->a:I

    .line 378
    const/4 v0, 0x0

    .line 380
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static a(Lcom/cmplay/internalpush/data/c;JJ)Z
    .locals 7

    .prologue
    const-wide/16 v2, 0x3c

    const-wide/16 v4, 0x0

    .line 153
    invoke-virtual {p0}, Lcom/cmplay/internalpush/data/c;->ac()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 160
    :goto_0
    invoke-virtual {p0}, Lcom/cmplay/internalpush/data/c;->f()J

    move-result-wide v0

    mul-long/2addr v0, v2

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    .line 161
    cmp-long v2, v0, v4

    if-lez v2, :cond_0

    cmp-long v2, p3, v4

    if-lez v2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, p3

    cmp-long v0, v2, v0

    if-gez v0, :cond_0

    .line 162
    const/4 v0, 0x7

    sput v0, Lcom/cmplay/internalpush/a/c;->a:I

    .line 163
    const/4 v0, 0x0

    .line 166
    :goto_1
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    move-wide p3, p1

    goto :goto_0
.end method

.method public static a(Lcom/cmplay/internalpush/data/c;JJIZ)Z
    .locals 1

    .prologue
    .line 198
    if-eqz p6, :cond_0

    const/4 v0, 0x2

    if-ne v0, p5, :cond_0

    .line 199
    invoke-static {p0, p1, p2, p3, p4}, Lcom/cmplay/internalpush/a/c;->b(Lcom/cmplay/internalpush/data/c;JJ)Z

    move-result v0

    .line 201
    :goto_0
    return v0

    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/cmplay/internalpush/a/c;->a(Lcom/cmplay/internalpush/data/c;JJ)Z

    move-result v0

    goto :goto_0
.end method

.method public static a(Lcom/cmplay/internalpush/data/c;Z)Z
    .locals 1

    .prologue
    .line 346
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/cmplay/internalpush/data/c;->E()I

    move-result v0

    if-nez v0, :cond_0

    .line 347
    const/4 v0, 0x2

    sput v0, Lcom/cmplay/internalpush/a/c;->a:I

    .line 348
    const/4 v0, 0x0

    .line 350
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static b(Lcom/cmplay/internalpush/data/c;)Z
    .locals 6

    .prologue
    const-wide/16 v4, 0x3e8

    .line 132
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 133
    invoke-virtual {p0}, Lcom/cmplay/internalpush/data/c;->c()J

    move-result-wide v2

    mul-long/2addr v2, v4

    .line 134
    invoke-virtual {p0}, Lcom/cmplay/internalpush/data/c;->d()J

    move-result-wide v2

    mul-long/2addr v2, v4

    .line 139
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 140
    const/4 v0, 0x6

    sput v0, Lcom/cmplay/internalpush/a/c;->a:I

    .line 141
    const/4 v0, 0x0

    .line 144
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static b(Lcom/cmplay/internalpush/data/c;JJ)Z
    .locals 9

    .prologue
    const-wide/16 v6, 0x3c

    const-wide/16 v0, 0x3

    const-wide/16 v4, 0x0

    .line 177
    cmp-long v2, p1, p3

    if-lez v2, :cond_1

    .line 179
    :goto_0
    invoke-virtual {p0}, Lcom/cmplay/internalpush/data/c;->f()J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-lez v2, :cond_0

    invoke-virtual {p0}, Lcom/cmplay/internalpush/data/c;->f()J

    move-result-wide v0

    .line 180
    :cond_0
    mul-long/2addr v0, v6

    mul-long/2addr v0, v6

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    .line 181
    cmp-long v2, v0, v4

    if-lez v2, :cond_2

    cmp-long v2, p1, v4

    if-lez v2, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, p1

    cmp-long v0, v2, v0

    if-gez v0, :cond_2

    .line 182
    const/4 v0, 0x7

    sput v0, Lcom/cmplay/internalpush/a/c;->a:I

    .line 183
    const/4 v0, 0x0

    .line 186
    :goto_1
    return v0

    :cond_1
    move-wide p1, p3

    .line 177
    goto :goto_0

    .line 186
    :cond_2
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public static c(Lcom/cmplay/internalpush/data/c;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 211
    invoke-virtual {p0}, Lcom/cmplay/internalpush/data/c;->e()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Lcom/cmplay/internalpush/data/c;->u()I

    move-result v1

    invoke-virtual {p0}, Lcom/cmplay/internalpush/data/c;->e()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 212
    const/4 v1, 0x5

    sput v1, Lcom/cmplay/internalpush/a/c;->a:I

    .line 220
    :goto_0
    return v0

    .line 215
    :cond_0
    invoke-virtual {p0}, Lcom/cmplay/internalpush/data/c;->j()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p0}, Lcom/cmplay/internalpush/data/c;->x()I

    move-result v1

    invoke-virtual {p0}, Lcom/cmplay/internalpush/data/c;->j()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 216
    const/16 v1, 0x3e8

    sput v1, Lcom/cmplay/internalpush/a/c;->a:I

    goto :goto_0

    .line 220
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static d(Lcom/cmplay/internalpush/data/c;)Z
    .locals 1

    .prologue
    .line 229
    invoke-virtual {p0}, Lcom/cmplay/internalpush/data/c;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/cmplay/internalpush/data/c;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    const/4 v0, 0x3

    sput v0, Lcom/cmplay/internalpush/a/c;->a:I

    .line 231
    const/4 v0, 0x0

    .line 234
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static e(Lcom/cmplay/internalpush/data/c;)Z
    .locals 2

    .prologue
    .line 274
    invoke-virtual {p0}, Lcom/cmplay/internalpush/data/c;->l()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/cmplay/internalpush/data/c;->m()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 276
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/cmplay/internalpush/data/c;->m()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 277
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    const/4 v0, 0x1

    .line 282
    :goto_0
    return v0

    .line 281
    :cond_0
    const/16 v0, 0x8

    sput v0, Lcom/cmplay/internalpush/a/c;->a:I

    .line 282
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static f(Lcom/cmplay/internalpush/data/c;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 291
    invoke-virtual {p0}, Lcom/cmplay/internalpush/data/c;->n()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 303
    :cond_0
    :goto_0
    return v0

    .line 295
    :cond_1
    invoke-virtual {p0}, Lcom/cmplay/internalpush/data/c;->n()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/cmplay/internalpush/data/c;->p()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 297
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/cmplay/internalpush/data/c;->p()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 298
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 302
    :cond_2
    const/16 v0, 0x9

    sput v0, Lcom/cmplay/internalpush/a/c;->a:I

    .line 303
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static g(Lcom/cmplay/internalpush/data/c;)Z
    .locals 2

    .prologue
    .line 312
    invoke-virtual {p0}, Lcom/cmplay/internalpush/data/c;->y()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/cmplay/internalpush/data/c;->z()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 314
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/cmplay/internalpush/data/c;->z()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 315
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 316
    const/4 v0, 0x1

    .line 320
    :goto_0
    return v0

    .line 319
    :cond_0
    const/16 v0, 0xb

    sput v0, Lcom/cmplay/internalpush/a/c;->a:I

    .line 320
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static h(Lcom/cmplay/internalpush/data/c;)Z
    .locals 2

    .prologue
    .line 329
    invoke-virtual {p0}, Lcom/cmplay/internalpush/data/c;->F()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/cmplay/internalpush/data/c;->G()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 331
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/cmplay/internalpush/data/c;->G()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 332
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 333
    const/4 v0, 0x1

    .line 337
    :goto_0
    return v0

    .line 336
    :cond_0
    const/16 v0, 0xc

    sput v0, Lcom/cmplay/internalpush/a/c;->a:I

    .line 337
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static i(Lcom/cmplay/internalpush/data/c;)Z
    .locals 1

    .prologue
    .line 359
    invoke-virtual {p0}, Lcom/cmplay/internalpush/data/c;->Z()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 360
    const/16 v0, 0x3e9

    sput v0, Lcom/cmplay/internalpush/a/c;->a:I

    .line 361
    const/4 v0, 0x0

    .line 363
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static j(Lcom/cmplay/internalpush/data/c;)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 389
    invoke-virtual {p0}, Lcom/cmplay/internalpush/data/c;->S()I

    move-result v2

    .line 391
    invoke-virtual {p0}, Lcom/cmplay/internalpush/data/c;->ac()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 392
    const-string v0, "hit_top_launch_time"

    invoke-static {v0, v1}, Lcom/cmplay/internalpush/a/d;->a(Ljava/lang/String;I)I

    move-result v0

    .line 396
    :goto_0
    const-string v3, "internal_push"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkLaunchTime  showByStartup:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  launchTime:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    if-lez v2, :cond_1

    if-ge v0, v2, :cond_1

    .line 398
    const/16 v0, 0xe

    sput v0, Lcom/cmplay/internalpush/a/c;->a:I

    move v0, v1

    .line 401
    :goto_1
    return v0

    .line 394
    :cond_0
    const-string v0, "launch_time"

    invoke-static {v0, v1}, Lcom/cmplay/internalpush/a/d;->a(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    .line 401
    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public static k(Lcom/cmplay/internalpush/data/c;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 410
    invoke-virtual {p0}, Lcom/cmplay/internalpush/data/c;->aa()I

    move-result v1

    .line 411
    invoke-virtual {p0}, Lcom/cmplay/internalpush/data/c;->ac()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 412
    invoke-virtual {p0}, Lcom/cmplay/internalpush/data/c;->ab()I

    move-result v2

    .line 413
    const-string v3, "internal_push"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkDayLimit  dayLimit:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  curHitTopTodayShowTime:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    if-lez v1, :cond_0

    if-lt v2, v1, :cond_0

    .line 415
    const/16 v0, 0xf

    sput v0, Lcom/cmplay/internalpush/a/c;->a:I

    .line 416
    const/4 v0, 0x0

    .line 421
    :cond_0
    return v0
.end method
