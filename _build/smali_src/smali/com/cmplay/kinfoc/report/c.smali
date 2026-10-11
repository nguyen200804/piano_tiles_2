.class public Lcom/cmplay/kinfoc/report/c;
.super Ljava/lang/Object;
.source "KInfocCommon.java"


# static fields
.field private static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-string v0, "0"

    sput-object v0, Lcom/cmplay/kinfoc/report/c;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 57
    if-nez p0, :cond_0

    .line 58
    const-string v0, ""

    .line 68
    :goto_0
    return-object v0

    .line 60
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 62
    if-eqz v0, :cond_1

    .line 63
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 65
    :catch_0
    move-exception v0

    .line 66
    const-string v0, ""

    goto :goto_0

    .line 68
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method static a(Lcom/cmplay/kinfoc/report/a;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .prologue
    const/16 v1, 0x8

    .line 352
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v1, v0, :cond_0

    .line 353
    sget-object v0, Landroid/os/Build;->BOOTLOADER:Ljava/lang/String;

    iput-object v0, p0, Lcom/cmplay/kinfoc/report/a;->i:Ljava/lang/String;

    .line 355
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v1, v0, :cond_1

    .line 356
    sget-object v0, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    iput-object v0, p0, Lcom/cmplay/kinfoc/report/a;->l:Ljava/lang/String;

    .line 358
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v1, v0, :cond_2

    .line 359
    sget-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    iput-object v0, p0, Lcom/cmplay/kinfoc/report/a;->p:Ljava/lang/String;

    .line 361
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v1, v0, :cond_3

    .line 362
    sget-object v0, Landroid/os/Build;->RADIO:Ljava/lang/String;

    iput-object v0, p0, Lcom/cmplay/kinfoc/report/a;->v:Ljava/lang/String;

    .line 364
    :cond_3
    return-void
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 78
    if-nez p0, :cond_0

    .line 85
    :goto_0
    return-object v0

    .line 81
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 83
    iget-object v0, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 84
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    .prologue
    const/16 v6, 0x30

    const/4 v1, 0x0

    .line 116
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 118
    const-string v2, ""

    .line 119
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    :try_start_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    .line 123
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 124
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    :goto_0
    move v2, v1

    .line 126
    :goto_1
    rsub-int/lit8 v5, v0, 0x20

    if-ge v2, v5, :cond_0

    .line 127
    const/16 v5, 0x30

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 126
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 129
    :cond_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 130
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 132
    :goto_2
    const/16 v0, 0x20

    if-ge v1, v0, :cond_1

    .line 133
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 132
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 131
    :catch_0
    move-exception v0

    goto :goto_2

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 148
    if-nez p0, :cond_0

    .line 149
    const/4 v0, 0x0

    .line 160
    :goto_0
    return-object v0

    .line 150
    :cond_0
    invoke-static {p0}, Lcom/cmplay/kinfoc/report/c;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 152
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 153
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    .line 154
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 155
    :goto_2
    rsub-int/lit8 v4, v0, 0x20

    if-ge v1, v4, :cond_1

    .line 156
    const/16 v4, 0x30

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 155
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 158
    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 159
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public static declared-synchronized e(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 213
    const-class v1, Lcom/cmplay/kinfoc/report/c;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/cmplay/kinfoc/report/c;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "0"

    sget-object v2, Lcom/cmplay/kinfoc/report/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 214
    :cond_0
    invoke-static {p0}, Lcom/cmplay/kinfoc/report/c;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cmplay/kinfoc/report/c;->a:Ljava/lang/String;

    .line 217
    :cond_1
    sget-object v0, Lcom/cmplay/kinfoc/report/c;->a:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 213
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static f(Landroid/content/Context;)[B
    .locals 1

    .prologue
    .line 302
    .line 308
    const/16 v0, 0x2711

    :try_start_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 313
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    :goto_0
    return-object v0

    .line 309
    :catch_0
    move-exception v0

    .line 310
    const-string v0, "0"

    .line 311
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_0
.end method

.method public static g(Landroid/content/Context;)Lcom/cmplay/kinfoc/report/a;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 317
    new-instance v0, Lcom/cmplay/kinfoc/report/a;

    invoke-direct {v0}, Lcom/cmplay/kinfoc/report/a;-><init>()V

    .line 318
    invoke-static {p0}, Lcom/cmplay/kinfoc/report/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/cmplay/kinfoc/report/a;->b:Ljava/lang/String;

    .line 319
    invoke-static {p0}, Lcom/cmplay/kinfoc/report/c;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/cmplay/kinfoc/report/a;->c:Ljava/lang/String;

    .line 320
    invoke-static {p0}, Lcom/cmplay/kinfoc/report/c;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/cmplay/kinfoc/report/a;->d:Ljava/lang/String;

    .line 321
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/cmplay/kinfoc/report/a;->e:Ljava/lang/String;

    .line 322
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/cmplay/kinfoc/report/a;->f:Ljava/lang/String;

    .line 323
    invoke-static {p0}, Lcom/cmplay/kinfoc/report/c;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/cmplay/kinfoc/report/a;->g:Ljava/lang/String;

    .line 324
    sget-object v1, Landroid/os/Build;->BOARD:Ljava/lang/String;

    iput-object v1, v0, Lcom/cmplay/kinfoc/report/a;->h:Ljava/lang/String;

    .line 325
    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    iput-object v1, v0, Lcom/cmplay/kinfoc/report/a;->j:Ljava/lang/String;

    .line 326
    sget-object v1, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    iput-object v1, v0, Lcom/cmplay/kinfoc/report/a;->k:Ljava/lang/String;

    .line 327
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    iput-object v1, v0, Lcom/cmplay/kinfoc/report/a;->m:Ljava/lang/String;

    .line 328
    sget-object v1, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    iput-object v1, v0, Lcom/cmplay/kinfoc/report/a;->n:Ljava/lang/String;

    .line 329
    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    iput-object v1, v0, Lcom/cmplay/kinfoc/report/a;->o:Ljava/lang/String;

    .line 330
    sget-object v1, Landroid/os/Build;->HOST:Ljava/lang/String;

    iput-object v1, v0, Lcom/cmplay/kinfoc/report/a;->q:Ljava/lang/String;

    .line 331
    sget-object v1, Landroid/os/Build;->ID:Ljava/lang/String;

    iput-object v1, v0, Lcom/cmplay/kinfoc/report/a;->r:Ljava/lang/String;

    .line 332
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    iput-object v1, v0, Lcom/cmplay/kinfoc/report/a;->s:Ljava/lang/String;

    .line 333
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v1, v0, Lcom/cmplay/kinfoc/report/a;->t:Ljava/lang/String;

    .line 334
    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    iput-object v1, v0, Lcom/cmplay/kinfoc/report/a;->u:Ljava/lang/String;

    .line 335
    sget-object v1, Landroid/os/Build;->TAGS:Ljava/lang/String;

    iput-object v1, v0, Lcom/cmplay/kinfoc/report/a;->w:Ljava/lang/String;

    .line 336
    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    iput-object v1, v0, Lcom/cmplay/kinfoc/report/a;->x:Ljava/lang/String;

    .line 337
    sget-object v1, Landroid/os/Build;->USER:Ljava/lang/String;

    iput-object v1, v0, Lcom/cmplay/kinfoc/report/a;->y:Ljava/lang/String;

    .line 338
    sget-object v1, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    iput-object v1, v0, Lcom/cmplay/kinfoc/report/a;->z:Ljava/lang/String;

    .line 339
    sget-object v1, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    iput-object v1, v0, Lcom/cmplay/kinfoc/report/a;->A:Ljava/lang/String;

    .line 340
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v1, v0, Lcom/cmplay/kinfoc/report/a;->B:Ljava/lang/String;

    .line 341
    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    iput-object v1, v0, Lcom/cmplay/kinfoc/report/a;->C:Ljava/lang/String;

    .line 342
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    iput v1, v0, Lcom/cmplay/kinfoc/report/a;->D:I

    .line 344
    invoke-static {v0}, Lcom/cmplay/kinfoc/report/c;->a(Lcom/cmplay/kinfoc/report/a;)V

    .line 346
    return-object v0
.end method

.method public static h(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 406
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static i(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 227
    const-string v1, "0"

    .line 228
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    if-nez v2, :cond_2

    :cond_0
    move-object v0, v1

    .line 275
    :cond_1
    :goto_0
    return-object v0

    .line 231
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-char v3, Ljava/io/File;->separatorChar:C

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Chanel.dat"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 235
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 236
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_4

    .line 238
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    :try_start_1
    invoke-static {p0}, Lcom/cmplay/kinfoc/report/c;->f(Landroid/content/Context;)[B

    move-result-object v3

    .line 240
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_c
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 242
    const/4 v1, 0x0

    :try_start_2
    array-length v4, v3

    invoke-virtual {v2, v3, v1, v4}, Ljava/io/FileOutputStream;->write([BII)V

    .line 244
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 250
    if-eqz v2, :cond_1

    .line 252
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 254
    :catch_0
    move-exception v1

    goto :goto_0

    .line 245
    :catch_1
    move-exception v1

    .line 250
    if-eqz v2, :cond_1

    .line 252
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 254
    :catch_2
    move-exception v1

    goto :goto_0

    .line 248
    :catch_3
    move-exception v2

    .line 250
    :goto_1
    if-eqz v0, :cond_6

    .line 252
    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    move-object v0, v1

    .line 255
    goto :goto_0

    .line 254
    :catch_4
    move-exception v0

    move-object v0, v1

    .line 255
    goto :goto_0

    .line 250
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_2
    if-eqz v2, :cond_3

    .line 252
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_8

    .line 255
    :cond_3
    :goto_3
    throw v0

    .line 260
    :cond_4
    :try_start_7
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 261
    :try_start_8
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_a
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move-result-object v0

    .line 262
    :try_start_9
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_b
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 267
    if-eqz v2, :cond_1

    .line 269
    :try_start_a
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    goto :goto_0

    .line 270
    :catch_5
    move-exception v1

    goto :goto_0

    .line 264
    :catch_6
    move-exception v2

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    .line 267
    :goto_4
    if-eqz v1, :cond_1

    .line 269
    :try_start_b
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    goto/16 :goto_0

    .line 270
    :catch_7
    move-exception v1

    goto/16 :goto_0

    .line 267
    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_5
    if-eqz v2, :cond_5

    .line 269
    :try_start_c
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9

    .line 271
    :cond_5
    :goto_6
    throw v0

    .line 254
    :catch_8
    move-exception v1

    goto :goto_3

    .line 270
    :catch_9
    move-exception v1

    goto :goto_6

    .line 267
    :catchall_2
    move-exception v0

    goto :goto_5

    .line 264
    :catch_a
    move-exception v0

    move-object v0, v1

    move-object v1, v2

    goto :goto_4

    :catch_b
    move-exception v1

    move-object v1, v2

    goto :goto_4

    .line 250
    :catchall_3
    move-exception v0

    goto :goto_2

    .line 248
    :catch_c
    move-exception v0

    move-object v0, v2

    goto :goto_1

    :cond_6
    move-object v0, v1

    goto/16 :goto_0
.end method
