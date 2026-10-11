.class public final Lcom/cmcm/orion/utils/d$a;
.super Ljavax/net/ssl/SSLSocketFactory;
.source "Networking.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmcm/orion/utils/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 458
    invoke-direct {p0}, Ljavax/net/ssl/SSLSocketFactory;-><init>()V

    .line 459
    return-void
.end method

.method public static a(I)Lcom/cmcm/orion/utils/d$a;
    .locals 2

    .prologue
    .line 462
    new-instance v0, Lcom/cmcm/orion/utils/d$a;

    invoke-direct {v0}, Lcom/cmcm/orion/utils/d$a;-><init>()V

    .line 463
    const/4 v1, 0x0

    invoke-static {p0, v1}, Landroid/net/SSLCertificateSocketFactory;->getDefault(ILandroid/net/SSLSessionCache;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    iput-object v1, v0, Lcom/cmcm/orion/utils/d$a;->a:Ljavax/net/ssl/SSLSocketFactory;

    .line 465
    return-object v0
.end method

.method private static a(Ljava/net/Socket;)V
    .locals 1

    .prologue
    .line 526
    instance-of v0, p0, Ljavax/net/ssl/SSLSocket;

    if-eqz v0, :cond_0

    .line 527
    check-cast p0, Ljavax/net/ssl/SSLSocket;

    .line 528
    invoke-virtual {p0}, Ljavax/net/ssl/SSLSocket;->getSupportedProtocols()[Ljava/lang/String;

    move-result-object v0

    .line 531
    invoke-virtual {p0, v0}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    .line 533
    :cond_0
    return-void
.end method


# virtual methods
.method public final createSocket()Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 473
    iget-object v0, p0, Lcom/cmcm/orion/utils/d$a;->a:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    .line 474
    invoke-static {v0}, Lcom/cmcm/orion/utils/d$a;->a(Ljava/net/Socket;)V

    .line 475
    return-object v0
.end method

.method public final createSocket(Ljava/lang/String;I)Ljava/net/Socket;
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 480
    iget-object v0, p0, Lcom/cmcm/orion/utils/d$a;->a:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v0

    .line 481
    invoke-static {v0}, Lcom/cmcm/orion/utils/d$a;->a(Ljava/net/Socket;)V

    .line 482
    return-object v0
.end method

.method public final createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "localhost"    # Ljava/net/InetAddress;
    .param p4, "localPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 487
    iget-object v0, p0, Lcom/cmcm/orion/utils/d$a;->a:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object v0

    .line 488
    invoke-static {v0}, Lcom/cmcm/orion/utils/d$a;->a(Ljava/net/Socket;)V

    .line 489
    return-object v0
.end method

.method public final createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;
    .locals 1
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 494
    iget-object v0, p0, Lcom/cmcm/orion/utils/d$a;->a:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object v0

    .line 495
    invoke-static {v0}, Lcom/cmcm/orion/utils/d$a;->a(Ljava/net/Socket;)V

    .line 496
    return-object v0
.end method

.method public final createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 1
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "localhost"    # Ljava/net/InetAddress;
    .param p4, "localPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 501
    iget-object v0, p0, Lcom/cmcm/orion/utils/d$a;->a:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object v0

    .line 502
    invoke-static {v0}, Lcom/cmcm/orion/utils/d$a;->a(Ljava/net/Socket;)V

    .line 503
    return-object v0
.end method

.method public final createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .locals 1
    .param p1, "socketParam"    # Ljava/net/Socket;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "autoClose"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 520
    iget-object v0, p0, Lcom/cmcm/orion/utils/d$a;->a:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    .line 521
    invoke-static {v0}, Lcom/cmcm/orion/utils/d$a;->a(Ljava/net/Socket;)V

    .line 522
    return-object v0
.end method

.method public final getDefaultCipherSuites()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 510
    iget-object v0, p0, Lcom/cmcm/orion/utils/d$a;->a:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->getDefaultCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getSupportedCipherSuites()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 515
    iget-object v0, p0, Lcom/cmcm/orion/utils/d$a;->a:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
