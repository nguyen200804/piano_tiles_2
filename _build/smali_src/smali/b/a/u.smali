.class public Lb/a/u;
.super Ljava/lang/Object;
.source "Event.java"

# interfaces
.implements Lb/a/ay;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/a/u$c;,
        Lb/a/u$d;,
        Lb/a/u$a;,
        Lb/a/u$b;,
        Lb/a/u$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lb/a/ay",
        "<",
        "Lb/a/u;",
        "Lb/a/u$e;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field public static final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lb/a/u$e;",
            "Lb/a/bg;",
            ">;"
        }
    .end annotation
.end field

.field private static final g:Lb/a/bw;

.field private static final h:Lb/a/bo;

.field private static final i:Lb/a/bo;

.field private static final j:Lb/a/bo;

.field private static final k:Lb/a/bo;

.field private static final l:Lb/a/bo;

.field private static final m:Ljava/util/Map;
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
.field public a:Ljava/lang/String;

.field public b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lb/a/ag;",
            ">;"
        }
    .end annotation
.end field

.field public c:J

.field public d:I

.field public e:J

.field private n:B

.field private o:[Lb/a/u$e;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .prologue
    const/16 v13, 0x8

    const/16 v7, 0xb

    const/4 v12, 0x2

    const/16 v11, 0xa

    const/4 v10, 0x1

    .line 33
    new-instance v0, Lb/a/bw;

    const-string v1, "Event"

    invoke-direct {v0, v1}, Lb/a/bw;-><init>(Ljava/lang/String;)V

    sput-object v0, Lb/a/u;->g:Lb/a/bw;

    .line 35
    new-instance v0, Lb/a/bo;

    const-string v1, "name"

    invoke-direct {v0, v1, v7, v10}, Lb/a/bo;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lb/a/u;->h:Lb/a/bo;

    .line 36
    new-instance v0, Lb/a/bo;

    const-string v1, "properties"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2, v12}, Lb/a/bo;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lb/a/u;->i:Lb/a/bo;

    .line 37
    new-instance v0, Lb/a/bo;

    const-string v1, "duration"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v11, v2}, Lb/a/bo;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lb/a/u;->j:Lb/a/bo;

    .line 38
    new-instance v0, Lb/a/bo;

    const-string v1, "acc"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v13, v2}, Lb/a/bo;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lb/a/u;->k:Lb/a/bo;

    .line 39
    new-instance v0, Lb/a/bo;

    const-string v1, "ts"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v11, v2}, Lb/a/bo;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lb/a/u;->l:Lb/a/bo;

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lb/a/u;->m:Ljava/util/Map;

    .line 43
    sget-object v0, Lb/a/u;->m:Ljava/util/Map;

    const-class v1, Lb/a/ca;

    new-instance v2, Lb/a/u$b;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lb/a/u$b;-><init>(Lb/a/u$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lb/a/u;->m:Ljava/util/Map;

    const-class v1, Lb/a/cb;

    new-instance v2, Lb/a/u$d;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lb/a/u$d;-><init>(Lb/a/u$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lb/a/u$e;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 132
    sget-object v1, Lb/a/u$e;->a:Lb/a/u$e;

    new-instance v2, Lb/a/bg;

    const-string v3, "name"

    new-instance v4, Lb/a/bh;

    invoke-direct {v4, v7}, Lb/a/bh;-><init>(B)V

    invoke-direct {v2, v3, v10, v4}, Lb/a/bg;-><init>(Ljava/lang/String;BLb/a/bh;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v1, Lb/a/u$e;->b:Lb/a/u$e;

    new-instance v2, Lb/a/bg;

    const-string v3, "properties"

    new-instance v4, Lb/a/bj;

    const/16 v5, 0xd

    new-instance v6, Lb/a/bh;

    invoke-direct {v6, v7}, Lb/a/bh;-><init>(B)V

    new-instance v7, Lb/a/bk;

    const/16 v8, 0xc

    const-class v9, Lb/a/ag;

    invoke-direct {v7, v8, v9}, Lb/a/bk;-><init>(BLjava/lang/Class;)V

    invoke-direct {v4, v5, v6, v7}, Lb/a/bj;-><init>(BLb/a/bh;Lb/a/bh;)V

    invoke-direct {v2, v3, v10, v4}, Lb/a/bg;-><init>(Ljava/lang/String;BLb/a/bh;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    sget-object v1, Lb/a/u$e;->c:Lb/a/u$e;

    new-instance v2, Lb/a/bg;

    const-string v3, "duration"

    new-instance v4, Lb/a/bh;

    invoke-direct {v4, v11}, Lb/a/bh;-><init>(B)V

    invoke-direct {v2, v3, v12, v4}, Lb/a/bg;-><init>(Ljava/lang/String;BLb/a/bh;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget-object v1, Lb/a/u$e;->d:Lb/a/u$e;

    new-instance v2, Lb/a/bg;

    const-string v3, "acc"

    new-instance v4, Lb/a/bh;

    invoke-direct {v4, v13}, Lb/a/bh;-><init>(B)V

    invoke-direct {v2, v3, v12, v4}, Lb/a/bg;-><init>(Ljava/lang/String;BLb/a/bh;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    sget-object v1, Lb/a/u$e;->e:Lb/a/u$e;

    new-instance v2, Lb/a/bg;

    const-string v3, "ts"

    new-instance v4, Lb/a/bh;

    invoke-direct {v4, v11}, Lb/a/bh;-><init>(B)V

    invoke-direct {v2, v3, v10, v4}, Lb/a/bg;-><init>(Ljava/lang/String;BLb/a/bh;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lb/a/u;->f:Ljava/util/Map;

    .line 145
    const-class v0, Lb/a/u;

    sget-object v1, Lb/a/u;->f:Ljava/util/Map;

    invoke-static {v0, v1}, Lb/a/bg;->a(Ljava/lang/Class;Ljava/util/Map;)V

    .line 146
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput-byte v2, p0, Lb/a/u;->n:B

    .line 128
    const/4 v0, 0x2

    new-array v0, v0, [Lb/a/u$e;

    sget-object v1, Lb/a/u$e;->c:Lb/a/u$e;

    aput-object v1, v0, v2

    const/4 v1, 0x1

    sget-object v2, Lb/a/u$e;->d:Lb/a/u$e;

    aput-object v2, v0, v1

    iput-object v0, p0, Lb/a/u;->o:[Lb/a/u$e;

    .line 149
    return-void
.end method

.method static synthetic e()Lb/a/bw;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lb/a/u;->g:Lb/a/bw;

    return-object v0
.end method

.method static synthetic f()Lb/a/bo;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lb/a/u;->h:Lb/a/bo;

    return-object v0
.end method

.method static synthetic g()Lb/a/bo;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lb/a/u;->i:Lb/a/bo;

    return-object v0
.end method

.method static synthetic h()Lb/a/bo;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lb/a/u;->j:Lb/a/bo;

    return-object v0
.end method

.method static synthetic i()Lb/a/bo;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lb/a/u;->k:Lb/a/bo;

    return-object v0
.end method

.method static synthetic j()Lb/a/bo;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lb/a/u;->l:Lb/a/bo;

    return-object v0
.end method


# virtual methods
.method public a(I)Lb/a/u;
    .locals 1

    .prologue
    .line 294
    iput p1, p0, Lb/a/u;->d:I

    .line 295
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lb/a/u;->d(Z)V

    .line 296
    return-object p0
.end method

.method public a(J)Lb/a/u;
    .locals 1

    .prologue
    .line 271
    iput-wide p1, p0, Lb/a/u;->c:J

    .line 272
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lb/a/u;->c(Z)V

    .line 273
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lb/a/u;
    .locals 0

    .prologue
    .line 212
    iput-object p1, p0, Lb/a/u;->a:Ljava/lang/String;

    .line 213
    return-object p0
.end method

.method public a(Ljava/util/Map;)Lb/a/u;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lb/a/ag;",
            ">;)",
            "Lb/a/u;"
        }
    .end annotation

    .prologue
    .line 247
    iput-object p1, p0, Lb/a/u;->b:Ljava/util/Map;

    .line 248
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
    .line 340
    sget-object v0, Lb/a/u;->m:Ljava/util/Map;

    invoke-virtual {p1}, Lb/a/br;->y()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/bz;

    invoke-interface {v0}, Lb/a/bz;->b()Lb/a/by;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lb/a/by;->b(Lb/a/br;Lb/a/ay;)V

    .line 341
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 226
    if-nez p1, :cond_0

    .line 227
    const/4 v0, 0x0

    iput-object v0, p0, Lb/a/u;->a:Ljava/lang/String;

    .line 229
    :cond_0
    return-void
.end method

.method public a()Z
    .locals 2

    .prologue
    .line 282
    iget-byte v0, p0, Lb/a/u;->n:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lb/a/aw;->a(BI)Z

    move-result v0

    return v0
.end method

.method public b(J)Lb/a/u;
    .locals 1

    .prologue
    .line 317
    iput-wide p1, p0, Lb/a/u;->e:J

    .line 318
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lb/a/u;->e(Z)V

    .line 319
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
    .line 344
    sget-object v0, Lb/a/u;->m:Ljava/util/Map;

    invoke-virtual {p1}, Lb/a/br;->y()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/bz;

    invoke-interface {v0}, Lb/a/bz;->b()Lb/a/by;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lb/a/by;->a(Lb/a/br;Lb/a/ay;)V

    .line 345
    return-void
.end method

.method public b(Z)V
    .locals 1

    .prologue
    .line 261
    if-nez p1, :cond_0

    .line 262
    const/4 v0, 0x0

    iput-object v0, p0, Lb/a/u;->b:Ljava/util/Map;

    .line 264
    :cond_0
    return-void
.end method

.method public b()Z
    .locals 2

    .prologue
    .line 305
    iget-byte v0, p0, Lb/a/u;->n:B

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lb/a/aw;->a(BI)Z

    move-result v0

    return v0
.end method

.method public c(Z)V
    .locals 2

    .prologue
    .line 286
    iget-byte v0, p0, Lb/a/u;->n:B

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lb/a/aw;->a(BIZ)B

    move-result v0

    iput-byte v0, p0, Lb/a/u;->n:B

    .line 287
    return-void
.end method

.method public c()Z
    .locals 2

    .prologue
    .line 328
    iget-byte v0, p0, Lb/a/u;->n:B

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lb/a/aw;->a(BI)Z

    move-result v0

    return v0
.end method

.method public d()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb/a/bb;
        }
    .end annotation

    .prologue
    .line 389
    iget-object v0, p0, Lb/a/u;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 390
    new-instance v0, Lb/a/bs;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'name\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lb/a/u;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lb/a/bs;-><init>(Ljava/lang/String;)V

    throw v0

    .line 392
    :cond_0
    iget-object v0, p0, Lb/a/u;->b:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 393
    new-instance v0, Lb/a/bs;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'properties\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lb/a/u;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lb/a/bs;-><init>(Ljava/lang/String;)V

    throw v0

    .line 397
    :cond_1
    return-void
.end method

.method public d(Z)V
    .locals 2

    .prologue
    .line 309
    iget-byte v0, p0, Lb/a/u;->n:B

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lb/a/aw;->a(BIZ)B

    move-result v0

    iput-byte v0, p0, Lb/a/u;->n:B

    .line 310
    return-void
.end method

.method public e(Z)V
    .locals 2

    .prologue
    .line 332
    iget-byte v0, p0, Lb/a/u;->n:B

    const/4 v1, 0x2

    invoke-static {v0, v1, p1}, Lb/a/aw;->a(BIZ)B

    move-result v0

    iput-byte v0, p0, Lb/a/u;->n:B

    .line 333
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 349
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Event("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 352
    const-string v1, "name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    iget-object v1, p0, Lb/a/u;->a:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 354
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    :goto_0
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    const-string v1, "properties:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    iget-object v1, p0, Lb/a/u;->b:Ljava/util/Map;

    if-nez v1, :cond_3

    .line 362
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    :goto_1
    invoke-virtual {p0}, Lb/a/u;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 368
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    const-string v1, "duration:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    iget-wide v2, p0, Lb/a/u;->c:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 373
    :cond_0
    invoke-virtual {p0}, Lb/a/u;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 374
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    const-string v1, "acc:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    iget v1, p0, Lb/a/u;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 379
    :cond_1
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    const-string v1, "ts:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    iget-wide v2, p0, Lb/a/u;->e:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 383
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 356
    :cond_2
    iget-object v1, p0, Lb/a/u;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 364
    :cond_3
    iget-object v1, p0, Lb/a/u;->b:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method
