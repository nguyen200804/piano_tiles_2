.class Lcom/cmplay/base/util/webview/util/NetworkUtil$MySSLSocketFactory$1;
.super Ljava/lang/Object;
.source "NetworkUtil.java"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/base/util/webview/util/NetworkUtil$MySSLSocketFactory;-><init>(Lcom/cmplay/base/util/webview/util/NetworkUtil;Ljava/security/KeyStore;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cmplay/base/util/webview/util/NetworkUtil$MySSLSocketFactory;

.field final synthetic val$this$0:Lcom/cmplay/base/util/webview/util/NetworkUtil;


# direct methods
.method constructor <init>(Lcom/cmplay/base/util/webview/util/NetworkUtil$MySSLSocketFactory;Lcom/cmplay/base/util/webview/util/NetworkUtil;)V
    .locals 0
    .param p1, "this$1"    # Lcom/cmplay/base/util/webview/util/NetworkUtil$MySSLSocketFactory;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/cmplay/base/util/webview/util/NetworkUtil$MySSLSocketFactory$1;->this$1:Lcom/cmplay/base/util/webview/util/NetworkUtil$MySSLSocketFactory;

    iput-object p2, p0, Lcom/cmplay/base/util/webview/util/NetworkUtil$MySSLSocketFactory$1;->val$this$0:Lcom/cmplay/base/util/webview/util/NetworkUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 168
    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 171
    return-void
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 1

    .prologue
    .line 174
    const/4 v0, 0x0

    return-object v0
.end method
