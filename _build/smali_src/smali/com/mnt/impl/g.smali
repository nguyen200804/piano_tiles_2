.class public final Lcom/mnt/impl/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field public static c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/mnt/impl/e;->jT:Ljava/lang/String;

    .line 42
    sget-object v0, Lcom/mnt/impl/e;->jU:Ljava/lang/String;

    sput-object v0, Lcom/mnt/impl/g;->a:Ljava/lang/String;

    .line 43
    sget-object v0, Lcom/mnt/impl/e;->jV:Ljava/lang/String;

    sput-object v0, Lcom/mnt/impl/g;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 91
    invoke-static {p0}, Lcom/mnt/impl/b/h;->k(Landroid/content/Context;)J

    .line 92
    invoke-static {p0}, Lcom/mnt/impl/b/h;->l(Landroid/content/Context;)V

    .line 93
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 94
    sget-object v1, Lcom/mnt/impl/i/b/c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    sget-object v1, Lcom/mnt/impl/i/b/c;->r:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 96
    invoke-static {p0}, Lcom/mnt/impl/i/b/a;->a(Landroid/content/Context;)Lcom/mnt/impl/i/b/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mnt/impl/i/b/a;->a(Landroid/content/ContentValues;)V

    .line 97
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/mnt/impl/b/k;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4160
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    invoke-static {p0}, Lcom/mnt/impl/b/a;->a(Landroid/content/Context;)Lcom/mnt/impl/b/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mnt/impl/b/a;->a(Ljava/lang/String;)Lcom/mnt/impl/e/a;

    move-result-object v0

    .line 102
    invoke-static {p0}, Lcom/mnt/impl/j/d;->b(Landroid/content/Context;)Lcom/mnt/impl/j/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mnt/impl/j/d;->a()Lcom/mnt/impl/j/b;

    move-result-object v1

    .line 103
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/mnt/impl/e/a;->a()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1072
    iget-object v2, v0, Lcom/mnt/impl/e/a;->e:Ljava/lang/String;

    .line 104
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2048
    iget-object v2, v0, Lcom/mnt/impl/e/a;->b:Ljava/lang/String;

    .line 104
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 3048
    iget-object v2, v0, Lcom/mnt/impl/e/a;->b:Ljava/lang/String;

    .line 3056
    iget-object v3, v0, Lcom/mnt/impl/e/a;->d:Ljava/lang/String;

    .line 3072
    iget-object v4, v0, Lcom/mnt/impl/e/a;->e:Ljava/lang/String;

    .line 105
    const/4 v5, 0x0

    invoke-static {p0, v2, v3, v4, v5}, Lcom/mnt/impl/b/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 106
    invoke-static {p0}, Lcom/mnt/impl/i/c;->a(Landroid/content/Context;)Lcom/mnt/impl/i/c;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/mnt/impl/i/c;->a(Ljava/lang/String;)V

    .line 118
    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/mnt/impl/e/a;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    invoke-static {p0, p1}, Lcom/mnt/impl/b/h;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    invoke-virtual {v1}, Lcom/mnt/impl/j/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3156
    :cond_5
    iget-boolean v0, v1, Lcom/mnt/impl/j/b;->a:Z

    .line 130
    if-eqz v0, :cond_6

    invoke-virtual {v1}, Lcom/mnt/impl/j/b;->a()Z

    move-result v0

    if-nez v0, :cond_7

    .line 132
    :cond_6
    invoke-static {p0, p1, v6}, Lcom/mnt/impl/f/d;->a(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 4148
    :cond_7
    invoke-static {p0}, Lcom/mnt/impl/f/d;->a(Landroid/content/Context;)Lcom/mnt/impl/e/g;

    move-result-object v0

    .line 4149
    if-eqz v0, :cond_8

    .line 4305
    iget v0, v0, Lcom/mnt/impl/e/g;->c:I

    .line 4149
    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 4157
    :cond_8
    invoke-static {p0, p1}, Lcom/mnt/impl/b/k;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 4159
    if-eqz v0, :cond_9

    .line 4160
    invoke-static {p0, p1, v6}, Lcom/mnt/impl/f/d;->a(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 4186
    :cond_9
    invoke-static {p0, p1, v6}, Lcom/mnt/impl/f/l;->a(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0
.end method
