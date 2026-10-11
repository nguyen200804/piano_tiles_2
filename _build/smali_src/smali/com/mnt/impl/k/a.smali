.class public final Lcom/mnt/impl/k/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/mnt/impl/e/g;

.field private c:Z

.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/mnt/impl/e;->pv:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/mnt/impl/e/g;ZLjava/lang/String;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/mnt/impl/k/a;->a:Landroid/content/Context;

    .line 41
    iput-object p2, p0, Lcom/mnt/impl/k/a;->b:Lcom/mnt/impl/e/g;

    .line 42
    iput-boolean p3, p0, Lcom/mnt/impl/k/a;->c:Z

    .line 43
    iput-object p4, p0, Lcom/mnt/impl/k/a;->d:Ljava/lang/String;

    .line 44
    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/mnt/impl/e/g$a;Z)V
    .locals 7

    .prologue
    .line 123
    .line 9351
    iget-object v3, p1, Lcom/mnt/impl/e/g$a;->a:Lcom/mnt/impl/e/g$b;

    .line 124
    new-instance v0, Lcom/mnt/impl/e/b;

    .line 9446
    iget-object v1, v3, Lcom/mnt/impl/e/g$b;->a:Ljava/lang/String;

    .line 9466
    iget-object v2, v3, Lcom/mnt/impl/e/g$b;->e:Ljava/lang/String;

    .line 10454
    iget-object v3, v3, Lcom/mnt/impl/e/g$b;->b:Ljava/lang/String;

    .line 11367
    iget-wide v4, p1, Lcom/mnt/impl/e/g$a;->f:J

    .line 11371
    iget v6, p1, Lcom/mnt/impl/e/g$a;->g:I

    .line 124
    invoke-direct/range {v0 .. v6}, Lcom/mnt/impl/e/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V

    .line 125
    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p2}, Lcom/mnt/impl/f/h;->a(Landroid/content/Context;Lcom/mnt/impl/e/b;Lcom/mnt/impl/f/h$a;Z)V

    .line 126
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/mnt/impl/e/g;)V
    .locals 2

    .prologue
    .line 136
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/mnt/impl/k/a;->a(Landroid/content/Context;Lcom/mnt/impl/e/g;ZLjava/lang/String;)V

    .line 137
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/mnt/impl/e/g;ZLjava/lang/String;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 149
    invoke-static {p0}, Lcom/mnt/impl/j/d;->b(Landroid/content/Context;)Lcom/mnt/impl/j/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mnt/impl/j/d;->a()Lcom/mnt/impl/j/b;

    move-result-object v0

    .line 13156
    iget-boolean v3, v0, Lcom/mnt/impl/j/b;->a:Z

    .line 12254
    if-eqz v3, :cond_1

    .line 12258
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 12259
    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 12261
    iget-object v0, v0, Lcom/mnt/impl/j/b;->e:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 12262
    sget-object v5, Lcom/mnt/impl/e;->iu:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 12263
    aget-object v5, v0, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 12264
    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 12265
    if-lt v3, v5, :cond_0

    if-ge v3, v0, :cond_0

    move v0, v1

    .line 150
    :goto_0
    if-eqz v0, :cond_2

    .line 154
    :goto_1
    return-void

    :cond_1
    move v0, v2

    .line 12271
    goto :goto_0

    .line 153
    :cond_2
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mnt/impl/k/a;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/mnt/impl/k/a;-><init>(Landroid/content/Context;Lcom/mnt/impl/e/g;ZLjava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_1
.end method


# virtual methods
.method public final run()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x1

    .line 48
    iget-object v0, p0, Lcom/mnt/impl/k/a;->b:Lcom/mnt/impl/e/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mnt/impl/k/a;->b:Lcom/mnt/impl/e/g;

    .line 1297
    iget-object v0, v0, Lcom/mnt/impl/e/g;->f:Ljava/util/List;

    .line 48
    if-nez v0, :cond_1

    .line 97
    :cond_0
    return-void

    .line 52
    :cond_1
    iget-object v0, p0, Lcom/mnt/impl/k/a;->b:Lcom/mnt/impl/e/g;

    .line 2297
    iget-object v0, v0, Lcom/mnt/impl/e/g;->f:Ljava/util/List;

    .line 52
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/mnt/impl/e/g$a;

    .line 2351
    iget-object v3, v6, Lcom/mnt/impl/e/g$a;->a:Lcom/mnt/impl/e/g$b;

    .line 54
    if-eqz v3, :cond_2

    .line 57
    iget-object v0, p0, Lcom/mnt/impl/k/a;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/mnt/impl/k/a;->d:Ljava/lang/String;

    .line 2466
    iget-object v1, v3, Lcom/mnt/impl/e/g$b;->e:Ljava/lang/String;

    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3359
    iget v0, v6, Lcom/mnt/impl/e/g$a;->c:I

    .line 57
    if-eq v0, v9, :cond_3

    .line 59
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 60
    sget-object v1, Lcom/mnt/impl/i/b/c;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/mnt/impl/k/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    sget-object v1, Lcom/mnt/impl/i/b/c;->d:Ljava/lang/String;

    .line 3446
    iget-object v2, v3, Lcom/mnt/impl/e/g$b;->a:Ljava/lang/String;

    .line 61
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    sget-object v1, Lcom/mnt/impl/i/b/c;->j:Ljava/lang/String;

    sget-object v2, Lcom/mnt/impl/e;->pw:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    iget-object v1, p0, Lcom/mnt/impl/k/a;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/mnt/impl/i/b/a;->a(Landroid/content/Context;)Lcom/mnt/impl/i/b/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mnt/impl/i/b/a;->a(Landroid/content/ContentValues;)V

    .line 64
    new-instance v0, Lcom/mnt/impl/e/b;

    .line 4446
    iget-object v1, v3, Lcom/mnt/impl/e/g$b;->a:Ljava/lang/String;

    .line 4466
    iget-object v2, v3, Lcom/mnt/impl/e/g$b;->e:Ljava/lang/String;

    .line 5454
    iget-object v3, v3, Lcom/mnt/impl/e/g$b;->b:Ljava/lang/String;

    .line 6367
    iget-wide v4, v6, Lcom/mnt/impl/e/g$a;->f:J

    .line 6371
    iget v6, v6, Lcom/mnt/impl/e/g$a;->g:I

    .line 64
    invoke-direct/range {v0 .. v6}, Lcom/mnt/impl/e/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V

    .line 65
    new-instance v1, Lcom/mnt/impl/f/h;

    iget-object v2, p0, Lcom/mnt/impl/k/a;->a:Landroid/content/Context;

    const/4 v3, 0x0

    iget-boolean v4, p0, Lcom/mnt/impl/k/a;->c:Z

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/mnt/impl/f/h;-><init>(Landroid/content/Context;Lcom/mnt/impl/e/b;Lcom/mnt/impl/f/h$a;Z)V

    .line 7135
    iput-boolean v8, v1, Lcom/mnt/impl/f/h;->a:Z

    .line 8118
    iput v9, v1, Lcom/mnt/impl/f/h;->b:I

    .line 69
    invoke-virtual {v1}, Lcom/mnt/impl/f/h;->c()V

    goto :goto_0

    .line 8359
    :cond_3
    iget v0, v6, Lcom/mnt/impl/e/g$a;->c:I

    .line 78
    if-ne v0, v8, :cond_2

    .line 8379
    iget v0, v6, Lcom/mnt/impl/e/g$a;->h:I

    .line 88
    packed-switch v0, :pswitch_data_0

    .line 93
    iget-object v0, p0, Lcom/mnt/impl/k/a;->a:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/mnt/impl/k/a;->c:Z

    invoke-static {v0, v6, v1}, Lcom/mnt/impl/k/a;->a(Landroid/content/Context;Lcom/mnt/impl/e/g$a;Z)V

    goto :goto_0

    .line 90
    :pswitch_0
    iget-object v0, p0, Lcom/mnt/impl/k/a;->a:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/mnt/impl/k/a;->c:Z

    invoke-static {v0, v6, v1}, Lcom/mnt/impl/k/a;->a(Landroid/content/Context;Lcom/mnt/impl/e/g$a;Z)V

    goto/16 :goto_0

    .line 88
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
