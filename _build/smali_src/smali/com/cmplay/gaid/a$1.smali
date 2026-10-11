.class Lcom/cmplay/gaid/a$1;
.super Ljava/lang/Object;
.source "AdvertisingIdHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/gaid/a;->b(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/cmplay/gaid/a;


# direct methods
.method constructor <init>(Lcom/cmplay/gaid/a;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/cmplay/gaid/a$1;->b:Lcom/cmplay/gaid/a;

    iput-object p2, p0, Lcom/cmplay/gaid/a$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 119
    iget-object v0, p0, Lcom/cmplay/gaid/a$1;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmplay/util/v;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    iget-object v0, p0, Lcom/cmplay/gaid/a$1;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmplay/gaid/a;->a(Landroid/content/Context;)Lcom/cmplay/gaid/b;

    move-result-object v3

    .line 123
    if-eqz v3, :cond_0

    .line 125
    const/4 v2, 0x0

    .line 128
    :try_start_0
    invoke-virtual {v3}, Lcom/cmplay/gaid/b;->a()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/cmplay/gaid/a;->a(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/cmplay/gaid/AdvertisingIdInterface;

    .line 131
    invoke-interface {v0}, Lcom/cmplay/gaid/AdvertisingIdInterface;->a()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v2

    .line 132
    const/4 v4, 0x0

    :try_start_1
    invoke-interface {v0, v4}, Lcom/cmplay/gaid/AdvertisingIdInterface;->a(Z)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3

    move-result v0

    move-object v1, v2

    .line 138
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 139
    iget-object v2, p0, Lcom/cmplay/gaid/a$1;->b:Lcom/cmplay/gaid/a;

    invoke-static {v2}, Lcom/cmplay/gaid/a;->a(Lcom/cmplay/gaid/a;)Ljava/lang/String;

    move-result-object v2

    monitor-enter v2

    .line 140
    :try_start_2
    iget-object v4, p0, Lcom/cmplay/gaid/a$1;->b:Lcom/cmplay/gaid/a;

    invoke-static {v4, v1}, Lcom/cmplay/gaid/a;->a(Lcom/cmplay/gaid/a;Ljava/lang/String;)Ljava/lang/String;

    .line 141
    iget-object v1, p0, Lcom/cmplay/gaid/a$1;->b:Lcom/cmplay/gaid/a;

    invoke-static {v1, v0}, Lcom/cmplay/gaid/a;->a(Lcom/cmplay/gaid/a;Z)Z

    .line 142
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 143
    iget-object v0, p0, Lcom/cmplay/gaid/a$1;->b:Lcom/cmplay/gaid/a;

    invoke-static {v0}, Lcom/cmplay/gaid/a;->a(Lcom/cmplay/gaid/a;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 144
    const-string v0, "key_gaid"

    iget-object v1, p0, Lcom/cmplay/gaid/a$1;->b:Lcom/cmplay/gaid/a;

    invoke-static {v1}, Lcom/cmplay/gaid/a;->a(Lcom/cmplay/gaid/a;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmplay/util/aa;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/cmplay/gaid/a$1;->a:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 149
    :catch_0
    move-exception v0

    goto :goto_0

    .line 133
    :catch_1
    move-exception v0

    move-object v5, v0

    move-object v0, v2

    move-object v2, v5

    .line 134
    :goto_2
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    move v5, v1

    move-object v1, v0

    move v0, v5

    .line 137
    goto :goto_1

    .line 135
    :catch_2
    move-exception v0

    move-object v5, v0

    move-object v0, v2

    move-object v2, v5

    .line 136
    :goto_3
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    move v5, v1

    move-object v1, v0

    move v0, v5

    goto :goto_1

    .line 142
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 135
    :catch_3
    move-exception v0

    move-object v5, v0

    move-object v0, v2

    move-object v2, v5

    goto :goto_3

    .line 133
    :catch_4
    move-exception v0

    move-object v5, v0

    move-object v0, v2

    move-object v2, v5

    goto :goto_2
.end method
