.class final Lcom/mnt/impl/h/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mnt/impl/d/g;


# instance fields
.field private synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcom/mnt/impl/h/b;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 169
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 207
    :cond_0
    :goto_0
    return-void

    .line 172
    :cond_1
    sget-object v0, Lcom/mnt/impl/b/k;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/mnt/impl/h/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/mnt/impl/j/d;->b(Landroid/content/Context;)Lcom/mnt/impl/j/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mnt/impl/j/d;->a()Lcom/mnt/impl/j/b;

    move-result-object v0

    .line 177
    iget-object v1, p0, Lcom/mnt/impl/h/b;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/mnt/impl/b/a;->a(Landroid/content/Context;)Lcom/mnt/impl/b/a;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/mnt/impl/b/a;->a(Ljava/lang/String;)Lcom/mnt/impl/e/a;

    move-result-object v1

    .line 178
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/mnt/impl/e/a;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/mnt/impl/h/b;->a:Landroid/content/Context;

    invoke-static {v1, p2}, Lcom/mnt/impl/b/h;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    invoke-virtual {v0}, Lcom/mnt/impl/j/b;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 182
    :cond_4
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 183
    sget-object v2, Lcom/mnt/impl/i/b/c;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    sget-object v2, Lcom/mnt/impl/i/b/c;->f:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 185
    iget-object v2, p0, Lcom/mnt/impl/h/b;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/mnt/impl/i/b/a;->a(Landroid/content/Context;)Lcom/mnt/impl/i/b/a;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mnt/impl/i/b/a;->a(Landroid/content/ContentValues;)V

    .line 186
    iget-object v1, p0, Lcom/mnt/impl/h/b;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/mnt/impl/f/d;->a(Landroid/content/Context;)Lcom/mnt/impl/e/g;

    move-result-object v1

    .line 187
    if-eqz v1, :cond_5

    .line 1305
    iget v1, v1, Lcom/mnt/impl/e/g;->c:I

    .line 187
    if-eq v1, v6, :cond_0

    .line 2156
    :cond_5
    iget-boolean v1, v0, Lcom/mnt/impl/j/b;->a:Z

    .line 198
    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/mnt/impl/j/b;->a()Z

    move-result v1

    if-nez v1, :cond_7

    .line 2216
    :cond_6
    if-eqz v0, :cond_0

    .line 3156
    iget-boolean v1, v0, Lcom/mnt/impl/j/b;->a:Z

    .line 2216
    if-eqz v1, :cond_0

    .line 3250
    sget-object v1, Lcom/mnt/impl/e;->it:Ljava/lang/String;

    iget-object v0, v0, Lcom/mnt/impl/j/b;->n:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 2216
    if-eqz v0, :cond_0

    .line 2217
    iget-object v0, p0, Lcom/mnt/impl/h/b;->a:Landroid/content/Context;

    invoke-static {v0, p2, v6}, Lcom/mnt/impl/f/d;->a(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 205
    :cond_7
    iget-object v0, p0, Lcom/mnt/impl/h/b;->a:Landroid/content/Context;

    invoke-static {v0, p2, v6}, Lcom/mnt/impl/f/l;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 4228
    iget-object v0, p0, Lcom/mnt/impl/h/b;->a:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/mnt/impl/b/h;->a(Landroid/content/Context;J)V

    goto/16 :goto_0
.end method
