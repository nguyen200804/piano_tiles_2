.class public final Lcom/mnt/impl/f/h;
.super Lcom/mnt/impl/b/e;
.source "SourceFile"

# interfaces
.implements Lcom/mnt/impl/f/o$a$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mnt/impl/f/h$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mnt/impl/b/e",
        "<",
        "Ljava/lang/String;",
        ">;",
        "Lcom/mnt/impl/f/o$a$a;"
    }
.end annotation


# static fields
.field private static final c:Ljava/util/regex/Pattern;

.field private static final d:Ljava/util/regex/Pattern;

.field private static final e:Ljava/util/regex/Pattern;

.field private static final f:Ljava/util/regex/Pattern;

.field private static final g:Ljava/util/regex/Pattern;

.field private static h:Ljava/lang/String;

.field private static final i:Ljava/lang/String;

.field private static final r:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/mnt/impl/e/b;",
            ">;"
        }
    .end annotation
.end field

.field private static s:Z


# instance fields
.field public a:Z

.field public b:I

.field private j:I

.field private k:Lcom/mnt/impl/e/b;

.field private l:Lcom/mnt/impl/f/h$a;

.field private m:Landroid/content/Context;

.field private n:Z

.field private o:Ljava/lang/String;

.field private p:Z

.field private q:Z

.field private t:Z

.field private u:Ljava/lang/String;

.field private v:Lcom/mnt/impl/j/b;

