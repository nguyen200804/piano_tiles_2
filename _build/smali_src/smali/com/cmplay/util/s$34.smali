.class Lcom/cmplay/util/s$34;
.super Ljava/lang/Object;
.source "NativeInterfaceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/util/s;->a(Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:J

.field final synthetic c:Lcom/cmplay/util/s;


# direct methods
.method constructor <init>(Lcom/cmplay/util/s;Ljava/lang/String;J)V
    .locals 1

    .prologue
    .line 2890
    iput-object p1, p0, Lcom/cmplay/util/s$34;->c:Lcom/cmplay/util/s;

    iput-object p2, p0, Lcom/cmplay/util/s$34;->a:Ljava/lang/String;

    iput-wide p3, p0, Lcom/cmplay/util/s$34;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 2894
    const-string v0, "key_week_race_id_just_end"

    iget-object v1, p0, Lcom/cmplay/util/s$34;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/cmplay/util/aa;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2897
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2917
    iget-wide v2, p0, Lcom/cmplay/util/s$34;->b:J

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 2918
    const/16 v2, 0x15

    invoke-static {v0, v1, v2}, Lcom/cmplay/util/i;->a(JI)J

    move-result-wide v2

    .line 2919
    sget-object v0, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 2920
    iget-object v1, p0, Lcom/cmplay/util/s$34;->c:Lcom/cmplay/util/s;

    invoke-static {v1}, Lcom/cmplay/util/s;->a(Lcom/cmplay/util/s;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 2921
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 2923
    :try_start_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-lt v4, v5, :cond_0

    .line 2924
    const/4 v4, 0x0

    invoke-virtual {v0, v4, v2, v3, v1}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    .line 2952
    :goto_0
    return-void

    .line 2925
    :cond_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x13

    if-lt v4, v5, :cond_1

    .line 2926
    const/4 v4, 0x0

    invoke-virtual {v0, v4, v2, v3, v1}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 2950
    :catch_0
    move-exception v0

    goto :goto_0

    .line 2928
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {v0, v4, v2, v3, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method
