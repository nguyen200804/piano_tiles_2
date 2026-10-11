.class Lcom/duapps/ad/c/a/a$b;
.super Ljava/lang/Object;
.source "NetworkRequestFilterManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duapps/ad/c/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# static fields
.field private static b:Lcom/duapps/ad/c/a/a$b;

.field private static e:[Ljava/lang/String;

.field private static f:[Ljava/lang/String;

.field private static g:[Ljava/lang/String;

.field private static h:[Ljava/lang/String;

.field private static i:[Ljava/lang/String;

.field private static j:[Ljava/lang/String;

.field private static k:[Lcom/duapps/ad/c/a/a$c;

.field private static l:I


# instance fields
.field private a:Landroid/content/Context;

.field private c:I

.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 487
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "15555215554"

    aput-object v1, v0, v3

    const-string v1, "15555215556"

    aput-object v1, v0, v4

    const-string v1, "15555215558"

    aput-object v1, v0, v6

    const-string v1, "15555215560"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "15555215562"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "15555215564"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "15555215566"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "15555215568"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "15555215570"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "15555215572"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "15555215574"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "15555215576"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "15555215578"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "15555215580"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "15555215582"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "15555215584"

    aput-object v2, v0, v1

    sput-object v0, Lcom/duapps/ad/c/a/a$b;->e:[Ljava/lang/String;

    .line 492
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "000000000000000"

    aput-object v1, v0, v3

    const-string v1, "e21833235b6eef10"

    aput-object v1, v0, v4

    const-string v1, "012345678912345"

    aput-object v1, v0, v6

    sput-object v0, Lcom/duapps/ad/c/a/a$b;->f:[Ljava/lang/String;

    .line 495
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "310260000000000"

    aput-object v1, v0, v3

    sput-object v0, Lcom/duapps/ad/c/a/a$b;->g:[Ljava/lang/String;

    .line 497
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "/dev/socket/qemud"

    aput-object v1, v0, v3

    const-string v1, "/dev/qemu_pipe"

    aput-object v1, v0, v4

    sput-object v0, Lcom/duapps/ad/c/a/a$b;->h:[Ljava/lang/String;

    .line 499
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "/dev/socket/genyd"

    aput-object v1, v0, v3

    const-string v1, "/dev/socket/baseband_genyd"

    aput-object v1, v0, v4

    sput-object v0, Lcom/duapps/ad/c/a/a$b;->i:[Ljava/lang/String;

    .line 500
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "goldfish"

    aput-object v1, v0, v3

    sput-object v0, Lcom/duapps/ad/c/a/a$b;->j:[Ljava/lang/String;

    .line 501
    const/16 v0, 0xf

    new-array v0, v0, [Lcom/duapps/ad/c/a/a$c;

    new-instance v1, Lcom/duapps/ad/c/a/a$c;

    const-string v2, "init.svc.qemud"

    invoke-direct {v1, v2, v5}, Lcom/duapps/ad/c/a/a$c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v3

    new-instance v1, Lcom/duapps/ad/c/a/a$c;

    const-string v2, "init.svc.qemu-props"

    invoke-direct {v1, v2, v5}, Lcom/duapps/ad/c/a/a$c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v4

    new-instance v1, Lcom/duapps/ad/c/a/a$c;

    const-string v2, "qemu.hw.mainkeys"

    invoke-direct {v1, v2, v5}, Lcom/duapps/ad/c/a/a$c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v6

    new-instance v1, Lcom/duapps/ad/c/a/a$c;

    const-string v2, "qemu.sf.fake_camera"

    invoke-direct {v1, v2, v5}, Lcom/duapps/ad/c/a/a$c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v7

    const/4 v1, 0x4

    new-instance v2, Lcom/duapps/ad/c/a/a$c;

    const-string v3, "qemu.sf.lcd_density"

    invoke-direct {v2, v3, v5}, Lcom/duapps/ad/c/a/a$c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Lcom/duapps/ad/c/a/a$c;

    const-string v3, "ro.bootloader"

    const-string v4, "unknown"

    invoke-direct {v2, v3, v4}, Lcom/duapps/ad/c/a/a$c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lcom/duapps/ad/c/a/a$c;

    const-string v3, "ro.bootmode"

    const-string v4, "unknown"

    invoke-direct {v2, v3, v4}, Lcom/duapps/ad/c/a/a$c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Lcom/duapps/ad/c/a/a$c;

    const-string v3, "ro.hardware"

    const-string v4, "goldfish"

    invoke-direct {v2, v3, v4}, Lcom/duapps/ad/c/a/a$c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Lcom/duapps/ad/c/a/a$c;

    const-string v3, "ro.kernel.android.qemud"

    invoke-direct {v2, v3, v5}, Lcom/duapps/ad/c/a/a$c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Lcom/duapps/ad/c/a/a$c;

    const-string v3, "ro.kernel.qemu.gles"

    invoke-direct {v2, v3, v5}, Lcom/duapps/ad/c/a/a$c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Lcom/duapps/ad/c/a/a$c;

    const-string v3, "ro.kernel.qemu"

    const-string v4, "1"

    invoke-direct {v2, v3, v4}, Lcom/duapps/ad/c/a/a$c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Lcom/duapps/ad/c/a/a$c;

    const-string v3, "ro.product.device"

    const-string v4, "generic"

    invoke-direct {v2, v3, v4}, Lcom/duapps/ad/c/a/a$c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-instance v2, Lcom/duapps/ad/c/a/a$c;

    const-string v3, "ro.product.model"

    const-string v4, "sdk"

    invoke-direct {v2, v3, v4}, Lcom/duapps/ad/c/a/a$c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-instance v2, Lcom/duapps/ad/c/a/a$c;

    const-string v3, "ro.product.name"

    const-string v4, "sdk"

    invoke-direct {v2, v3, v4}, Lcom/duapps/ad/c/a/a$c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-instance v2, Lcom/duapps/ad/c/a/a$c;

    const-string v3, "ro.serialno"

    invoke-direct {v2, v3, v5}, Lcom/duapps/ad/c/a/a$c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/duapps/ad/c/a/a$b;->k:[Lcom/duapps/ad/c/a/a$c;

    .line 511
    const/4 v0, 0x5

    sput v0, Lcom/duapps/ad/c/a/a$b;->l:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 468
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 469
    iput-object p1, p0, Lcom/duapps/ad/c/a/a$b;->a:Landroid/content/Context;

    .line 470
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/duapps/ad/c/a/a$b;
    .locals 3

    .prologue
    .line 475
    sget-object v0, Lcom/duapps/ad/c/a/a$b;->b:Lcom/duapps/ad/c/a/a$b;

    if-nez v0, :cond_1

    .line 476
    const-class v1, Lcom/duapps/ad/c/a/a$b;

    monitor-enter v1

    .line 477
    :try_start_0
    sget-object v0, Lcom/duapps/ad/c/a/a$b;->b:Lcom/duapps/ad/c/a/a$b;

    if-nez v0, :cond_0

    .line 478
    new-instance v0, Lcom/duapps/ad/c/a/a$b;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/duapps/ad/c/a/a$b;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/duapps/ad/c/a/a$b;->b:Lcom/duapps/ad/c/a/a$b;

    .line 480
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 482
    :cond_1
    sget-object v0, Lcom/duapps/ad/c/a/a$b;->b:Lcom/duapps/ad/c/a/a$b;

    return-object v0

    .line 480
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 739
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 740
    const-string v1, "android.os.SystemProperties"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 742
    const-string v1, "get"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 744
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 745
    const/4 v3, 0x0

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v4, v2, v3

    .line 747
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    return-object v0

    .line 748
    :catch_0
    move-exception v0

    .line 749
    throw v0

    .line 750
    :catch_1
    move-exception v0

    .line 751
    const/4 v0, 0x0

    throw v0
.end method

.method private a(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 514
    iput-object p1, p0, Lcom/duapps/ad/c/a/a$b;->d:Ljava/lang/String;

    .line 515
    iput p2, p0, Lcom/duapps/ad/c/a/a$b;->c:I

    .line 516
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 519
    iget-object v0, p0, Lcom/duapps/ad/c/a/a$b;->a:Landroid/content/Context;

    iget v1, p0, Lcom/duapps/ad/c/a/a$b;->c:I

    iget-object v2, p0, Lcom/duapps/ad/c/a/a$b;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/duapps/ad/stats/c;->b(Landroid/content/Context;ILjava/lang/String;)V

    .line 520
    return-void
.end method

.method public b()Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 523
    sget-object v3, Lcom/duapps/ad/c/a/a$b;->h:[Ljava/lang/String;

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v5, v3, v2

    .line 524
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 525
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 526
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hasPipes "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/duapps/ad/c/a/a$b;->a(Ljava/lang/String;I)V

    .line 531
    :goto_1
    return v0

    .line 523
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 531
    goto :goto_1
.end method

.method public c()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 548
    sget-object v2, Lcom/duapps/ad/c/a/a$b;->i:[Ljava/lang/String;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 549
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 550
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 551
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hasGenyFiles "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lcom/duapps/ad/c/a/a$b;->a(Ljava/lang/String;I)V

    .line 552
    const/4 v0, 0x1

    .line 556
    :cond_0
    return v0

    .line 548
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public d()Z
    .locals 12

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 560
    const/4 v2, 0x2

    new-array v4, v2, [Ljava/io/File;

    new-instance v2, Ljava/io/File;

    const-string v3, "/proc/tty/drivers"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v2, v4, v1

    new-instance v2, Ljava/io/File;

    const-string v3, "/proc/cpuinfo"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v2, v4, v0

    array-length v5, v4

    move v3, v1

    :goto_0
    if-ge v3, v5, :cond_2

    aget-object v2, v4, v3

    .line 561
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 563
    const/16 v6, 0x400

    new-array v6, v6, [B

    .line 565
    :try_start_0
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 566
    invoke-virtual {v7, v6}, Ljava/io/InputStream;->read([B)I

    .line 567
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 572
    :goto_1
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v6}, Ljava/lang/String;-><init>([B)V

    .line 573
    sget-object v6, Lcom/duapps/ad/c/a/a$b;->j:[Ljava/lang/String;

    array-length v8, v6

    move v2, v1

    :goto_2
    if-ge v2, v8, :cond_1

    aget-object v9, v6, v2

    .line 574
    invoke-virtual {v7, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    const/4 v11, -0x1

    if-eq v10, v11, :cond_0

    .line 575
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hasQEmuDrivers "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-direct {p0, v1, v2}, Lcom/duapps/ad/c/a/a$b;->a(Ljava/lang/String;I)V

    .line 582
    :goto_3
    return v0

    .line 568
    :catch_0
    move-exception v2

    .line 569
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 573
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 560
    :cond_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 582
    goto :goto_3
.end method

.method public e()Z
    .locals 10

    .prologue
    const/16 v9, 0x8

    const/4 v0, 0x1

    .line 635
    sget-object v1, Landroid/os/Build;->BOARD:Ljava/lang/String;

    .line 638
    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 640
    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 641
    sget-object v4, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    .line 643
    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 644
    sget-object v6, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 645
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "hasEmulatorBuild "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 646
    const-string v8, "unknown"

    invoke-virtual {v1, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_0

    .line 647
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BOARD:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 648
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v9}, Lcom/duapps/ad/c/a/a$b;->a(Ljava/lang/String;I)V

    .line 682
    :goto_0
    return v0

    .line 652
    :cond_0
    const-string v8, "generic"

    invoke-virtual {v2, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    .line 653
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BOARD:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 654
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v9}, Lcom/duapps/ad/c/a/a$b;->a(Ljava/lang/String;I)V

    goto :goto_0

    .line 658
    :cond_1
    const-string v1, "generic"

    invoke-virtual {v3, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    .line 659
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DEVICE:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 660
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v9}, Lcom/duapps/ad/c/a/a$b;->a(Ljava/lang/String;I)V

    goto :goto_0

    .line 664
    :cond_2
    const-string v1, "sdk"

    invoke-virtual {v5, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_3

    .line 665
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MODEL:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 666
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v9}, Lcom/duapps/ad/c/a/a$b;->a(Ljava/lang/String;I)V

    goto :goto_0

    .line 670
    :cond_3
    const-string v1, "sdk"

    invoke-virtual {v6, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_4

    .line 671
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PRODUCT:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 672
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v9}, Lcom/duapps/ad/c/a/a$b;->a(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 676
    :cond_4
    const-string v1, "goldfish"

    invoke-virtual {v4, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_5

    .line 677
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HARDWARE:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 678
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v9}, Lcom/duapps/ad/c/a/a$b;->a(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 682
    :cond_5
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public f()Z
    .locals 3

    .prologue
    .line 696
    :try_start_0
    invoke-static {}, Lcom/duapps/ad/c/a/a$a;->a()Z

    move-result v0

    .line 697
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hasAdbInEmulator "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    invoke-direct {p0, v1, v2}, Lcom/duapps/ad/c/a/a$b;->a(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 701
    :goto_0
    return v0

    .line 699
    :catch_0
    move-exception v0

    .line 700
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 701
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()Z
    .locals 4

    .prologue
    .line 706
    iget-object v0, p0, Lcom/duapps/ad/c/a/a$b;->a:Landroid/content/Context;

    const-string v1, "ro.kernel.qemu"

    invoke-static {v0, v1}, Lcom/duapps/ad/c/a/a$b;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 707
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 708
    :goto_0
    if-eqz v0, :cond_0

    .line 709
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hasQEmu "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xb

    invoke-direct {p0, v1, v2}, Lcom/duapps/ad/c/a/a$b;->a(Ljava/lang/String;I)V

    .line 711
    :cond_0
    return v0

    .line 707
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
