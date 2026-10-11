.class public Lcom/cmplay/gcmPush/RegistrationIntentService;
.super Landroid/app/IntentService;
.source "RegistrationIntentService.java"


# static fields
.field private static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 39
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "global"

    aput-object v2, v0, v1

    sput-object v0, Lcom/cmplay/gcmPush/RegistrationIntentService;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    const-string v0, "RegIntentService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method static synthetic a(Lcom/cmplay/gcmPush/RegistrationIntentService;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/cmplay/gcmPush/RegistrationIntentService;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 102
    const-string v0, "key_gcm_token"

    invoke-static {v0, p1}, Lcom/cmplay/util/aa;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method static synthetic b(Lcom/cmplay/gcmPush/RegistrationIntentService;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/cmplay/gcmPush/RegistrationIntentService;->b(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 113
    invoke-static {p0}, Lcom/google/android/gms/gcm/GcmPubSub;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/gcm/GcmPubSub;

    move-result-object v1

    .line 114
    sget-object v2, Lcom/cmplay/gcmPush/RegistrationIntentService;->a:[Ljava/lang/String;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 115
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/topics/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, p1, v4, v5}, Lcom/google/android/gms/gcm/GcmPubSub;->subscribe(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 114
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 117
    :cond_0
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 47
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/cmplay/gcmPush/RegistrationIntentService$1;

    invoke-direct {v1, p0}, Lcom/cmplay/gcmPush/RegistrationIntentService$1;-><init>(Lcom/cmplay/gcmPush/RegistrationIntentService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 90
    return-void
.end method
