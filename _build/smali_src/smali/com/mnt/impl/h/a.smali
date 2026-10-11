.class public final Lcom/mnt/impl/h/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Z

.field private static final b:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/mnt/impl/e;->jq:Ljava/lang/String;

    .line 59
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mnt/impl/h/a;->a:Z

    .line 62
    sget-object v0, Lcom/mnt/impl/e;->jr:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/mnt/impl/h/a;->b:Ljava/util/regex/Pattern;

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 404
    :try_start_0
    invoke-static {p0}, Lcom/mnt/impl/b/c;->a(Landroid/content/Context;)Lcom/mnt/impl/b/c;

    move-result-object v0

    .line 3108
    iget-object v1, v0, Lcom/mnt/impl/b/c;->b:Landroid/content/Context;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/mnt/impl/b/c;->d:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 3109
    iget-object v1, v0, Lcom/mnt/impl/b/c;->b:Landroid/content/Context;

    iget-object v2, v0, Lcom/mnt/impl/b/c;->d:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3111
    :cond_0
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/mnt/impl/b/c;->d:Landroid/content/BroadcastReceiver;

    .line 4097
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 4098
    sget-object v2, Lcom/mnt/impl/b/c;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4099
    iget-object v1, v0, Lcom/mnt/impl/b/c;->f:Landroid/app/PendingIntent;

    if-eqz v1, :cond_1

    .line 4100
    iget-object v1, v0, Lcom/mnt/impl/b/c;->c:Landroid/app/AlarmManager;

    iget-object v2, v0, Lcom/mnt/impl/b/c;->f:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 3113
    :cond_1
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/mnt/impl/b/c;->f:Landroid/app/PendingIntent;

    .line 3114
    const/4 v0, 0x0

    sput-object v0, Lcom/mnt/impl/b/c;->e:Lcom/mnt/impl/b/c;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 408
    :goto_0
    return-void

    .line 406
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;Lcom/mnt/MntAdConfig;)V
    .locals 12

    .prologue
    .line 85
    const-class v7, Lcom/mnt/impl/h/a;

    monitor-enter v7

    :try_start_0
    invoke-static {p0}, Lcom/mnt/impl/b/k;->j(Landroid/content/Context;)Ljava/lang/String;

    .line 87
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/mnt/MntAdConfig;->getChannel()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    sget-object v0, Lcom/mnt/impl/h/a;->b:Ljava/util/regex/Pattern;

    invoke-virtual {p2}, Lcom/mnt/MntAdConfig;->getChannel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 89
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    sget-object v0, Lcom/mnt/impl/e;->js:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    :goto_0
    monitor-exit v7

    return-void

    .line 95
    :cond_0
    :try_start_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    sget-object v0, Lcom/mnt/impl/e;->jt:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 121
    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 85
    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0

    .line 99
    :cond_1
    :try_start_3
    invoke-static {p0}, Lcom/mnt/impl/b/h;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 100
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/mnt/impl/b/j;->b:[I

    invoke-static {v1}, Lcom/mnt/impl/b/k;->a([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 102
    invoke-static {p0}, Lcom/mnt/impl/b/h;->f(Landroid/content/Context;)V

    .line 105
    :cond_2
    invoke-static {p0, p1, p2}, Lcom/mnt/impl/b/h;->a(Landroid/content/Context;Ljava/lang/String;Lcom/mnt/MntAdConfig;)V

    .line 107
    invoke-static {}, Lcom/mnt/impl/b/e;->b()V

    .line 109
    invoke-static {p0}, Lcom/mnt/impl/b/c;->a(Landroid/content/Context;)Lcom/mnt/impl/b/c;

    move-result-object v6

    .line 1082
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1083
    sget-object v1, Lcom/mnt/impl/b/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1085
    :try_start_4
    iget-object v1, v6, Lcom/mnt/impl/b/c;->b:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, v6, Lcom/mnt/impl/b/c;->f:Landroid/app/PendingIntent;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1089
    :goto_1
    :try_start_5
    iget-object v0, v6, Lcom/mnt/impl/b/c;->c:Landroid/app/AlarmManager;

    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1125
    const-wide v4, 0x414b774000000000L    # 3600000.0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v8

    const-wide v10, 0x415b774000000000L    # 7200000.0

    mul-double/2addr v8, v10

    add-double/2addr v4, v8

    double-to-long v4, v4

    .line 1089
    iget-object v6, v6, Lcom/mnt/impl/b/c;->f:Landroid/app/PendingIntent;

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    .line 111
    invoke-static {p0}, Lcom/mnt/impl/j/d;->a(Landroid/content/Context;)V

    .line 1131
    sget-boolean v0, Lcom/mnt/impl/h/a;->a:Z

    if-nez v0, :cond_7

    .line 1135
    invoke-static {p0}, Lcom/mnt/impl/i/b/a;->a(Landroid/content/Context;)Lcom/mnt/impl/i/b/a;

    move-result-object v0

    .line 2123
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mnt/impl/i/b/a;->a(Ljava/lang/String;)V

    .line 2159
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_5

    .line 3028
    sget-object v0, Lcom/mnt/impl/d/c;->c:Lcom/mnt/impl/d/c;

    if-nez v0, :cond_3

    .line 3029
    new-instance v0, Lcom/mnt/impl/d/c;

    invoke-direct {v0, p0}, Lcom/mnt/impl/d/c;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mnt/impl/d/c;->c:Lcom/mnt/impl/d/c;

    .line 3032
    :cond_3
    sget-object v0, Lcom/mnt/impl/d/c;->c:Lcom/mnt/impl/d/c;

    .line 3036
    iget-object v1, v0, Lcom/mnt/impl/d/c;->d:Lcom/mnt/impl/d/e;

    if-eqz v1, :cond_4

    .line 3037
    iget-object v0, v0, Lcom/mnt/impl/d/c;->d:Lcom/mnt/impl/d/e;

    .line 3060
    iget-object v1, v0, Lcom/mnt/impl/d/e;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/mnt/impl/d/e;->a:Landroid/net/Uri;

    const/4 v3, 0x1

    iget-object v0, v0, Lcom/mnt/impl/d/e;->g:Landroid/database/ContentObserver;

    .line 3061
    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2165
    :cond_4
    invoke-static {p0}, Lcom/mnt/impl/d/e;->a(Landroid/content/Context;)Lcom/mnt/impl/d/e;

    move-result-object v0

    new-instance v1, Lcom/mnt/impl/h/b;

    invoke-direct {v1, p0}, Lcom/mnt/impl/h/b;-><init>(Landroid/content/Context;)V

    .line 3065
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/mnt/impl/d/e;->h:Z

    .line 3066
    iget-object v2, v0, Lcom/mnt/impl/d/e;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 3067
    iget-object v2, v0, Lcom/mnt/impl/d/e;->f:Ljava/util/ArrayList;

    monitor-enter v2
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 3068
    :try_start_6
    iget-object v0, v0, Lcom/mnt/impl/d/e;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3069
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1139
    :cond_5
    :try_start_7
    invoke-static {p0}, Lcom/mnt/impl/b/k;->f(Landroid/content/Context;)Z
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result v0

    if-nez v0, :cond_6

    .line 1142
    :try_start_8
    new-instance v0, Landroid/content/IntentFilter;

    sget-object v1, Lcom/mnt/impl/g;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1143
    sget-object v1, Lcom/mnt/impl/g;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1144
    sget-object v1, Lcom/mnt/impl/e;->jz:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1145
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/mnt/MntBroadcastReceiver;

    invoke-direct {v2}, Lcom/mnt/MntBroadcastReceiver;-><init>()V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1150
    :cond_6
    :goto_2
    const/4 v0, 0x1

    :try_start_9
    sput-boolean v0, Lcom/mnt/impl/h/a;->a:Z

    .line 113
    :cond_7
    sget-object v0, Lcom/mnt/impl/b/j;->b:[I

    invoke-static {v0}, Lcom/mnt/impl/b/k;->a([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 114
    sget-object v0, Lcom/mnt/impl/e;->ju:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/mnt/impl/e;->jv:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/mnt/impl/b/k;->e(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/mnt/impl/e;->jy:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mnt/LogUtil;->showToast(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_0

    .line 3069
    :catchall_1
    move-exception v0

    :try_start_a
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :try_start_b
    throw v0

    .line 116
    :cond_8
    sget-object v0, Lcom/mnt/impl/e;->jw:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/mnt/impl/e;->jx:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/mnt/impl/b/k;->e(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto/16 :goto_1
.end method

.method static synthetic a(Lcom/mnt/MntBuild;)V
    .locals 3

    .prologue
    .line 4338
    new-instance v0, Lcom/mnt/MntInterstitial;

    invoke-virtual {p0}, Lcom/mnt/MntBuild;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/mnt/MntInterstitial;-><init>(Landroid/content/Context;Lcom/mnt/MntBuild;)V

    .line 4339
    iget-object v1, p0, Lcom/mnt/MntBuild;->mAdListener:Lcom/mnt/IAdListener;

    .line 4340
    new-instance v2, Lcom/mnt/impl/h/f;

    invoke-direct {v2, v1, v0}, Lcom/mnt/impl/h/f;-><init>(Lcom/mnt/IAdListener;Lcom/mnt/MntInterstitial;)V

    invoke-virtual {v0, v2}, Lcom/mnt/MntInterstitial;->setAdListener(Lcom/mnt/IAdListener;)V

    .line 4366
    invoke-virtual {v0}, Lcom/mnt/MntInterstitial;->load()V

    .line 55
    return-void
.end method

.method public static a(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 242
    if-eqz p0, :cond_0

    :try_start_0
    instance-of v0, p0, Lcom/mnt/MntBuild;

    if-eqz v0, :cond_0

    .line 243
    check-cast p0, Lcom/mnt/MntBuild;

    .line 244
    new-instance v0, Lcom/mnt/impl/f/b;

    iget-object v1, p0, Lcom/mnt/MntBuild;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mnt/MntBuild;->mPlacementId:Ljava/lang/String;

    new-instance v3, Lcom/mnt/impl/h/c;

    invoke-direct {v3, p0}, Lcom/mnt/impl/h/c;-><init>(Lcom/mnt/MntBuild;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/mnt/impl/f/b;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/mnt/impl/f/b$a;)V

    .line 264
    invoke-virtual {v0}, Lcom/mnt/impl/f/b;->c()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    :cond_0
    :goto_0
    return-void

    .line 267
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/mnt/MntBuild;)V
    .locals 3

    .prologue
    .line 5273
    new-instance v0, Lcom/mnt/MntBanner;

    invoke-virtual {p0}, Lcom/mnt/MntBuild;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/mnt/MntBanner;-><init>(Landroid/content/Context;Lcom/mnt/MntBuild;)V

    .line 5274
    iget-object v1, p0, Lcom/mnt/MntBuild;->mAdListener:Lcom/mnt/IAdListener;

    .line 5275
    new-instance v2, Lcom/mnt/impl/h/d;

    invoke-direct {v2, v1, v0}, Lcom/mnt/impl/h/d;-><init>(Lcom/mnt/IAdListener;Lcom/mnt/MntBanner;)V

    invoke-virtual {v0, v2}, Lcom/mnt/MntBanner;->setAdListener(Lcom/mnt/IAdListener;)V

    .line 5301
    invoke-virtual {v0}, Lcom/mnt/MntBanner;->load()V

    .line 55
    return-void
.end method

.method static synthetic c(Lcom/mnt/MntBuild;)V
    .locals 3

    .prologue
    .line 5306
    new-instance v0, Lcom/mnt/MntRectangleBanner;

    invoke-virtual {p0}, Lcom/mnt/MntBuild;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/mnt/MntRectangleBanner;-><init>(Landroid/content/Context;Lcom/mnt/MntBuild;)V

    .line 5307
    iget-object v1, p0, Lcom/mnt/MntBuild;->mAdListener:Lcom/mnt/IAdListener;

    .line 5308
    new-instance v2, Lcom/mnt/impl/h/e;

    invoke-direct {v2, v1, v0}, Lcom/mnt/impl/h/e;-><init>(Lcom/mnt/IAdListener;Lcom/mnt/MntRectangleBanner;)V

    invoke-virtual {v0, v2}, Lcom/mnt/MntRectangleBanner;->setAdListener(Lcom/mnt/IAdListener;)V

    .line 5334
    invoke-virtual {v0}, Lcom/mnt/MntRectangleBanner;->load()V

    .line 55
    return-void
.end method

.method static synthetic d(Lcom/mnt/MntBuild;)V
    .locals 3

    .prologue
    .line 5370
    new-instance v0, Lcom/mnt/MntNative;

    invoke-virtual {p0}, Lcom/mnt/MntBuild;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/mnt/MntBuild;->mPlacementId:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/mnt/MntNative;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 5371
    iget-object v1, p0, Lcom/mnt/MntBuild;->mAdListener:Lcom/mnt/IAdListener;

    .line 5372
    new-instance v2, Lcom/mnt/impl/h/g;

    invoke-direct {v2, v1, v0}, Lcom/mnt/impl/h/g;-><init>(Lcom/mnt/IAdListener;Lcom/mnt/MntNative;)V

    invoke-virtual {v0, v2}, Lcom/mnt/MntNative;->setAdListener(Lcom/mnt/a/f;)V

    .line 5398
    invoke-virtual {v0, p0}, Lcom/mnt/MntNative;->load(Lcom/mnt/MntBuild;)V

    .line 55
    return-void
.end method
