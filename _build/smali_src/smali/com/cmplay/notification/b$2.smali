.class Lcom/cmplay/notification/b$2;
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
.field final synthetic a:I

.field final synthetic b:Lcom/cmplay/notification/b;


# direct methods
.method constructor <init>(Lcom/cmplay/notification/b;I)V
    .locals 0

    .prologue
    .line 392
    iput-object p1, p0, Lcom/cmplay/notification/b$2;->b:Lcom/cmplay/notification/b;

    iput p2, p0, Lcom/cmplay/notification/b$2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 396
    :try_start_0
    iget v0, p0, Lcom/cmplay/notification/b$2;->a:I

    invoke-static {v0}, Lcom/cmplay/util/NativeUtil;->scheduleNotification(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 398
    :goto_0
    return-void

    .line 397
    :catch_0
    move-exception v0

    goto :goto_0
.end method
