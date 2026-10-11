.class public Lb/a/ah;
.super Ljava/lang/Object;
.source "Resolution.java"

# interfaces
.implements Lb/a/ay;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/a/ah$c;,
        Lb/a/ah$d;,
        Lb/a/ah$a;,
        Lb/a/ah$b;,
        Lb/a/ah$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lb/a/ay",
        "<",
        "Lb/a/ah;",
        "Lb/a/ah$e;",
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
            "Lb/a/ah$e;",
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

.field public b:I

.field private h:B


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x1

    const/16 v5, 0x8

    .line 33
    new-instance v0, Lb/a/bw;

    const-string v1, "Resolution"

    invoke-direct {v0, v1}, Lb/a/bw;-><init>(Ljava/lang/String;)V

    sput-object v0, Lb/a/ah;->d:Lb/a/bw;

    .line 35
    new-instance v0, Lb/a/bo;

    const-string v1, "height"

    invoke-direct {v0, v1, v5, v6}, Lb/a/bo;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lb/a/ah;->e:Lb/a/bo;

    .line 36
    new-instance v0, Lb/a/bo;

    const-string v1, "width"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v5, v2}, Lb/a/bo;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lb/a/ah;->f:Lb/a/bo;

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lb/a/ah;->g:Ljava/util/Map;

    .line 40
    sget-object v0, Lb/a/ah;->g:Ljava/util/Map;

    const-class v1, Lb/a/ca;

    new-instance v2, Lb/a/ah$b;

    invoke-direct {v2, v3}, Lb/a/ah$b;-><init>(Lb/a/ah$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lb/a/ah;->g:Ljava/util/Map;

    const-class v1, Lb/a/cb;

    new-instance v2, Lb/a/ah$d;

    invoke-direct {v2, v3}, Lb/a/ah$d;-><init>(Lb/a/ah$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lb/a/ah$e;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 115
    sget-object v1, Lb/a/ah$e;->a:Lb/a/ah$e;

    new-instance v2, Lb/a/bg;

    const-string v3, "height"

    new-instance v4, Lb/a/bh;

    invoke-direct {v4, v5}, Lb/a/bh;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lb/a/bg;-><init>(Ljava/lang/String;BLb/a/bh;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v1, Lb/a/ah$e;->b:Lb/a/ah$e;

    new-instance v2, Lb/a/bg;

    const-string v3, "width"

    new-instance v4, Lb/a/bh;

    invoke-direct {v4, v5}, Lb/a/bh;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lb/a/bg;-><init>(Ljava/lang/String;BLb/a/bh;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lb/a/ah;->c:Ljava/util/Map;

    .line 120
    const-class v0, Lb/a/ah;

    sget-object v1, Lb/a/ah;->c:Ljava/util/Map;

    invoke-static {v0, v1}, Lb/a/bg;->a(Ljava/lang/Class;Ljava/util/Map;)V

    .line 121
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    const/4 v0, 0x0

    iput-byte v0, p0, Lb/a/ah;->h:B

    .line 124
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 130
    invoke-direct {p0}, Lb/a/ah;-><init>()V

    .line 131
    iput p1, p0, Lb/a/ah;->a:I

    .line 132
    invoke-virtual {p0, v0}, Lb/a/ah;->a(Z)V

    .line 133
    iput p2, p0, Lb/a/ah;->b:I

    .line 134
    invoke-virtual {p0, v0}, Lb/a/ah;->b(Z)V

    .line 135
    return-void
.end method

.method static synthetic d()Lb/a/bw;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lb/a/ah;->d:Lb/a/bw;

    return-object v0
.end method

.method static synthetic e()Lb/a/bo;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lb/a/ah;->e:Lb/a/bo;

    return-object v0
.end method

.method static synthetic f()Lb/a/bo;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lb/a/ah;->f:Lb/a/bo;

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
    .line 209
    sget-object v0, Lb/a/ah;->g:Ljava/util/Map;

    invoke-virtual {p1}, Lb/a/br;->y()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/bz;

    invoke-interface {v0}, Lb/a/bz;->b()Lb/a/by;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lb/a/by;->b(Lb/a/br;Lb/a/ay;)V

    .line 210
    return-void
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 178
    iget-byte v0, p0, Lb/a/ah;->h:B

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lb/a/aw;->a(BIZ)B

    move-result v0

    iput-byte v0, p0, Lb/a/ah;->h:B

    .line 179
    return-void
.end method

.method public a()Z
    .locals 2

    .prologue
    .line 174
    iget-byte v0, p0, Lb/a/ah;->h:B

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
    .line 213
    sget-object v0, Lb/a/ah;->g:Ljava/util/Map;

    invoke-virtual {p1}, Lb/a/br;->y()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/bz;

    invoke-interface {v0}, Lb/a/bz;->b()Lb/a/by;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lb/a/by;->a(Lb/a/br;Lb/a/ay;)V

    .line 214
    return-void
.end method

.method public b(Z)V
    .locals 2

    .prologue
    .line 201
    iget-byte v0, p0, Lb/a/ah;->h:B

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lb/a/aw;->a(BIZ)B

    move-result v0

    iput-byte v0, p0, Lb/a/ah;->h:B

    .line 202
    return-void
.end method

.method public b()Z
    .locals 2

    .prologue
    .line 197
    iget-byte v0, p0, Lb/a/ah;->h:B

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
    .line 237
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Resolution("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 221
    const-string v1, "height:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    iget v1, p0, Lb/a/ah;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 224
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    const-string v1, "width:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    iget v1, p0, Lb/a/ah;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 228
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