.field private w:Landroid/content/ContentValues;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 54
    sget-object v0, Lcom/mnt/impl/e;->df:Ljava/lang/String;

    .line 61
    sget-object v0, Lcom/mnt/impl/e;->dg:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/mnt/impl/f/h;->c:Ljava/util/regex/Pattern;

    .line 62
    sget-object v0, Lcom/mnt/impl/e;->dh:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/mnt/impl/f/h;->d:Ljava/util/regex/Pattern;

    .line 63
    sget-object v0, Lcom/mnt/impl/e;->di:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/mnt/impl/f/h;->e:Ljava/util/regex/Pattern;

    .line 64
    sget-object v0, Lcom/mnt/impl/e;->dj:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/mnt/impl/f/h;->f:Ljava/util/regex/Pattern;

    .line 65
    sget-object v0, Lcom/mnt/impl/e;->dk:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/mnt/impl/f/h;->g:Ljava/util/regex/Pattern;

    .line 68
    sget-object v0, Lcom/mnt/impl/e;->dl:Ljava/lang/String;

    sput-object v0, Lcom/mnt/impl/f/h;->h:Ljava/lang/String;

    .line 70
    sget-object v0, Lcom/mnt/impl/e;->dm:Ljava/lang/String;

    sput-object v0, Lcom/mnt/impl/f/h;->i:Ljava/lang/String;

    .line 81
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/mnt/impl/f/h;->r:Ljava/util/Map;

    .line 83
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mnt/impl/f/h;->s:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/mnt/impl/e/b;Lcom/mnt/impl/f/h$a;Z)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 101
    invoke-direct {p0}, Lcom/mnt/impl/b/e;-><init>()V

    .line 73
    const/16 v0, 0x1e

    iput v0, p0, Lcom/mnt/impl/f/h;->j:I

    .line 78
    sget-object v0, Lcom/mnt/impl/e;->dn:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mnt/impl/f/h;->o:Ljava/lang/String;

    .line 79
    iput-boolean v1, p0, Lcom/mnt/impl/f/h;->p:Z

    .line 80
    iput-boolean v2, p0, Lcom/mnt/impl/f/h;->q:Z

    .line 85
    iput-boolean v1, p0, Lcom/mnt/impl/f/h;->t:Z

    .line 87
    iput-boolean v1, p0, Lcom/mnt/impl/f/h;->a:Z

    .line 89
    iput v2, p0, Lcom/mnt/impl/f/h;->b:I

    .line 102
    iput-object p2, p0, Lcom/mnt/impl/f/h;->k:Lcom/mnt/impl/e/b;

    .line 103
    iput-object p3, p0, Lcom/mnt/impl/f/h;->l:Lcom/mnt/impl/f/h$a;

    .line 104
    iput-boolean p4, p0, Lcom/mnt/impl/f/h;->n:Z

    .line 105
    iput-object p1, p0, Lcom/mnt/impl/f/h;->m:Landroid/content/Context;

    .line 106
    invoke-static {p1}, Lcom/mnt/impl/j/d;->b(Landroid/content/Context;)Lcom/mnt/impl/j/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mnt/impl/j/d;->a()Lcom/mnt/impl/j/b;

    move-result-object v0

    iput-object v0, p0, Lcom/mnt/impl/f/h;->v:Lcom/mnt/impl/j/b;

    .line 107
    iget-object v0, p0, Lcom/mnt/impl/f/h;->v:Lcom/mnt/impl/j/b;

    .line 1156
    iget-boolean v0, v0, Lcom/mnt/impl/j/b;->a:Z

    .line 107
    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/mnt/impl/f/h;->v:Lcom/mnt/impl/j/b;

    .line 1214
    iget v0, v0, Lcom/mnt/impl/j/b;->i:I

    .line 108
    iput v0, p0, Lcom/mnt/impl/f/h;->b:I

    .line 110
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 127
    invoke-direct {p0}, Lcom/mnt/impl/b/e;-><init>()V

    .line 73
    const/16 v0, 0x1e

    iput v0, p0, Lcom/mnt/impl/f/h;->j:I

    .line 78
    sget-object v0, Lcom/mnt/impl/e;->dn:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mnt/impl/f/h;->o:Ljava/lang/String;

    .line 79
    iput-boolean v1, p0, Lcom/mnt/impl/f/h;->p:Z

    .line 80
    iput-boolean v2, p0, Lcom/mnt/impl/f/h;->q:Z

    .line 85
    iput-boolean v1, p0, Lcom/mnt/impl/f/h;->t:Z

    .line 87
    iput-boolean v1, p0, Lcom/mnt/impl/f/h;->a:Z

    .line 89
    iput v2, p0, Lcom/mnt/impl/f/h;->b:I

    .line 128
    iput-object p2, p0, Lcom/mnt/impl/f/h;->u:Ljava/lang/String;

    .line 129
    iput-object p1, p0, Lcom/mnt/impl/f/h;->m:Landroid/content/Context;

    .line 130
    iput-boolean v2, p0, Lcom/mnt/impl/f/h;->t:Z

    .line 131
    new-instance v0, Lcom/mnt/impl/e/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mnt/impl/e/b;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mnt/impl/f/h;->k:Lcom/mnt/impl/e/b;

    .line 132
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/mnt/impl/e/b;)Lcom/mnt/impl/e/b;
    .locals 4

    .prologue
    .line 668
    if-nez p1, :cond_0

    .line 681
    :goto_0
    return-object p1

    .line 671
    :cond_0
    sget-object v0, Lcom/mnt/impl/f/h;->r:Ljava/util/Map;

    .line 18036
    iget-object v1, p1, Lcom/mnt/impl/e/b;->a:Ljava/lang/String;

    .line 671
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mnt/impl/e/b;

    .line 672
    if-nez v0, :cond_1

    .line 673
    invoke-static {p0}, Lcom/mnt/impl/b/h;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 19036
    iget-object v2, p1, Lcom/mnt/impl/e/b;->a:Ljava/lang/String;

    .line 673
    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 674
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 675
    new-instance v0, Lcom/mnt/impl/e/b;

    invoke-direct {v0, v1}, Lcom/mnt/impl/e/b;-><init>(Ljava/lang/String;)V

    .line 19077
    iget v1, p1, Lcom/mnt/impl/e/b;->g:I

    .line 19081
    iput v1, v0, Lcom/mnt/impl/e/b;->g:I

    .line 677
    sget-object v1, Lcom/mnt/impl/f/h;->r:Ljava/util/Map;

    .line 20036
    iget-object v2, v0, Lcom/mnt/impl/e/b;->a:Ljava/lang/String;

    .line 677
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, v0

    .line 678
    goto :goto_0

    :cond_1
    move-object p1, v0

    .line 681
    goto :goto_0
.end method

