.class Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth$1;
.super Ljava/lang/Thread;
.source "WechatAuth.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth;->requestToken(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth;

.field final synthetic val$code:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth$1;->this$0:Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth;

    iput-object p2, p0, Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth$1;->val$code:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x2

    .line 115
    const-string v0, "https://api.weixin.qq.com/sns/oauth2/access_token?appid=%s&secret=%s&code=%s&grant_type=authorization_code"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth$1;->this$0:Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth;

    invoke-static {v2}, Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth;->access$000(Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth$1;->this$0:Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth;

    invoke-static {v3}, Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth;->access$100(Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v2, p0, Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth$1;->val$code:Ljava/lang/String;

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 116
    invoke-static {v0}, Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth;->httpGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 117
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 118
    invoke-static {}, Lcom/cmplay/sharebase/e;->a()Lcom/cmplay/sharebase/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmplay/sharebase/e;->d()Lcom/cmplay/sharebase/a/a;

    move-result-object v0

    .line 119
    if-eqz v0, :cond_0

    .line 120
    invoke-interface {v0, v4}, Lcom/cmplay/sharebase/a/a;->a(I)V

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 123
    :cond_1
    const-string v1, "errcode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 125
    invoke-static {}, Lcom/cmplay/sharebase/e;->a()Lcom/cmplay/sharebase/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmplay/sharebase/e;->d()Lcom/cmplay/sharebase/a/a;

    move-result-object v0

    .line 126
    if-eqz v0, :cond_0

    .line 127
    invoke-interface {v0, v4}, Lcom/cmplay/sharebase/a/a;->a(I)V

    goto :goto_0

    .line 130
    :cond_2
    invoke-static {}, Lcom/cmplay/sharebase/f;->a()Lcom/cmplay/sharebase/f;

    move-result-object v1

    .line 132
    iget-object v2, p0, Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth$1;->this$0:Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth;

    invoke-static {v2}, Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth;->access$200(Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth$1;->this$0:Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth;

    invoke-static {v3}, Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth;->access$000(Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/cmplay/sharebase/f;->d(Landroid/content/Context;Ljava/lang/String;)V

    .line 133
    const-string v2, "WechatAuth"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "result is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cmplay/sharebase/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    iget-object v2, p0, Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth$1;->this$0:Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth;

    invoke-static {v2}, Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth;->access$200(Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth$1;->this$0:Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth;

    invoke-static {v3}, Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth;->access$000(Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/cmplay/sharebase/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmplay/sharebase/f$a;

    move-result-object v0

    .line 135
    iget-object v2, p0, Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth$1;->this$0:Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth;

    invoke-static {v2}, Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth;->access$200(Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth$1;->this$0:Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth;

    invoke-static {v3}, Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth;->access$000(Lcom/cmplay/tiles4_cn/wxapi/auth/WechatAuth;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/cmplay/sharebase/f;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 136
    invoke-static {}, Lcom/cmplay/sharebase/e;->a()Lcom/cmplay/sharebase/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cmplay/sharebase/e;->d()Lcom/cmplay/sharebase/a/a;

    move-result-object v1

    .line 137
    if-eqz v1, :cond_0

    .line 138
    invoke-interface {v1, v5}, Lcom/cmplay/sharebase/a/a;->a(I)V

    .line 139
    const-string v1, "WechatAuth"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unionid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Lcom/cmplay/sharebase/f$a;->e:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/cmplay/sharebase/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
