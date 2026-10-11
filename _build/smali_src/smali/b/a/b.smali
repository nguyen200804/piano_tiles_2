.class public Lb/a/b;
.super Ljava/lang/Object;
.source "StatTracer.java"

# interfaces
.implements Lb/a/ct;


# instance fields
.field public a:I

.field public b:I

.field public c:J

.field private final d:I

.field private e:I

.field private f:J

.field private g:J

.field private h:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const v0, 0x36ee80

    iput v0, p0, Lb/a/b;->d:I

    .line 23
    iput-wide v2, p0, Lb/a/b;->f:J

    .line 24
    iput-wide v2, p0, Lb/a/b;->g:J

    .line 36
    invoke-direct {p0, p1}, Lb/a/b;->b(Landroid/content/Context;)V

    .line 37
    return-void
.end method

.method public static a(Landroid/content/Context;)Lb/a/p;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 114
    invoke-static {p0}, Lb/a/cz;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 116
    new-instance v1, Lb/a/p;

    invoke-direct {v1}, Lb/a/p;-><init>()V

    .line 118
    const-string v2, "failed_requests "

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lb/a/p;->b(I)Lb/a/p;

    .line 119
    const-string v2, "last_request_spent_ms"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lb/a/p;->c(I)Lb/a/p;

    .line 120
    const-string v2, "successful_request"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v1, v0}, Lb/a/p;->a(I)Lb/a/p;

    .line 122
    return-object v1
.end method

.method private b(Landroid/content/Context;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lb/a/b;->h:Landroid/content/Context;

    .line 41
    invoke-static {p1}, Lb/a/cz;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 43
    const-string v1, "successful_request"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lb/a/b;->a:I

    .line 44
    const-string v1, "failed_requests "

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lb/a/b;->b:I

    .line 46
    const-string v1, "last_request_spent_ms"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lb/a/b;->e:I

    .line 47
    const-string v1, "last_request_time"

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lb/a/b;->c:J

    .line 49
    const-string v1, "last_req"

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lb/a/b;->f:J

    .line 50
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 57
    iget-wide v4, p0, Lb/a/b;->c:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_0

    move v0, v1

    .line 58
    :goto_0
    iget-object v3, p0, Lb/a/b;->h:Landroid/content/Context;

    invoke-static {v3}, Lcom/b/a/k;->a(Landroid/content/Context;)Lcom/b/a/k;

    move-result-object v3

    invoke-virtual {v3}, Lcom/b/a/k;->g()Z

    move-result v3

    if-nez v3, :cond_1

    move v3, v1

    .line 60
    :goto_1
    if-eqz v0, :cond_2

    if-eqz v3, :cond_2

    :goto_2
    return v1

    :cond_0
    move v0, v2

    .line 57
    goto :goto_0

    :cond_1
    move v3, v2

    .line 58
    goto :goto_1

    :cond_2
    move v1, v2

    .line 60
    goto :goto_2
.end method

.method public b()V
    .locals 2

    .prologue
    .line 64
    iget v0, p0, Lb/a/b;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lb/a/b;->a:I

    .line 66
    iget-wide v0, p0, Lb/a/b;->f:J

    iput-wide v0, p0, Lb/a/b;->c:J

    .line 67
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lb/a/b;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lb/a/b;->b:I

    .line 71
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 74
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lb/a/b;->f:J

    .line 75
    return-void
.end method

.method public e()V
    .locals 4

    .prologue
    .line 78
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lb/a/b;->f:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lb/a/b;->e:I

    .line 79
    return-void
.end method

.method public f()V
    .locals 4

    .prologue
    .line 82
    iget-object v0, p0, Lb/a/b;->h:Landroid/content/Context;

    invoke-static {v0}, Lb/a/cz;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 84
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "successful_request"

    iget v2, p0, Lb/a/b;->a:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "failed_requests "

    iget v2, p0, Lb/a/b;->b:I

    .line 85
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_request_spent_ms"

    iget v2, p0, Lb/a/b;->e:I

    .line 86
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_request_time"

    iget-wide v2, p0, Lb/a/b;->c:J

    .line 87
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_req"

    iget-wide v2, p0, Lb/a/b;->f:J

    .line 88
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 89
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 91
    return-void
.end method

.method public g()V
    .locals 4

    .prologue
    .line 94
    iget-object v0, p0, Lb/a/b;->h:Landroid/content/Context;

    invoke-static {v0}, Lb/a/cz;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "first_activate_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 95
    return-void
.end method

.method public h()Z
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 98
    iget-wide v0, p0, Lb/a/b;->g:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 99
    iget-object v0, p0, Lb/a/b;->h:Landroid/content/Context;

    invoke-static {v0}, Lb/a/cz;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "first_activate_time"

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lb/a/b;->g:J

    .line 102
    :cond_0
    iget-wide v0, p0, Lb/a/b;->g:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public i()J
    .locals 2

    .prologue
    .line 106
    invoke-virtual {p0}, Lb/a/b;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lb/a/b;->g:J

    goto :goto_0
.end method

.method public j()J
    .locals 2

    .prologue
    .line 110
    iget-wide v0, p0, Lb/a/b;->f:J

    return-wide v0
.end method

.method public k()V
    .locals 0

    .prologue
    .line 127
    invoke-virtual {p0}, Lb/a/b;->d()V

    .line 128
    return-void
.end method

.method public l()V
    .locals 0

    .prologue
    .line 132
    invoke-virtual {p0}, Lb/a/b;->e()V

    .line 133
    return-void
.end method

.method public m()V
    .locals 0

    .prologue
    .line 137
    invoke-virtual {p0}, Lb/a/b;->b()V

    .line 138
    return-void
.end method

.method public n()V
    .locals 0

    .prologue
    .line 142
    invoke-virtual {p0}, Lb/a/b;->c()V

    .line 143
    return-void
.end method
