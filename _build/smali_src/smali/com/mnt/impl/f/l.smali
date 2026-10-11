.class public final Lcom/mnt/impl/f/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:J

.field private f:J

.field private g:J

.field private h:Lcom/mnt/impl/j/b;

.field private i:Ljava/lang/String;

.field private j:I

.field private k:Z

.field private l:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/mnt/impl/e;->ga:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput v2, p0, Lcom/mnt/impl/f/l;->d:I

    .line 33
    const-wide/32 v0, 0xdbba00

    iput-wide v0, p0, Lcom/mnt/impl/f/l;->e:J

    .line 34
    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/mnt/impl/f/l;->f:J

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mnt/impl/f/l;->k:Z

    .line 220
    iput-boolean v2, p0, Lcom/mnt/impl/f/l;->l:Z

    .line 49
    iput-object p1, p0, Lcom/mnt/impl/f/l;->a:Landroid/content/Context;

    .line 50
    iput-object p2, p0, Lcom/mnt/impl/f/l;->b:Ljava/lang/String;

    .line 51
    iput-object p3, p0, Lcom/mnt/impl/f/l;->i:Ljava/lang/String;

    .line 52
    invoke-static {p3}, Lcom/mnt/impl/f/h;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mnt/impl/f/l;->c:Ljava/lang/String;

    .line 53
    iput-boolean v2, p0, Lcom/mnt/impl/f/l;->k:Z

    .line 54
    invoke-static {p1}, Lcom/mnt/impl/j/d;->b(Landroid/content/Context;)Lcom/mnt/impl/j/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mnt/impl/j/d;->a()Lcom/mnt/impl/j/b;

    move-result-object v0

    iput-object v0, p0, Lcom/mnt/impl/f/l;->h:Lcom/mnt/impl/j/b;

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput v2, p0, Lcom/mnt/impl/f/l;->d:I

    .line 33
    const-wide/32 v0, 0xdbba00

    iput-wide v0, p0, Lcom/mnt/impl/f/l;->e:J

    .line 34
    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/mnt/impl/f/l;->f:J

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mnt/impl/f/l;->k:Z

    .line 220
    iput-boolean v2, p0, Lcom/mnt/impl/f/l;->l:Z

    .line 64
    iput-object p1, p0, Lcom/mnt/impl/f/l;->a:Landroid/content/Context;

    .line 65
    iput-object p2, p0, Lcom/mnt/impl/f/l;->b:Ljava/lang/String;

    .line 66
    invoke-static {p3}, Lcom/mnt/impl/f/h;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mnt/impl/f/l;->c:Ljava/lang/String;

    .line 67
    iput p4, p0, Lcom/mnt/impl/f/l;->j:I

    .line 68
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mnt/impl/f/l;->g:J

    .line 69
    iget-object v0, p0, Lcom/mnt/impl/f/l;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/mnt/impl/j/d;->b(Landroid/content/Context;)Lcom/mnt/impl/j/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mnt/impl/j/d;->a()Lcom/mnt/impl/j/b;

    move-result-object v0

    iput-object v0, p0, Lcom/mnt/impl/f/l;->h:Lcom/mnt/impl/j/b;

    .line 70
    iget-object v0, p0, Lcom/mnt/impl/f/l;->h:Lcom/mnt/impl/j/b;

    .line 1156
    iget-boolean v0, v0, Lcom/mnt/impl/j/b;->a:Z

    .line 70
    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/mnt/impl/f/l;->h:Lcom/mnt/impl/j/b;

    .line 1210
    iget-wide v0, v0, Lcom/mnt/impl/j/b;->g:J

    .line 71
    const-wide/16 v2, 0xe10

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/mnt/impl/f/l;->e:J

    .line 72
    iget-object v0, p0, Lcom/mnt/impl/f/l;->h:Lcom/mnt/impl/j/b;

    .line 2206
    iget-wide v0, v0, Lcom/mnt/impl/j/b;->h:J

    .line 72
    iput-wide v0, p0, Lcom/mnt/impl/f/l;->f:J

    .line 74
    :cond_0
    iput-object p3, p0, Lcom/mnt/impl/f/l;->i:Ljava/lang/String;

    .line 76
    return-void
.end method

