.class public Lb/a/s;
.super Ljava/lang/Object;
.source "Error.java"

# interfaces
.implements Lb/a/ay;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/a/s$c;,
        Lb/a/s$d;,
        Lb/a/s$a;,
        Lb/a/s$b;,
        Lb/a/s$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lb/a/ay",
        "<",
        "Lb/a/s;",
        "Lb/a/s$e;",
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
            "Lb/a/s$e;",
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
.field public a:J

.field public b:Ljava/lang/String;

.field public c:Lb/a/t;

.field private j:B

.field private k:[Lb/a/s$e;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v4, 0x0

    const/16 v8, 0xb

    const/16 v6, 0xa

    const/4 v7, 0x2

    const/4 v5, 0x1

    .line 33
    new-instance v0, Lb/a/bw;

    const-string v1, "Error"

    invoke-direct {v0, v1}, Lb/a/bw;-><init>(Ljava/lang/String;)V

    sput-object v0, Lb/a/s;->e:Lb/a/bw;

    .line 35
    new-instance v0, Lb/a/bo;

    const-string v1, "ts"

    invoke-direct {v0, v1, v6, v5}, Lb/a/bo;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lb/a/s;->f:Lb/a/bo;

    .line 36
    new-instance v0, Lb/a/bo;

    const-string v1, "context"

    invoke-direct {v0, v1, v8, v7}, Lb/a/bo;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lb/a/s;->g:Lb/a/bo;

    .line 37
    new-instance v0, Lb/a/bo;

    const-string v1, "source"

    const/16 v2, 0x8

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lb/a/bo;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lb/a/s;->h:Lb/a/bo;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lb/a/s;->i:Ljava/util/Map;

    .line 41
    sget-object v0, Lb/a/s;->i:Ljava/util/Map;

    const-class v1, Lb/a/ca;

    new-instance v2, Lb/a/s$b;

    invoke-direct {v2, v4}, Lb/a/s$b;-><init>(Lb/a/s$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lb/a/s;->i:Ljava/util/Map;

    const-class v1, Lb/a/cb;

    new-instance v2, Lb/a/s$d;

    invoke-direct {v2, v4}, Lb/a/s$d;-><init>(Lb/a/s$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lb/a/s$e;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 128
    sget-object v1, Lb/a/s$e;->a:Lb/a/s$e;

    new-instance v2, Lb/a/bg;

    const-string v3, "ts"

    new-instance v4, Lb/a/bh;

    invoke-direct {v4, v6}, Lb/a/bh;-><init>(B)V

    invoke-direct {v2, v3, v5, v4}, Lb/a/bg;-><init>(Ljava/lang/String;BLb/a/bh;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v1, Lb/a/s$e;->b:Lb/a/s$e;

    new-instance v2, Lb/a/bg;

    const-string v3, "context"

    new-instance v4, Lb/a/bh;

    invoke-direct {v4, v8}, Lb/a/bh;-><init>(B)V

    invoke-direct {v2, v3, v5, v4}, Lb/a/bg;-><init>(Ljava/lang/String;BLb/a/bh;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v1, Lb/a/s$e;->c:Lb/a/s$e;

    new-instance v2, Lb/a/bg;

    const-string v3, "source"

    new-instance v4, Lb/a/bf;

    const/16 v5, 0x10

    const-class v6, Lb/a/t;

    invoke-direct {v4, v5, v6}, Lb/a/bf;-><init>(BLjava/lang/Class;)V

    invoke-direct {v2, v3, v7, v4}, Lb/a/bg;-><init>(Ljava/lang/String;BLb/a/bh;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lb/a/s;->d:Ljava/util/Map;

    .line 135
    const-class v0, Lb/a/s;

    sget-object v1, Lb/a/s;->d:Ljava/util/Map;

    invoke-static {v0, v1}, Lb/a/bg;->a(Ljava/lang/Class;Ljava/util/Map;)V

    .line 136
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    iput-byte v2, p0, Lb/a/s;->j:B

    .line 124
    const/4 v0, 0x1

    new-array v0, v0, [Lb/a/s$e;

    sget-object v1, Lb/a/s$e;->c:Lb/a/s$e;

    aput-object v1, v0, v2

    iput-object v0, p0, Lb/a/s;->k:[Lb/a/s$e;

    .line 139
    return-void
.end method

.method static synthetic d()Lb/a/bw;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lb/a/s;->e:Lb/a/bw;

    return-object v0
.end method

.method static synthetic e()Lb/a/bo;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lb/a/s;->f:Lb/a/bo;

    return-object v0
.end method

.method static synthetic f()Lb/a/bo;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lb/a/s;->g:Lb/a/bo;

    return-object v0
.end method

.method static synthetic g()Lb/a/bo;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lb/a/s;->h:Lb/a/bo;

    return-object v0
.end method


# virtual methods
.method public a(J)Lb/a/s;
    .locals 1

    .prologue
    .line 182
    iput-wide p1, p0, Lb/a/s;->a:J

    .line 183
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lb/a/s;->a(Z)V

    .line 184
    return-object p0
.end method

.method public a(Lb/a/t;)Lb/a/s;
    .locals 0

    .prologue
    .line 237
    iput-object p1, p0, Lb/a/s;->c:Lb/a/t;

    .line 238
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lb/a/s;
    .locals 0

    .prologue
    .line 205
    iput-object p1, p0, Lb/a/s;->b:Ljava/lang/String;

    .line 206
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
    .line 261
    sget-object v0, Lb/a/s;->i:Ljava/util/Map;

    invoke-virtual {p1}, Lb/a/br;->y()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/bz;

    invoke-interface {v0}, Lb/a/bz;->b()Lb/a/by;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lb/a/by;->b(Lb/a/br;Lb/a/ay;)V

    .line 262
    return-void
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 197
    iget-byte v0, p0, Lb/a/s;->j:B

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lb/a/aw;->a(BIZ)B

    move-result v0

    iput-byte v0, p0, Lb/a/s;->j:B

    .line 198
    return-void
.end method

.method public a()Z
    .locals 2

    .prologue
    .line 193
    iget-byte v0, p0, Lb/a/s;->j:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lb/a/aw;->a(BI)Z

    move-result v0

    return v0
.end method

.method public b(Lb/a/br;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb/a/bb;
        }
    .end annotation

    .prologue
    .line 265
    sget-object v0, Lb/a/s;->i:Ljava/util/Map;

    invoke-virtual {p1}, Lb/a/br;->y()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/bz;

    invoke-interface {v0}, Lb/a/bz;->b()Lb/a/by;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lb/a/by;->a(Lb/a/br;Lb/a/ay;)V

    .line 266
    return-void
.end method

.method public b(Z)V
    .locals 1

    .prologue
    .line 219
    if-nez p1, :cond_0

    .line 220
    const/4 v0, 0x0

    iput-object v0, p0, Lb/a/s;->b:Ljava/lang/String;

    .line 222
    :cond_0
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lb/a/s;->c:Lb/a/t;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb/a/bb;
        }
    .end annotation

    .prologue
    .line 301
    iget-object v0, p0, Lb/a/s;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 302
    new-instance v0, Lb/a/bs;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'context\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lb/a/s;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lb/a/bs;-><init>(Ljava/lang/String;)V

    throw v0

    .line 305
    :cond_0
    return-void
.end method

.method public c(Z)V
    .locals 1

    .prologue
    .line 251
    if-nez p1, :cond_0

    .line 252
    const/4 v0, 0x0

    iput-object v0, p0, Lb/a/s;->c:Lb/a/t;

    .line 254
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 273
    const-string v1, "ts:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    iget-wide v2, p0, Lb/a/s;->a:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 276
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    const-string v1, "context:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    iget-object v1, p0, Lb/a/s;->b:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 279
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    :goto_0
    invoke-virtual {p0}, Lb/a/s;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 285
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    const-string v1, "source:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    iget-object v1, p0, Lb/a/s;->c:Lb/a/t;

    if-nez v1, :cond_2

    .line 288
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    :cond_0
    :goto_1
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 281
    :cond_1
    iget-object v1, p0, Lb/a/s;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 290
    :cond_2
    iget-object v1, p0, Lb/a/s;->c:Lb/a/t;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method
