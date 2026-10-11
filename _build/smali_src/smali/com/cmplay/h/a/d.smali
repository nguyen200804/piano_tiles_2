.class public Lcom/cmplay/h/a/d;
.super Lcom/cmplay/h/a/c;
.source "TwitterPlatform.java"

# interfaces
.implements Lcom/cmplay/h/c;


# instance fields
.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Landroid/net/Uri;

.field private f:Lcom/cmplay/h/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/cmplay/h/a;->b:Lcom/cmplay/h/a;

    invoke-direct {p0, p1, v0}, Lcom/cmplay/h/a/c;-><init>(Landroid/content/Context;Lcom/cmplay/h/a;)V

    .line 35
    return-void
.end method


# virtual methods
.method public a(IILandroid/content/Intent;)V
    .locals 8

    .prologue
    const/4 v7, 0x4

    .line 105
    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_0

    .line 127
    :goto_0
    return-void

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/cmplay/h/a/d;->f:Lcom/cmplay/h/e;

    invoke-virtual {v0}, Lcom/cmplay/h/e;->g()I

    move-result v0

    invoke-static {v0}, Lcom/cmplay/h/b;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 109
    iget-object v1, p0, Lcom/cmplay/h/a/d;->f:Lcom/cmplay/h/e;

    invoke-virtual {v1}, Lcom/cmplay/h/e;->g()I

    move-result v1

    invoke-static {v1}, Lcom/cmplay/h/b;->b(I)I

    move-result v1

    .line 110
    invoke-static {}, Lcom/cmplay/h/b;->e()I

    move-result v2

    .line 111
    iget-object v3, p0, Lcom/cmplay/h/a/d;->f:Lcom/cmplay/h/e;

    invoke-virtual {v3}, Lcom/cmplay/h/e;->g()I

    move-result v3

    iget-object v4, p0, Lcom/cmplay/h/a/d;->f:Lcom/cmplay/h/e;

    invoke-virtual {v4}, Lcom/cmplay/h/e;->f()I

    move-result v4

    invoke-static {v3, v4}, Lcom/cmplay/h/b;->a(II)I

    move-result v3

    .line 112
    const/4 v4, -0x1

    if-ne p2, v4, :cond_1

    .line 113
    const/4 v4, 0x1

    invoke-virtual {p0, v7, v4}, Lcom/cmplay/h/a/d;->a(II)V

    .line 115
    invoke-static {}, Lcom/cmplay/h/b;->a()Lcom/cmplay/h/b;

    move-result-object v4

    const-string v5, "at_twitter_share_success"

    invoke-virtual {v4, v5}, Lcom/cmplay/h/b;->a(Ljava/lang/String;)V

    .line 116
    invoke-static {}, Lcom/cmplay/h/b;->a()Lcom/cmplay/h/b;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "at_twitter_share_success"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/cmplay/h/b;->a(Ljava/lang/String;)V

    .line 117
    invoke-static {}, Lcom/cmplay/h/f;->b()Lcom/cmplay/h/f;

    move-result-object v0

    const/4 v4, 0x3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/cmplay/h/f;->a(IIII)V

    .line 125
    :goto_1
    invoke-static {}, Lcom/cmplay/h/f;->b()Lcom/cmplay/h/f;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/cmplay/h/f;->b(Lcom/cmplay/h/c;)V

    .line 126
    invoke-virtual {p0}, Lcom/cmplay/h/a/d;->b()V

    goto :goto_0

    .line 119
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {p0, v7, v4}, Lcom/cmplay/h/a/d;->a(II)V

    .line 121
    invoke-static {}, Lcom/cmplay/h/b;->a()Lcom/cmplay/h/b;

    move-result-object v4

    const-string v5, "at_twitter_share_faild"

    invoke-virtual {v4, v5}, Lcom/cmplay/h/b;->a(Ljava/lang/String;)V

    .line 122
    invoke-static {}, Lcom/cmplay/h/b;->a()Lcom/cmplay/h/b;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "at_twitter_share_faild"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/cmplay/h/b;->a(Ljava/lang/String;)V

    .line 123
    invoke-static {}, Lcom/cmplay/h/f;->b()Lcom/cmplay/h/f;

    move-result-object v0

    invoke-virtual {v0, v1, v2, v3, v7}, Lcom/cmplay/h/f;->a(IIII)V

    goto :goto_1