.method public static final declared-synchronized a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 769
    const-class v1, Lcom/mnt/impl/f/h;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/mnt/impl/f/h;->s:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 801
    :goto_0
    monitor-exit v1

    return-void

    .line 772
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    sput-boolean v0, Lcom/mnt/impl/f/h;->s:Z

    .line 773
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/mnt/impl/f/i;

    invoke-direct {v2, p0}, Lcom/mnt/impl/f/i;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 800
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 769
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Landroid/content/Context;Lcom/mnt/impl/e/b;Lcom/mnt/impl/f/h$a;Z)V
    .locals 1

    .prologue
    .line 621
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/mnt/impl/f/h;->a(Landroid/content/Context;Lcom/mnt/impl/e/b;Lcom/mnt/impl/f/h$a;ZLjava/lang/String;)V

    .line 622
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/mnt/impl/e/b;Lcom/mnt/impl/f/h$a;ZLjava/lang/String;)V
    .locals 2

    .prologue
    .line 634
    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/mnt/a/a;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 635
    :cond_0
    if-eqz p2, :cond_1

    .line 636
    invoke-interface {p2, p1}, Lcom/mnt/impl/f/h$a;->a(Lcom/mnt/impl/e/b;)V

    .line 639
    :cond_1
    invoke-static {p0, p1}, Lcom/mnt/impl/f/h;->a(Landroid/content/Context;Lcom/mnt/impl/e/b;)Lcom/mnt/impl/e/b;

    move-result-object v0

    .line 16069
    iget-boolean v1, p1, Lcom/mnt/impl/e/b;->f:Z

    .line 640
    invoke-static {v0, p3, v1}, Lcom/mnt/impl/f/h;->a(Lcom/mnt/impl/e/b;ZZ)Z

    move-result v1

    .line 642
    if-eqz v1, :cond_5

    .line 643
    new-instance v0, Lcom/mnt/impl/f/h;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/mnt/impl/f/h;-><init>(Landroid/content/Context;Lcom/mnt/impl/e/b;Lcom/mnt/impl/f/h$a;Z)V

    .line 644
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 16597
    iput-object p4, v0, Lcom/mnt/impl/f/h;->o:Ljava/lang/String;

    .line 17069
    :cond_2
    iget-boolean v1, p1, Lcom/mnt/impl/e/b;->f:Z

    .line 647
    if-eqz v1, :cond_3

    .line 17118
    const/4 v1, 0x4

    iput v1, v0, Lcom/mnt/impl/f/h;->b:I

    .line 650
    :cond_3
    invoke-virtual {v0}, Lcom/mnt/impl/f/h;->c()V

    .line 657
    :cond_4
    :goto_0
    return-void

    .line 653
    :cond_5
    if-eqz p2, :cond_4

    .line 654
    invoke-interface {p2, v0}, Lcom/mnt/impl/f/h$a;->a(Lcom/mnt/impl/e/b;)V

    goto :goto_0
.end method

.method private static a(Lcom/mnt/impl/e/b;ZZ)Z
    .locals 1

    .prologue
    .line 709
    if-nez p2, :cond_0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/mnt/impl/e/b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    .line 20044
    iget-object v0, p0, Lcom/mnt/impl/e/b;->c:Ljava/lang/String;

    .line 709
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 748
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 749
    :cond_0
    const/4 v0, 0x0

    .line 762
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x1

    .line 402
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 409
    :cond_0
    :goto_0
    return-object v0

    .line 406
    :cond_1
    sget-object v1, Lcom/mnt/impl/e;->du:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x2

    if-lt v2, v3, :cond_0

    aget-object v2, v1, v4

    if-eqz v2, :cond_0

    .line 407
    aget-object v0, v1, v4

    sget-object v1, Lcom/mnt/impl/e;->dv:Ljava/lang/String;

    sget-object v2, Lcom/mnt/impl/e;->dw:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/mnt/impl/e;->dx:Ljava/lang/String;

    sget-object v2, Lcom/mnt/impl/e;->dy:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 382
    iget-object v0, p0, Lcom/mnt/impl/f/h;->m:Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 392
    :cond_0
    :goto_0
    return-object p1

    .line 386
    :cond_1
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 387
    sget-object v1, Lcom/mnt/impl/e;->dt:Ljava/lang/String;

    iget-object v2, p0, Lcom/mnt/impl/f/h;->m:Landroid/content/Context;

    invoke-static {v2, p2}, Lcom/mnt/impl/b/k;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;)Lcom/mnt/impl/e/b;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 688
    if-nez p0, :cond_0

    move-object v0, v1

    .line 698
    :goto_0
    return-object v0

    .line 693
    :cond_0
    sget-object v0, Lcom/mnt/impl/f/h;->r:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mnt/impl/e/b;

    .line 20040
    iget-object v3, v0, Lcom/mnt/impl/e/b;->b:Ljava/lang/String;

    .line 694
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/mnt/impl/e/b;->a()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 698
    goto :goto_0
.end method

