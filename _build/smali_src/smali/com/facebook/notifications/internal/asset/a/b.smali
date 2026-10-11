.class public Lcom/facebook/notifications/internal/asset/a/b;
.super Ljava/lang/Object;
.source "ContentCache.java"

# interfaces
.implements Lcom/facebook/notifications/internal/asset/a$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/notifications/internal/asset/a/b$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final c:Lcom/facebook/notifications/internal/asset/a/c;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final d:Ljava/lang/Thread;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final e:Lcom/facebook/notifications/internal/asset/a/d;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final f:Ljava/lang/Object;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final g:Ljava/util/Map;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/notifications/internal/asset/a/a;",
            ">;>;"
        }
    .end annotation
.end field

.field private h:Ljava/util/Set;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-class v0, Lcom/facebook/notifications/internal/asset/a/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/notifications/internal/asset/a/b;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/facebook/notifications/internal/asset/a/b;->b:Landroid/content/Context;

    .line 64
    new-instance v0, Lcom/facebook/notifications/internal/asset/a/c;

    invoke-direct {v0}, Lcom/facebook/notifications/internal/asset/a/c;-><init>()V

    iput-object v0, p0, Lcom/facebook/notifications/internal/asset/a/b;->c:Lcom/facebook/notifications/internal/asset/a/c;

    .line 65
    new-instance v0, Lcom/facebook/notifications/internal/asset/a/d;

    invoke-direct {v0, p1}, Lcom/facebook/notifications/internal/asset/a/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/notifications/internal/asset/a/b;->e:Lcom/facebook/notifications/internal/asset/a/d;

    .line 67
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/facebook/notifications/internal/asset/a/b;->c:Lcom/facebook/notifications/internal/asset/a/c;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/facebook/notifications/internal/asset/a/b;->d:Ljava/lang/Thread;

    .line 69
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/facebook/notifications/internal/asset/a/b;->f:Ljava/lang/Object;

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/notifications/internal/asset/a/b;->g:Ljava/util/Map;

    .line 72
    iget-object v0, p0, Lcom/facebook/notifications/internal/asset/a/b;->d:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 73
    return-void
.end method

