.class Lcom/cmplay/util/s$35;
.super Ljava/lang/Object;
.source "NativeInterfaceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/util/s;->A(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/cmplay/util/s;


# direct methods
.method constructor <init>(Lcom/cmplay/util/s;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 2962
    iput-object p1, p0, Lcom/cmplay/util/s$35;->b:Lcom/cmplay/util/s;

    iput-object p2, p0, Lcom/cmplay/util/s$35;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 2966
    const-string v0, "key_week_race_id_just_end"

    iget-object v1, p0, Lcom/cmplay/util/s$35;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/cmplay/util/aa;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2969
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/16 v2, 0x15

    invoke-static {v0, v1, v2}, Lcom/cmplay/util/i;->a(JI)J

    move-result-wide v2

    .line 2970
    sget-object v0, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 2971
    iget-object v1, p0, Lcom/cmplay/util/s$35;->b:Lcom/cmplay/util/s;

    invoke-static {v1}, Lcom/cmplay/util/s;->a(Lcom/cmplay/util/s;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 2972
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 2974
    :try_start_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-lt v4, v5, :cond_0

    .line 2975
    const/4 v4, 0x0

    invoke-virtual {v0, v4, v2, v3, v1}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    .line 2986
    :goto_0
    return-void

    .line 2976
    :cond_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x13

    if-lt v4, v5, :cond_1

    .line 2977
    const/4 v4, 0x0

    invoke-virtual {v0, v4, v2, v3, v1}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 2984
    :catch_0
    move-exception v0

    goto :goto_0

    .line 2979
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {v0, v4, v2, v3, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method
