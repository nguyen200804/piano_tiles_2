.class public Lcom/cmplay/util/ConnectionChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ConnectionChangedReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmplay/util/ConnectionChangedReceiver$a;
    }
.end annotation


# static fields
.field public static a:I

.field public static b:I

.field private static c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cmplay/util/ConnectionChangedReceiver$a;",
            ">;"
        }
    .end annotation
.end field

.field private static e:I


# instance fields
.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 27
    const/16 v0, 0x400

    sput v0, Lcom/cmplay/util/ConnectionChangedReceiver;->a:I

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/cmplay/util/ConnectionChangedReceiver;->c:Ljava/util/ArrayList;

    .line 62
    sput v1, Lcom/cmplay/util/ConnectionChangedReceiver;->b:I

    .line 67
    sput v1, Lcom/cmplay/util/ConnectionChangedReceiver;->e:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 73
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 57
    iput v0, p0, Lcom/cmplay/util/ConnectionChangedReceiver;->d:I

    .line 74
    iput v0, p0, Lcom/cmplay/util/ConnectionChangedReceiver;->d:I

    .line 75
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "registType"    # I

    .prologue
    .line 78
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/cmplay/util/ConnectionChangedReceiver;->d:I

    .line 79
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-ne v0, p1, :cond_1

    .line 80
    :cond_0
    iput p1, p0, Lcom/cmplay/util/ConnectionChangedReceiver;->d:I

    .line 82
    :cond_1
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 109
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/cmplay/util/ConnectionChangedReceiver;->b(Landroid/content/Context;)I

    move-result v0

    .line 110
    sget v1, Lcom/cmplay/util/ConnectionChangedReceiver;->b:I

    if-eq v0, v1, :cond_0

    .line 111
    sput v0, Lcom/cmplay/util/ConnectionChangedReceiver;->b:I

    .line 113
    :cond_0
    return-void
.end method

.method public static a(Lcom/cmplay/util/ConnectionChangedReceiver$a;)V
    .locals 1

    .prologue
    .line 94
    sget-object v0, Lcom/cmplay/util/ConnectionChangedReceiver;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    sget-object v0, Lcom/cmplay/util/ConnectionChangedReceiver;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    :cond_0
    return-void
.end method

.method public static a(I)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 160
    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    const/4 v1, 0x7

    if-ne p0, v1, :cond_1

    .line 166
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)I
    .locals 5

    .prologue
    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 206
    if-nez p0, :cond_0

    .line 237
    :goto_0
    return v3

    .line 211
    :cond_0
    :try_start_0
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 213
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 214
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 215
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    .line 216
    if-ne v4, v2, :cond_2

    .line 217
    invoke-static {p0}, Lcom/cmplay/util/t;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 218
    const/4 v0, 0x3

    :goto_1
    move v3, v0

    .line 237
    goto :goto_0

    :cond_1
    move v0, v1

    .line 220
    goto :goto_1

    .line 223
    :cond_2
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    .line 224
    invoke-static {v0}, Lcom/cmplay/util/ConnectionChangedReceiver;->a(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    .line 225
    goto :goto_1

    .line 227
    :cond_3
    const/4 v0, 0x2

    goto :goto_1

    :cond_4
    move v0, v1

    .line 231
    goto :goto_1

    .line 233
    :catch_0
    move-exception v0

    move v0, v3

    .line 234
    goto :goto_1
.end method

.method private static b(I)V
    .locals 2

    .prologue
    .line 116
    packed-switch p0, :pswitch_data_0

    .line 131
    :goto_0
    sget v0, Lcom/cmplay/util/ConnectionChangedReceiver;->b:I

    if-eq p0, v0, :cond_0

    .line 132
    sput p0, Lcom/cmplay/util/ConnectionChangedReceiver;->b:I

    .line 133
    sget-object v0, Lcom/cmplay/util/ConnectionChangedReceiver;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmplay/util/ConnectionChangedReceiver$a;

    .line 134
    invoke-interface {v0, p0}, Lcom/cmplay/util/ConnectionChangedReceiver$a;->a(I)V

    goto :goto_1

    .line 118
    :pswitch_0
    const v0, 0x19000

    sput v0, Lcom/cmplay/util/ConnectionChangedReceiver;->a:I

    goto :goto_0

    .line 121
    :pswitch_1
    const/16 v0, 0x1400

    sput v0, Lcom/cmplay/util/ConnectionChangedReceiver;->a:I

    goto :goto_0

    .line 124
    :pswitch_2
    const/16 v0, 0x7800

    sput v0, Lcom/cmplay/util/ConnectionChangedReceiver;->a:I

    goto :goto_0

    .line 137
    :cond_0
    return-void

    .line 116
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public static b(Lcom/cmplay/util/ConnectionChangedReceiver$a;)V
    .locals 1

    .prologue
    .line 100
    sget-object v0, Lcom/cmplay/util/ConnectionChangedReceiver;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    sget-object v0, Lcom/cmplay/util/ConnectionChangedReceiver;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 103
    :cond_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 143
    :try_start_0
    invoke-static {p1}, Lcom/cmplay/util/ConnectionChangedReceiver;->b(Landroid/content/Context;)I

    move-result v0

    .line 144
    iget v1, p0, Lcom/cmplay/util/ConnectionChangedReceiver;->d:I

    if-nez v1, :cond_0

    .line 145
    invoke-static {v0}, Lcom/cmplay/util/ConnectionChangedReceiver;->b(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 147
    :catch_0
    move-exception v0

    .line 148
    const-string v1, "ConnectionChangedReceiver"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/cmplay/util/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
