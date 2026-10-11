.class public Lcom/cmplay/kinfoc/report/service/NetWorkChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NetWorkChangeReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmplay/kinfoc/report/service/NetWorkChangeReceiver$a;
    }
.end annotation


# static fields
.field public static a:I

.field private static b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cmplay/kinfoc/report/service/NetWorkChangeReceiver$a;",
            ">;"
        }
    .end annotation
.end field

.field private static d:I


# instance fields
.field private c:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/cmplay/kinfoc/report/service/NetWorkChangeReceiver;->b:Ljava/util/ArrayList;

    .line 50
    sput v1, Lcom/cmplay/kinfoc/report/service/NetWorkChangeReceiver;->a:I

    .line 55
    sput v1, Lcom/cmplay/kinfoc/report/service/NetWorkChangeReceiver;->d:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 61
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 45
    iput v0, p0, Lcom/cmplay/kinfoc/report/service/NetWorkChangeReceiver;->c:I

    .line 62
    iput v0, p0, Lcom/cmplay/kinfoc/report/service/NetWorkChangeReceiver;->c:I

    .line 63
    return-void
.end method

.method public static a(Landroid/content/Context;)I
    .locals 5

    .prologue
    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 153
    if-nez p0, :cond_0

    .line 184
    :goto_0
    return v3

    .line 158
    :cond_0
    :try_start_0
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 160
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 161
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 162
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    .line 163
    if-ne v4, v2, :cond_2

    .line 164
    invoke-static {p0}, Lcom/cmplay/kinfoc/report/service/NetWorkChangeReceiver;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 165
    const/4 v0, 0x3

    :goto_1
    move v3, v0

    .line 184
    goto :goto_0

    :cond_1
    move v0, v1

    .line 167
    goto :goto_1

    .line 170
    :cond_2
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    .line 171
    invoke-static {v0}, Lcom/cmplay/kinfoc/report/service/NetWorkChangeReceiver;->a(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    .line 172
    goto :goto_1

    .line 174
    :cond_3
    const/4 v0, 0x2

    goto :goto_1

    :cond_4
    move v0, v1

    .line 178
    goto :goto_1

    .line 180
    :catch_0
    move-exception v0

    move v0, v3

    .line 181
    goto :goto_1
.end method

.method public static a(Lcom/cmplay/kinfoc/report/service/NetWorkChangeReceiver$a;)V
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lcom/cmplay/kinfoc/report/service/NetWorkChangeReceiver;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 83
    sget-object v0, Lcom/cmplay/kinfoc/report/service/NetWorkChangeReceiver;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    :cond_0
    return-void
.end method

.method public static a(I)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 134
    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    const/4 v1, 0x7

    if-ne p0, v1, :cond_1

    .line 140
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(I)V
    .locals 2

    .prologue
    .line 106
    sget v0, Lcom/cmplay/kinfoc/report/service/NetWorkChangeReceiver;->a:I

    if-eq p0, v0, :cond_0

    .line 107
    sput p0, Lcom/cmplay/kinfoc/report/service/NetWorkChangeReceiver;->a:I

    .line 108
    sget-object v0, Lcom/cmplay/kinfoc/report/service/NetWorkChangeReceiver;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmplay/kinfoc/report/service/NetWorkChangeReceiver$a;

    .line 109
    invoke-interface {v0, p0}, Lcom/cmplay/kinfoc/report/service/NetWorkChangeReceiver$a;->a(I)V

    goto :goto_0

    .line 112
    :cond_0
    return-void
.end method

.method public static b(Lcom/cmplay/kinfoc/report/service/NetWorkChangeReceiver$a;)V
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/cmplay/kinfoc/report/service/NetWorkChangeReceiver;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    sget-object v0, Lcom/cmplay/kinfoc/report/service/NetWorkChangeReceiver;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 91
    :cond_0
    return-void
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 195
    .line 197
    if-nez p0, :cond_0

    .line 212
    :goto_0
    return v2

    .line 200
    :cond_0
    :try_start_0
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 201
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 202
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 204
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 205
    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    move v2, v0

    .line 212
    goto :goto_0

    .line 210
    :catch_0
    move-exception v0

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v2

    goto :goto_1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 118
    :try_start_0
    invoke-static {p1}, Lcom/cmplay/kinfoc/report/service/NetWorkChangeReceiver;->a(Landroid/content/Context;)I

    move-result v0

    .line 119
    iget v1, p0, Lcom/cmplay/kinfoc/report/service/NetWorkChangeReceiver;->c:I

    if-nez v1, :cond_0

    .line 120
    invoke-static {v0}, Lcom/cmplay/kinfoc/report/service/NetWorkChangeReceiver;->b(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 122
    :catch_0
    move-exception v0

    goto :goto_0
.end method
