.class public abstract Lcom/cmplay/base/util/g;
.super Ljava/lang/Object;
.source "CMLog.java"


# static fields
.field private static a:Ljava/text/SimpleDateFormat;

.field private static b:Z

.field private static c:Z

.field private static d:Z

.field private static e:Z

.field private static f:Z

.field private static g:Z

.field private static h:Z

.field private static i:Z

.field private static j:Z

.field private static k:Z

.field private static l:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 51
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    sget-object v2, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/cmplay/base/util/g;->a:Ljava/text/SimpleDateFormat;

    .line 71
    sput-boolean v3, Lcom/cmplay/base/util/g;->b:Z

    .line 75
    sput-boolean v3, Lcom/cmplay/base/util/g;->c:Z

    .line 80
    sput-boolean v3, Lcom/cmplay/base/util/g;->d:Z

    .line 84
    sput-boolean v3, Lcom/cmplay/base/util/g;->e:Z

    .line 89
    sput-boolean v3, Lcom/cmplay/base/util/g;->f:Z

    .line 93
    sput-boolean v3, Lcom/cmplay/base/util/g;->g:Z

    .line 98
    sput-boolean v3, Lcom/cmplay/base/util/g;->h:Z

    .line 102
    sput-boolean v3, Lcom/cmplay/base/util/g;->i:Z

    .line 107
    sput-boolean v3, Lcom/cmplay/base/util/g;->j:Z

    .line 112
    sput-boolean v3, Lcom/cmplay/base/util/g;->k:Z

    .line 117
    sput-boolean v3, Lcom/cmplay/base/util/g;->l:Z

    return-void
.end method

.method public static a(J)Ljava/lang/String;
    .locals 2

    .prologue
    .line 428
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    .line 429
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 433
    :goto_0
    sget-object v1, Lcom/cmplay/base/util/g;->a:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 434
    return-object v0

    .line 431
    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    goto :goto_0
.end method

