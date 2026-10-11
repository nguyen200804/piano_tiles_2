.class Lcom/cmplay/base/util/webview/util/NetworkUtil$1;
.super Ljava/lang/Object;
.source "NetworkUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/base/util/webview/util/NetworkUtil;->post(Ljava/lang/String;Ljava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cmplay/base/util/webview/util/NetworkUtil;

.field final synthetic val$client:Lorg/apache/http/impl/client/DefaultHttpClient;

.field final synthetic val$params:Ljava/util/HashMap;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/cmplay/base/util/webview/util/NetworkUtil;Ljava/lang/String;Ljava/util/HashMap;Lorg/apache/http/impl/client/DefaultHttpClient;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cmplay/base/util/webview/util/NetworkUtil;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/cmplay/base/util/webview/util/NetworkUtil$1;->this$0:Lcom/cmplay/base/util/webview/util/NetworkUtil;

    iput-object p2, p0, Lcom/cmplay/base/util/webview/util/NetworkUtil$1;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/cmplay/base/util/webview/util/NetworkUtil$1;->val$params:Ljava/util/HashMap;

    iput-object p4, p0, Lcom/cmplay/base/util/webview/util/NetworkUtil$1;->val$client:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 84
    const/4 v2, 0x0

    .line 85
    const/16 v1, 0x258

    .line 88
    :try_start_0
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    iget-object v3, p0, Lcom/cmplay/base/util/webview/util/NetworkUtil$1;->val$url:Ljava/lang/String;

    invoke-direct {v0, v3}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 89
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "feedback url is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/cmplay/base/util/webview/util/NetworkUtil$1;->val$url:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;)V

    .line 90
    iget-object v3, p0, Lcom/cmplay/base/util/webview/util/NetworkUtil$1;->this$0:Lcom/cmplay/base/util/webview/util/NetworkUtil;

    iget-object v4, p0, Lcom/cmplay/base/util/webview/util/NetworkUtil$1;->val$params:Ljava/util/HashMap;

    invoke-static {v3, v0, v4}, Lcom/cmplay/base/util/webview/util/NetworkUtil;->access$000(Lcom/cmplay/base/util/webview/util/NetworkUtil;Lorg/apache/http/client/methods/HttpPost;Ljava/util/HashMap;)V

    .line 91
    iget-object v3, p0, Lcom/cmplay/base/util/webview/util/NetworkUtil$1;->val$client:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v3, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 92
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    .line 93
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    .line 94
    invoke-static {v3}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 105
    iget-object v2, p0, Lcom/cmplay/base/util/webview/util/NetworkUtil$1;->this$0:Lcom/cmplay/base/util/webview/util/NetworkUtil;

    iget-object v3, p0, Lcom/cmplay/base/util/webview/util/NetworkUtil$1;->val$client:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-static {v2, v3}, Lcom/cmplay/base/util/webview/util/NetworkUtil;->access$100(Lcom/cmplay/base/util/webview/util/NetworkUtil;Lorg/apache/http/impl/client/DefaultHttpClient;)V

    .line 106
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Report feedback,status is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",response msg is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;)V

    .line 108
    :goto_0
    return-void

    .line 95
    :catch_0
    move-exception v0

    move-object v5, v0

    move v0, v1

    move-object v1, v5

    .line 96
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/cmplay/base/util/g;->b(Ljava/lang/String;)V

    .line 98
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 99
    instance-of v3, v1, Ljava/net/UnknownHostException;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v3, :cond_1

    .line 100
    const/16 v0, 0x259

    .line 105
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/cmplay/base/util/webview/util/NetworkUtil$1;->this$0:Lcom/cmplay/base/util/webview/util/NetworkUtil;

    iget-object v3, p0, Lcom/cmplay/base/util/webview/util/NetworkUtil$1;->val$client:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-static {v1, v3}, Lcom/cmplay/base/util/webview/util/NetworkUtil;->access$100(Lcom/cmplay/base/util/webview/util/NetworkUtil;Lorg/apache/http/impl/client/DefaultHttpClient;)V

    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Report feedback,status is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",response msg is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 101
    :cond_1
    :try_start_2
    instance-of v1, v1, Ljava/io/InterruptedIOException;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_0

    .line 102
    const/16 v0, 0x25a

    goto :goto_1

    .line 105
    :catchall_0
    move-exception v0

    :goto_2
    iget-object v3, p0, Lcom/cmplay/base/util/webview/util/NetworkUtil$1;->this$0:Lcom/cmplay/base/util/webview/util/NetworkUtil;

    iget-object v4, p0, Lcom/cmplay/base/util/webview/util/NetworkUtil$1;->val$client:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-static {v3, v4}, Lcom/cmplay/base/util/webview/util/NetworkUtil;->access$100(Lcom/cmplay/base/util/webview/util/NetworkUtil;Lorg/apache/http/impl/client/DefaultHttpClient;)V

    .line 106
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Report feedback,status is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ",response msg is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;)V

    throw v0

    .line 105
    :catchall_1
    move-exception v1

    move-object v5, v1

    move v1, v0

    move-object v0, v5

    goto :goto_2
.end method
