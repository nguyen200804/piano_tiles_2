.class public Lb/a/w;
.super Ljava/lang/Object;
.source "IdSnapshot.java"

# interfaces
.implements Lb/a/ay;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/a/w$c;,
        Lb/a/w$d;,
        Lb/a/w$a;,
        Lb/a/w$b;,
        Lb/a/w$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lb/a/ay",
        "<",
        "Lb/a/w;",
        "Lb/a/w$e;",
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
            "Lb/a/w$e;",
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
.field public a:Ljava/lang/String;

.field public b:J

.field public c:I

.field private j:B


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/16 v8, 0xb

    const/16 v7, 0xa

    const/16 v6, 0x8

    const/4 v5, 0x1

    .line 33
    new-instance v0, Lb/a/bw;

    const-string v1, "IdSnapshot"

    invoke-direct {v0, v1}, Lb/a/bw;-><init>(Ljava/lang/String;)V

    sput-object v0, Lb/a/w;->e:Lb/a/bw;

    .line 35
    new-instance v0, Lb/a/bo;

    const-string v1, "identity"

    invoke-direct {v0, v1, v8, v5}, Lb/a/bo;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lb/a/w;->f:Lb/a/bo;

    .line 36
    new-instance v0, Lb/a/bo;

    const-string v1, "ts"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v7, v2}, Lb/a/bo;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lb/a/w;->g:Lb/a/bo;

    .line 37
    new-instance v0, Lb/a/bo;

    const-string v1, "version"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v6, v2}, Lb/a/bo;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lb/a/w;->h:Lb/a/bo;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lb/a/w;->i:Ljava/util/Map;

    .line 41
    sget-object v0, Lb/a/w;->i:Ljava/util/Map;

    const-class v1, Lb/a/ca;

    new-instance v2, Lb/a/w$b;

    invoke-direct {v2, v3}, Lb/a/w$b;-><init>(Lb/a/w$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lb/a/w;->i:Ljava/util/Map;

    const-class v1, Lb/a/cb;

    new-instance v2, Lb/a/w$d;

    invoke-direct {v2, v3}, Lb/a/w$d;-><init>(Lb/a/w$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lb/a/w$e;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 120
    sget-object v1, Lb/a/w$e;->a:Lb/a/w$e;

    new-instance v2, Lb/a/bg;

    const-string v3, "identity"

    new-instance v4, Lb/a/bh;

    invoke-direct {v4, v8}, Lb/a/bh;-><init>(B)V

    invoke-direct {v2, v3, v5, v4}, Lb/a/bg;-><init>(Ljava/lang/String;BLb/a/bh;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v1, Lb/a/w$e;->b:Lb/a/w$e;

    new-instance v2, Lb/a/bg;

    const-string v3, "ts"

    new-instance v4, Lb/a/bh;

    invoke-direct {v4, v7}, Lb/a/bh;-><init>(B)V

    invoke-direct {v2, v3, v5, v4}, Lb/a/bg;-><init>(Ljava/lang/String;BLb/a/bh;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object v1, Lb/a/w$e;->c:Lb/a/w$e;

    new-instance v2, Lb/a/bg;

    const-string v3, "version"

    new-instance v4, Lb/a/bh;

    invoke-direct {v4, v6}, Lb/a/bh;-><init>(B)V

    invoke-direct {v2, v3, v5, v4}, Lb/a/bg;-><init>(Ljava/lang/String;BLb/a/bh;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lb/a/w;->d:Ljava/util/Map;

    .line 127
    const-class v0, Lb/a/w;

    sget-object v1, Lb/a/w;->d:Ljava/util/Map;

    invoke-static {v0, v1}, Lb/a/bg;->a(Ljava/lang/Class;Ljava/util/Map;)V

    .line 128
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    const/4 v0, 0x0

    iput-byte v0, p0, Lb/a/w;->j:B

    .line 131
    return-void
.end method

.method static synthetic g()Lb/a/bw;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lb/a/w;->e:Lb/a/bw;

    return-object v0
.end method

.method static synthetic h()Lb/a/bo;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lb/a/w;->f:Lb/a/bo;

    return-object v0
.end method

.method static synthetic i()Lb/a/bo;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lb/a/w;->g:Lb/a/bo;

    return-object v0
.end method

.method static synthetic j()Lb/a/bo;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lb/a/w;->h:Lb/a/bo;

    return-object v0
.end method


# virtual methods
.method public a(I)Lb/a/w;
    .locals 1

    .prologue
    .line 223
    iput p1, p0, Lb/a/w;->c:I

    .line 224
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lb/a/w;->c(Z)V

    .line 225
    return-object p0
.end method

.method public a(J)Lb/a/w;
    .locals 1

    .prologue
    .line 200
    iput-wide p1, p0, Lb/a/w;->b:J

    .line 201
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lb/a/w;->b(Z)V

    .line 202
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lb/a/w;
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lb/a/w;->a:Ljava/lang/String;

    .line 177
    return-object p0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lb/a/w;->a:Ljava/lang/String;

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
    .line 246
    sget-object v0, Lb/a/w;->i:Ljava/util/Map;

    invoke-virtual {p1}, Lb/a/br;->y()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/bz;

    invoke-interface {v0}, Lb/a/bz;->b()Lb/a/by;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lb/a/by;->b(Lb/a/br;Lb/a/ay;)V

    .line 247
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 190
    if-nez p1, :cond_0

    .line 191
    const/4 v0, 0x0

    iput-object v0, p0, Lb/a/w;->a:Ljava/lang/String;

    .line 193
    :cond_0
    return-void
.end method

.method public b()J
    .locals 2

    .prologue
    .line 196
    iget-wide v0, p0, Lb/a/w;->b:J

    return-wide v0
.end method

.method public b(Lb/a/br;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb/a/bb;
        }
    .end annotation

    .prologue
    .line 250
    sget-object v0, Lb/a/w;->i:Ljava/util/Map;

    invoke-virtual {p1}, Lb/a/br;->y()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/bz;

    invoke-interface {v0}, Lb/a/bz;->b()Lb/a/by;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lb/a/by;->a(Lb/a/br;Lb/a/ay;)V

    .line 251
    return-void
.end method

.method public b(Z)V
    .locals 2

    .prologue
    .line 215
    iget-byte v0, p0, Lb/a/w;->j:B

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lb/a/aw;->a(BIZ)B

    move-result v0

    iput-byte v0, p0, Lb/a/w;->j:B

    .line 216
    return-void
.end method

.method public c(Z)V
    .locals 2

    .prologue
    .line 238
    iget-byte v0, p0, Lb/a/w;->j:B

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lb/a/aw;->a(BIZ)B

    move-result v0

    iput-byte v0, p0, Lb/a/w;->j:B

    .line 239
    return-void
.end method

.method public c()Z
    .locals 2

    .prologue
    .line 211
    iget-byte v0, p0, Lb/a/w;->j:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lb/a/aw;->a(BI)Z

    move-result v0

    return v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 219
    iget v0, p0, Lb/a/w;->c:I

    return v0
.end method

.method public e()Z
    .locals 2

    .prologue
    .line 234
    iget-byte v0, p0, Lb/a/w;->j:B

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lb/a/aw;->a(BI)Z

    move-result v0

    return v0
.end method

.method public f()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb/a/bb;
        }
    .end annotation

    .prologue
    .line 279
    iget-object v0, p0, Lb/a/w;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 280
    new-instance v0, Lb/a/bs;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'identity\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lb/a/w;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lb/a/bs;-><init>(Ljava/lang/String;)V

    throw v0

    .line 285
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IdSnapshot("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 258
    const-string v1, "identity:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    iget-object v1, p0, Lb/a/w;->a:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 260
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    :goto_0
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    const-string v1, "ts:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    iget-wide v2, p0, Lb/a/w;->b:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 269
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    const-string v1, "version:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    iget v1, p0, Lb/a/w;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 273
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 262
    :cond_0
    iget-object v1, p0, Lb/a/w;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
