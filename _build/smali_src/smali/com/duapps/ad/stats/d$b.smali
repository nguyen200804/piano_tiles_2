.class Lcom/duapps/ad/stats/d$b;
.super Ljava/lang/Object;
.source "ToolClickHandler.java"

# interfaces
.implements Lcom/duapps/ad/stats/d$a;
.implements Lorg/apache/http/client/RedirectHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duapps/ad/stats/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/duapps/ad/stats/d;

.field private b:Lcom/duapps/ad/stats/f;

.field private volatile c:Z


# direct methods
.method public constructor <init>(Lcom/duapps/ad/stats/d;Lcom/duapps/ad/stats/f;)V
    .locals 1

    .prologue
    .line 68
    iput-object p1, p0, Lcom/duapps/ad/stats/d$b;->a:Lcom/duapps/ad/stats/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/duapps/ad/stats/d$b;->c:Z

    .line 69
    iput-object p2, p0, Lcom/duapps/ad/stats/d$b;->b:Lcom/duapps/ad/stats/f;

    .line 70
    return-void
.end method


# virtual methods
.method public getLocationURI(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Ljava/net/URI;
    .locals 1

    .prologue
    .line 148
    const/4 v0, 0x0

    return-object v0
.end method

.method public isRedirectRequested(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Z
    .locals 11

    .prologue
    const-wide/16 v2, 0x2

    const-wide/16 v6, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 74
    iget-boolean v0, p0, Lcom/duapps/ad/stats/d$b;->c:Z

    if-eqz v0, :cond_1

    .line 75
    invoke-static {}, Lcom/duapps/ad/base/h;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    const-string v0, "ToolClickHandler"

    const-string v1, "[Http]Action canceled."

    invoke-static {v0, v1}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/duapps/ad/stats/d$b;->a:Lcom/duapps/ad/stats/d;

    invoke-static {v0}, Lcom/duapps/ad/stats/d;->a(Lcom/duapps/ad/stats/d;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/duapps/ad/stats/d$b;->b:Lcom/duapps/ad/stats/f;

    invoke-static {v0, v1}, Lcom/duapps/ad/stats/h;->g(Landroid/content/Context;Lcom/duapps/ad/stats/f;)V

    .line 78
    iget-object v0, p0, Lcom/duapps/ad/stats/d$b;->a:Lcom/duapps/ad/stats/d;

    invoke-virtual {v0}, Lcom/duapps/ad/stats/d;->f()V

    .line 142
    :goto_0
    return v10

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/duapps/ad/stats/d$b;->b:Lcom/duapps/ad/stats/f;

    invoke-virtual {v0}, Lcom/duapps/ad/stats/f;->p()I

    move-result v5

    .line 82
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    .line 83
    const-string v0, "ToolClickHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "statusCode "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const/16 v0, 0x12f

    if-eq v4, v0, :cond_2

    const/16 v0, 0x12e

    if-eq v4, v0, :cond_2

    const/16 v0, 0x12d

    if-eq v4, v0, :cond_2

    const/16 v0, 0x133

    if-ne v4, v0, :cond_f

    .line 88
    :cond_2
    const-string v0, "Location"

    invoke-interface {p1, v0}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v0

    .line 89
    aget-object v0, v0, v10

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v8

    .line 90
    if-nez v8, :cond_7

    .line 91
    if-eqz v5, :cond_3

    .line 92
    iget-object v0, p0, Lcom/duapps/ad/stats/d$b;->a:Lcom/duapps/ad/stats/d;

    invoke-static {v0}, Lcom/duapps/ad/stats/d;->a(Lcom/duapps/ad/stats/d;)Landroid/content/Context;

    move-result-object v8

    iget-object v9, p0, Lcom/duapps/ad/stats/d$b;->b:Lcom/duapps/ad/stats/f;

    if-lez v5, :cond_6

    move-wide v0, v2

    :goto_1
    invoke-static {v8, v9, v0, v1, v4}, Lcom/duapps/ad/stats/h;->a(Landroid/content/Context;Lcom/duapps/ad/stats/f;JI)V

    .line 93
    :cond_3
    invoke-static {}, Lcom/duapps/ad/base/h;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 94
    const-string v0, "ToolClickHandler"

    const-string v1, "[Http] null URL."

    invoke-static {v0, v1}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    :cond_4
    iget-object v0, p0, Lcom/duapps/ad/stats/d$b;->b:Lcom/duapps/ad/stats/f;

    invoke-virtual {v0}, Lcom/duapps/ad/stats/f;->n()Z

    move-result v0

    if-nez v0, :cond_5

    .line 96
    iget-object v0, p0, Lcom/duapps/ad/stats/d$b;->a:Lcom/duapps/ad/stats/d;

    invoke-virtual {v0}, Lcom/duapps/ad/stats/d;->b()V

    .line 97
    iget-object v0, p0, Lcom/duapps/ad/stats/d$b;->a:Lcom/duapps/ad/stats/d;

    iget-object v1, p0, Lcom/duapps/ad/stats/d$b;->b:Lcom/duapps/ad/stats/f;

    iget-object v2, p0, Lcom/duapps/ad/stats/d$b;->b:Lcom/duapps/ad/stats/f;

    invoke-virtual {v2}, Lcom/duapps/ad/stats/f;->i()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/duapps/ad/stats/d;->a(Lcom/duapps/ad/stats/d;Lcom/duapps/ad/stats/f;Ljava/lang/String;)V

    .line 99
    :cond_5
    iget-object v0, p0, Lcom/duapps/ad/stats/d$b;->a:Lcom/duapps/ad/stats/d;

    invoke-virtual {v0}, Lcom/duapps/ad/stats/d;->f()V

    goto/16 :goto_0

    :cond_6
    move-wide v0, v6

    .line 92
    goto :goto_1

    .line 101
    :cond_7
    invoke-static {v8}, Lcom/duapps/ad/stats/e;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 102
    if-eqz v5, :cond_8

    .line 103
    iget-object v0, p0, Lcom/duapps/ad/stats/d$b;->a:Lcom/duapps/ad/stats/d;

    invoke-static {v0}, Lcom/duapps/ad/stats/d;->a(Lcom/duapps/ad/stats/d;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/duapps/ad/stats/d$b;->b:Lcom/duapps/ad/stats/f;

    if-lez v5, :cond_c

    :goto_2
    const-string v5, "tctp"

    invoke-static/range {v0 .. v5}, Lcom/duapps/ad/stats/h;->a(Landroid/content/Context;Lcom/duapps/ad/stats/f;JILjava/lang/String;)V

    .line 104
    :cond_8
    invoke-static {}, Lcom/duapps/ad/base/h;->a()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 105
    const-string v0, "ToolClickHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Http] Market URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    :cond_9
    iget-object v0, p0, Lcom/duapps/ad/stats/d$b;->a:Lcom/duapps/ad/stats/d;

    iget-object v1, p0, Lcom/duapps/ad/stats/d$b;->b:Lcom/duapps/ad/stats/f;

    invoke-virtual {v0, v1, v8}, Lcom/duapps/ad/stats/d;->a(Lcom/duapps/ad/stats/f;Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/duapps/ad/stats/d$b;->b:Lcom/duapps/ad/stats/f;

    invoke-virtual {v0, v9}, Lcom/duapps/ad/stats/f;->b(Z)V

    .line 108
    iget-object v0, p0, Lcom/duapps/ad/stats/d$b;->b:Lcom/duapps/ad/stats/f;

    invoke-virtual {v0}, Lcom/duapps/ad/stats/f;->n()Z

    move-result v0

    if-nez v0, :cond_b

    .line 109
    iget-object v0, p0, Lcom/duapps/ad/stats/d$b;->a:Lcom/duapps/ad/stats/d;

    invoke-virtual {v0}, Lcom/duapps/ad/stats/d;->b()V

    .line 110
    iget-object v0, p0, Lcom/duapps/ad/stats/d$b;->a:Lcom/duapps/ad/stats/d;

    invoke-static {v0}, Lcom/duapps/ad/stats/d;->b(Lcom/duapps/ad/stats/d;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 111
    iget-object v0, p0, Lcom/duapps/ad/stats/d$b;->a:Lcom/duapps/ad/stats/d;

    invoke-static {v0}, Lcom/duapps/ad/stats/d;->a(Lcom/duapps/ad/stats/d;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/duapps/ad/stats/d$b;->b:Lcom/duapps/ad/stats/f;

    iget-object v2, p0, Lcom/duapps/ad/stats/d$b;->a:Lcom/duapps/ad/stats/d;

    .line 112
    invoke-static {v2}, Lcom/duapps/ad/stats/d;->c(Lcom/duapps/ad/stats/d;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/duapps/ad/stats/d$b;->a:Lcom/duapps/ad/stats/d;

    invoke-static {v3}, Lcom/duapps/ad/stats/d;->b(Lcom/duapps/ad/stats/d;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/duapps/ad/stats/d$b;->a:Lcom/duapps/ad/stats/d;

    invoke-static {v4}, Lcom/duapps/ad/stats/d;->d(Lcom/duapps/ad/stats/d;)Ljava/lang/String;

    move-result-object v4

    .line 111
    invoke-static {v0, v1, v2, v3, v4}, Lcom/duapps/ad/stats/h;->a(Landroid/content/Context;Lcom/duapps/ad/stats/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/duapps/ad/stats/d$b;->a:Lcom/duapps/ad/stats/d;

    invoke-static {v0}, Lcom/duapps/ad/stats/d;->a(Lcom/duapps/ad/stats/d;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/duapps/ad/stats/d$b;->b:Lcom/duapps/ad/stats/f;

    iget-object v0, p0, Lcom/duapps/ad/stats/d$b;->a:Lcom/duapps/ad/stats/d;

    .line 114
    invoke-static {v0}, Lcom/duapps/ad/stats/d;->e(Lcom/duapps/ad/stats/d;)Z

    move-result v0

    if-ne v0, v9, :cond_d

    const-string v0, "1"

    :goto_3
    iget-object v3, p0, Lcom/duapps/ad/stats/d$b;->a:Lcom/duapps/ad/stats/d;

    invoke-static {v3}, Lcom/duapps/ad/stats/d;->b(Lcom/duapps/ad/stats/d;)Ljava/lang/String;

    move-result-object v3

    .line 113
    invoke-static {v1, v2, v0, v3}, Lcom/duapps/ad/stats/h;->a(Landroid/content/Context;Lcom/duapps/ad/stats/f;Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    :cond_a
    iget-object v0, p0, Lcom/duapps/ad/stats/d$b;->a:Lcom/duapps/ad/stats/d;

    iget-object v1, p0, Lcom/duapps/ad/stats/d$b;->b:Lcom/duapps/ad/stats/f;

    invoke-virtual {v0, v1, v8}, Lcom/duapps/ad/stats/d;->h(Lcom/duapps/ad/stats/f;Ljava/lang/String;)V

    .line 118
    :cond_b
    iget-object v0, p0, Lcom/duapps/ad/stats/d$b;->a:Lcom/duapps/ad/stats/d;

    invoke-virtual {v0}, Lcom/duapps/ad/stats/d;->f()V

    goto/16 :goto_0

    :cond_c
    move-wide v2, v6

    .line 103
    goto/16 :goto_2

    .line 114
    :cond_d
    const-string v0, "0"

    goto :goto_3

    .line 121
    :cond_e
    iget-object v0, p0, Lcom/duapps/ad/stats/d$b;->a:Lcom/duapps/ad/stats/d;

    iget-object v1, p0, Lcom/duapps/ad/stats/d$b;->b:Lcom/duapps/ad/stats/f;

    invoke-virtual {v0, v1, v8}, Lcom/duapps/ad/stats/d;->c(Lcom/duapps/ad/stats/f;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 124
    :cond_f
    if-eqz v5, :cond_10

    .line 125
    iget-object v0, p0, Lcom/duapps/ad/stats/d$b;->a:Lcom/duapps/ad/stats/d;

    invoke-static {v0}, Lcom/duapps/ad/stats/d;->a(Lcom/duapps/ad/stats/d;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/duapps/ad/stats/d$b;->b:Lcom/duapps/ad/stats/f;

    if-lez v5, :cond_14

    :goto_4
    invoke-static {v0, v1, v2, v3, v4}, Lcom/duapps/ad/stats/h;->a(Landroid/content/Context;Lcom/duapps/ad/stats/f;JI)V

    .line 126
    :cond_10
    invoke-static {}, Lcom/duapps/ad/base/h;->a()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 127
    const-string v0, "ToolClickHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Http] non-Market URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/duapps/ad/stats/d$b;->b:Lcom/duapps/ad/stats/f;

    invoke-virtual {v2}, Lcom/duapps/ad/stats/f;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    :cond_11
    iget-object v0, p0, Lcom/duapps/ad/stats/d$b;->b:Lcom/duapps/ad/stats/f;

    invoke-virtual {v0}, Lcom/duapps/ad/stats/f;->n()Z

    move-result v0

    if-nez v0, :cond_13

    .line 130
    iget-object v0, p0, Lcom/duapps/ad/stats/d$b;->a:Lcom/duapps/ad/stats/d;

    invoke-virtual {v0}, Lcom/duapps/ad/stats/d;->b()V

    .line 131
    iget-object v0, p0, Lcom/duapps/ad/stats/d$b;->a:Lcom/duapps/ad/stats/d;

    invoke-static {v0}, Lcom/duapps/ad/stats/d;->b(Lcom/duapps/ad/stats/d;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 132
    iget-object v0, p0, Lcom/duapps/ad/stats/d$b;->a:Lcom/duapps/ad/stats/d;

    invoke-static {v0}, Lcom/duapps/ad/stats/d;->a(Lcom/duapps/ad/stats/d;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/duapps/ad/stats/d$b;->b:Lcom/duapps/ad/stats/f;

    iget-object v2, p0, Lcom/duapps/ad/stats/d$b;->a:Lcom/duapps/ad/stats/d;

    .line 133
    invoke-static {v2}, Lcom/duapps/ad/stats/d;->c(Lcom/duapps/ad/stats/d;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/duapps/ad/stats/d$b;->a:Lcom/duapps/ad/stats/d;

    invoke-static {v3}, Lcom/duapps/ad/stats/d;->b(Lcom/duapps/ad/stats/d;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/duapps/ad/stats/d$b;->a:Lcom/duapps/ad/stats/d;

    invoke-static {v4}, Lcom/duapps/ad/stats/d;->d(Lcom/duapps/ad/stats/d;)Ljava/lang/String;

    move-result-object v4

    .line 132
    invoke-static {v0, v1, v2, v3, v4}, Lcom/duapps/ad/stats/h;->a(Landroid/content/Context;Lcom/duapps/ad/stats/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/duapps/ad/stats/d$b;->a:Lcom/duapps/ad/stats/d;

    invoke-static {v0}, Lcom/duapps/ad/stats/d;->a(Lcom/duapps/ad/stats/d;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/duapps/ad/stats/d$b;->b:Lcom/duapps/ad/stats/f;

    iget-object v0, p0, Lcom/duapps/ad/stats/d$b;->a:Lcom/duapps/ad/stats/d;

    .line 135
    invoke-static {v0}, Lcom/duapps/ad/stats/d;->e(Lcom/duapps/ad/stats/d;)Z

    move-result v0

    if-ne v0, v9, :cond_15

    const-string v0, "1"

    :goto_5
    iget-object v3, p0, Lcom/duapps/ad/stats/d$b;->a:Lcom/duapps/ad/stats/d;

    invoke-static {v3}, Lcom/duapps/ad/stats/d;->b(Lcom/duapps/ad/stats/d;)Ljava/lang/String;

    move-result-object v3

    .line 134
    invoke-static {v1, v2, v0, v3}, Lcom/duapps/ad/stats/h;->a(Landroid/content/Context;Lcom/duapps/ad/stats/f;Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    :cond_12
    iget-object v0, p0, Lcom/duapps/ad/stats/d$b;->a:Lcom/duapps/ad/stats/d;

    iget-object v1, p0, Lcom/duapps/ad/stats/d$b;->b:Lcom/duapps/ad/stats/f;

    iget-object v2, p0, Lcom/duapps/ad/stats/d$b;->b:Lcom/duapps/ad/stats/f;

    invoke-virtual {v2}, Lcom/duapps/ad/stats/f;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/duapps/ad/stats/d;->g(Lcom/duapps/ad/stats/f;Ljava/lang/String;)V

    .line 139
    :cond_13
    iget-object v0, p0, Lcom/duapps/ad/stats/d$b;->a:Lcom/duapps/ad/stats/d;

    invoke-virtual {v0}, Lcom/duapps/ad/stats/d;->f()V

    goto/16 :goto_0

    :cond_14
    move-wide v2, v6

    .line 125
    goto/16 :goto_4

    .line 135
    :cond_15
    const-string v0, "0"

    goto :goto_5
.end method
