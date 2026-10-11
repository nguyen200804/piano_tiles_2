.class public final Lcom/mnt/impl/f/d;
.super Lcom/mnt/impl/b/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mnt/impl/f/d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mnt/impl/b/e",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/String;

.field private static c:Lcom/mnt/impl/e/g;

.field private static f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Ljava/lang/String;

.field private d:Landroid/content/Context;

.field private e:Lcom/mnt/impl/f/d$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/mnt/impl/e;->dQ:Ljava/lang/String;

    sput-object v0, Lcom/mnt/impl/f/d;->b:Ljava/lang/String;

    .line 121
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/mnt/impl/f/d;->f:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/mnt/impl/f/d$a;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/mnt/impl/b/e;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/mnt/impl/f/d;->d:Landroid/content/Context;

    .line 34
    iput-object p2, p0, Lcom/mnt/impl/f/d;->e:Lcom/mnt/impl/f/d$a;

    .line 35
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/mnt/impl/e/g;
    .locals 1

    .prologue
    .line 110
    sget-object v0, Lcom/mnt/impl/f/d;->c:Lcom/mnt/impl/e/g;

    if-nez v0, :cond_0

    .line 111
    invoke-static {p0}, Lcom/mnt/impl/b/h;->e(Landroid/content/Context;)Lcom/mnt/impl/e/g;

    move-result-object v0

    sput-object v0, Lcom/mnt/impl/f/d;->c:Lcom/mnt/impl/e/g;

    .line 114
    :cond_0
    sget-object v0, Lcom/mnt/impl/f/d;->c:Lcom/mnt/impl/e/g;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 134
    invoke-static {p0}, Lcom/mnt/impl/f/d;->a(Landroid/content/Context;)Lcom/mnt/impl/e/g;

    move-result-object v0

    .line 135
    if-eqz v0, :cond_1

    .line 3305
    iget v0, v0, Lcom/mnt/impl/e/g;->c:I

    .line 135
    if-ne v0, v4, :cond_1

    .line 4229
    :cond_0
    :goto_0
    return-void

    .line 139
    :cond_1
    sget-object v0, Lcom/mnt/impl/f/d;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 140
    if-nez v0, :cond_3

    .line 141
    if-ne p2, v4, :cond_2

    .line 143
    sget-object v0, Lcom/mnt/impl/f/d;->f:Ljava/util/Map;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    :cond_2
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 156
    sget-object v1, Lcom/mnt/impl/i/b/c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    sget-object v1, Lcom/mnt/impl/i/b/c;->e:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 158
    invoke-static {p0}, Lcom/mnt/impl/i/b/a;->a(Landroid/content/Context;)Lcom/mnt/impl/i/b/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mnt/impl/i/b/a;->a(Landroid/content/ContentValues;)V

    .line 159
    new-instance v0, Lcom/mnt/impl/b;

    invoke-direct {v0, p0}, Lcom/mnt/impl/b;-><init>(Landroid/content/Context;)V

    .line 4223
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4226
    iget-object v1, v0, Lcom/mnt/impl/b;->e:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/mnt/impl/b/k;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 4228
    if-eqz v1, :cond_4

    .line 4229
    invoke-virtual {v0, v4, p1}, Lcom/mnt/impl/b;->a(ZLjava/lang/String;)V

    goto :goto_0

    .line 146
    :cond_3
    if-nez p2, :cond_0

    .line 148
    sget-object v0, Lcom/mnt/impl/f/d;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 4231
    :cond_4
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/mnt/impl/b;->a(ZLjava/lang/String;)V

    goto :goto_0
.end method

.method public static d()V
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x0

    sput-object v0, Lcom/mnt/impl/f/d;->c:Lcom/mnt/impl/e/g;

    .line 119
    return-void
.end method

