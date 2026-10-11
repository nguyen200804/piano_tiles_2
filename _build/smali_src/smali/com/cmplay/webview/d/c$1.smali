.class Lcom/cmplay/webview/d/c$1;
.super Ljava/lang/Object;
.source "PreLoadImage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/webview/d/c;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmplay/webview/d/c;


# direct methods
.method constructor <init>(Lcom/cmplay/webview/d/c;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/cmplay/webview/d/c$1;->a:Lcom/cmplay/webview/d/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v0, 0x0

    .line 104
    invoke-static {}, Lcom/cmplay/cloud/a;->a()Lcom/cmplay/cloud/a;

    move-result-object v1

    const/4 v2, 0x2

    const-string v3, "section_common"

    const-string v4, "cloud_key_h5_down_load_image"

    const-string v5, ""

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/cmplay/cloud/a;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 114
    const-string v2, "ly"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startLoadImageAll json = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isTimeNeedDown(json) = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/cmplay/webview/d/c$1;->a:Lcom/cmplay/webview/d/c;

    invoke-virtual {v4, v1}, Lcom/cmplay/webview/d/c;->b(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " SharePreferenceHelper = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "key_load_over_image"

    invoke-static {v4, v0}, Lcom/cmplay/util/aa;->b(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cmplay/util/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/cmplay/webview/d/c$1;->a:Lcom/cmplay/webview/d/c;

    invoke-virtual {v2, v1}, Lcom/cmplay/webview/d/c;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "key_load_over_image"

    invoke-static {v2, v0}, Lcom/cmplay/util/aa;->b(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    iget-object v2, p0, Lcom/cmplay/webview/d/c$1;->a:Lcom/cmplay/webview/d/c;

    invoke-virtual {v2, v1}, Lcom/cmplay/webview/d/c;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 122
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lt v2, v6, :cond_0

    iget-object v2, p0, Lcom/cmplay/webview/d/c$1;->a:Lcom/cmplay/webview/d/c;

    invoke-static {v2}, Lcom/cmplay/webview/d/c;->a(Lcom/cmplay/webview/d/c;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 125
    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_3

    .line 126
    aget-object v2, v1, v0

    .line 127
    iget-object v3, p0, Lcom/cmplay/webview/d/c$1;->a:Lcom/cmplay/webview/d/c;

    invoke-static {v3}, Lcom/cmplay/webview/d/c;->a(Lcom/cmplay/webview/d/c;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/cmplay/webview/d/a;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 125
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 130
    :cond_2
    iget-object v3, p0, Lcom/cmplay/webview/d/c$1;->a:Lcom/cmplay/webview/d/c;

    invoke-static {v2}, Lcom/cmplay/webview/d/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v2, v4}, Lcom/cmplay/webview/d/c;->a(Lcom/cmplay/webview/d/c;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 132
    :cond_3
    const-string v0, "key_load_over_image"

    invoke-static {v0, v6}, Lcom/cmplay/util/aa;->a(Ljava/lang/String;Z)V

    goto :goto_0
.end method