.end method

.method public a(Lcom/cmplay/h/e;)V
    .locals 5

    .prologue
    .line 39
    iput-object p1, p0, Lcom/cmplay/h/a/d;->f:Lcom/cmplay/h/e;

    .line 40
    invoke-virtual {p1}, Lcom/cmplay/h/e;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmplay/h/a/d;->c:Ljava/lang/String;

    .line 41
    invoke-virtual {p1}, Lcom/cmplay/h/e;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmplay/h/a/d;->d:Ljava/lang/String;

    .line 42
    invoke-virtual {p1}, Lcom/cmplay/h/e;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/cmplay/h/e;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/cmplay/h/a/d;->e:Landroid/net/Uri;

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/cmplay/h/a/d;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/cmplay/h/a/d;->c()Landroid/content/Intent;

    move-result-object v1

    const/16 v2, 0x3e8

    invoke-static {v0, v1, v2}, Lcom/cmplay/util/e;->a(Landroid/app/Activity;Landroid/content/Intent;I)Z

    .line 47
    iget-object v0, p0, Lcom/cmplay/h/a/d;->f:Lcom/cmplay/h/e;

    invoke-virtual {v0}, Lcom/cmplay/h/e;->g()I

    move-result v0

    invoke-static {v0}, Lcom/cmplay/h/b;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 48
    invoke-static {}, Lcom/cmplay/h/b;->a()Lcom/cmplay/h/b;

    move-result-object v1

    const-string v2, "clk_twitter_share"

    invoke-virtual {v1, v2}, Lcom/cmplay/h/b;->a(Ljava/lang/String;)V

    .line 49
    invoke-static {}, Lcom/cmplay/h/b;->a()Lcom/cmplay/h/b;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clk_twitter_share"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/cmplay/h/b;->a(Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/cmplay/h/a/d;->f:Lcom/cmplay/h/e;

    invoke-virtual {v0}, Lcom/cmplay/h/e;->g()I

    move-result v0

    invoke-static {v0}, Lcom/cmplay/h/b;->b(I)I

    move-result v0

    .line 51
    invoke-static {}, Lcom/cmplay/h/b;->e()I

    move-result v1

    .line 52
    iget-object v2, p0, Lcom/cmplay/h/a/d;->f:Lcom/cmplay/h/e;

    invoke-virtual {v2}, Lcom/cmplay/h/e;->g()I

    move-result v2

    iget-object v3, p0, Lcom/cmplay/h/a/d;->f:Lcom/cmplay/h/e;

    invoke-virtual {v3}, Lcom/cmplay/h/e;->f()I

    move-result v3

    invoke-static {v2, v3}, Lcom/cmplay/h/b;->a(II)I

    move-result v2

    .line 53
    invoke-static {}, Lcom/cmplay/h/f;->b()Lcom/cmplay/h/f;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v0, v1, v2, v4}, Lcom/cmplay/h/f;->a(IIII)V

    .line 54
    return-void
.end method

.method public c()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/cmplay/h/a/d;->d()Landroid/content/Intent;

    move-result-object v0

    .line 66
    return-object v0
.end method

.method d()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 70
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 72
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    iget-object v2, p0, Lcom/cmplay/h/a/d;->c:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 75
    iget-object v2, p0, Lcom/cmplay/h/a/d;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    :cond_0
    iget-object v2, p0, Lcom/cmplay/h/a/d;->d:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 79
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 80
    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    :cond_1
    iget-object v2, p0, Lcom/cmplay/h/a/d;->d:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    :cond_2
    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    iget-object v1, p0, Lcom/cmplay/h/a/d;->e:Landroid/net/Uri;

    if-eqz v1, :cond_3

    .line 89
    const-string v1, "android.intent.extra.STREAM"

    iget-object v2, p0, Lcom/cmplay/h/a/d;->e:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 90
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    :cond_3
    iget-object v1, p0, Lcom/cmplay/h/a/d;->a:Lcom/cmplay/h/a;

    invoke-virtual {v1}, Lcom/cmplay/h/a;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/cmplay/h/a/d;->a:Lcom/cmplay/h/a;

    invoke-virtual {v2}, Lcom/cmplay/h/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    return-object v0
.end method
