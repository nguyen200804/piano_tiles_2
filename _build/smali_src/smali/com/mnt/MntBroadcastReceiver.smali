.class public Lcom/mnt/MntBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 20
    :try_start_0
    new-instance v0, Lcom/mnt/impl/g;

    invoke-direct {v0}, Lcom/mnt/impl/g;-><init>()V

    .line 1047
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1048
    sget-object v1, Lcom/mnt/impl/g;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/mnt/impl/g;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1050
    :cond_0
    invoke-static {p1}, Lcom/mnt/impl/b/h;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 1051
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1052
    sget-object v1, Lcom/mnt/impl/b/j;->b:[I

    invoke-static {v1}, Lcom/mnt/impl/b/k;->a([I)Ljava/lang/String;

    move-result-object v1

    .line 1054
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v1, v4}, Lcom/mnt/impl/h/a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/mnt/MntAdConfig;)V

    .line 1056
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 1057
    if-eqz v1, :cond_2

    .line 1060
    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    .line 1061
    sget-object v1, Lcom/mnt/impl/g;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1062
    new-instance v0, Lcom/mnt/impl/l/b;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v0, v4, v5, v3}, Lcom/mnt/impl/l/b;-><init>(JLjava/lang/String;)V

    invoke-virtual {v0}, Lcom/mnt/impl/l/b;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mnt/impl/g;->c:Ljava/lang/String;

    .line 1074
    :cond_2
    :goto_0
    return-void

    .line 1064
    :cond_3
    sget-object v1, Lcom/mnt/impl/g;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1065
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1066
    const-wide/16 v0, 0x0

    .line 1067
    sget-object v6, Lcom/mnt/impl/g;->c:Ljava/lang/String;

    .line 2033
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0xe

    if-ge v7, v8, :cond_6

    .line 1068
    :cond_4
    :goto_1
    if-eqz v2, :cond_5

    .line 3029
    iget-object v6, v2, Lcom/mnt/impl/l/b;->b:Ljava/lang/String;

    .line 1068
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 4025
    iget-wide v0, v2, Lcom/mnt/impl/l/b;->a:J

    .line 1071
    :cond_5
    sub-long v0, v4, v0

    const-wide/16 v4, 0x7530

    cmp-long v0, v0, v4

    if-gez v0, :cond_7

    .line 1073
    invoke-static {p1, v3}, Lcom/mnt/impl/g;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 22
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 2036
    :cond_6
    :try_start_1
    new-instance v2, Lcom/mnt/impl/l/b;

    const/4 v7, 0x0

    const/16 v8, 0xd

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const/16 v7, 0xd

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v8, v9, v6}, Lcom/mnt/impl/l/b;-><init>(JLjava/lang/String;)V

    goto :goto_1

    .line 1077
    :cond_7
    invoke-static {p1, v3}, Lcom/mnt/impl/g;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
