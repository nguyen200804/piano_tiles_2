.class public Lb/a/an;
.super Ljava/lang/Object;
.source "UMEnvelope.java"

# interfaces
.implements Lb/a/ay;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/a/an$c;,
        Lb/a/an$d;,
        Lb/a/an$a;,
        Lb/a/an$b;,
        Lb/a/an$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lb/a/ay",
        "<",
        "Lb/a/an;",
        "Lb/a/an$e;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field public static final k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lb/a/an$e;",
            "Lb/a/bg;",
            ">;"
        }
    .end annotation
.end field

.field private static final l:Lb/a/bw;

.field private static final m:Lb/a/bo;

.field private static final n:Lb/a/bo;

.field private static final o:Lb/a/bo;

.field private static final p:Lb/a/bo;

.field private static final q:Lb/a/bo;

.field private static final r:Lb/a/bo;

.field private static final s:Lb/a/bo;

.field private static final t:Lb/a/bo;

.field private static final u:Lb/a/bo;

.field private static final v:Lb/a/bo;

.field private static final w:Ljava/util/Map;
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

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:I

.field public e:I

.field public f:I

.field public g:Ljava/nio/ByteBuffer;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:I

.field private x:B

.field private y:[Lb/a/an$e;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x2

    const/16 v7, 0x8

    const/4 v6, 0x1

    const/16 v5, 0xb

    .line 32
    new-instance v0, Lb/a/bw;

    const-string v1, "UMEnvelope"

    invoke-direct {v0, v1}, Lb/a/bw;-><init>(Ljava/lang/String;)V

    sput-object v0, Lb/a/an;->l:Lb/a/bw;

    .line 34
    new-instance v0, Lb/a/bo;

    const-string v1, "version"

    invoke-direct {v0, v1, v5, v6}, Lb/a/bo;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lb/a/an;->m:Lb/a/bo;

    .line 35
    new-instance v0, Lb/a/bo;

    const-string v1, "address"

    invoke-direct {v0, v1, v5, v8}, Lb/a/bo;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lb/a/an;->n:Lb/a/bo;

    .line 36
    new-instance v0, Lb/a/bo;

    const-string v1, "signature"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v5, v2}, Lb/a/bo;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lb/a/an;->o:Lb/a/bo;

    .line 37
    new-instance v0, Lb/a/bo;

    const-string v1, "serial_num"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v7, v2}, Lb/a/bo;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lb/a/an;->p:Lb/a/bo;

    .line 38
    new-instance v0, Lb/a/bo;

    const-string v1, "ts_secs"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v7, v2}, Lb/a/bo;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lb/a/an;->q:Lb/a/bo;

    .line 39
    new-instance v0, Lb/a/bo;

    const-string v1, "length"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v7, v2}, Lb/a/bo;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lb/a/an;->r:Lb/a/bo;

    .line 40
    new-instance v0, Lb/a/bo;

    const-string v1, "entity"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v5, v2}, Lb/a/bo;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lb/a/an;->s:Lb/a/bo;

    .line 41
    new-instance v0, Lb/a/bo;

    const-string v1, "guid"

    invoke-direct {v0, v1, v5, v7}, Lb/a/bo;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lb/a/an;->t:Lb/a/bo;

    .line 42
    new-instance v0, Lb/a/bo;

    const-string v1, "checksum"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v5, v2}, Lb/a/bo;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lb/a/an;->u:Lb/a/bo;

    .line 43
    new-instance v0, Lb/a/bo;

    const-string v1, "codex"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v7, v2}, Lb/a/bo;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lb/a/an;->v:Lb/a/bo;

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lb/a/an;->w:Ljava/util/Map;

    .line 47
    sget-object v0, Lb/a/an;->w:Ljava/util/Map;

    const-class v1, Lb/a/ca;

    new-instance v2, Lb/a/an$b;

    invoke-direct {v2, v3}, Lb/a/an$b;-><init>(Lb/a/an$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lb/a/an;->w:Ljava/util/Map;

    const-class v1, Lb/a/cb;

    new-instance v2, Lb/a/an$d;

    invoke-direct {v2, v3}, Lb/a/an$d;-><init>(Lb/a/an$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lb/a/an$e;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 157
    sget-object v1, Lb/a/an$e;->a:Lb/a/an$e;

    new-instance v2, Lb/a/bg;

    const-string v3, "version"

    new-instance v4, Lb/a/bh;

    invoke-direct {v4, v5}, Lb/a/bh;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lb/a/bg;-><init>(Ljava/lang/String;BLb/a/bh;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    sget-object v1, Lb/a/an$e;->b:Lb/a/an$e;

    new-instance v2, Lb/a/bg;

    const-string v3, "address"

    new-instance v4, Lb/a/bh;

    invoke-direct {v4, v5}, Lb/a/bh;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lb/a/bg;-><init>(Ljava/lang/String;BLb/a/bh;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    sget-object v1, Lb/a/an$e;->c:Lb/a/an$e;

    new-instance v2, Lb/a/bg;

    const-string v3, "signature"

    new-instance v4, Lb/a/bh;

    invoke-direct {v4, v5}, Lb/a/bh;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lb/a/bg;-><init>(Ljava/lang/String;BLb/a/bh;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    sget-object v1, Lb/a/an$e;->d:Lb/a/an$e;

    new-instance v2, Lb/a/bg;

    const-string v3, "serial_num"

    new-instance v4, Lb/a/bh;

    invoke-direct {v4, v7}, Lb/a/bh;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lb/a/bg;-><init>(Ljava/lang/String;BLb/a/bh;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    sget-object v1, Lb/a/an$e;->e:Lb/a/an$e;

    new-instance v2, Lb/a/bg;

    const-string v3, "ts_secs"

    new-instance v4, Lb/a/bh;

    invoke-direct {v4, v7}, Lb/a/bh;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lb/a/bg;-><init>(Ljava/lang/String;BLb/a/bh;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    sget-object v1, Lb/a/an$e;->f:Lb/a/an$e;

    new-instance v2, Lb/a/bg;

    const-string v3, "length"

    new-instance v4, Lb/a/bh;

    invoke-direct {v4, v7}, Lb/a/bh;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lb/a/bg;-><init>(Ljava/lang/String;BLb/a/bh;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    sget-object v1, Lb/a/an$e;->g:Lb/a/an$e;

    new-instance v2, Lb/a/bg;

    const-string v3, "entity"

    new-instance v4, Lb/a/bh;

    invoke-direct {v4, v5, v6}, Lb/a/bh;-><init>(BZ)V

    invoke-direct {v2, v3, v6, v4}, Lb/a/bg;-><init>(Ljava/lang/String;BLb/a/bh;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    sget-object v1, Lb/a/an$e;->h:Lb/a/an$e;

    new-instance v2, Lb/a/bg;

    const-string v3, "guid"

    new-instance v4, Lb/a/bh;

    invoke-direct {v4, v5}, Lb/a/bh;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lb/a/bg;-><init>(Ljava/lang/String;BLb/a/bh;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    sget-object v1, Lb/a/an$e;->i:Lb/a/an$e;

    new-instance v2, Lb/a/bg;

    const-string v3, "checksum"

    new-instance v4, Lb/a/bh;

    invoke-direct {v4, v5}, Lb/a/bh;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lb/a/bg;-><init>(Ljava/lang/String;BLb/a/bh;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    sget-object v1, Lb/a/an$e;->j:Lb/a/an$e;

    new-instance v2, Lb/a/bg;

    const-string v3, "codex"

    new-instance v4, Lb/a/bh;

    invoke-direct {v4, v7}, Lb/a/bh;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lb/a/bg;-><init>(Ljava/lang/String;BLb/a/bh;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lb/a/an;->k:Ljava/util/Map;

    .line 178
    const-class v0, Lb/a/an;

    sget-object v1, Lb/a/an;->k:Ljava/util/Map;

    invoke-static {v0, v1}, Lb/a/bg;->a(Ljava/lang/Class;Ljava/util/Map;)V

    .line 179
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    iput-byte v2, p0, Lb/a/an;->x:B

    .line 153
    const/4 v0, 0x1

    new-array v0, v0, [Lb/a/an$e;

    sget-object v1, Lb/a/an$e;->j:Lb/a/an$e;

    aput-object v1, v0, v2

    iput-object v0, p0, Lb/a/an;->y:[Lb/a/an$e;

    .line 182
    return-void
.end method

.method static synthetic f()Lb/a/bw;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lb/a/an;->l:Lb/a/bw;

    return-object v0
.end method

.method static synthetic g()Lb/a/bo;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lb/a/an;->m:Lb/a/bo;

    return-object v0
.end method

.method static synthetic h()Lb/a/bo;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lb/a/an;->n:Lb/a/bo;

    return-object v0
.end method

.method static synthetic i()Lb/a/bo;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lb/a/an;->o:Lb/a/bo;

    return-object v0
.end method

.method static synthetic j()Lb/a/bo;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lb/a/an;->p:Lb/a/bo;

    return-object v0
.end method

.method static synthetic k()Lb/a/bo;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lb/a/an;->q:Lb/a/bo;

    return-object v0
.end method

.method static synthetic l()Lb/a/bo;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lb/a/an;->r:Lb/a/bo;

    return-object v0
.end method

.method static synthetic m()Lb/a/bo;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lb/a/an;->s:Lb/a/bo;

    return-object v0
.end method

.method static synthetic n()Lb/a/bo;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lb/a/an;->t:Lb/a/bo;

    return-object v0
.end method

.method static synthetic o()Lb/a/bo;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lb/a/an;->u:Lb/a/bo;

    return-object v0
.end method

.method static synthetic p()Lb/a/bo;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lb/a/an;->v:Lb/a/bo;

    return-object v0
.end method


# virtual methods
.method public a(I)Lb/a/an;
    .locals 1

    .prologue
    .line 339
    iput p1, p0, Lb/a/an;->d:I

    .line 340
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lb/a/an;->d(Z)V

    .line 341
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lb/a/an;
    .locals 0

    .prologue
    .line 267
    iput-object p1, p0, Lb/a/an;->a:Ljava/lang/String;

    .line 268
    return-object p0
.end method

.method public a(Ljava/nio/ByteBuffer;)Lb/a/an;
    .locals 0

    .prologue
    .line 418
    iput-object p1, p0, Lb/a/an;->g:Ljava/nio/ByteBuffer;

    .line 419
    return-object p0
.end method

.method public a([B)Lb/a/an;
    .locals 1

    .prologue
    .line 413
    if-nez p1, :cond_0

    const/4 v0, 0x0

    check-cast v0, Ljava/nio/ByteBuffer;

    :goto_0
    invoke-virtual {p0, v0}, Lb/a/an;->a(Ljava/nio/ByteBuffer;)Lb/a/an;

    .line 414
    return-object p0

    .line 413
    :cond_0
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lb/a/br;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb/a/bb;
        }
    .end annotation

    .prologue
    .line 513
    sget-object v0, Lb/a/an;->w:Ljava/util/Map;

    invoke-virtual {p1}, Lb/a/br;->y()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/bz;

    invoke-interface {v0}, Lb/a/bz;->b()Lb/a/by;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lb/a/by;->b(Lb/a/br;Lb/a/ay;)V

    .line 514
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 281
    if-nez p1, :cond_0

    .line 282
    const/4 v0, 0x0

    iput-object v0, p0, Lb/a/an;->a:Ljava/lang/String;

    .line 284
    :cond_0
    return-void
.end method

.method public a()Z
    .locals 2

    .prologue
    .line 350
    iget-byte v0, p0, Lb/a/an;->x:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lb/a/aw;->a(BI)Z

    move-result v0

    return v0
.end method

.method public b(I)Lb/a/an;
    .locals 1

    .prologue
    .line 362
    iput p1, p0, Lb/a/an;->e:I

    .line 363
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lb/a/an;->e(Z)V

    .line 364
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lb/a/an;
    .locals 0

    .prologue
    .line 291
    iput-object p1, p0, Lb/a/an;->b:Ljava/lang/String;

    .line 292
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
    .line 517
    sget-object v0, Lb/a/an;->w:Ljava/util/Map;

    invoke-virtual {p1}, Lb/a/br;->y()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/bz;

    invoke-interface {v0}, Lb/a/bz;->b()Lb/a/by;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lb/a/by;->a(Lb/a/br;Lb/a/ay;)V

    .line 518
    return-void
.end method

.method public b(Z)V
    .locals 1

    .prologue
    .line 305
    if-nez p1, :cond_0

    .line 306
    const/4 v0, 0x0

    iput-object v0, p0, Lb/a/an;->b:Ljava/lang/String;

    .line 308
    :cond_0
    return-void
.end method

.method public b()Z
    .locals 2

    .prologue
    .line 373
    iget-byte v0, p0, Lb/a/an;->x:B

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lb/a/aw;->a(BI)Z

    move-result v0

    return v0
.end method

.method public c(I)Lb/a/an;
    .locals 1

    .prologue
    .line 385
    iput p1, p0, Lb/a/an;->f:I

    .line 386
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lb/a/an;->f(Z)V

    .line 387
    return-object p0
.end method

.method public c(Ljava/lang/String;)Lb/a/an;
    .locals 0

    .prologue
    .line 315
    iput-object p1, p0, Lb/a/an;->c:Ljava/lang/String;

    .line 316
    return-object p0
.end method

.method public c(Z)V
    .locals 1

    .prologue
    .line 329
    if-nez p1, :cond_0

    .line 330
    const/4 v0, 0x0

    iput-object v0, p0, Lb/a/an;->c:Ljava/lang/String;

    .line 332
    :cond_0
    return-void
.end method

.method public c()Z
    .locals 2

    .prologue
    .line 396
    iget-byte v0, p0, Lb/a/an;->x:B

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lb/a/aw;->a(BI)Z

    move-result v0

    return v0
.end method

.method public d(I)Lb/a/an;
    .locals 1

    .prologue
    .line 490
    iput p1, p0, Lb/a/an;->j:I

    .line 491
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lb/a/an;->j(Z)V

    .line 492
    return-object p0
.end method

.method public d(Ljava/lang/String;)Lb/a/an;
    .locals 0

    .prologue
    .line 442
    iput-object p1, p0, Lb/a/an;->h:Ljava/lang/String;

    .line 443
    return-object p0
.end method

.method public d(Z)V
    .locals 2

    .prologue
    .line 354
    iget-byte v0, p0, Lb/a/an;->x:B

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lb/a/aw;->a(BIZ)B

    move-result v0

    iput-byte v0, p0, Lb/a/an;->x:B

    .line 355
    return-void
.end method

.method public d()Z
    .locals 2

    .prologue
    .line 501
    iget-byte v0, p0, Lb/a/an;->x:B

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lb/a/aw;->a(BI)Z

    move-result v0

    return v0
.end method

.method public e(Ljava/lang/String;)Lb/a/an;
    .locals 0

    .prologue
    .line 466
    iput-object p1, p0, Lb/a/an;->i:Ljava/lang/String;

    .line 467
    return-object p0
.end method

.method public e()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb/a/bb;
        }
    .end annotation

    .prologue
    .line 596
    iget-object v0, p0, Lb/a/an;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 597
    new-instance v0, Lb/a/bs;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'version\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lb/a/an;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lb/a/bs;-><init>(Ljava/lang/String;)V

    throw v0

    .line 599
    :cond_0
    iget-object v0, p0, Lb/a/an;->b:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 600
    new-instance v0, Lb/a/bs;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'address\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lb/a/an;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lb/a/bs;-><init>(Ljava/lang/String;)V

    throw v0

    .line 602
    :cond_1
    iget-object v0, p0, Lb/a/an;->c:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 603
    new-instance v0, Lb/a/bs;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'signature\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lb/a/an;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lb/a/bs;-><init>(Ljava/lang/String;)V

    throw v0

    .line 608
    :cond_2
    iget-object v0, p0, Lb/a/an;->g:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_3

    .line 609
    new-instance v0, Lb/a/bs;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'entity\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lb/a/an;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lb/a/bs;-><init>(Ljava/lang/String;)V

    throw v0

    .line 611
    :cond_3
    iget-object v0, p0, Lb/a/an;->h:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 612
    new-instance v0, Lb/a/bs;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'guid\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lb/a/an;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lb/a/bs;-><init>(Ljava/lang/String;)V

    throw v0

    .line 614
    :cond_4
    iget-object v0, p0, Lb/a/an;->i:Ljava/lang/String;

    if-nez v0, :cond_5

    .line 615
    new-instance v0, Lb/a/bs;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'checksum\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lb/a/an;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lb/a/bs;-><init>(Ljava/lang/String;)V

    throw v0

    .line 618
    :cond_5
    return-void
.end method

.method public e(Z)V
    .locals 2

    .prologue
    .line 377
    iget-byte v0, p0, Lb/a/an;->x:B

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lb/a/aw;->a(BIZ)B

    move-result v0

    iput-byte v0, p0, Lb/a/an;->x:B

    .line 378
    return-void
.end method

.method public f(Z)V
    .locals 2

    .prologue
    .line 400
    iget-byte v0, p0, Lb/a/an;->x:B

    const/4 v1, 0x2

    invoke-static {v0, v1, p1}, Lb/a/aw;->a(BIZ)B

    move-result v0

    iput-byte v0, p0, Lb/a/an;->x:B

    .line 401
    return-void
.end method

.method public g(Z)V
    .locals 1

    .prologue
    .line 432
    if-nez p1, :cond_0

    .line 433
    const/4 v0, 0x0

    iput-object v0, p0, Lb/a/an;->g:Ljava/nio/ByteBuffer;

    .line 435
    :cond_0
    return-void
.end method

.method public h(Z)V
    .locals 1

    .prologue
    .line 456
    if-nez p1, :cond_0

    .line 457
    const/4 v0, 0x0

    iput-object v0, p0, Lb/a/an;->h:Ljava/lang/String;

    .line 459
    :cond_0
    return-void
.end method

.method public i(Z)V
    .locals 1

    .prologue
    .line 480
    if-nez p1, :cond_0

    .line 481
    const/4 v0, 0x0

    iput-object v0, p0, Lb/a/an;->i:Ljava/lang/String;

    .line 483
    :cond_0
    return-void
.end method

.method public j(Z)V
    .locals 2

    .prologue
    .line 505
    iget-byte v0, p0, Lb/a/an;->x:B

    const/4 v1, 0x3

    invoke-static {v0, v1, p1}, Lb/a/aw;->a(BIZ)B

    move-result v0

    iput-byte v0, p0, Lb/a/an;->x:B

    .line 506
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 522
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UMEnvelope("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 525
    const-string v1, "version:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 526
    iget-object v1, p0, Lb/a/an;->a:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 527
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    :goto_0
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 533
    const-string v1, "address:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 534
    iget-object v1, p0, Lb/a/an;->b:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 535
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 540
    :goto_1
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 541
    const-string v1, "signature:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 542
    iget-object v1, p0, Lb/a/an;->c:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 543
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    :goto_2
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 549
    const-string v1, "serial_num:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    iget v1, p0, Lb/a/an;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 552
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 553
    const-string v1, "ts_secs:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 554
    iget v1, p0, Lb/a/an;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 556
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 557
    const-string v1, "length:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    iget v1, p0, Lb/a/an;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 560
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 561
    const-string v1, "entity:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 562
    iget-object v1, p0, Lb/a/an;->g:Ljava/nio/ByteBuffer;

    if-nez v1, :cond_4

    .line 563
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 568
    :goto_3
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 569
    const-string v1, "guid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 570
    iget-object v1, p0, Lb/a/an;->h:Ljava/lang/String;

    if-nez v1, :cond_5

    .line 571
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 576
    :goto_4
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 577
    const-string v1, "checksum:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 578
    iget-object v1, p0, Lb/a/an;->i:Ljava/lang/String;

    if-nez v1, :cond_6

    .line 579
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 584
    :goto_5
    invoke-virtual {p0}, Lb/a/an;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 585
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 586
    const-string v1, "codex:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 587
    iget v1, p0, Lb/a/an;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 590
    :cond_0
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 591
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 529
    :cond_1
    iget-object v1, p0, Lb/a/an;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 537
    :cond_2
    iget-object v1, p0, Lb/a/an;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 545
    :cond_3
    iget-object v1, p0, Lb/a/an;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 565
    :cond_4
    iget-object v1, p0, Lb/a/an;->g:Ljava/nio/ByteBuffer;

    invoke-static {v1, v0}, Lb/a/az;->a(Ljava/nio/ByteBuffer;Ljava/lang/StringBuilder;)V

    goto :goto_3

    .line 573
    :cond_5
    iget-object v1, p0, Lb/a/an;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 581
    :cond_6
    iget-object v1, p0, Lb/a/an;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5
.end method
