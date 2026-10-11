.class public Lb/a/ac;
.super Ljava/lang/Object;
.source "Latent.java"

# interfaces
.implements Lb/a/ay;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/a/ac$c;,
        Lb/a/ac$d;,
        Lb/a/ac$a;,
        Lb/a/ac$b;,
        Lb/a/ac$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lb/a/ay",
        "<",
        "Lb/a/ac;",
        "Lb/a/ac$e;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field public static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lb/a/ac$e;",
            "Lb/a/bg;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Lb/a/bw;

.field private static final e:Lb/a/bo;

.field private static final f:Lb/a/bo;

.field private static final g:Ljava/util/Map;
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

.field public b:J

.field private h:B


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/16 v7, 0xa

    const/16 v6, 0x8

    const/4 v5, 0x1

    .line 32
    new-instance v0, Lb/a/bw;

    const-string v1, "Latent"

    invoke-direct {v0, v1}, Lb/a/bw;-><init>(Ljava/lang/String;)V

    sput-object v0, Lb/a/ac;->d:Lb/a/bw;

    .line 34
    new-instance v0, Lb/a/bo;

    const-string v1, "latency"

    invoke-direct {v0, v1, v6, v5}, Lb/a/bo;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lb/a/ac;->e:Lb/a/bo;

    .line 35
    new-instance v0, Lb/a/bo;

    const-string v1, "interval"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v7, v2}, Lb/a/bo;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lb/a/ac;->f:Lb/a/bo;

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lb/a/ac;->g:Ljava/util/Map;

    .line 39
    sget-object v0, Lb/a/ac;->g:Ljava/util/Map;

    const-class v1, Lb/a/ca;

    new-instance v2, Lb/a/ac$b;

    invoke-direct {v2, v3}, Lb/a/ac$b;-><init>(Lb/a/ac$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lb/a/ac;->g:Ljava/util/Map;

    const-class v1, Lb/a/cb;

    new-instance v2, Lb/a/ac$d;

    invoke-direct {v2, v3}, Lb/a/ac$d;-><init>(Lb/a/ac$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lb/a/ac$e;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 114
    sget-object v1, Lb/a/ac$e;->a:Lb/a/ac$e;

    new-instance v2, Lb/a/bg;

    const-string v3, "latency"

    new-instance v4, Lb/a/bh;

    invoke-direct {v4, v6}, Lb/a/bh;-><init>(B)V

    invoke-direct {v2, v3, v5, v4}, Lb/a/bg;-><init>(Ljava/lang/String;BLb/a/bh;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v1, Lb/a/ac$e;->b:Lb/a/ac$e;

    new-instance v2, Lb/a/bg;

    const-string v3, "interval"

    new-instance v4, Lb/a/bh;

    invoke-direct {v4, v7}, Lb/a/bh;-><init>(B)V

    invoke-direct {v2, v3, v5, v4}, Lb/a/bg;-><init>(Ljava/lang/String;BLb/a/bh;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lb/a/ac;->c:Ljava/util/Map;

    .line 119
    const-class v0, Lb/a/ac;

    sget-object v1, Lb/a/ac;->c:Ljava/util/Map;

    invoke-static {v0, v1}, Lb/a/bg;->a(Ljava/lang/Class;Ljava/util/Map;)V

    .line 120
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    const/4 v0, 0x0

    iput-byte v0, p0, Lb/a/ac;->h:B

    .line 123
    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 129
    invoke-direct {p0}, Lb/a/ac;-><init>()V

    .line 130
    iput p1, p0, Lb/a/ac;->a:I

    .line 131
    invoke-virtual {p0, v0}, Lb/a/ac;->a(Z)V

    .line 132
    iput-wide p2, p0, Lb/a/ac;->b:J

    .line 133
    invoke-virtual {p0, v0}, Lb/a/ac;->b(Z)V

    .line 134
    return-void
.end method

.method static synthetic d()Lb/a/bw;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lb/a/ac;->d:Lb/a/bw;

    return-object v0
.end method

.method static synthetic e()Lb/a/bo;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lb/a/ac;->e:Lb/a/bo;

    return-object v0
.end method

.method static synthetic f()Lb/a/bo;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lb/a/ac;->f:Lb/a/bo;

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
    .line 208
    sget-object v0, Lb/a/ac;->g:Ljava/util/Map;

    invoke-virtual {p1}, Lb/a/br;->y()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/bz;

    invoke-interface {v0}, Lb/a/bz;->b()Lb/a/by;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lb/a/by;->b(Lb/a/br;Lb/a/ay;)V

    .line 209
    return-void
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 177
    iget-byte v0, p0, Lb/a/ac;->h:B

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lb/a/aw;->a(BIZ)B

    move-result v0

    iput-byte v0, p0, Lb/a/ac;->h:B

    .line 178
    return-void
.end method

.method public a()Z
    .locals 2

    .prologue
    .line 173
    iget-byte v0, p0, Lb/a/ac;->h:B

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
    .line 212
    sget-object v0, Lb/a/ac;->g:Ljava/util/Map;

    invoke-virtual {p1}, Lb/a/br;->y()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/bz;

    invoke-interface {v0}, Lb/a/bz;->b()Lb/a/by;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lb/a/by;->a(Lb/a/br;Lb/a/ay;)V

    .line 213
    return-void
.end method

.method public b(Z)V
    .locals 2

    .prologue
    .line 200
    iget-byte v0, p0, Lb/a/ac;->h:B

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lb/a/aw;->a(BIZ)B

    move-result v0

    iput-byte v0, p0, Lb/a/ac;->h:B

    .line 201
    return-void
.end method

.method public b()Z
    .locals 2

    .prologue
    .line 196
    iget-byte v0, p0, Lb/a/ac;->h:B

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lb/a/aw;->a(BI)Z

    move-result v0

    return v0
.end method

.method public c()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb/a/bb;
        }
    .end annotation

    .prologue
    .line 236
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Latent("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 220
    const-string v1, "latency:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    iget v1, p0, Lb/a/ac;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 223
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    const-string v1, "interval:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    iget-wide v2, p0, Lb/a/ac;->b:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 227
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