.method private d(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 290
    invoke-direct {p0, p1}, Lcom/mnt/impl/f/h;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 291
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 292
    new-instance v0, Ljava/lang/Exception;

    sget-object v1, Lcom/mnt/impl/f/h;->h:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 294
    :cond_0
    invoke-direct {p0, v0}, Lcom/mnt/impl/f/h;->f(Ljava/lang/String;)V

    .line 296
    return-void
.end method

.method static synthetic e()Ljava/util/Map;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/mnt/impl/f/h;->r:Ljava/util/Map;

    return-object v0
.end method

.method private e(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 305
    new-instance v0, Lcom/mnt/impl/f/o$a;

    invoke-direct {v0, p1, p0}, Lcom/mnt/impl/f/o$a;-><init>(Ljava/lang/String;Lcom/mnt/impl/f/o$a$a;)V

    .line 306
    iget-object v1, p0, Lcom/mnt/impl/f/h;->m:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/mnt/impl/f/o;->a(Landroid/content/Context;Lcom/mnt/impl/f/o$a;)V

    .line 307
    :goto_0
    iget-boolean v0, p0, Lcom/mnt/impl/f/h;->q:Z

    if-eqz v0, :cond_0

    .line 309
    const-wide/16 v0, 0x12c

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 311
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 314
    :cond_0
    iget-boolean v0, p0, Lcom/mnt/impl/f/h;->p:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mnt/impl/f/h;->k:Lcom/mnt/impl/e/b;

    .line 11044
    iget-object v0, v0, Lcom/mnt/impl/e/b;->c:Ljava/lang/String;

    .line 314
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 315
    invoke-direct {p0, p1}, Lcom/mnt/impl/f/h;->d(Ljava/lang/String;)V

    .line 317
    :cond_1
    return-void
.end method

.method private f(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 342
    iget-object v1, p0, Lcom/mnt/impl/f/h;->k:Lcom/mnt/impl/e/b;

    .line 11719
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 11722
    sget-object v2, Lcom/mnt/impl/e;->dM:Ljava/lang/String;

    .line 11723
    sget-object v0, Lcom/mnt/impl/e;->dN:Ljava/lang/String;

    .line 11724
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 11725
    if-ltz v3, :cond_1

    .line 11728
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 11729
    if-ltz v0, :cond_1

    .line 11730
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 11731
    sget-object v3, Lcom/mnt/impl/e;->dO:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 11732
    if-ltz v3, :cond_0

    .line 11733
    const/4 v4, 0x0

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 11735
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/mnt/impl/e;->dP:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v4, Lcom/mnt/impl/e;->dP:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 12052
    :cond_1
    iput-object p1, v1, Lcom/mnt/impl/e/b;->c:Ljava/lang/String;

    .line 343
    iget-object v0, p0, Lcom/mnt/impl/f/h;->k:Lcom/mnt/impl/e/b;

    .line 12061
    iget-wide v0, v0, Lcom/mnt/impl/e/b;->e:J

    .line 344
    iget-object v2, p0, Lcom/mnt/impl/f/h;->k:Lcom/mnt/impl/e/b;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long/2addr v0, v4

    .line 13056
    iput-wide v0, v2, Lcom/mnt/impl/e/b;->e:J

    .line 345
    iget-object v0, p0, Lcom/mnt/impl/f/h;->k:Lcom/mnt/impl/e/b;

    .line 13061
    iget-wide v0, v0, Lcom/mnt/impl/e/b;->e:J

    .line 345
    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 347
    sget-object v0, Lcom/mnt/impl/f/h;->r:Ljava/util/Map;

    iget-object v1, p0, Lcom/mnt/impl/f/h;->k:Lcom/mnt/impl/e/b;

    .line 14036
    iget-object v1, v1, Lcom/mnt/impl/e/b;->a:Ljava/lang/String;

    .line 347
    iget-object v2, p0, Lcom/mnt/impl/f/h;->k:Lcom/mnt/impl/e/b;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    iget-object v0, p0, Lcom/mnt/impl/f/h;->m:Landroid/content/Context;

    invoke-static {v0}, Lcom/mnt/impl/b/h;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 350
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 351
    iget-object v1, p0, Lcom/mnt/impl/f/h;->k:Lcom/mnt/impl/e/b;

    .line 15036
    iget-object v1, v1, Lcom/mnt/impl/e/b;->a:Ljava/lang/String;

    .line 351
    iget-object v2, p0, Lcom/mnt/impl/f/h;->k:Lcom/mnt/impl/e/b;

    invoke-virtual {v2}, Lcom/mnt/impl/e/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 352
    invoke-static {v0}, Lcom/mnt/impl/b/h;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 354
    :cond_2
    return-void
.end method

.method static synthetic f()Z
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mnt/impl/f/h;->s:Z

    return v0
.end method

.method private g()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 149
    iget-boolean v0, p0, Lcom/mnt/impl/f/h;->t:Z

    if-eqz v0, :cond_2

    .line 152
    :try_start_0
    iget-object v0, p0, Lcom/mnt/impl/f/h;->u:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/mnt/impl/f/h;->j(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 157
    iget-object v2, p0, Lcom/mnt/impl/f/h;->l:Lcom/mnt/impl/f/h$a;

    if-eqz v2, :cond_0

    .line 158
    iget-object v2, p0, Lcom/mnt/impl/f/h;->l:Lcom/mnt/impl/f/h$a;

    invoke-interface {v2, v1}, Lcom/mnt/impl/f/h$a;->a(Lcom/mnt/impl/e/b;)V

    .line 164
    :cond_0
    :goto_0
    return-object v0

    .line 155
    :catch_0
    move-exception v0

    .line 157
    iget-object v0, p0, Lcom/mnt/impl/f/h;->l:Lcom/mnt/impl/f/h$a;

    if-eqz v0, :cond_3

    .line 158
    iget-object v0, p0, Lcom/mnt/impl/f/h;->l:Lcom/mnt/impl/f/h$a;

    invoke-interface {v0, v1}, Lcom/mnt/impl/f/h$a;->a(Lcom/mnt/impl/e/b;)V

    move-object v0, v1

    goto :goto_0

    .line 157
    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/mnt/impl/f/h;->l:Lcom/mnt/impl/f/h$a;

    if-eqz v2, :cond_1

    .line 158
    iget-object v2, p0, Lcom/mnt/impl/f/h;->l:Lcom/mnt/impl/f/h$a;

    invoke-interface {v2, v1}, Lcom/mnt/impl/f/h$a;->a(Lcom/mnt/impl/e/b;)V

    :cond_1
    throw v0

    .line 162
    :cond_2
    invoke-direct {p0}, Lcom/mnt/impl/f/h;->h()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method private static g(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpGet;
    .locals 2

    .prologue
    .line 422
    :try_start_0
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v0, p0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 425
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-static {p0}, Lcom/mnt/impl/f/h;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private h()Ljava/lang/String;
    .locals 6

    .prologue
    .line 173
    iget-object v0, p0, Lcom/mnt/impl/f/h;->k:Lcom/mnt/impl/e/b;

    .line 2036
    iget-object v0, v0, Lcom/mnt/impl/e/b;->a:Ljava/lang/String;

    .line 173
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    monitor-enter v1

    .line 175
    :try_start_0
    iget-object v0, p0, Lcom/mnt/impl/f/h;->m:Landroid/content/Context;

    iget-object v2, p0, Lcom/mnt/impl/f/h;->k:Lcom/mnt/impl/e/b;

    invoke-static {v0, v2}, Lcom/mnt/impl/f/h;->a(Landroid/content/Context;Lcom/mnt/impl/e/b;)Lcom/mnt/impl/e/b;

    move-result-object v0

    .line 176
    iget-object v2, p0, Lcom/mnt/impl/f/h;->k:Lcom/mnt/impl/e/b;

    .line 2048
    iget-object v2, v2, Lcom/mnt/impl/e/b;->d:Ljava/lang/String;

    .line 177
    iget-boolean v3, p0, Lcom/mnt/impl/f/h;->n:Z

    iget-object v4, p0, Lcom/mnt/impl/f/h;->k:Lcom/mnt/impl/e/b;

    .line 2069
    iget-boolean v4, v4, Lcom/mnt/impl/e/b;->f:Z

    .line 177
    invoke-static {v0, v3, v4}, Lcom/mnt/impl/f/h;->a(Lcom/mnt/impl/e/b;ZZ)Z

    move-result v3

    .line 179
    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/mnt/impl/f/h;->a:Z

    if-eqz v3, :cond_3

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/mnt/impl/f/h;->k:Lcom/mnt/impl/e/b;

    .line 3040
    iget-object v0, v0, Lcom/mnt/impl/e/b;->b:Ljava/lang/String;

    .line 180
    invoke-direct {p0, v2, v0}, Lcom/mnt/impl/f/h;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 183
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    iput-object v2, p0, Lcom/mnt/impl/f/h;->w:Landroid/content/ContentValues;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    :try_start_1
    iget-object v2, p0, Lcom/mnt/impl/f/h;->w:Landroid/content/ContentValues;

    sget-object v3, Lcom/mnt/impl/i/b/c;->m:Ljava/lang/String;

    sget-object v4, Lcom/mnt/impl/e;->do:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    iget-object v2, p0, Lcom/mnt/impl/f/h;->w:Landroid/content/ContentValues;

    sget-object v3, Lcom/mnt/impl/i/b/c;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/mnt/impl/f/h;->k:Lcom/mnt/impl/e/b;

    .line 4040
    iget-object v4, v4, Lcom/mnt/impl/e/b;->b:Ljava/lang/String;

    .line 186
    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    iget-object v2, p0, Lcom/mnt/impl/f/h;->w:Landroid/content/ContentValues;

    sget-object v3, Lcom/mnt/impl/i/b/c;->k:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 188
    iget-object v2, p0, Lcom/mnt/impl/f/h;->w:Landroid/content/ContentValues;

    sget-object v3, Lcom/mnt/impl/i/b/c;->s:Ljava/lang/String;

    const/16 v4, 0x15

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 189
    iget-object v2, p0, Lcom/mnt/impl/f/h;->w:Landroid/content/ContentValues;

    sget-object v3, Lcom/mnt/impl/i/b/c;->t:Ljava/lang/String;

    iget-object v4, p0, Lcom/mnt/impl/f/h;->v:Lcom/mnt/impl/j/b;

    .line 4222
    iget v4, v4, Lcom/mnt/impl/j/b;->b:I

    .line 189
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 190
    iget-object v2, p0, Lcom/mnt/impl/f/h;->w:Landroid/content/ContentValues;

    sget-object v3, Lcom/mnt/impl/i/b/c;->u:Ljava/lang/String;

    iget-object v4, p0, Lcom/mnt/impl/f/h;->v:Lcom/mnt/impl/j/b;

    .line 4226
    iget v4, v4, Lcom/mnt/impl/j/b;->c:I

    .line 190
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4236
    iget v2, p0, Lcom/mnt/impl/f/h;->b:I

    packed-switch v2, :pswitch_data_0

    .line 4250
    invoke-direct {p0, v0}, Lcom/mnt/impl/f/h;->d(Ljava/lang/String;)V

    .line 192
    :goto_0
    iget-object v0, p0, Lcom/mnt/impl/f/h;->w:Landroid/content/ContentValues;

    sget-object v2, Lcom/mnt/impl/i/b/c;->l:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 193
    iget-object v0, p0, Lcom/mnt/impl/f/h;->w:Landroid/content/ContentValues;

    sget-object v2, Lcom/mnt/impl/i/b/c;->y:Ljava/lang/String;

    iget v3, p0, Lcom/mnt/impl/f/h;->j:I

    rsub-int/lit8 v3, v3, 0x1e

    add-int/lit8 v3, v3, -0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lcom/mnt/impl/f/h;->k:Lcom/mnt/impl/e/b;

    .line 6044
    iget-object v0, v0, Lcom/mnt/impl/e/b;->c:Ljava/lang/String;

    .line 195
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/mnt/impl/f/h;->k:Lcom/mnt/impl/e/b;

    .line 7044
    iget-object v0, v0, Lcom/mnt/impl/e/b;->c:Ljava/lang/String;

    .line 195
    invoke-static {v0}, Lcom/mnt/impl/b/k;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 196
    iget-object v0, p0, Lcom/mnt/impl/f/h;->k:Lcom/mnt/impl/e/b;

    .line 8044
    iget-object v0, v0, Lcom/mnt/impl/e/b;->c:Ljava/lang/String;

    .line 196
    invoke-static {v0}, Lcom/mnt/impl/f/h;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 198
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/mnt/impl/e;->dp:Ljava/lang/String;

    .line 199
    :goto_1
    iget-object v2, p0, Lcom/mnt/impl/f/h;->w:Landroid/content/ContentValues;

    sget-object v3, Lcom/mnt/impl/i/b/c;->n:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    iget-object v0, p0, Lcom/mnt/impl/f/h;->w:Landroid/content/ContentValues;

    sget-object v2, Lcom/mnt/impl/i/b/c;->m:Ljava/lang/String;

    sget-object v3, Lcom/mnt/impl/e;->dr:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 220
    :cond_1
    :goto_2
    :try_start_2
    iget-object v0, p0, Lcom/mnt/impl/f/h;->m:Landroid/content/Context;

    invoke-static {v0}, Lcom/mnt/impl/i/b/a;->a(Landroid/content/Context;)Lcom/mnt/impl/i/b/a;

    move-result-object v0

    iget-object v2, p0, Lcom/mnt/impl/f/h;->w:Landroid/content/ContentValues;

    invoke-virtual {v0, v2}, Lcom/mnt/impl/i/b/a;->a(Landroid/content/ContentValues;)V

    .line 224
    :goto_3
    iget-object v0, p0, Lcom/mnt/impl/f/h;->k:Lcom/mnt/impl/e/b;

    .line 10044
    iget-object v0, v0, Lcom/mnt/impl/e/b;->c:Ljava/lang/String;

    .line 224
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v0

    .line 4238
    :pswitch_0
    :try_start_3
    invoke-direct {p0, v0}, Lcom/mnt/impl/f/h;->d(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 206
    :catch_0
    move-exception v0

    .line 207
    :try_start_4
    iget-object v2, p0, Lcom/mnt/impl/f/h;->w:Landroid/content/ContentValues;

    sget-object v3, Lcom/mnt/impl/i/b/c;->y:Ljava/lang/String;

    iget v4, p0, Lcom/mnt/impl/f/h;->j:I

    rsub-int/lit8 v4, v4, 0x1e

    add-int/lit8 v4, v4, -0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    iget-object v2, p0, Lcom/mnt/impl/f/h;->w:Landroid/content/ContentValues;

    sget-object v3, Lcom/mnt/impl/i/b/c;->l:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 209
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/mnt/impl/f/h;->f(Ljava/lang/String;)V

    .line 210
    sget-object v2, Lcom/mnt/impl/f/h;->h:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 213
    iget-object v2, p0, Lcom/mnt/impl/f/h;->w:Landroid/content/ContentValues;

    sget-object v3, Lcom/mnt/impl/i/b/c;->m:Ljava/lang/String;

    sget-object v4, Lcom/mnt/impl/e;->ds:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    iget-object v2, p0, Lcom/mnt/impl/f/h;->w:Landroid/content/ContentValues;

    sget-object v3, Lcom/mnt/impl/i/b/c;->o:Ljava/lang/String;

    invoke-static {v0}, Lcom/mnt/impl/b/k;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 225
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 4241
    :pswitch_1
    :try_start_5
    invoke-direct {p0, v0}, Lcom/mnt/impl/f/h;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4278
    :pswitch_2
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/mnt/impl/f/h;->p:Z

    .line 4279
    invoke-direct {p0, v0}, Lcom/mnt/impl/f/h;->e(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 5263
    :pswitch_3
    :try_start_6
    invoke-direct {p0, v0}, Lcom/mnt/impl/f/h;->d(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    .line 5267
    :catch_1
    move-exception v2

    :try_start_7
    invoke-direct {p0, v0}, Lcom/mnt/impl/f/h;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 198
    :cond_2
    sget-object v0, Lcom/mnt/impl/e;->dq:Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_1

    .line 222
    :cond_3
    :try_start_8
    iget-object v2, p0, Lcom/mnt/impl/f/h;->k:Lcom/mnt/impl/e/b;

    .line 9044
    iget-object v0, v0, Lcom/mnt/impl/e/b;->c:Ljava/lang/String;

    .line 9052
    iput-object v0, v2, Lcom/mnt/impl/e/b;->c:Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_3

    .line 4236
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static h(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 438
    .line 439
    sget-object v0, Lcom/mnt/impl/e;->dz:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 440
    if-gtz v0, :cond_1

    .line 463
    :cond_0
    :goto_0
    return-object p0

    .line 443
    :cond_1
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 444
    sget-object v3, Lcom/mnt/impl/e;->dA:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 445
    if-eqz v3, :cond_0

    array-length v1, v3

    if-eqz v1, :cond_0

    .line 448
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    .line 449
    array-length v5, v3

    move v1, v2

    :goto_1
    if-ge v1, v5, :cond_3

    aget-object v0, v3, v1

    .line 450
    sget-object v6, Lcom/mnt/impl/e;->dB:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 451
    if-lez v6, :cond_2

    .line 454
    invoke-virtual {v0, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 455
    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 457
    :try_start_0
    sget-object v6, Lcom/mnt/impl/e;->dC:Ljava/lang/String;

    invoke-static {v0, v6}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 460
    :goto_2
    invoke-virtual {v4, v7, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 449
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 462
    :cond_3
    sget-object v0, Lcom/mnt/impl/f/h;->g:Ljava/util/regex/Pattern;

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :catch_0
    move-exception v6

    goto :goto_2
.end method

.method private static i(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 473
    sget-object v0, Lcom/mnt/impl/f/h;->i:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 474
    if-ltz v0, :cond_0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 475
    const/4 v0, 0x1

    .line 476
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private j(Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    .prologue
    const/4 v1, 0x0

    const v10, 0x927c0

    const/4 v2, 0x0

    const/4 v9, 0x1

    .line 491
    :cond_0
    :goto_0
    iget v0, p0, Lcom/mnt/impl/f/h;->j:I

    if-gtz v0, :cond_2

    move-object p1, v1

    .line 593
    :cond_1
    :goto_1
    return-object p1

    .line 494
    :cond_2
    iget v0, p0, Lcom/mnt/impl/f/h;->j:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/mnt/impl/f/h;->j:I

    .line 495
    sget-object v0, Lcom/mnt/impl/e;->dD:Ljava/lang/String;

    .line 496
    sget-object v3, Lcom/mnt/impl/e;->dE:Ljava/lang/String;

    .line 497
    invoke-static {p1}, Lcom/mnt/impl/f/h;->i(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 498
    sget-object v0, Lcom/mnt/impl/f/h;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 502
    :cond_3
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 503
    invoke-virtual {v4}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v4}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 507
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 508
    invoke-static {v0, v10}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 509
    invoke-static {v0, v10}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 510
    new-instance v3, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v3, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 511
    invoke-virtual {v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    const-string v5, "http.protocol.handle-redirects"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 512
    invoke-static {p1}, Lcom/mnt/impl/f/h;->g(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpGet;

    move-result-object v0

    .line 514
    iget-object v5, p0, Lcom/mnt/impl/f/h;->o:Ljava/lang/String;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/mnt/impl/f/h;->o:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_4

    .line 515
    sget-object v5, Lcom/mnt/impl/e;->dF:Ljava/lang/String;

    iget-object v6, p0, Lcom/mnt/impl/f/h;->o:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    :cond_4
    invoke-virtual {v3, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 519
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    .line 521
    iget-object v5, p0, Lcom/mnt/impl/f/h;->k:Lcom/mnt/impl/e/b;

    if-eqz v5, :cond_5

    .line 522
    iget-object v5, p0, Lcom/mnt/impl/f/h;->k:Lcom/mnt/impl/e/b;

    .line 16036
    iget-object v5, v5, Lcom/mnt/impl/e/b;->a:Ljava/lang/String;

    .line 525
    :cond_5
    const/16 v5, 0x12c

    if-ge v5, v3, :cond_b

    const/16 v5, 0x190

    if-ge v3, v5, :cond_b

    .line 526
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v3

    .line 529
    array-length v5, v3

    move v0, v2

    :goto_2
    if-ge v0, v5, :cond_f

    aget-object v6, v3, v0

    .line 530
    invoke-interface {v6}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v7

    .line 532
    sget-object v8, Lcom/mnt/impl/e;->dG:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 536
    invoke-interface {v6}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object p1

    .line 537
    iget v0, p0, Lcom/mnt/impl/f/h;->j:I

    const/16 v3, 0x1d

    if-ne v0, v3, :cond_7

    .line 538
    iget-object v0, p0, Lcom/mnt/impl/f/h;->w:Landroid/content/ContentValues;

    if-nez v0, :cond_6

    .line 539
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/mnt/impl/f/h;->w:Landroid/content/ContentValues;

    .line 541
    :cond_6
    iget-object v0, p0, Lcom/mnt/impl/f/h;->w:Landroid/content/ContentValues;

    sget-object v3, Lcom/mnt/impl/i/b/c;->x:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 543
    :cond_7
    invoke-static {p1}, Lcom/mnt/impl/f/h;->i(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 546
    sget-object v0, Lcom/mnt/impl/e;->dH:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 547
    const/4 v0, -0x1

    .line 548
    invoke-virtual {v4}, Ljava/net/URL;->getPort()I

    move-result v3

    if-lez v3, :cond_8

    .line 549
    invoke-virtual {v4}, Ljava/net/URL;->getPort()I

    move-result v0

    .line 553
    :cond_8
    if-lez v0, :cond_9

    .line 554
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v5, Lcom/mnt/impl/e;->dI:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v4}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/mnt/impl/e;->dJ:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    move-object p1, v0

    .line 559
    goto/16 :goto_0

    .line 556
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Lcom/mnt/impl/e;->dK:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 529
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    .line 565
    :cond_b
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    sget-object v4, Lcom/mnt/impl/e;->dL:Ljava/lang/String;

    invoke-static {v0, v4}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 566
    const/16 v4, 0xc8

    if-ne v3, v4, :cond_f

    .line 567
    sget-object v3, Lcom/mnt/impl/f/h;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 568
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 569
    invoke-virtual {v3, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 572
    :cond_c
    sget-object v3, Lcom/mnt/impl/f/h;->d:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 573
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 574
    invoke-virtual {v3, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 577
    :cond_d
    sget-object v3, Lcom/mnt/impl/f/h;->e:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 578
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 579
    invoke-virtual {v3, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 582
    :cond_e
    sget-object v3, Lcom/mnt/impl/f/h;->f:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 583
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 584
    invoke-virtual {v0, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_f
    move-object p1, v1

    .line 593
    goto/16 :goto_1
.end method


# virtual methods
.method protected final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/mnt/impl/f/h;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 53
    .line 20603
    iget-object v0, p0, Lcom/mnt/impl/f/h;->l:Lcom/mnt/impl/f/h$a;

    if-eqz v0, :cond_0

    .line 20605
    iget-object v0, p0, Lcom/mnt/impl/f/h;->l:Lcom/mnt/impl/f/h$a;

    iget-object v1, p0, Lcom/mnt/impl/f/h;->k:Lcom/mnt/impl/e/b;

    invoke-interface {v0, v1}, Lcom/mnt/impl/f/h$a;->a(Lcom/mnt/impl/e/b;)V

    .line 53
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 321
    invoke-direct {p0, p1}, Lcom/mnt/impl/f/h;->f(Ljava/lang/String;)V

    .line 323
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mnt/impl/f/h;->q:Z

    .line 324
    return-void
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 329
    iget-boolean v0, p0, Lcom/mnt/impl/f/h;->p:Z

    if-nez v0, :cond_0

    .line 330
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mnt/impl/f/h;->f(Ljava/lang/String;)V

    .line 332
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mnt/impl/f/h;->q:Z

    .line 333
    return-void
.end method
