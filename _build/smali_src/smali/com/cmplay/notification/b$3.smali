.class Lcom/cmplay/notification/b$3;
.super Ljava/lang/Object;
.source "NewNotificationManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/notification/b;->a(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmplay/notification/b;


# direct methods
.method constructor <init>(Lcom/cmplay/notification/b;)V
    .locals 0

    .prologue
    .line 402
    iput-object p1, p0, Lcom/cmplay/notification/b$3;->a:Lcom/cmplay/notification/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 406
    :try_start_0
    invoke-static {}, Lcom/cmplay/util/NativeUtil;->scheduleNotifications()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 408
    :goto_0
    return-void

    .line 407
    :catch_0
    move-exception v0

    goto :goto_0
.end method
