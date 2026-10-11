.class public Lb/a/z;
.super Ljava/lang/Object;
.source "Imprint.java"

# interfaces
.implements Lb/a/ay;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/a/z$c;,
        Lb/a/z$d;,
        Lb/a/z$a;,
        Lb/a/z$b;,
        Lb/a/z$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lb/a/ay",
        "<",
        "Lb/a/z;",
        "Lb/a/z$e;",
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
            "Lb/a/z$e;",
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
.field public a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lb/a/aa;",
            ">;"
        }
    .end annotation
.end field

.field public b:I

.field public c:Ljava/lang/String;

.field private j:B


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/4 v3, 0x0

    const/16 v12, 0xd

    const/16 v11, 0x8

    const/16 v10, 0xb

    const/4 v9, 0x1

    .line 33
    new-instance v0, Lb/a/bw;

    const-string v1, "Imprint"

    invoke-direct {v0, v1}, Lb/a/bw;-><init>(Ljava/lang/String;)V

    sput-object v0, Lb/a/z;->e:Lb/a/bw;

    .line 35
    new-instance v0, Lb/a/bo;

    const-string v1, "property"

    invoke-direct {v0, v1, v12, v9}, Lb/a/bo;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lb/a/z;->f:Lb/a/bo;

    .line 36
    new-instance v0, Lb/a/bo;

    const-string v1, "version"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v11, v2}, Lb/a/bo;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lb/a/z;->g:Lb/a/bo;

    .line 37
    new-instance v0, Lb/a/bo;

    const-string v1, "checksum"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v10, v2}, Lb/a/bo;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lb/a/z;->h:Lb/a/bo;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lb/a/z;->i:Ljava/util/Map;

    .line 41
    sget-object v0, Lb/a/z;->i:Ljava/util/Map;

    const-class v1, Lb/a/ca;

    new-instance v2, Lb/a/z$b;

    invoke-direct {v2, v3}, Lb/a/z$b;-><init>(Lb/a/z$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lb/a/z;->i:Ljava/util/Map;

    const-class v1, Lb/a/cb;

    new-instance v2, Lb/a/z$d;

    invoke-direct {v2, v3}, Lb/a/z$d;-><init>(Lb/a/z$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lb/a/z$e;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 119
    sget-object v1, Lb/a/z$e;->a:Lb/a/z$e;

    new-instance v2, Lb/a/bg;

    const-string v3, "property"

    new-instance v4, Lb/a/bj;

    new-instance v5, Lb/a/bh;

    invoke-direct {v5, v10}, Lb/a/bh;-><init>(B)V

    new-instance v6, Lb/a/bk;

    const/16 v7, 0xc

    const-class v8, Lb/a/aa;

    invoke-direct {v6, v7, v8}, Lb/a/bk;-><init>(BLjava/lang/Class;)V

    invoke-direct {v4, v12, v5, v6}, Lb/a/bj;-><init>(BLb/a/bh;Lb/a/bh;)V

    invoke-direct {v2, v3, v9, v4}, Lb/a/bg;-><init>(Ljava/lang/String;BLb/a/bh;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v1, Lb/a/z$e;->b:Lb/a/z$e;

    new-instance v2, Lb/a/bg;

    const-string v3, "version"

    new-instance v4, Lb/a/bh;

    invoke-direct {v4, v11}, Lb/a/bh;-><init>(B)V

    invoke-direct {v2, v3, v9, v4}, Lb/a/bg;-><init>(Ljava/lang/String;BLb/a/bh;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v1, Lb/a/z$e;->c:Lb/a/z$e;

    new-instance v2, Lb/a/bg;

    const-string v3, "checksum"

    new-instance v4, Lb/a/bh;

    invoke-direct {v4, v10}, Lb/a/bh;-><init>(B)V

    invoke-direct {v2, v3, v9, v4}, Lb/a/bg;-><init>(Ljava/lang/String;BLb/a/bh;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lb/a/z;->d:Ljava/util/Map;

    .line 128
    const-class v0, Lb/a/z;

    sget-object v1, Lb/a/z;->d:Ljava/util/Map;

    invoke-static {v0, v1}, Lb/a/bg;->a(Ljava/lang/Class;Ljava/util/Map;)V

    .line 129
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    const/4 v0, 0x0

    iput-byte v0, p0, Lb/a/z;->j:B

    .line 132
    return-void
.end method

.method static synthetic g()Lb/a/bw;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lb/a/z;->e:Lb/a/bw;

    return-object v0
.end method

.method static synthetic h()Lb/a/bo;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lb/a/z;->f:Lb/a/bo;

    return-object v0
.end method

.method static synthetic i()Lb/a/bo;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lb/a/z;->g:Lb/a/bo;

    return-object v0
.end method

.method static synthetic j()Lb/a/bo;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lb/a/z;->h:Lb/a/bo;

    return-object v0
.end method


# virtual methods
.method public a(I)Lb/a/z;
    .locals 1

    .prologue
    .line 224
    iput p1, p0, Lb/a/z;->b:I

    .line 225
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lb/a/z;->b(Z)V

    .line 226
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lb/a/z;
    .locals 0

    .prologue
    .line 247
    iput-object p1, p0, Lb/a/z;->c:Ljava/lang/String;

    .line 248
    return-object p0
.end method

.method public a()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lb/a/aa;",
            ">;"
        }
    .end annotation

    .prologue
    .line 196
    iget-object v0, p0, Lb/a/z;->a:Ljava/util/Map;

    return-object v0
.end method

.method public a(Lb/a/br;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb/a/bb;
        }
    .end annotation

    .prologue
    .line 271
    sget-object v0, Lb/a/z;->i:Ljava/util/Map;

    invoke-virtual {p1}, Lb/a/br;->y()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/bz;

    invoke-interface {v0}, Lb/a/bz;->b()Lb/a/by;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lb/a/by;->b(Lb/a/br;Lb/a/ay;)V

    .line 272
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 214
    if-nez p1, :cond_0

    .line 215
    const/4 v0, 0x0

    iput-object v0, p0, Lb/a/z;->a:Ljava/util/Map;

    .line 217
    :cond_0
    return-void
.end method

.method public b(Lb/a/br;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb/a/bb;
        }
    .end annotation

    .prologue
    .line 275
    sget-object v0, Lb/a/z;->i:Ljava/util/Map;

    invoke-virtual {p1}, Lb/a/br;->y()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/bz;

    invoke-interface {v0}, Lb/a/bz;->b()Lb/a/by;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lb/a/by;->a(Lb/a/br;Lb/a/ay;)V

    .line 276
    return-void
.end method

.method public b(Z)V
    .locals 2

    .prologue
    .line 239
    iget-byte v0, p0, Lb/a/z;->j:B

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lb/a/aw;->a(BIZ)B

    move-result v0

    iput-byte v0, p0, Lb/a/z;->j:B

    .line 240
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lb/a/z;->a:Ljava/util/Map;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 220
    iget v0, p0, Lb/a/z;->b:I

    return v0
.end method

.method public c(Z)V
    .locals 1

    .prologue
    .line 261
    if-nez p1, :cond_0

    .line 262
    const/4 v0, 0x0

    iput-object v0, p0, Lb/a/z;->c:Ljava/lang/String;

    .line 264
    :cond_0
    return-void
.end method

.method public d()Z
    .locals 2

    .prologue
    .line 235
    iget-byte v0, p0, Lb/a/z;->j:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lb/a/aw;->a(BI)Z

    move-result v0

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lb/a/z;->c:Ljava/lang/String;

    return-object v0
.end method

.method public f()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb/a/bb;
        }
    .end annotation

    .prologue
    .line 308
    iget-object v0, p0, Lb/a/z;->a:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 309
    new-instance v0, Lb/a/bs;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'property\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lb/a/z;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lb/a/bs;-><init>(Ljava/lang/String;)V

    throw v0

    .line 312
    :cond_0
    iget-object v0, p0, Lb/a/z;->c:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 313
    new-instance v0, Lb/a/bs;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'checksum\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lb/a/z;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lb/a/bs;-><init>(Ljava/lang/String;)V

    throw v0

    .line 316
    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Imprint("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 283
    const-string v1, "property:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    iget-object v1, p0, Lb/a/z;->a:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 285
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    :goto_0
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    const-string v1, "version:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    iget v1, p0, Lb/a/z;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 294
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    const-string v1, "checksum:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    iget-object v1, p0, Lb/a/z;->c:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 297
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    :goto_1
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 287
    :cond_0
    iget-object v1, p0, Lb/a/z;->a:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 299
    :cond_1
    iget-object v1, p0, Lb/a/z;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method