.method static synthetic a(Lcom/facebook/notifications/internal/asset/a/b;)Lcom/facebook/notifications/internal/asset/a/d;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/facebook/notifications/internal/asset/a/b;->e:Lcom/facebook/notifications/internal/asset/a/d;

    return-object v0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 183
    iget-object v1, p0, Lcom/facebook/notifications/internal/asset/a/b;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 184
    :try_start_0
    iget-object v0, p0, Lcom/facebook/notifications/internal/asset/a/b;->h:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/facebook/notifications/internal/asset/a/b;->e:Lcom/facebook/notifications/internal/asset/a/d;

    invoke-virtual {v0}, Lcom/facebook/notifications/internal/asset/a/d;->a()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/notifications/internal/asset/a/b;->h:Ljava/util/Set;

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/facebook/notifications/internal/asset/a/b;->h:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 189
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic b(Lcom/facebook/notifications/internal/asset/a/b;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/facebook/notifications/internal/asset/a/b;->f:Ljava/lang/Object;

    return-object v0
.end method

.method private static b(Ljava/net/URL;)Ljava/lang/String;
    .locals 6
    .param p0    # Ljava/net/URL;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 161
    invoke-virtual {p0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    .line 164
    :try_start_0
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 165
    const-string v2, "UTF-8"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    .line 167
    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    .line 168
    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 170
    const-string v2, "%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x"

    const/16 v3, 0x10

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x0

    aget-byte v5, v1, v5

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x1

    aget-byte v5, v1, v5

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const/4 v5, 0x2

    aget-byte v5, v1, v5

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const/4 v5, 0x3

    aget-byte v5, v1, v5

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const/4 v5, 0x4

    aget-byte v5, v1, v5

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const/4 v5, 0x5

    aget-byte v5, v1, v5

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const/4 v5, 0x6

    aget-byte v5, v1, v5

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x7

    const/4 v5, 0x7

    aget-byte v5, v1, v5

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0x8

    const/16 v5, 0x8

    aget-byte v5, v1, v5

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0x9

    const/16 v5, 0x9

    aget-byte v5, v1, v5

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0xa

    const/16 v5, 0xa

    aget-byte v5, v1, v5

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0xb

    const/16 v5, 0xb

    aget-byte v5, v1, v5

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0xc

    const/16 v5, 0xc

    aget-byte v5, v1, v5

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0xd

    const/16 v5, 0xd

    aget-byte v5, v1, v5

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0xe

    const/16 v5, 0xe

    aget-byte v5, v1, v5

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0xf

    const/16 v5, 0xf

    aget-byte v1, v1, v5

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 178
    :goto_0
    return-object v0

    .line 175
    :catch_0
    move-exception v1

    .line 178
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/net/URL;)Ljava/io/File;
    .locals 2
    .param p1    # Ljava/net/URL;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 157
    iget-object v0, p0, Lcom/facebook/notifications/internal/asset/a/b;->e:Lcom/facebook/notifications/internal/asset/a/d;

    invoke-static {p1}, Lcom/facebook/notifications/internal/asset/a/b;->b(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/notifications/internal/asset/a/d;->b(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/facebook/notifications/internal/asset/a/b;->d:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 79
    :try_start_0
    iget-object v0, p0, Lcom/facebook/notifications/internal/asset/a/b;->d:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :goto_0
    return-void

    .line 80
    :catch_0
    move-exception v0

    .line 83
    iget-object v0, p0, Lcom/facebook/notifications/internal/asset/a/b;->d:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0
.end method

.method public a(Ljava/util/Set;)V
    .locals 4
    .param p1    # Ljava/util/Set;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/net/URL;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 143
    iget-object v1, p0, Lcom/facebook/notifications/internal/asset/a/b;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 144
    :try_start_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URL;

    .line 145
    invoke-static {v0}, Lcom/facebook/notifications/internal/asset/a/b;->b(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v0

    .line 146
    iget-object v3, p0, Lcom/facebook/notifications/internal/asset/a/b;->e:Lcom/facebook/notifications/internal/asset/a/d;

    invoke-virtual {v3, v0}, Lcom/facebook/notifications/internal/asset/a/d;->a(Ljava/lang/String;)V

    .line 147
    iget-object v3, p0, Lcom/facebook/notifications/internal/asset/a/b;->h:Ljava/util/Set;

    if-eqz v3, :cond_0

    .line 148
    iget-object v3, p0, Lcom/facebook/notifications/internal/asset/a/b;->h:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 151
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 152
    return-void
.end method

.method public a(Ljava/util/Set;Lcom/facebook/notifications/internal/asset/a/b$a;)V
    .locals 9
    .param p1    # Ljava/util/Set;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/facebook/notifications/internal/asset/a/b$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/net/URL;",
            ">;",
            "Lcom/facebook/notifications/internal/asset/a/b$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 93
    new-instance v2, Lcom/facebook/notifications/internal/asset/a/a;

    invoke-direct {v2, p1, p2}, Lcom/facebook/notifications/internal/asset/a/a;-><init>(Ljava/util/Set;Lcom/facebook/notifications/internal/asset/a/b$a;)V

    .line 95
    iget-object v3, p0, Lcom/facebook/notifications/internal/asset/a/b;->f:Ljava/lang/Object;

    monitor-enter v3

    .line 96
    const/4 v0, 0x0

    .line 97
    :try_start_0
    invoke-virtual {v2}, Lcom/facebook/notifications/internal/asset/a/a;->a()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 98
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URL;

    .line 99
    invoke-static {v0}, Lcom/facebook/notifications/internal/asset/a/b;->b(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v5

    .line 100
    invoke-direct {p0, v5}, Lcom/facebook/notifications/internal/asset/a/b;->a(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 101
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 139
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 105
    :cond_0
    :try_start_1
    iget-object v6, p0, Lcom/facebook/notifications/internal/asset/a/b;->g:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 106
    iget-object v0, p0, Lcom/facebook/notifications/internal/asset/a/b;->g:Ljava/util/Map;

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 107
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 111
    :cond_1
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 112
    invoke-interface {v6, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 114
    iget-object v7, p0, Lcom/facebook/notifications/internal/asset/a/b;->g:Ljava/util/Map;

    invoke-interface {v7, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    iget-object v7, p0, Lcom/facebook/notifications/internal/asset/a/b;->c:Lcom/facebook/notifications/internal/asset/a/c;

    new-instance v8, Lcom/facebook/notifications/internal/asset/a/b$1;

    invoke-direct {v8, p0, v5, v6}, Lcom/facebook/notifications/internal/asset/a/b$1;-><init>(Lcom/facebook/notifications/internal/asset/a/b;Ljava/lang/String;Ljava/util/Set;)V

    invoke-virtual {v7, v0, v8}, Lcom/facebook/notifications/internal/asset/a/c;->a(Ljava/net/URL;Lcom/facebook/notifications/internal/asset/a/c$a;)V

    .line 133
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 134
    goto :goto_0

    .line 136
    :cond_2
    if-nez v1, :cond_3

    .line 137
    invoke-interface {p2, p1}, Lcom/facebook/notifications/internal/asset/a/b$a;->a(Ljava/util/Set;)V

    .line 139
    :cond_3
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 140
    return-void
.end method
