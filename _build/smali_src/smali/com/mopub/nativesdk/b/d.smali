.class final Lcom/mopub/nativesdk/b/d;
.super Ljava/lang/Object;
.source "JumpLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private synthetic c:Lcom/mopub/nativesdk/b/b;


# direct methods
.method public constructor <init>(Lcom/mopub/nativesdk/b/b;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/mopub/nativesdk/b/d;->c:Lcom/mopub/nativesdk/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p3, p0, Lcom/mopub/nativesdk/b/d;->a:Ljava/lang/String;

    .line 97
    iput-object p4, p0, Lcom/mopub/nativesdk/b/d;->b:Ljava/lang/String;

    .line 98
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 105
    iget-object v0, p0, Lcom/mopub/nativesdk/b/d;->c:Lcom/mopub/nativesdk/b/b;

    new-instance v1, Lcom/mopub/nativesdk/b/e;

    invoke-direct {v1}, Lcom/mopub/nativesdk/b/e;-><init>()V

    invoke-static {v0, v1}, Lcom/mopub/nativesdk/b/b;->a(Lcom/mopub/nativesdk/b/b;Lcom/mopub/nativesdk/b/e;)Lcom/mopub/nativesdk/b/e;

    .line 106
    iget-object v0, p0, Lcom/mopub/nativesdk/b/d;->c:Lcom/mopub/nativesdk/b/b;

    invoke-static {v0}, Lcom/mopub/nativesdk/b/b;->b(Lcom/mopub/nativesdk/b/b;)Lcom/mopub/nativesdk/b/e;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/nativesdk/b/d;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mopub/nativesdk/b/e;->b(Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/mopub/nativesdk/b/d;->c:Lcom/mopub/nativesdk/b/b;

    invoke-static {v0}, Lcom/mopub/nativesdk/b/b;->c(Lcom/mopub/nativesdk/b/b;)Lcom/mopub/nativesdk/b/h;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/nativesdk/b/d;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/mopub/nativesdk/b/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/mopub/nativesdk/b/h;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/mopub/nativesdk/b/a;

    move-result-object v0

    .line 111
    if-eqz v0, :cond_4

    iget-boolean v1, v0, Lcom/mopub/nativesdk/b/a;->c:Z

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/mopub/nativesdk/b/a;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 115
    iget-object v0, v0, Lcom/mopub/nativesdk/b/a;->a:Ljava/lang/String;

    const-string v1, " "

    const-string v2, "%20"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 116
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "JSEngine isFinalUrl = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    iget-object v1, p0, Lcom/mopub/nativesdk/b/d;->c:Lcom/mopub/nativesdk/b/b;

    invoke-static {v1}, Lcom/mopub/nativesdk/b/b;->b(Lcom/mopub/nativesdk/b/b;)Lcom/mopub/nativesdk/b/e;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/mopub/nativesdk/b/e;->a(Z)V

    .line 119
    iget-object v1, p0, Lcom/mopub/nativesdk/b/d;->c:Lcom/mopub/nativesdk/b/b;

    invoke-static {v1}, Lcom/mopub/nativesdk/b/b;->b(Lcom/mopub/nativesdk/b/b;)Lcom/mopub/nativesdk/b/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mopub/nativesdk/b/e;->b(Ljava/lang/String;)V

    .line 120
    iget-object v1, p0, Lcom/mopub/nativesdk/b/d;->c:Lcom/mopub/nativesdk/b/b;

    invoke-static {v1}, Lcom/mopub/nativesdk/b/b;->b(Lcom/mopub/nativesdk/b/b;)Lcom/mopub/nativesdk/b/e;

    move-result-object v1

    const-string v2, "success"

    invoke-virtual {v1, v2}, Lcom/mopub/nativesdk/b/e;->a(Ljava/lang/String;)V

    .line 123
    invoke-static {v0}, Lcom/mopub/nativesdk/d/p;->g(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 124
    iget-object v0, p0, Lcom/mopub/nativesdk/b/d;->c:Lcom/mopub/nativesdk/b/b;

    invoke-static {v0}, Lcom/mopub/nativesdk/b/b;->b(Lcom/mopub/nativesdk/b/b;)Lcom/mopub/nativesdk/b/e;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/mopub/nativesdk/b/e;->a(I)V

    .line 157
    :goto_0
    iget-object v0, p0, Lcom/mopub/nativesdk/b/d;->c:Lcom/mopub/nativesdk/b/b;

    invoke-static {v0}, Lcom/mopub/nativesdk/b/b;->d(Lcom/mopub/nativesdk/b/b;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 158
    return-void

    .line 127
    :cond_0
    invoke-static {v0}, Lcom/mopub/nativesdk/d/p;->h(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 129
    invoke-static {v0}, Lcom/mopub/nativesdk/d/p;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 130
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 131
    iget-object v0, p0, Lcom/mopub/nativesdk/b/d;->c:Lcom/mopub/nativesdk/b/b;

    invoke-static {v0}, Lcom/mopub/nativesdk/b/b;->b(Lcom/mopub/nativesdk/b/b;)Lcom/mopub/nativesdk/b/e;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/mopub/nativesdk/b/e;->a(I)V

    .line 132
    iget-object v0, p0, Lcom/mopub/nativesdk/b/d;->c:Lcom/mopub/nativesdk/b/b;

    invoke-static {v0}, Lcom/mopub/nativesdk/b/b;->b(Lcom/mopub/nativesdk/b/b;)Lcom/mopub/nativesdk/b/e;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/mopub/nativesdk/b/e;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 134
    :cond_1
    iget-object v1, p0, Lcom/mopub/nativesdk/b/d;->c:Lcom/mopub/nativesdk/b/b;

    invoke-static {v1}, Lcom/mopub/nativesdk/b/b;->b(Lcom/mopub/nativesdk/b/b;)Lcom/mopub/nativesdk/b/e;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/mopub/nativesdk/b/e;->a(I)V

    .line 135
    iget-object v1, p0, Lcom/mopub/nativesdk/b/d;->c:Lcom/mopub/nativesdk/b/b;

    invoke-static {v1}, Lcom/mopub/nativesdk/b/b;->b(Lcom/mopub/nativesdk/b/b;)Lcom/mopub/nativesdk/b/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mopub/nativesdk/b/e;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 139
    :cond_2
    invoke-static {v0}, Lcom/mopub/nativesdk/d/p;->f(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 143
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".apk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 144
    iget-object v0, p0, Lcom/mopub/nativesdk/b/d;->c:Lcom/mopub/nativesdk/b/b;

    invoke-static {v0}, Lcom/mopub/nativesdk/b/b;->b(Lcom/mopub/nativesdk/b/b;)Lcom/mopub/nativesdk/b/e;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/mopub/nativesdk/b/e;->a(I)V

    goto :goto_0

    .line 147
    :cond_3
    iget-object v0, p0, Lcom/mopub/nativesdk/b/d;->c:Lcom/mopub/nativesdk/b/b;

    invoke-static {v0}, Lcom/mopub/nativesdk/b/b;->b(Lcom/mopub/nativesdk/b/b;)Lcom/mopub/nativesdk/b/e;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/mopub/nativesdk/b/e;->a(I)V

    goto :goto_0

    .line 151
    :cond_4
    iget-object v0, p0, Lcom/mopub/nativesdk/b/d;->c:Lcom/mopub/nativesdk/b/b;

    invoke-static {v0}, Lcom/mopub/nativesdk/b/b;->b(Lcom/mopub/nativesdk/b/b;)Lcom/mopub/nativesdk/b/e;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mopub/nativesdk/b/e;->a(Z)V

    .line 152
    iget-object v0, p0, Lcom/mopub/nativesdk/b/d;->c:Lcom/mopub/nativesdk/b/b;

    invoke-static {v0}, Lcom/mopub/nativesdk/b/b;->b(Lcom/mopub/nativesdk/b/b;)Lcom/mopub/nativesdk/b/e;

    move-result-object v0

    const-string v1, "Empty result"

    invoke-virtual {v0, v1}, Lcom/mopub/nativesdk/b/e;->a(Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/mopub/nativesdk/b/d;->c:Lcom/mopub/nativesdk/b/b;

    invoke-static {v0}, Lcom/mopub/nativesdk/b/b;->b(Lcom/mopub/nativesdk/b/b;)Lcom/mopub/nativesdk/b/e;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/mopub/nativesdk/b/e;->a(I)V

    goto/16 :goto_0
.end method
