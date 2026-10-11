.class public Lb/a/ai;
.super Ljava/lang/Object;
.source "Response.java"

# interfaces
.implements Lb/a/ay;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/a/ai$c;,
        Lb/a/ai$d;,
        Lb/a/ai$a;,
        Lb/a/ai$b;,
        Lb/a/ai$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lb/a/ay",
        "<",
        "Lb/a/ai;",
        "Lb/a/ai$e;",
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
            "Lb/a/ai$e;",
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

.field public b:Ljava/lang/String;

.field public c:Lb/a/z;

.field private j:B

.field private k:[Lb/a/ai$e;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/16 v9, 0xc

    const/16 v8, 0xb

    const/16 v7, 0x8

    const/4 v5, 0x1

    const/4 v6, 0x2

    .line 33
    new-instance v0, Lb/a/bw;

    const-string v1, "Response"

    invoke-direct {v0, v1}, Lb/a/bw;-><init>(Ljava/lang/String;)V

    sput-object v0, Lb/a/ai;->e:Lb/a/bw;

    .line 35
    new-instance v0, Lb/a/bo;

    const-string v1, "resp_code"

    invoke-direct {v0, v1, v7, v5}, Lb/a/bo;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lb/a/ai;->f:Lb/a/bo;

    .line 36
    new-instance v0, Lb/a/bo;

    const-string v1, "msg"

    invoke-direct {v0, v1, v8, v6}, Lb/a/bo;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lb/a/ai;->g:Lb/a/bo;

    .line 37
    new-instance v0, Lb/a/bo;

    const-string v1, "imprint"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v9, v2}, Lb/a/bo;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lb/a/ai;->h:Lb/a/bo;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lb/a/ai;->i:Ljava/util/Map;

    .line 41
    sget-object v0, Lb/a/ai;->i:Ljava/util/Map;

    const-class v1, Lb/a/ca;

    new-instance v2, Lb/a/ai$b;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lb/a/ai$b;-><init>(Lb/a/ai$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lb/a/ai;->i:Ljava/util/Map;

    const-class v1, Lb/a/cb;

    new-instance v2, Lb/a/ai$d;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lb/a/ai$d;-><init>(Lb/a/ai$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lb/a/ai$e;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 120
    sget-object v1, Lb/a/ai$e;->a:Lb/a/ai$e;

    new-instance v2, Lb/a/bg;

    const-string v3, "resp_code"

    new-instance v4, Lb/a/bh;

    invoke-direct {v4, v7}, Lb/a/bh;-><init>(B)V

    invoke-direct {v2, v3, v5, v4}, Lb/a/bg;-><init>(Ljava/lang/String;BLb/a/bh;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v1, Lb/a/ai$e;->b:Lb/a/ai$e;

    new-instance v2, Lb/a/bg;

    const-string v3, "msg"

    new-instance v4, Lb/a/bh;

    invoke-direct {v4, v8}, Lb/a/bh;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lb/a/bg;-><init>(Ljava/lang/String;BLb/a/bh;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object v1, Lb/a/ai$e;->c:Lb/a/ai$e;

    new-instance v2, Lb/a/bg;

    const-string v3, "imprint"

    new-instance v4, Lb/a/bk;

    const-class v5, Lb/a/z;

    invoke-direct {v4, v9, v5}, Lb/a/bk;-><init>(BLjava/lang/Class;)V

    invoke-direct {v2, v3, v6, v4}, Lb/a/bg;-><init>(Ljava/lang/String;BLb/a/bh;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lb/a/ai;->d:Ljava/util/Map;

    .line 127
    const-class v0, Lb/a/ai;

    sget-object v1, Lb/a/ai;->d:Ljava/util/Map;

    invoke-static {v0, v1}, Lb/a/bg;->a(Ljava/lang/Class;Ljava/util/Map;)V

    .line 128
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput-byte v2, p0, Lb/a/ai;->j:B

    .line 116
    const/4 v0, 0x2

    new-array v0, v0, [Lb/a/ai$e;

    sget-object v1, Lb/a/ai$e;->b:Lb/a/ai$e;

    aput-object v1, v0, v2

    const/4 v1, 0x1

    sget-object v2, Lb/a/ai$e;->c:Lb/a/ai$e;

    aput-object v2, v0, v1

    iput-object v0, p0, Lb/a/ai;->k:[Lb/a/ai$e;

    .line 131
    return-void
.end method

.method static synthetic g()Lb/a/bw;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lb/a/ai;->e:Lb/a/bw;

    return-object v0
.end method

.method static synthetic h()Lb/a/bo;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lb/a/ai;->f:Lb/a/bo;

    return-object v0
.end method

.method static synthetic i()Lb/a/bo;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lb/a/ai;->g:Lb/a/bo;

    return-object v0
.end method

.method static synthetic j()Lb/a/bo;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lb/a/ai;->h:Lb/a/bo;

    return-object v0
.end method


# virtual methods
.method public a(Lb/a/br;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb/a/bb;
        }
    .end annotation

    .prologue
    .line 243
    sget-object v0, Lb/a/ai;->i:Ljava/util/Map;

    invoke-virtual {p1}, Lb/a/br;->y()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/bz;

    invoke-interface {v0}, Lb/a/bz;->b()Lb/a/by;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lb/a/by;->b(Lb/a/br;Lb/a/ay;)V

    .line 244
    return-void
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 187
    iget-byte v0, p0, Lb/a/ai;->j:B

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lb/a/aw;->a(BIZ)B

    move-result v0

    iput-byte v0, p0, Lb/a/ai;->j:B

    .line 188
    return-void
.end method

.method public a()Z
    .locals 2

    .prologue
    .line 183
    iget-byte v0, p0, Lb/a/ai;->j:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lb/a/aw;->a(BI)Z

    move-result v0

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lb/a/ai;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Lb/a/br;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb/a/bb;
        }
    .end annotation

    .prologue
    .line 247
    sget-object v0, Lb/a/ai;->i:Ljava/util/Map;

    invoke-virtual {p1}, Lb/a/br;->y()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/bz;

    invoke-interface {v0}, Lb/a/bz;->b()Lb/a/by;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lb/a/by;->a(Lb/a/br;Lb/a/ay;)V

    .line 248
    return-void
.end method

.method public b(Z)V
    .locals 1

    .prologue
    .line 209
    if-nez p1, :cond_0

    .line 210
    const/4 v0, 0x0

    iput-object v0, p0, Lb/a/ai;->b:Ljava/lang/String;

    .line 212
    :cond_0
    return-void
.end method

.method public c(Z)V
    .locals 1

    .prologue
    .line 233
    if-nez p1, :cond_0

    .line 234
    const/4 v0, 0x0

    iput-object v0, p0, Lb/a/ai;->c:Lb/a/z;

    .line 236
    :cond_0
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lb/a/ai;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Lb/a/z;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lb/a/ai;->c:Lb/a/z;

    return-object v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lb/a/ai;->c:Lb/a/z;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb/a/bb;
        }
    .end annotation

    .prologue
    .line 286
    iget-object v0, p0, Lb/a/ai;->c:Lb/a/z;

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lb/a/ai;->c:Lb/a/z;

    invoke-virtual {v0}, Lb/a/z;->f()V

    .line 289
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Response("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 255
    const-string v1, "resp_code:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    iget v1, p0, Lb/a/ai;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 258
    invoke-virtual {p0}, Lb/a/ai;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 259
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    const-string v1, "msg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    iget-object v1, p0, Lb/a/ai;->b:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 262
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lb/a/ai;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 269
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    const-string v1, "imprint:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    iget-object v1, p0, Lb/a/ai;->c:Lb/a/z;

    if-nez v1, :cond_3

    .line 272
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    :cond_1
    :goto_1
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 264
    :cond_2
    iget-object v1, p0, Lb/a/ai;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 274
    :cond_3
    iget-object v1, p0, Lb/a/ai;->c:Lb/a/z;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method
