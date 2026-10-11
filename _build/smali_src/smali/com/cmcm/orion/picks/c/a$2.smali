.class final Lcom/cmcm/orion/picks/c/a$2;
.super Ljava/lang/Object;
.source "MarketUtils.java"

# interfaces
.implements Lcom/cmcm/orion/picks/impl/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmcm/orion/picks/c/a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/cmcm/orion/picks/a/a/a;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:J

.field final synthetic c:Lcom/cmcm/orion/picks/a/a/a;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;JLcom/cmcm/orion/picks/a/a/a;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/cmcm/orion/picks/c/a$2;->a:Landroid/content/Context;

    iput-wide p2, p0, Lcom/cmcm/orion/picks/c/a$2;->b:J

    iput-object p4, p0, Lcom/cmcm/orion/picks/c/a$2;->c:Lcom/cmcm/orion/picks/a/a/a;

    iput-object p5, p0, Lcom/cmcm/orion/picks/c/a$2;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/cmcm/orion/picks/c/a$2;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/cmcm/orion/picks/webview/e;)V
    .locals 6

    .prologue
    .line 110
    if-nez p1, :cond_0

    .line 133
    :goto_0
    return-void

    .line 114
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onGetGooglePlayUrl: url = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/cmcm/orion/picks/webview/e;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onGetGooglePlayUrl: error = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Lcom/cmcm/orion/picks/webview/e;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 116
    iget-object v1, p1, Lcom/cmcm/orion/picks/webview/e;->b:Ljava/lang/String;

    .line 117
    iget-object v0, p0, Lcom/cmcm/orion/picks/c/a$2;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmcm/orion/picks/c/a;->a(Landroid/content/Context;)Z

    .line 119
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/cmcm/orion/picks/c/a$2;->b:J

    sub-long/2addr v2, v4

    .line 120
    invoke-static {v1}, Lcom/cmcm/orion/utils/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 121
    iget v0, p1, Lcom/cmcm/orion/picks/webview/e;->a:I

    iget-object v4, p0, Lcom/cmcm/orion/picks/c/a$2;->c:Lcom/cmcm/orion/picks/a/a/a;

    iget-object v5, p0, Lcom/cmcm/orion/picks/c/a$2;->d:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/cmcm/orion/picks/c/a;->a(ILjava/lang/String;JLcom/cmcm/orion/picks/a/a/a;Ljava/lang/String;)V

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "market://details?id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cmcm/orion/picks/c/a$2;->c:Lcom/cmcm/orion/picks/a/a/a;

    invoke-virtual {v1}, Lcom/cmcm/orion/picks/a/a/a;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 132
    :goto_1
    iget-object v0, p0, Lcom/cmcm/orion/picks/c/a$2;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/cmcm/orion/picks/c/a$2;->c:Lcom/cmcm/orion/picks/a/a/a;

    invoke-static {v1, v0, v2}, Lcom/cmcm/orion/utils/b;->a(Ljava/lang/String;Landroid/content/Context;Lcom/cmcm/orion/picks/a/a/a;)V

    goto :goto_0

    .line 123
    :cond_1
    iget-object v0, p0, Lcom/cmcm/orion/picks/c/a$2;->c:Lcom/cmcm/orion/picks/a/a/a;

    invoke-static {v1, v0}, Lcom/cmcm/orion/picks/c/a;->a(Ljava/lang/String;Lcom/cmcm/orion/picks/a/a/a;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 124
    const/16 v0, 0xa

    iget-object v4, p0, Lcom/cmcm/orion/picks/c/a$2;->c:Lcom/cmcm/orion/picks/a/a/a;

    iget-object v5, p0, Lcom/cmcm/orion/picks/c/a$2;->d:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/cmcm/orion/picks/c/a;->a(ILjava/lang/String;JLcom/cmcm/orion/picks/a/a/a;Ljava/lang/String;)V

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "market://details?id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cmcm/orion/picks/c/a$2;->c:Lcom/cmcm/orion/picks/a/a/a;

    invoke-virtual {v1}, Lcom/cmcm/orion/picks/a/a/a;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 127
    :cond_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 128
    const-string v4, "rt"

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    const-string v2, "url_redirected"

    iget-object v3, p0, Lcom/cmcm/orion/picks/c/a$2;->c:Lcom/cmcm/orion/picks/a/a/a;

    iget-object v4, p0, Lcom/cmcm/orion/picks/c/a$2;->d:Ljava/lang/String;

    const-string v5, ""

    invoke-static {v2, v3, v4, v5, v0}, Lcom/cmcm/orion/picks/a/b;->a(Ljava/lang/String;Lcom/cmcm/orion/picks/a/a/a;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 130
    sget-object v0, Lcom/cmcm/orion/picks/c/a;->a:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/cmcm/orion/picks/c/a$2;->e:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method
