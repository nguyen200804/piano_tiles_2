.class public Lb/a/n;
.super Ljava/lang/Object;
.source "ActiveUser.java"

# interfaces
.implements Lb/a/ay;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/a/n$c;,
        Lb/a/n$d;,
        Lb/a/n$a;,
        Lb/a/n$b;,
        Lb/a/n$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lb/a/ay",
        "<",
        "Lb/a/n;",
        "Lb/a/n$e;",
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
            "Lb/a/n$e;",
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
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x1

    const/16 v5, 0xb

    .line 32
    new-instance v0, Lb/a/bw;

    const-string v1, "ActiveUser"

    invoke-direct {v0, v1}, Lb/a/bw;-><init>(Ljava/lang/String;)V

    sput-object v0, Lb/a/n;->d:Lb/a/bw;

    .line 34
    new-instance v0, Lb/a/bo;

    const-string v1, "provider"

    invoke-direct {v0, v1, v5, v6}, Lb/a/bo;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lb/a/n;->e:Lb/a/bo;

    .line 35
    new-instance v0, Lb/a/bo;

    const-string v1, "puid"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v5, v2}, Lb/a/bo;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lb/a/n;->f:Lb/a/bo;

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lb/a/n;->g:Ljava/util/Map;

    .line 39
    sget-object v0, Lb/a/n;->g:Ljava/util/Map;

    const-class v1, Lb/a/ca;

    new-instance v2, Lb/a/n$b;

    invoke-direct {v2, v3}, Lb/a/n$b;-><init>(Lb/a/n$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lb/a/n;->g:Ljava/util/Map;

    const-class v1, Lb/a/cb;

    new-instance v2, Lb/a/n$d;

    invoke-direct {v2, v3}, Lb/a/n$d;-><init>(Lb/a/n$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lb/a/n$e;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 111
    sget-object v1, Lb/a/n$e;->a:Lb/a/n$e;

    new-instance v2, Lb/a/bg;

    const-string v3, "provider"

    new-instance v4, Lb/a/bh;

    invoke-direct {v4, v5}, Lb/a/bh;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lb/a/bg;-><init>(Ljava/lang/String;BLb/a/bh;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v1, Lb/a/n$e;->b:Lb/a/n$e;

    new-instance v2, Lb/a/bg;

    const-string v3, "puid"

    new-instance v4, Lb/a/bh;

    invoke-direct {v4, v5}, Lb/a/bh;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lb/a/bg;-><init>(Ljava/lang/String;BLb/a/bh;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lb/a/n;->c:Ljava/util/Map;

    .line 116
    const-class v0, Lb/a/n;

    sget-object v1, Lb/a/n;->c:Ljava/util/Map;

    invoke-static {v0, v1}, Lb/a/bg;->a(Ljava/lang/Class;Ljava/util/Map;)V

    .line 117
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 126
    invoke-direct {p0}, Lb/a/n;-><init>()V

    .line 127
    iput-object p1, p0, Lb/a/n;->a:Ljava/lang/String;

    .line 128
    iput-object p2, p0, Lb/a/n;->b:Ljava/lang/String;

    .line 129
    return-void
.end method

.method static synthetic b()Lb/a/bw;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lb/a/n;->d:Lb/a/bw;

    return-object v0
.end method

.method static synthetic c()Lb/a/bo;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lb/a/n;->e:Lb/a/bo;

    return-object v0
.end method

.method static synthetic d()Lb/a/bo;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lb/a/n;->f:Lb/a/bo;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb/a/bb;
        }
    .end annotation

    .prologue
    .line 239
    iget-object v0, p0, Lb/a/n;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 240
    new-instance v0, Lb/a/bs;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'provider\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lb/a/n;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lb/a/bs;-><init>(Ljava/lang/String;)V

    throw v0

    .line 242
    :cond_0
    iget-object v0, p0, Lb/a/n;->b:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 243
    new-instance v0, Lb/a/bs;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'puid\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lb/a/n;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lb/a/bs;-><init>(Ljava/lang/String;)V

    throw v0

    .line 246
    :cond_1
    return-void
.end method

.method public a(Lb/a/br;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb/a/bb;
        }
    .end annotation

    .prologue
    .line 206
    sget-object v0, Lb/a/n;->g:Ljava/util/Map;

    invoke-virtual {p1}, Lb/a/br;->y()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/bz;

    invoke-interface {v0}, Lb/a/bz;->b()Lb/a/by;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lb/a/by;->b(Lb/a/br;Lb/a/ay;)V

    .line 207
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 172
    if-nez p1, :cond_0

    .line 173
    const/4 v0, 0x0

    iput-object v0, p0, Lb/a/n;->a:Ljava/lang/String;

    .line 175
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
    .line 210
    sget-object v0, Lb/a/n;->g:Ljava/util/Map;

    invoke-virtual {p1}, Lb/a/br;->y()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/bz;

    invoke-interface {v0}, Lb/a/bz;->b()Lb/a/by;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lb/a/by;->a(Lb/a/br;Lb/a/ay;)V

    .line 211
    return-void
.end method

.method public b(Z)V
    .locals 1

    .prologue
    .line 196
    if-nez p1, :cond_0

    .line 197
    const/4 v0, 0x0

    iput-object v0, p0, Lb/a/n;->b:Ljava/lang/String;

    .line 199
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ActiveUser("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 218
    const-string v1, "provider:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    iget-object v1, p0, Lb/a/n;->a:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 220
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    :goto_0
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    const-string v1, "puid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    iget-object v1, p0, Lb/a/n;->b:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 228
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    :goto_1
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 222
    :cond_0
    iget-object v1, p0, Lb/a/n;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 230
    :cond_1
    iget-object v1, p0, Lb/a/n;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method
