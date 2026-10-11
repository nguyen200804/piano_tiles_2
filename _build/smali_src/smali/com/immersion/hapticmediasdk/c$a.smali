.class public Lcom/immersion/hapticmediasdk/c$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/immersion/hapticmediasdk/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x3
    name = "a"
.end annotation


# static fields
.field public static b:I = 0x18

.field public static c:I = 0x1

.field public static d:I = 0x2


# instance fields
.field public final synthetic a:Lcom/immersion/hapticmediasdk/c;

.field private e:Ljava/net/URL;


# direct methods
.method public constructor <init>(Lcom/immersion/hapticmediasdk/c;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v0, 0x0

    const/4 v1, -0x1

    iput-object p1, p0, Lcom/immersion/hapticmediasdk/c$a;->a:Lcom/immersion/hapticmediasdk/c;

    :goto_0
    :try_start_0
    new-array v2, v1, [I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/net/URL;

    :pswitch_0
    packed-switch v3, :pswitch_data_0

    :goto_1
    packed-switch v3, :pswitch_data_1

    goto :goto_1

    :pswitch_1
    invoke-direct {v0, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/immersion/hapticmediasdk/c$a;->e:Ljava/net/URL;

    return-void

    :goto_2
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    :goto_3
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static a()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method

.method private a(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/immersion/hapticmediasdk/c$a;->a:Lcom/immersion/hapticmediasdk/c;

    invoke-static {v0, p1}, Lcom/immersion/hapticmediasdk/c;->a(Lcom/immersion/hapticmediasdk/c;I)I

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    :pswitch_0
    const/4 v0, 0x0

    packed-switch v0, :pswitch_data_0

    :goto_0
    const/4 v0, 0x1

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v5, 0x0

    const/16 v1, 0x1f4

    :try_start_0
    iget-object v0, p0, Lcom/immersion/hapticmediasdk/c$a;->e:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    const/16 v2, 0x2710

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/16 v2, 0x2710

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const-string v2, "HEAD"
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget v3, Lcom/immersion/hapticmediasdk/c$a;->b:I

    sget v4, Lcom/immersion/hapticmediasdk/c$a;->c:I

    add-int/2addr v4, v3

    mul-int/2addr v3, v4

    sget v4, Lcom/immersion/hapticmediasdk/c$a;->d:I

    rem-int/2addr v3, v4

    packed-switch v3, :pswitch_data_0

    sput v5, Lcom/immersion/hapticmediasdk/c$a;->b:I

    invoke-static {}, Lcom/immersion/hapticmediasdk/c$a;->a()I

    move-result v3

    sput v3, Lcom/immersion/hapticmediasdk/c$a;->c:I

    :pswitch_0
    :try_start_1
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    :try_start_2
    invoke-direct {p0, v0}, Lcom/immersion/hapticmediasdk/c$a;->a(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_3
    const-string v2, "ValidateURL"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/immersion/hapticmediasdk/b/b;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-direct {p0, v1}, Lcom/immersion/hapticmediasdk/c$a;->a(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    throw v0

    :catchall_0
    move-exception v0

    :try_start_5
    invoke-direct {p0, v1}, Lcom/immersion/hapticmediasdk/c$a;->a(I)V

    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :catch_2
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