.method private e()Ljava/lang/Boolean;
    .locals 8

    .prologue
    .line 43
    sget-object v1, Lcom/mnt/impl/f/d;->b:Ljava/lang/String;

    monitor-enter v1

    .line 44
    :try_start_0
    sget-object v0, Lcom/mnt/impl/f/d;->c:Lcom/mnt/impl/e/g;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/mnt/impl/f/d;->c:Lcom/mnt/impl/e/g;

    invoke-virtual {v0}, Lcom/mnt/impl/e/g;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mnt/impl/f/d;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    monitor-exit v1

    .line 83
    :goto_0
    return-object v0

    .line 48
    :cond_0
    new-instance v0, Lcom/mnt/impl/b/i;

    sget-object v2, Lcom/mnt/impl/b/i$a;->b:Lcom/mnt/impl/b/i$a;

    iget-object v3, p0, Lcom/mnt/impl/f/d;->d:Landroid/content/Context;

    invoke-direct {v0, v2, v3}, Lcom/mnt/impl/b/i;-><init>(Lcom/mnt/impl/b/i$a;Landroid/content/Context;)V

    .line 49
    iget-object v2, p0, Lcom/mnt/impl/f/d;->d:Landroid/content/Context;

    invoke-static {v2}, Lcom/mnt/impl/b/h;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 1180
    iput-object v2, v0, Lcom/mnt/impl/b/i;->b:Ljava/lang/String;

    .line 50
    iget-object v2, p0, Lcom/mnt/impl/f/d;->a:Ljava/lang/String;

    .line 1188
    iput-object v2, v0, Lcom/mnt/impl/b/i;->c:Ljava/lang/String;

    .line 51
    iget-object v2, p0, Lcom/mnt/impl/f/d;->a:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 52
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 53
    sget-object v3, Lcom/mnt/impl/i/b/c;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/mnt/impl/f/d;->a:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    sget-object v3, Lcom/mnt/impl/i/b/c;->g:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 55
    iget-object v3, p0, Lcom/mnt/impl/f/d;->d:Landroid/content/Context;

    invoke-static {v3}, Lcom/mnt/impl/i/b/a;->a(Landroid/content/Context;)Lcom/mnt/impl/i/b/a;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/mnt/impl/i/b/a;->a(Landroid/content/ContentValues;)V

    .line 57
    :cond_1
    new-instance v2, Lcom/mnt/impl/f/e;

    invoke-direct {v2}, Lcom/mnt/impl/f/e;-><init>()V

    .line 1290
    iget-object v3, v0, Lcom/mnt/impl/b/i;->a:Lcom/mnt/impl/b/i$a;

    .line 2215
    iget-object v3, v3, Lcom/mnt/impl/b/i$a;->c:Ljava/lang/String;

    .line 57
    invoke-virtual {v0}, Lcom/mnt/impl/b/i;->c()Ljava/util/Map;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v4}, Lcom/mnt/impl/f/e;->a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 59
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 60
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 63
    invoke-static {}, Lcom/mnt/impl/e/g;->a()Ljava/lang/String;

    move-result-object v0

    .line 65
    :cond_2
    new-instance v4, Lcom/mnt/impl/e/g;

    invoke-direct {v4, v0, v2, v3}, Lcom/mnt/impl/e/g;-><init>(Ljava/lang/String;J)V

    sput-object v4, Lcom/mnt/impl/f/d;->c:Lcom/mnt/impl/e/g;

    .line 66
    iget-object v4, p0, Lcom/mnt/impl/f/d;->a:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 67
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 68
    sget-object v5, Lcom/mnt/impl/i/b/c;->c:Ljava/lang/String;

    iget-object v6, p0, Lcom/mnt/impl/f/d;->a:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    sget-object v5, Lcom/mnt/impl/i/b/c;->h:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 70
    sget-object v5, Lcom/mnt/impl/i/b/c;->j:Ljava/lang/String;

    sget-object v6, Lcom/mnt/impl/e;->dR:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    sget-object v5, Lcom/mnt/impl/i/b/c;->i:Ljava/lang/String;

    sget-object v6, Lcom/mnt/impl/f/d;->c:Lcom/mnt/impl/e/g;

    .line 2309
    iget-wide v6, v6, Lcom/mnt/impl/e/g;->b:J

    .line 71
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 72
    iget-object v5, p0, Lcom/mnt/impl/f/d;->d:Landroid/content/Context;

    invoke-static {v5}, Lcom/mnt/impl/i/b/a;->a(Landroid/content/Context;)Lcom/mnt/impl/i/b/a;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/mnt/impl/i/b/a;->a(Landroid/content/ContentValues;)V

    .line 76
    :cond_3
    iget-object v4, p0, Lcom/mnt/impl/f/d;->d:Landroid/content/Context;

    invoke-static {v4, v0, v2, v3}, Lcom/mnt/impl/b/h;->a(Landroid/content/Context;Ljava/lang/String;J)V

    .line 78
    iget-object v0, p0, Lcom/mnt/impl/f/d;->d:Landroid/content/Context;

    sget-object v2, Lcom/mnt/impl/f/d;->c:Lcom/mnt/impl/e/g;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/mnt/impl/f/d;->a:Ljava/lang/String;

    invoke-static {v0, v2, v3, v4}, Lcom/mnt/impl/k/a;->a(Landroid/content/Context;Lcom/mnt/impl/e/g;ZLjava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/mnt/impl/f/d;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/mnt/impl/f/h;->a(Landroid/content/Context;)V

    .line 82
    iget-object v0, p0, Lcom/mnt/impl/f/d;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/mnt/impl/b/a;->a(Landroid/content/Context;)Lcom/mnt/impl/b/a;

    move-result-object v0

    .line 3124
    iget-object v0, v0, Lcom/mnt/impl/b/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mnt/impl/b/h;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 3125
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3126
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 3127
    invoke-static {v0}, Lcom/mnt/impl/b/h;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 3128
    sget-object v0, Lcom/mnt/impl/b/a;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 83
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    monitor-exit v1

    goto/16 :goto_0

    .line 84
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method protected final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/mnt/impl/f/d;->e()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 25
    check-cast p1, Ljava/lang/Boolean;

    .line 5090
    :try_start_0
    iget-object v0, p0, Lcom/mnt/impl/f/d;->e:Lcom/mnt/impl/f/d$a;

    if-eqz v0, :cond_0

    .line 5092
    iget-object v0, p0, Lcom/mnt/impl/f/d;->e:Lcom/mnt/impl/f/d$a;

    sget-object v1, Lcom/mnt/impl/f/d;->c:Lcom/mnt/impl/e/g;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    invoke-interface {v0, v1}, Lcom/mnt/impl/f/d$a;->a(Lcom/mnt/impl/e/g;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5096
    :cond_0
    :goto_0
    return-void

    .line 5095
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
