.class public Lb/a/p;
.super Ljava/lang/Object;
.source "ClientStats.java"

# interfaces
.implements Lb/a/ay;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/a/p$c;,
        Lb/a/p$d;,
        Lb/a/p$a;,
        Lb/a/p$b;,
        Lb/a/p$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lb/a/ay",
        "<",
        "Lb/a/p;",
        "Lb/a/p$e;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field public static final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lb/a/p$e;",
            "Lb/a/bg;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:Lb/a/bw;

.field private static final f:Lb/a/bo;

.field private static final g:Lb/a/bo;

.field private static final h:Lb/a/bo;

.field private static final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lb/a/by;",
            ">;",
            "Lb/a/bz;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field private j:B

.field private k:[Lb/a/p$e;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/16 v5, 0x8

    .line 33
    new-instance v0, Lb/a/bw;

    const-string v1, "ClientStats"

    invoke-direct {v0, v1}, Lb/a/bw;-><init>(Ljava/lang/String;)V

    sput-object v0, Lb/a/p;->e:Lb/a/bw;

    .line 35
    new-instance v0, Lb/a/bo;

    const-string v1, "successful_requests"

    invoke-direct {v0, v1, v5, v6}, Lb/a/bo;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lb/a/p;->f:Lb/a/bo;

    .line 36
    new-instance v0, Lb/a/bo;

    const-string v1, "failed_requests"

    invoke-direct {v0, v1, v5, v7}, Lb/a/bo;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lb/a/p;->g:Lb/a/bo;

    .line 37
    new-instance v0, Lb/a/bo;

    const-string v1, "last_request_spent_ms"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v5, v2}, Lb/a/bo;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lb/a/p;->h:Lb/a/bo;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lb/a/p;->i:Ljava/util/Map;

    .line 41
    sget-object v0, Lb/a/p;->i:Ljava/util/Map;

    const-class v1, Lb/a/ca;

    new-instance v2, Lb/a/p$b;

    invoke-direct {v2, v3}, Lb/a/p$b;-><init>(Lb/a/p$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lb/a/p;->i:Ljava/util/Map;

    const-class v1, Lb/a/cb;

    new-instance v2, Lb/a/p$d;

    invoke-direct {v2, v3}, Lb/a/p$d;-><init>(Lb/a/p$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lb/a/p$e;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 122
    sget-object v1, Lb/a/p$e;->a:Lb/a/p$e;

    new-instance v2, Lb/a/bg;

    const-string v3, "successful_requests"

    new-instance v4, Lb/a/bh;

    invoke-direct {v4, v5}, Lb/a/bh;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lb/a/bg;-><init>(Ljava/lang/String;BLb/a/bh;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object v1, Lb/a/p$e;->b:Lb/a/p$e;

    new-instance v2, Lb/a/bg;

    const-string v3, "failed_requests"

    new-instance v4, Lb/a/bh;

    invoke-direct {v4, v5}, Lb/a/bh;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lb/a/bg;-><init>(Ljava/lang/String;BLb/a/bh;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object v1, Lb/a/p$e;->c:Lb/a/p$e;

    new-instance v2, Lb/a/bg;

    const-string v3, "last_request_spent_ms"

    new-instance v4, Lb/a/bh;

    invoke-direct {v4, v5}, Lb/a/bh;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lb/a/bg;-><init>(Ljava/lang/String;BLb/a/bh;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lb/a/p;->d:Ljava/util/Map;

    .line 129
    const-class v0, Lb/a/p;

    sget-object v1, Lb/a/p;->d:Ljava/util/Map;

    invoke-static {v0, v1}, Lb/a/bg;->a(Ljava/lang/Class;Ljava/util/Map;)V

    .line 130
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-byte v2, p0, Lb/a/p;->j:B

    .line 118
    const/4 v0, 0x1

    new-array v0, v0, [Lb/a/p$e;

    sget-object v1, Lb/a/p$e;->c:Lb/a/p$e;

    aput-object v1, v0, v2

    iput-object v0, p0, Lb/a/p;->k:[Lb/a/p$e;

    .line 133
    iput v2, p0, Lb/a/p;->a:I

    .line 135
    iput v2, p0, Lb/a/p;->b:I

    .line 137
    return-void
.end method

.method static synthetic e()Lb/a/bw;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lb/a/p;->e:Lb/a/bw;

    return-object v0
.end method

.method static synthetic f()Lb/a/bo;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lb/a/p;->f:Lb/a/bo;

    return-object v0
.end method

.method static synthetic g()Lb/a/bo;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lb/a/p;->g:Lb/a/bo;

    return-object v0
.end method

.method static synthetic h()Lb/a/bo;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lb/a/p;->h:Lb/a/bo;

    return-object v0
.end method


# virtual methods
.method public a(I)Lb/a/p;
    .locals 1

    .prologue
    .line 179
    iput p1, p0, Lb/a/p;->a:I

    .line 180
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lb/a/p;->a(Z)V

    .line 181
    return-object p0
.end method

.method public a(Lb/a/br;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb/a/bb;
        }
    .end annotation

    .prologue
    .line 248
    sget-object v0, Lb/a/p;->i:Ljava/util/Map;

    invoke-virtual {p1}, Lb/a/br;->y()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/bz;

    invoke-interface {v0}, Lb/a/bz;->b()Lb/a/by;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lb/a/by;->b(Lb/a/br;Lb/a/ay;)V

    .line 249
    return-void
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 194
    iget-byte v0, p0, Lb/a/p;->j:B

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lb/a/aw;->a(BIZ)B

    move-result v0

    iput-byte v0, p0, Lb/a/p;->j:B

    .line 195
    return-void
.end method

.method public a()Z
    .locals 2

    .prologue
    .line 190
    iget-byte v0, p0, Lb/a/p;->j:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lb/a/aw;->a(BI)Z

    move-result v0

    return v0
.end method

.method public b(I)Lb/a/p;
    .locals 1

    .prologue
    .line 202
    iput p1, p0, Lb/a/p;->b:I

    .line 203
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lb/a/p;->b(Z)V

    .line 204
    return-object p0
.end method

.method public b(Lb/a/br;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb/a/bb;
        }
    .end annotation

    .prologue
    .line 252
    sget-object v0, Lb/a/p;->i:Ljava/util/Map;

    invoke-virtual {p1}, Lb/a/br;->y()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/bz;

    invoke-interface {v0}, Lb/a/bz;->b()Lb/a/by;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lb/a/by;->a(Lb/a/br;Lb/a/ay;)V

    .line 253
    return-void
.end method

.method public b(Z)V
    .locals 2

    .prologue
    .line 217
    iget-byte v0, p0, Lb/a/p;->j:B

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lb/a/aw;->a(BIZ)B

    move-result v0

    iput-byte v0, p0, Lb/a/p;->j:B

    .line 218
    return-void
.end method

.method public b()Z
    .locals 2

    .prologue
    .line 213
    iget-byte v0, p0, Lb/a/p;->j:B

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lb/a/aw;->a(BI)Z

    move-result v0

    return v0
.end method

.method public c(I)Lb/a/p;
    .locals 1

    .prologue
    .line 225
    iput p1, p0, Lb/a/p;->c:I

    .line 226
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lb/a/p;->c(Z)V

    .line 227
    return-object p0
.end method

.method public c(Z)V
    .locals 2

    .prologue
    .line 240
    iget-byte v0, p0, Lb/a/p;->j:B

    const/4 v1, 0x2

    invoke-static {v0, v1, p1}, Lb/a/aw;->a(BIZ)B

    move-result v0

    iput-byte v0, p0, Lb/a/p;->j:B

    .line 241
    return-void
.end method

.method public c()Z
    .locals 2

    .prologue
    .line 236
    iget-byte v0, p0, Lb/a/p;->j:B

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lb/a/aw;->a(BI)Z

    move-result v0

    return v0
.end method

.method public d()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb/a/bb;
        }
    .end annotation

    .prologue
    .line 282
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ClientStats("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 260
    const-string v1, "successful_requests:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    iget v1, p0, Lb/a/p;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 263
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    const-string v1, "failed_requests:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    iget v1, p0, Lb/a/p;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 267
    invoke-virtual {p0}, Lb/a/p;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 268
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    const-string v1, "last_request_spent_ms:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    iget v1, p0, Lb/a/p;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 273
    :cond_0
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