.method private a()V
    .locals 4

    .prologue
    .line 120
    iget-object v0, p0, Lcom/mnt/impl/f/l;->h:Lcom/mnt/impl/j/b;

    .line 3234
    iget v0, v0, Lcom/mnt/impl/j/b;->j:I

    .line 120
    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/mnt/impl/f/l;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7156
    :goto_0
    return-void

    .line 124
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 125
    iget-boolean v0, p0, Lcom/mnt/impl/f/l;->k:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/mnt/impl/f/l;->h:Lcom/mnt/impl/j/b;

    .line 4156
    iget-boolean v0, v0, Lcom/mnt/impl/j/b;->a:Z

    .line 125
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mnt/impl/f/l;->h:Lcom/mnt/impl/j/b;

    .line 4242
    iget-wide v0, v0, Lcom/mnt/impl/j/b;->l:J

    .line 125
    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 127
    :try_start_0
    iget-object v0, p0, Lcom/mnt/impl/f/l;->h:Lcom/mnt/impl/j/b;

    .line 5242
    iget-wide v0, v0, Lcom/mnt/impl/j/b;->l:J

    .line 127
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    :cond_1
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 134
    iget-object v0, p0, Lcom/mnt/impl/f/l;->h:Lcom/mnt/impl/j/b;

    .line 6234
    iget v0, v0, Lcom/mnt/impl/j/b;->j:I

    .line 134
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 136
    :pswitch_0
    invoke-direct {p0}, Lcom/mnt/impl/f/l;->c()V

    goto :goto_0

    .line 129
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 139
    :pswitch_1
    invoke-direct {p0}, Lcom/mnt/impl/f/l;->b()V

    goto :goto_0

    .line 7155
    :pswitch_2
    iget-object v0, p0, Lcom/mnt/impl/f/l;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7156
    invoke-direct {p0}, Lcom/mnt/impl/f/l;->c()V

    goto :goto_0

    .line 7158
    :cond_2
    invoke-direct {p0}, Lcom/mnt/impl/f/l;->b()V

    goto :goto_0

    .line 134
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 264
    const-class v1, Lcom/mnt/impl/f/l;

    monitor-enter v1

    if-nez p2, :cond_0

    .line 265
    :try_start_0
    invoke-static {p0}, Lcom/mnt/impl/j/d;->b(Landroid/content/Context;)Lcom/mnt/impl/j/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mnt/impl/j/d;->a()Lcom/mnt/impl/j/b;

    move-result-object v0

    .line 8156
    iget-boolean v2, v0, Lcom/mnt/impl/j/b;->a:Z

    .line 266
    if-eqz v2, :cond_0

    .line 8164
    iget v0, v0, Lcom/mnt/impl/j/b;->f:I

    .line 266
    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 268
    invoke-static {p1}, Lcom/mnt/impl/f/h;->c(Ljava/lang/String;)Lcom/mnt/impl/e/b;

    move-result-object v0

    .line 269
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mnt/impl/e/b;->a()Z

    move-result v2

    if-nez v2, :cond_0

    .line 9044
    iget-object v2, v0, Lcom/mnt/impl/e/b;->c:Ljava/lang/String;

    .line 271
    invoke-static {v2}, Lcom/mnt/impl/f/h;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 272
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 275
    new-instance v2, Lcom/mnt/impl/f/c;

    invoke-direct {v2, p0, p1, p2}, Lcom/mnt/impl/f/c;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 276
    invoke-virtual {v2, v0}, Lcom/mnt/impl/f/c;->a(Lcom/mnt/impl/e/b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 294
    :goto_0
    monitor-exit v1

    return-void

    .line 292
    :cond_0
    :try_start_1
    new-instance v0, Lcom/mnt/impl/f/g;

    invoke-direct {v0, p0, p1, p2}, Lcom/mnt/impl/f/g;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 9306
    invoke-static {v0}, Lcom/mnt/impl/l/c;->a(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 264
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 253
    new-instance v0, Lcom/mnt/impl/f/l;

    invoke-direct {v0, p0, p1, p2}, Lcom/mnt/impl/f/l;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    invoke-static {v0}, Lcom/mnt/impl/l/c;->a(Ljava/lang/Runnable;)V

    .line 255
    return-void
.end method

.method private b()V
    .locals 4

    .prologue
    .line 167
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 168
    sget-object v1, Lcom/mnt/impl/i/b/c;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/mnt/impl/f/l;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    sget-object v1, Lcom/mnt/impl/i/b/c;->v:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 170
    sget-object v1, Lcom/mnt/impl/i/b/c;->w:Ljava/lang/String;

    sget-object v2, Lcom/mnt/impl/e;->gb:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iget-object v1, p0, Lcom/mnt/impl/f/l;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/mnt/impl/i/b/a;->a(Landroid/content/Context;)Lcom/mnt/impl/i/b/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mnt/impl/i/b/a;->a(Landroid/content/ContentValues;)V

    .line 172
    iget-object v0, p0, Lcom/mnt/impl/f/l;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/mnt/impl/f/l;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mnt/impl/b/k;->f(Landroid/content/Context;Ljava/lang/String;)V

    .line 173
    return-void
.end method

.method private c()V
    .locals 4

    .prologue
    .line 180
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 181
    sget-object v1, Lcom/mnt/impl/i/b/c;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/mnt/impl/f/l;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    sget-object v1, Lcom/mnt/impl/i/b/c;->v:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 183
    sget-object v1, Lcom/mnt/impl/i/b/c;->w:Ljava/lang/String;

    sget-object v2, Lcom/mnt/impl/e;->gc:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    iget-object v1, p0, Lcom/mnt/impl/f/l;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/mnt/impl/i/b/a;->a(Landroid/content/Context;)Lcom/mnt/impl/i/b/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mnt/impl/i/b/a;->a(Landroid/content/ContentValues;)V

    .line 185
    iget-object v0, p0, Lcom/mnt/impl/f/l;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/mnt/impl/f/l;->i:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/mnt/impl/b/k;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 186
    return-void
.end method

.method private d()V
    .locals 4

    .prologue
    .line 194
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/mnt/impl/f/l;->g:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/mnt/impl/f/l;->e:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 196
    invoke-direct {p0}, Lcom/mnt/impl/f/l;->e()V

    .line 7206
    :try_start_0
    iget-wide v0, p0, Lcom/mnt/impl/f/l;->f:J

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 7208
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 199
    :cond_0
    return-void
.end method

.method private e()V
    .locals 4

    .prologue
    .line 226
    iget-boolean v0, p0, Lcom/mnt/impl/f/l;->l:Z

    if-eqz v0, :cond_0

    .line 227
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mnt/impl/f/l;->l:Z

    .line 228
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 229
    sget-object v1, Lcom/mnt/impl/i/b/c;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/mnt/impl/f/l;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    sget-object v1, Lcom/mnt/impl/i/b/c;->q:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 231
    iget-object v1, p0, Lcom/mnt/impl/f/l;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/mnt/impl/i/b/a;->a(Landroid/content/Context;)Lcom/mnt/impl/i/b/a;

    move-result-object v1

    .line 232
    invoke-virtual {v1, v0}, Lcom/mnt/impl/i/b/a;->a(Landroid/content/ContentValues;)V

    .line 234
    iget-object v0, p0, Lcom/mnt/impl/f/l;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/mnt/impl/i/b/a;->a(Ljava/lang/String;)V

    .line 236
    :cond_0
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/mnt/impl/e;->gd:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 237
    iget-object v1, p0, Lcom/mnt/impl/f/l;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 238
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 240
    sget-object v1, Lcom/mnt/impl/e;->ge:Ljava/lang/String;

    iget-object v2, p0, Lcom/mnt/impl/f/l;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 241
    iget-object v1, p0, Lcom/mnt/impl/f/l;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 243
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/mnt/impl/f/l;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mnt/impl/f/l;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3108
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    iget-boolean v0, p0, Lcom/mnt/impl/f/l;->k:Z

    if-eqz v0, :cond_2

    .line 85
    invoke-direct {p0}, Lcom/mnt/impl/f/l;->a()V

    goto :goto_0

    .line 88
    :cond_2
    iget v0, p0, Lcom/mnt/impl/f/l;->j:I

    if-nez v0, :cond_3

    .line 89
    invoke-direct {p0}, Lcom/mnt/impl/f/l;->a()V

    .line 3098
    :cond_3
    iget-object v0, p0, Lcom/mnt/impl/f/l;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3102
    iget v0, p0, Lcom/mnt/impl/f/l;->d:I

    packed-switch v0, :pswitch_data_0

    .line 3110
    invoke-direct {p0}, Lcom/mnt/impl/f/l;->d()V

    goto :goto_0

    .line 3104
    :pswitch_0
    invoke-direct {p0}, Lcom/mnt/impl/f/l;->d()V

    goto :goto_0

    .line 3217
    :pswitch_1
    invoke-direct {p0}, Lcom/mnt/impl/f/l;->e()V

    goto :goto_0

    .line 3102
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