.method public static a(JLjava/lang/String;)V
    .locals 4

    .prologue
    .line 183
    sget-boolean v0, Lcom/cmplay/base/util/g;->l:Z

    if-eqz v0, :cond_0

    .line 184
    const-string v0, "use_time"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u8017\u65f6\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, p0

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 126
    sget-boolean v0, Lcom/cmplay/base/util/g;->l:Z

    if-eqz v0, :cond_0

    .line 127
    const-string v0, "zzb"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :cond_0
    sget-boolean v0, Lcom/cmplay/base/util/g;->k:Z

    if-eqz v0, :cond_1

    .line 130
    const-string v0, "d"

    const-string v1, "zzb"

    invoke-static {v0, v1, p0}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    :cond_1
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 134
    sget-boolean v0, Lcom/cmplay/base/util/g;->l:Z

    if-eqz v0, :cond_2

    .line 135
    const/4 v0, 0x0

    .line 136
    const/16 v3, 0xfa0

    .line 137
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    move v2, v0

    .line 139
    :goto_0
    if-ge v2, v1, :cond_2

    .line 140
    add-int v0, v2, v3

    if-gt v1, v0, :cond_0

    .line 141
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 147
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "___index:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    add-int v0, v2, v3

    move v2, v0

    goto :goto_0

    .line 143
    :cond_0
    add-int v0, v2, v3

    .line 144
    if-le v0, v1, :cond_1

    move v0, v1

    .line 145
    :cond_1
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 151
    :cond_2
    sget-boolean v0, Lcom/cmplay/base/util/g;->k:Z

    if-eqz v0, :cond_3

    .line 152
    const-string v0, "d"

    invoke-static {v0, p0, p1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    :cond_3
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 372
    const/4 v0, 0x0

    .line 373
    const/4 v1, 0x0

    .line 375
    :try_start_0
    const-string v3, "android.log"

    invoke-static {v3}, Lcom/cmplay/base/util/g;->c(Ljava/lang/String;)Ljava/io/File;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v3

    .line 377
    if-nez v3, :cond_2

    .line 414
    if-eqz v2, :cond_0

    .line 415
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 417
    :cond_0
    if-eqz v2, :cond_1

    .line 418
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 424
    :cond_1
    :goto_0
    return-void

    .line 420
    :catch_0
    move-exception v0

    .line 421
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 381
    :cond_2
    :try_start_2
    new-instance v1, Ljava/io/FileOutputStream;

    const/4 v0, 0x1

    invoke-direct {v1, v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 382
    if-eqz v1, :cond_e

    .line 383
    :try_start_3
    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 384
    if-eqz v3, :cond_3

    .line 385
    const-wide/16 v4, 0x0

    :try_start_4
    invoke-static {v4, v5}, Lcom/cmplay/base/util/g;->a(J)Ljava/lang/String;

    move-result-object v0

    .line 386
    const-string v2, "e"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 387
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " Error:>>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "<<  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 406
    :cond_3
    :goto_1
    invoke-virtual {v3}, Ljava/io/PrintWriter;->flush()V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 414
    :goto_2
    if-eqz v1, :cond_4

    .line 415
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 417
    :cond_4
    if-eqz v3, :cond_1

    .line 418
    invoke-virtual {v3}, Ljava/io/PrintWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 420
    :catch_1
    move-exception v0

    .line 421
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 389
    :cond_5
    :try_start_6
    const-string v2, "d"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 390
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " Debug:>>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "<<  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 408
    :catch_2
    move-exception v0

    move-object v2, v3

    .line 409
    :goto_3
    :try_start_7
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 414
    if-eqz v1, :cond_6

    .line 415
    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 417
    :cond_6
    if-eqz v2, :cond_1

    .line 418
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto/16 :goto_0

    .line 420
    :catch_3
    move-exception v0

    .line 421
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 392
    :cond_7
    :try_start_9
    const-string v2, "i"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 393
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " Info:>>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "<<   "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_1

    .line 410
    :catch_4
    move-exception v0

    .line 411
    :goto_4
    :try_start_a
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 414
    if-eqz v1, :cond_8

    .line 415
    :try_start_b
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 417
    :cond_8
    if-eqz v3, :cond_1

    .line 418
    invoke-virtual {v3}, Ljava/io/PrintWriter;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    goto/16 :goto_0

    .line 420
    :catch_5
    move-exception v0

    .line 421
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 395
    :cond_9
    :try_start_c
    const-string v2, "w"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 396
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " Warning:>>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "<<   "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_2
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_1

    .line 413
    :catchall_0
    move-exception v0

    .line 414
    :goto_5
    if-eqz v1, :cond_a

    .line 415
    :try_start_d
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 417
    :cond_a
    if-eqz v3, :cond_b

    .line 418
    invoke-virtual {v3}, Ljava/io/PrintWriter;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_6

    .line 422
    :cond_b
    :goto_6
    throw v0

    .line 398
    :cond_c
    :try_start_e
    const-string v2, "v"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 399
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " Verbose:>>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "<<   "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 401
    :cond_d
    const-string v2, "f"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 402
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " File:>>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "<<   "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_e} :catch_2
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_4
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto/16 :goto_1

    .line 420
    :catch_6
    move-exception v1

    .line 421
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 413
    :catchall_1
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object v3, v2

    goto :goto_5

    :catchall_3
    move-exception v0

    move-object v3, v2

    goto/16 :goto_5

    .line 410
    :catch_7
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    goto/16 :goto_4

    :catch_8
    move-exception v0

    move-object v3, v2

    goto/16 :goto_4

    .line 408
    :catch_9
    move-exception v0

    move-object v1, v2

    goto/16 :goto_3

    :catch_a
    move-exception v0

    goto/16 :goto_3

    :cond_e
    move-object v3, v2

    goto/16 :goto_2
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 241
    sget-boolean v0, Lcom/cmplay/base/util/g;->h:Z

    if-eqz v0, :cond_0

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    :cond_0
    sget-boolean v0, Lcom/cmplay/base/util/g;->i:Z

    if-eqz v0, :cond_1

    .line 246
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 247
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 248
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 249
    const-string v0, "e"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    :cond_1
    return-void
.end method

.method public static a(Z)V
    .locals 0

    .prologue
    .line 119
    sput-boolean p0, Lcom/cmplay/base/util/g;->l:Z

    .line 120
    return-void
.end method

.method public static a()Z
    .locals 1

    .prologue
    .line 122
    sget-boolean v0, Lcom/cmplay/base/util/g;->l:Z

    return v0
.end method

.method public static b()J
    .locals 2

    .prologue
    .line 176
    sget-boolean v0, Lcom/cmplay/base/util/g;->l:Z

    if-eqz v0, :cond_0

    .line 177
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 179
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 156
    sget-boolean v0, Lcom/cmplay/base/util/g;->l:Z

    if-eqz v0, :cond_0

    .line 157
    const-string v0, "zzb"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :cond_0
    sget-boolean v0, Lcom/cmplay/base/util/g;->k:Z

    if-eqz v0, :cond_1

    .line 160
    const-string v0, "e"

    const-string v1, "zzb"

    invoke-static {v0, v1, p0}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    :cond_1
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 220
    sget-boolean v0, Lcom/cmplay/base/util/g;->j:Z

    if-eqz v0, :cond_0

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :cond_0
    sget-boolean v0, Lcom/cmplay/base/util/g;->k:Z

    if-eqz v0, :cond_1

    .line 224
    const-string v0, "d"

    invoke-static {v0, p0, p1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    :cond_1
    return-void
.end method

.method private static c(Ljava/lang/String;)Ljava/io/File;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 442
    .line 443
    const-string v1, "mounted"

    .line 444
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    .line 443
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 445
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/CMPlaySDK/Log"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 448
    :goto_0
    if-nez v1, :cond_1

    .line 462
    :cond_0
    :goto_1
    return-object v0

    .line 452
    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 455
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    .line 456
    const-string v3, "Log"

    const-string v4, "fileDir is no exists!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 462
    :cond_2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move-object v1, v0

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 260
    sget-boolean v0, Lcom/cmplay/base/util/g;->d:Z

    if-eqz v0, :cond_0

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :cond_0
    sget-boolean v0, Lcom/cmplay/base/util/g;->e:Z

    if-eqz v0, :cond_1

    .line 264
    const-string v0, "i"

    invoke-static {v0, p0, p1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    :cond_1
    return-void
.end method
