.class public Lb/a/ae;
.super Ljava/lang/Object;
.source "MiscInfo.java"

# interfaces
.implements Lb/a/ay;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/a/ae$c;,
        Lb/a/ae$d;,
        Lb/a/ae$a;,
        Lb/a/ae$b;,
        Lb/a/ae$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lb/a/ay",
        "<",
        "Lb/a/ae;",
        "Lb/a/ae$e;",
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
            "Lb/a/ae$e;",
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
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:D

.field public e:D

.field public f:Ljava/lang/String;

.field public g:I

.field public h:Ljava/lang/String;

.field public i:Lb/a/l;

.field public j:Ljava/lang/String;

.field private x:B

.field private y:[Lb/a/ae$e;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x4

    const/16 v5, 0x8

    const/16 v8, 0xb

    const/4 v7, 0x2

    .line 32
    new-instance v0, Lb/a/bw;

    const-string v1, "MiscInfo"

    invoke-direct {v0, v1}, Lb/a/bw;-><init>(Ljava/lang/String;)V

    sput-object v0, Lb/a/ae;->l:Lb/a/bw;

    .line 34
    new-instance v0, Lb/a/bo;

    const-string v1, "time_zone"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v5, v2}, Lb/a/bo;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lb/a/ae;->m:Lb/a/bo;

    .line 35
    new-instance v0, Lb/a/bo;

    const-string v1, "language"

    invoke-direct {v0, v1, v8, v7}, Lb/a/bo;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lb/a/ae;->n:Lb/a/bo;

    .line 36
    new-instance v0, Lb/a/bo;

    const-string v1, "country"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v8, v2}, Lb/a/bo;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lb/a/ae;->o:Lb/a/bo;

    .line 37
    new-instance v0, Lb/a/bo;

    const-string v1, "latitude"

    invoke-direct {v0, v1, v6, v6}, Lb/a/bo;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lb/a/ae;->p:Lb/a/bo;

    .line 38
    new-instance v0, Lb/a/bo;

    const-string v1, "longitude"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v6, v2}, Lb/a/bo;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lb/a/ae;->q:Lb/a/bo;

    .line 39
    new-instance v0, Lb/a/bo;

    const-string v1, "carrier"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v8, v2}, Lb/a/bo;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lb/a/ae;->r:Lb/a/bo;

    .line 40
    new-instance v0, Lb/a/bo;

    const-string v1, "latency"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v5, v2}, Lb/a/bo;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lb/a/ae;->s:Lb/a/bo;

    .line 41
    new-instance v0, Lb/a/bo;

    const-string v1, "display_name"

    invoke-direct {v0, v1, v8, v5}, Lb/a/bo;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lb/a/ae;->t:Lb/a/bo;

    .line 42
    new-instance v0, Lb/a/bo;

    const-string v1, "access_type"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v5, v2}, Lb/a/bo;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lb/a/ae;->u:Lb/a/bo;

    .line 43
    new-instance v0, Lb/a/bo;

    const-string v1, "access_subtype"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v8, v2}, Lb/a/bo;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lb/a/ae;->v:Lb/a/bo;

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lb/a/ae;->w:Ljava/util/Map;

    .line 47
    sget-object v0, Lb/a/ae;->w:Ljava/util/Map;

    const-class v1, Lb/a/ca;

    new-instance v2, Lb/a/ae$b;

    invoke-direct {v2, v3}, Lb/a/ae$b;-><init>(Lb/a/ae$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lb/a/ae;->w:Ljava/util/Map;

    const-class v1, Lb/a/cb;

    new-instance v2, Lb/a/ae$d;

    invoke-direct {v2, v3}, Lb/a/ae$d;-><init>(Lb/a/ae$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lb/a/ae$e;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 165
    sget-object v1, Lb/a/ae$e;->a:Lb/a/ae$e;

    new-instance v2, Lb/a/bg;

    const-string v3, "time_zone"

    new-instance v4, Lb/a/bh;

    invoke-direct {v4, v5}, Lb/a/bh;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lb/a/bg;-><init>(Ljava/lang/String;BLb/a/bh;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    sget-object v1, Lb/a/ae$e;->b:Lb/a/ae$e;

    new-instance v2, Lb/a/bg;

    const-string v3, "language"

    new-instance v4, Lb/a/bh;

    invoke-direct {v4, v8}, Lb/a/bh;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lb/a/bg;-><init>(Ljava/lang/String;BLb/a/bh;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    sget-object v1, Lb/a/ae$e;->c:Lb/a/ae$e;

    new-instance v2, Lb/a/bg;

    const-string v3, "country"

    new-instance v4, Lb/a/bh;

    invoke-direct {v4, v8}, Lb/a/bh;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lb/a/bg;-><init>(Ljava/lang/String;BLb/a/bh;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    sget-object v1, Lb/a/ae$e;->d:Lb/a/ae$e;

    new-instance v2, Lb/a/bg;

    const-string v3, "latitude"

    new-instance v4, Lb/a/bh;

    invoke-direct {v4, v6}, Lb/a/bh;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lb/a/bg;-><init>(Ljava/lang/String;BLb/a/bh;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    sget-object v1, Lb/a/ae$e;->e:Lb/a/ae$e;

    new-instance v2, Lb/a/bg;

    const-string v3, "longitude"

    new-instance v4, Lb/a/bh;

    invoke-direct {v4, v6}, Lb/a/bh;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lb/a/bg;-><init>(Ljava/lang/String;BLb/a/bh;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    sget-object v1, Lb/a/ae$e;->f:Lb/a/ae$e;

    new-instance v2, Lb/a/bg;

    const-string v3, "carrier"

    new-instance v4, Lb/a/bh;

    invoke-direct {v4, v8}, Lb/a/bh;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lb/a/bg;-><init>(Ljava/lang/String;BLb/a/bh;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    sget-object v1, Lb/a/ae$e;->g:Lb/a/ae$e;

    new-instance v2, Lb/a/bg;

    const-string v3, "latency"

    new-instance v4, Lb/a/bh;

    invoke-direct {v4, v5}, Lb/a/bh;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lb/a/bg;-><init>(Ljava/lang/String;BLb/a/bh;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    sget-object v1, Lb/a/ae$e;->h:Lb/a/ae$e;

    new-instance v2, Lb/a/bg;

    const-string v3, "display_name"

    new-instance v4, Lb/a/bh;

    invoke-direct {v4, v8}, Lb/a/bh;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lb/a/bg;-><init>(Ljava/lang/String;BLb/a/bh;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    sget-object v1, Lb/a/ae$e;->i:Lb/a/ae$e;

    new-instance v2, Lb/a/bg;

    const-string v3, "access_type"

    new-instance v4, Lb/a/bf;

    const/16 v5, 0x10

    const-class v6, Lb/a/l;

    invoke-direct {v4, v5, v6}, Lb/a/bf;-><init>(BLjava/lang/Class;)V

    invoke-direct {v2, v3, v7, v4}, Lb/a/bg;-><init>(Ljava/lang/String;BLb/a/bh;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    sget-object v1, Lb/a/ae$e;->j:Lb/a/ae$e;

    new-instance v2, Lb/a/bg;

    const-string v3, "access_subtype"

    new-instance v4, Lb/a/bh;

    invoke-direct {v4, v8}, Lb/a/bh;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lb/a/bg;-><init>(Ljava/lang/String;BLb/a/bh;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lb/a/ae;->k:Ljava/util/Map;

    .line 186
    const-class v0, Lb/a/ae;

    sget-object v1, Lb/a/ae;->k:Ljava/util/Map;

    invoke-static {v0, v1}, Lb/a/bg;->a(Ljava/lang/Class;Ljava/util/Map;)V

    .line 187
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    iput-byte v2, p0, Lb/a/ae;->x:B

    .line 161
    const/16 v0, 0xa

    new-array v0, v0, [Lb/a/ae$e;

    sget-object v1, Lb/a/ae$e;->a:Lb/a/ae$e;

    aput-object v1, v0, v2

    const/4 v1, 0x1

    sget-object v2, Lb/a/ae$e;->b:Lb/a/ae$e;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lb/a/ae$e;->c:Lb/a/ae$e;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lb/a/ae$e;->d:Lb/a/ae$e;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lb/a/ae$e;->e:Lb/a/ae$e;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lb/a/ae$e;->f:Lb/a/ae$e;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lb/a/ae$e;->g:Lb/a/ae$e;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lb/a/ae$e;->h:Lb/a/ae$e;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lb/a/ae$e;->i:Lb/a/ae$e;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lb/a/ae$e;->j:Lb/a/ae$e;

    aput-object v2, v0, v1

    iput-object v0, p0, Lb/a/ae;->y:[Lb/a/ae$e;

    .line 190
    return-void
.end method

.method static synthetic l()Lb/a/bw;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lb/a/ae;->l:Lb/a/bw;

    return-object v0
.end method

.method static synthetic m()Lb/a/bo;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lb/a/ae;->m:Lb/a/bo;

    return-object v0
.end method

.method static synthetic n()Lb/a/bo;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lb/a/ae;->n:Lb/a/bo;

    return-object v0
.end method

.method static synthetic o()Lb/a/bo;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lb/a/ae;->o:Lb/a/bo;

    return-object v0
.end method

.method static synthetic p()Lb/a/bo;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lb/a/ae;->p:Lb/a/bo;

    return-object v0
.end method

.method static synthetic q()Lb/a/bo;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lb/a/ae;->q:Lb/a/bo;

    return-object v0
.end method

.method static synthetic r()Lb/a/bo;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lb/a/ae;->r:Lb/a/bo;

    return-object v0
.end method

.method static synthetic s()Lb/a/bo;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lb/a/ae;->s:Lb/a/bo;

    return-object v0
.end method

.method static synthetic t()Lb/a/bo;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lb/a/ae;->t:Lb/a/bo;

    return-object v0
.end method

.method static synthetic u()Lb/a/bo;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lb/a/ae;->u:Lb/a/bo;

    return-object v0
.end method

.method static synthetic v()Lb/a/bo;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lb/a/ae;->v:Lb/a/bo;

    return-object v0
.end method


# virtual methods
.method public a(I)Lb/a/ae;
    .locals 1

    .prologue
    .line 248
    iput p1, p0, Lb/a/ae;->a:I

    .line 249
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lb/a/ae;->a(Z)V

    .line 250
    return-object p0
.end method

.method public a(Lb/a/l;)Lb/a/ae;
    .locals 0

    .prologue
    .line 444
    iput-object p1, p0, Lb/a/ae;->i:Lb/a/l;

    .line 445
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lb/a/ae;
    .locals 0

    .prologue
    .line 271
    iput-object p1, p0, Lb/a/ae;->b:Ljava/lang/String;

    .line 272
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
    .line 492
    sget-object v0, Lb/a/ae;->w:Ljava/util/Map;

    invoke-virtual {p1}, Lb/a/br;->y()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/bz;

    invoke-interface {v0}, Lb/a/bz;->b()Lb/a/by;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lb/a/by;->b(Lb/a/br;Lb/a/ay;)V

    .line 493
    return-void
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 263
    iget-byte v0, p0, Lb/a/ae;->x:B

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lb/a/aw;->a(BIZ)B

    move-result v0

    iput-byte v0, p0, Lb/a/ae;->x:B

    .line 264
    return-void
.end method

.method public a()Z
    .locals 2

    .prologue
    .line 259
    iget-byte v0, p0, Lb/a/ae;->x:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lb/a/aw;->a(BI)Z

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/String;)Lb/a/ae;
    .locals 0

    .prologue
    .line 295
    iput-object p1, p0, Lb/a/ae;->c:Ljava/lang/String;

    .line 296
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
    .line 496
    sget-object v0, Lb/a/ae;->w:Ljava/util/Map;

    invoke-virtual {p1}, Lb/a/br;->y()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/bz;

    invoke-interface {v0}, Lb/a/bz;->b()Lb/a/by;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lb/a/by;->a(Lb/a/br;Lb/a/ay;)V

    .line 497
    return-void
.end method

.method public b(Z)V
    .locals 1

    .prologue
    .line 285
    if-nez p1, :cond_0

    .line 286
    const/4 v0, 0x0

    iput-object v0, p0, Lb/a/ae;->b:Ljava/lang/String;

    .line 288
    :cond_0
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lb/a/ae;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(Ljava/lang/String;)Lb/a/ae;
    .locals 0

    .prologue
    .line 365
    iput-object p1, p0, Lb/a/ae;->f:Ljava/lang/String;

    .line 366
    return-object p0
.end method

.method public c(Z)V
    .locals 1

    .prologue
    .line 309
    if-nez p1, :cond_0

    .line 310
    const/4 v0, 0x0

    iput-object v0, p0, Lb/a/ae;->c:Ljava/lang/String;

    .line 312
    :cond_0
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lb/a/ae;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d(Ljava/lang/String;)Lb/a/ae;
    .locals 0

    .prologue
    .line 468
    iput-object p1, p0, Lb/a/ae;->j:Ljava/lang/String;

    .line 469
    return-object p0
.end method

.method public d(Z)V
    .locals 2

    .prologue
    .line 334
    iget-byte v0, p0, Lb/a/ae;->x:B

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lb/a/aw;->a(BIZ)B

    move-result v0

    iput-byte v0, p0, Lb/a/ae;->x:B

    .line 335
    return-void
.end method

.method public d()Z
    .locals 2

    .prologue
    .line 330
    iget-byte v0, p0, Lb/a/ae;->x:B

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lb/a/aw;->a(BI)Z

    move-result v0

    return v0
.end method

.method public e(Z)V
    .locals 2

    .prologue
    .line 357
    iget-byte v0, p0, Lb/a/ae;->x:B

    const/4 v1, 0x2

    invoke-static {v0, v1, p1}, Lb/a/aw;->a(BIZ)B

    move-result v0

    iput-byte v0, p0, Lb/a/ae;->x:B

    .line 358
    return-void
.end method

.method public e()Z
    .locals 2

    .prologue
    .line 353
    iget-byte v0, p0, Lb/a/ae;->x:B

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lb/a/aw;->a(BI)Z

    move-result v0

    return v0
.end method

.method public f(Z)V
    .locals 1

    .prologue
    .line 379
    if-nez p1, :cond_0

    .line 380
    const/4 v0, 0x0

    iput-object v0, p0, Lb/a/ae;->f:Ljava/lang/String;

    .line 382
    :cond_0
    return-void
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lb/a/ae;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g(Z)V
    .locals 2

    .prologue
    .line 404
    iget-byte v0, p0, Lb/a/ae;->x:B

    const/4 v1, 0x3

    invoke-static {v0, v1, p1}, Lb/a/aw;->a(BIZ)B

    move-result v0

    iput-byte v0, p0, Lb/a/ae;->x:B

    .line 405
    return-void
.end method

.method public g()Z
    .locals 2

    .prologue
    .line 400
    iget-byte v0, p0, Lb/a/ae;->x:B

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lb/a/aw;->a(BI)Z

    move-result v0

    return v0
.end method

.method public h(Z)V
    .locals 1

    .prologue
    .line 426
    if-nez p1, :cond_0

    .line 427
    const/4 v0, 0x0

    iput-object v0, p0, Lb/a/ae;->h:Ljava/lang/String;

    .line 429
    :cond_0
    return-void
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lb/a/ae;->h:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public i(Z)V
    .locals 1

    .prologue
    .line 458
    if-nez p1, :cond_0

    .line 459
    const/4 v0, 0x0

    iput-object v0, p0, Lb/a/ae;->i:Lb/a/l;

    .line 461
    :cond_0
    return-void
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Lb/a/ae;->i:Lb/a/l;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j(Z)V
    .locals 1

    .prologue
    .line 482
    if-nez p1, :cond_0

    .line 483
    const/4 v0, 0x0

    iput-object v0, p0, Lb/a/ae;->j:Ljava/lang/String;

    .line 485
    :cond_0
    return-void
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 478
    iget-object v0, p0, Lb/a/ae;->j:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public k()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb/a/bb;
        }
    .end annotation

    .prologue
    .line 594
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 501
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "MiscInfo("

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 502
    const/4 v0, 0x1

    .line 504
    invoke-virtual {p0}, Lb/a/ae;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 505
    const-string v0, "time_zone:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    iget v0, p0, Lb/a/ae;->a:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move v0, v1

    .line 509
    :cond_0
    invoke-virtual {p0}, Lb/a/ae;->b()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 510
    if-nez v0, :cond_1

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 511
    :cond_1
    const-string v0, "language:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    iget-object v0, p0, Lb/a/ae;->b:Ljava/lang/String;

    if-nez v0, :cond_12

    .line 513
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    move v0, v1

    .line 519
    :cond_2
    invoke-virtual {p0}, Lb/a/ae;->c()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 520
    if-nez v0, :cond_3

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 521
    :cond_3
    const-string v0, "country:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 522
    iget-object v0, p0, Lb/a/ae;->c:Ljava/lang/String;

    if-nez v0, :cond_13

    .line 523
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    move v0, v1

    .line 529
    :cond_4
    invoke-virtual {p0}, Lb/a/ae;->d()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 530
    if-nez v0, :cond_5

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 531
    :cond_5
    const-string v0, "latitude:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    iget-wide v4, p0, Lb/a/ae;->d:D

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move v0, v1

    .line 535
    :cond_6
    invoke-virtual {p0}, Lb/a/ae;->e()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 536
    if-nez v0, :cond_7

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 537
    :cond_7
    const-string v0, "longitude:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    iget-wide v4, p0, Lb/a/ae;->e:D

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move v0, v1

    .line 541
    :cond_8
    invoke-virtual {p0}, Lb/a/ae;->f()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 542
    if-nez v0, :cond_9

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    :cond_9
    const-string v0, "carrier:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 544
    iget-object v0, p0, Lb/a/ae;->f:Ljava/lang/String;

    if-nez v0, :cond_14

    .line 545
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    move v0, v1

    .line 551
    :cond_a
    invoke-virtual {p0}, Lb/a/ae;->g()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 552
    if-nez v0, :cond_b

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 553
    :cond_b
    const-string v0, "latency:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 554
    iget v0, p0, Lb/a/ae;->g:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move v0, v1

    .line 557
    :cond_c
    invoke-virtual {p0}, Lb/a/ae;->h()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 558
    if-nez v0, :cond_d

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 559
    :cond_d
    const-string v0, "display_name:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 560
    iget-object v0, p0, Lb/a/ae;->h:Ljava/lang/String;

    if-nez v0, :cond_15

    .line 561
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    move v0, v1

    .line 567
    :cond_e
    invoke-virtual {p0}, Lb/a/ae;->i()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 568
    if-nez v0, :cond_f

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 569
    :cond_f
    const-string v0, "access_type:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 570
    iget-object v0, p0, Lb/a/ae;->i:Lb/a/l;

    if-nez v0, :cond_16

    .line 571
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 577
    :goto_4
    invoke-virtual {p0}, Lb/a/ae;->j()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 578
    if-nez v1, :cond_10

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 579
    :cond_10
    const-string v0, "access_subtype:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 580
    iget-object v0, p0, Lb/a/ae;->j:Ljava/lang/String;

    if-nez v0, :cond_17

    .line 581
    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 587
    :cond_11
    :goto_5
    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 588
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 515
    :cond_12
    iget-object v0, p0, Lb/a/ae;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 525
    :cond_13
    iget-object v0, p0, Lb/a/ae;->c:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 547
    :cond_14
    iget-object v0, p0, Lb/a/ae;->f:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 563
    :cond_15
    iget-object v0, p0, Lb/a/ae;->h:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 573
    :cond_16
    iget-object v0, p0, Lb/a/ae;->i:Lb/a/l;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 583
    :cond_17
    iget-object v0, p0, Lb/a/ae;->j:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_18
    move v1, v0

    goto :goto_4
.end method
