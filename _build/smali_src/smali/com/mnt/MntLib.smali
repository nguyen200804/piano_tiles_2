.class public Lcom/mnt/MntLib;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/mnt/impl/e;->f:Ljava/lang/String;

    sput-object v0, Lcom/mnt/MntLib;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;)Z
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 46
    .line 47
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 49
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-class v4, Lcom/mnt/MntActivity;

    invoke-direct {v0, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v4, 0x10000

    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 50
    if-nez v0, :cond_3

    move v0, v1

    .line 56
    :goto_0
    if-nez v0, :cond_0

    .line 57
    sget-object v0, Lcom/mnt/MntLib;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/mnt/impl/e;->g:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/Exception;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/mnt/impl/e;->h:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-class v7, Lcom/mnt/MntActivity;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/mnt/impl/e;->i:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 61
    :cond_0
    :try_start_1
    new-instance v0, Landroid/content/ComponentName;

    const-class v4, Lcom/mnt/MntBroadcastReceiver;

    invoke-direct {v0, p0, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v4, 0x10000

    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 62
    if-nez v0, :cond_1

    move v2, v1

    .line 68
    :cond_1
    :goto_1
    if-nez v2, :cond_2

    .line 69
    sget-object v0, Lcom/mnt/MntLib;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/mnt/impl/e;->j:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/Exception;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/mnt/impl/e;->k:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-class v5, Lcom/mnt/MntBroadcastReceiver;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/mnt/impl/e;->l:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 71
    :cond_2
    return v2

    .line 54
    :catch_0
    move-exception v0

    move v0, v1

    goto/16 :goto_0

    .line 66
    :catch_1
    move-exception v0

    move v2, v1

    goto :goto_1

    :cond_3
    move v0, v2

    goto/16 :goto_0
.end method

.method public static clean(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 89
    invoke-static {p0}, Lcom/mnt/impl/h/a;->a(Landroid/content/Context;)V

    .line 90
    return-void
.end method

.method public static getSdkName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    sget-object v0, Lcom/mnt/impl/b/j;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static getSdkVersion()I
    .locals 1

    .prologue
    .line 98
    const/16 v0, 0x80

    return v0
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/mnt/MntLib;->init(Landroid/content/Context;Ljava/lang/String;Lcom/mnt/MntAdConfig;)V

    .line 29
    return-void
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Lcom/mnt/MntAdConfig;)V
    .locals 0

    .prologue
    .line 36
    invoke-static {p0, p1, p2}, Lcom/mnt/impl/h/a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/mnt/MntAdConfig;)V

    .line 37
    invoke-static {p0}, Lcom/mnt/MntLib;->a(Landroid/content/Context;)Z

    .line 38
    return-void
.end method

.method public static load(Lcom/mnt/MntBuild;)V
    .locals 0

    .prologue
    .line 80
    invoke-static {p0}, Lcom/mnt/impl/h/a;->a(Ljava/lang/Object;)V

    .line 81
    return-void
.end method
