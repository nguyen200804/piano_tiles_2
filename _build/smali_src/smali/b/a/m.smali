.class public Lb/a/m;
.super Ljava/lang/Object;
.source "ActivateMsg.java"

# interfaces
.implements Lb/a/ay;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/a/m$c;,
        Lb/a/m$d;,
        Lb/a/m$a;,
        Lb/a/m$b;,
        Lb/a/m$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lb/a/ay",
        "<",
        "Lb/a/m;",
        "Lb/a/m$e;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field public static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lb/a/m$e;",
            "Lb/a/bg;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Lb/a/bw;

.field private static final d:Lb/a/bo;

.field private static final e:Ljava/util/Map;
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

.field private f:B


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/16 v6, 0xa

    const/4 v5, 0x1

    .line 33
    new-instance v0, Lb/a/bw;

    const-string v1, "ActivateMsg"

    invoke-direct {v0, v1}, Lb/a/bw;-><init>(Ljava/lang/String;)V

    sput-object v0, Lb/a/m;->c:Lb/a/bw;

    .line 35
    new-instance v0, Lb/a/bo;

    const-string v1, "ts"

    invoke-direct {v0, v1, v6, v5}, Lb/a/bo;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lb/a/m;->d:Lb/a/bo;

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lb/a/m;->e:Ljava/util/Map;

    .line 39
    sget-object v0, Lb/a/m;->e:Ljava/util/Map;

    const-class v1, Lb/a/ca;

    new-instance v2, Lb/a/m$b;

    invoke-direct {v2, v3}, Lb/a/m$b;-><init>(Lb/a/m$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lb/a/m;->e:Ljava/util/Map;

    const-class v1, Lb/a/cb;

    new-instance v2, Lb/a/m$d;

    invoke-direct {v2, v3}, Lb/a/m$d;-><init>(Lb/a/m$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lb/a/m$e;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 109
    sget-object v1, Lb/a/m$e;->a:Lb/a/m$e;

    new-instance v2, Lb/a/bg;

    const-string v3, "ts"

    new-instance v4, Lb/a/bh;

    invoke-direct {v4, v6}, Lb/a/bh;-><init>(B)V

    invoke-direct {v2, v3, v5, v4}, Lb/a/bg;-><init>(Ljava/lang/String;BLb/a/bh;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lb/a/m;->b:Ljava/util/Map;

    .line 112
    const-class v0, Lb/a/m;

    sget-object v1, Lb/a/m;->b:Ljava/util/Map;

    invoke-static {v0, v1}, Lb/a/bg;->a(Ljava/lang/Class;Ljava/util/Map;)V

    .line 113
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    const/4 v0, 0x0

    iput-byte v0, p0, Lb/a/m;->f:B

    .line 116
    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    .prologue
    .line 121
    invoke-direct {p0}, Lb/a/m;-><init>()V

    .line 122
    iput-wide p1, p0, Lb/a/m;->a:J

    .line 123
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lb/a/m;->a(Z)V

    .line 124
    return-void
.end method

.method static synthetic c()Lb/a/bw;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lb/a/m;->c:Lb/a/bw;

    return-object v0
.end method

.method static synthetic d()Lb/a/bo;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lb/a/m;->d:Lb/a/bo;

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
    .line 172
    sget-object v0, Lb/a/m;->e:Ljava/util/Map;

    invoke-virtual {p1}, Lb/a/br;->y()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/bz;

    invoke-interface {v0}, Lb/a/bz;->b()Lb/a/by;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lb/a/by;->b(Lb/a/br;Lb/a/ay;)V

    .line 173
    return-void
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 164
    iget-byte v0, p0, Lb/a/m;->f:B

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lb/a/aw;->a(BIZ)B

    move-result v0

    iput-byte v0, p0, Lb/a/m;->f:B

    .line 165
    return-void
.end method

.method public a()Z
    .locals 2

    .prologue
    .line 160
    iget-byte v0, p0, Lb/a/m;->f:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lb/a/aw;->a(BI)Z

    move-result v0

    return v0
.end method

.method public b()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb/a/bb;
        }
    .end annotation

    .prologue
    .line 195
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
    .line 176
    sget-object v0, Lb/a/m;->e:Ljava/util/Map;

    invoke-virtual {p1}, Lb/a/br;->y()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/bz;

    invoke-interface {v0}, Lb/a/bz;->b()Lb/a/by;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lb/a/by;->a(Lb/a/br;Lb/a/ay;)V

    .line 177
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ActivateMsg("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 184
    const-string v1, "ts:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    iget-wide v2, p0, Lb/a/m;->a:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 187
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
