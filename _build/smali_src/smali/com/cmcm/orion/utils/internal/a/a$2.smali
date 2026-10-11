.class final Lcom/cmcm/orion/utils/internal/a/a$2;
.super Ljava/lang/Object;
.source "AdvertisingIdHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmcm/orion/utils/internal/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmcm/orion/utils/internal/a/a;


# direct methods
.method constructor <init>(Lcom/cmcm/orion/utils/internal/a/a;)V
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, Lcom/cmcm/orion/utils/internal/a/a$2;->a:Lcom/cmcm/orion/utils/internal/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 194
    invoke-static {}, Lcom/cmcm/orion/adsdk/e;->a()Landroid/content/Context;

    move-result-object v3

    .line 195
    invoke-static {v3}, Lcom/cmcm/orion/utils/internal/a/a;->a(Landroid/content/Context;)Lcom/cmcm/orion/utils/internal/a/c;

    move-result-object v4

    .line 197
    if-nez v4, :cond_0

    .line 198
    iget-object v0, p0, Lcom/cmcm/orion/utils/internal/a/a$2;->a:Lcom/cmcm/orion/utils/internal/a/a;

    invoke-static {v0}, Lcom/cmcm/orion/utils/internal/a/a;->a(Lcom/cmcm/orion/utils/internal/a/a;)V

    .line 223
    :goto_0
    return-void

    .line 201
    :cond_0
    const/4 v2, 0x0

    .line 202
    const/4 v1, 0x0

    .line 204
    :try_start_0
    invoke-virtual {v4}, Lcom/cmcm/orion/utils/internal/a/c;->a()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/cmcm/orion/utils/internal/a/a;->a(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/cmcm/orion/utils/internal/a/b;

    .line 207
    invoke-virtual {v0}, Lcom/cmcm/orion/utils/internal/a/b;->a()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 208
    :try_start_1
    invoke-virtual {v0}, Lcom/cmcm/orion/utils/internal/a/b;->b()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 213
    :try_start_2
    invoke-virtual {v3, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v1, v2

    .line 217
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 218
    iget-object v2, p0, Lcom/cmcm/orion/utils/internal/a/a$2;->a:Lcom/cmcm/orion/utils/internal/a/a;

    invoke-static {v2, v1}, Lcom/cmcm/orion/utils/internal/a/a;->a(Lcom/cmcm/orion/utils/internal/a/a;Ljava/lang/String;)Ljava/lang/String;

    .line 219
    iget-object v2, p0, Lcom/cmcm/orion/utils/internal/a/a$2;->a:Lcom/cmcm/orion/utils/internal/a/a;

    invoke-static {v2, v0}, Lcom/cmcm/orion/utils/internal/a/a;->a(Lcom/cmcm/orion/utils/internal/a/a;Z)Z

    .line 220
    invoke-static {v1}, Lcom/cmcm/orion/picks/a/a/h;->f(Ljava/lang/String;)V

    .line 222
    :cond_1
    iget-object v0, p0, Lcom/cmcm/orion/utils/internal/a/a$2;->a:Lcom/cmcm/orion/utils/internal/a/a;

    invoke-static {v0}, Lcom/cmcm/orion/utils/internal/a/a;->a(Lcom/cmcm/orion/utils/internal/a/a;)V

    goto :goto_0

    .line 216
    :catch_0
    move-exception v1

    move-object v1, v2

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v0, v2

    .line 213
    :goto_2
    :try_start_3
    invoke-virtual {v3, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2

    move v5, v1

    move-object v1, v0

    move v0, v5

    .line 215
    goto :goto_1

    .line 216
    :catch_2
    move-exception v2

    move v5, v1

    move-object v1, v0

    move v0, v5

    goto :goto_1

    .line 212
    :catchall_0
    move-exception v0

    .line 213
    :try_start_4
    invoke-virtual {v3, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_3

    .line 215
    :goto_3
    throw v0

    :catch_3
    move-exception v1

    goto :goto_3

    :catch_4
    move-exception v0

    move-object v0, v2

    goto :goto_2
.end method
