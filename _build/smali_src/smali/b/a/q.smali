.class public Lb/a/q;
.super Ljava/lang/Object;
.source "ControlPolicy.java"

# interfaces
.implements Lb/a/ay;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/a/q$c;,
        Lb/a/q$d;,
        Lb/a/q$a;,
        Lb/a/q$b;,
        Lb/a/q$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lb/a/ay",
        "<",
        "Lb/a/q;",
        "Lb/a/q$e;",
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
            "Lb/a/q$e;",
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
.field public a:Lb/a/ac;

.field private f:[Lb/a/q$e;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/16 v7, 0xc

    .line 32
    new-instance v0, Lb/a/bw;

    const-string v1, "ControlPolicy"

    invoke-direct {v0, v1}, Lb/a/bw;-><init>(Ljava/lang/String;)V

    sput-object v0, Lb/a/q;->c:Lb/a/bw;

    .line 34
    new-instance v0, Lb/a/bo;

    const-string v1, "latent"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v7, v2}, Lb/a/bo;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lb/a/q;->d:Lb/a/bo;

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lb/a/q;->e:Ljava/util/Map;

    .line 38
    sget-object v0, Lb/a/q;->e:Ljava/util/Map;

    const-class v1, Lb/a/ca;

    new-instance v2, Lb/a/q$b;

    invoke-direct {v2, v3}, Lb/a/q$b;-><init>(Lb/a/q$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lb/a/q;->e:Ljava/util/Map;

    const-class v1, Lb/a/cb;

    new-instance v2, Lb/a/q$d;

    invoke-direct {v2, v3}, Lb/a/q$d;-><init>(Lb/a/q$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lb/a/q$e;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 107
    sget-object v1, Lb/a/q$e;->a:Lb/a/q$e;

    new-instance v2, Lb/a/bg;

    const-string v3, "latent"

    const/4 v4, 0x2

    new-instance v5, Lb/a/bk;

    const-class v6, Lb/a/ac;

    invoke-direct {v5, v7, v6}, Lb/a/bk;-><init>(BLjava/lang/Class;)V

    invoke-direct {v2, v3, v4, v5}, Lb/a/bg;-><init>(Ljava/lang/String;BLb/a/bh;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lb/a/q;->b:Ljava/util/Map;

    .line 110
    const-class v0, Lb/a/q;

    sget-object v1, Lb/a/q;->b:Ljava/util/Map;

    invoke-static {v0, v1}, Lb/a/bg;->a(Ljava/lang/Class;Ljava/util/Map;)V

    .line 111
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    const/4 v0, 0x1

    new-array v0, v0, [Lb/a/q$e;

    const/4 v1, 0x0

    sget-object v2, Lb/a/q$e;->a:Lb/a/q$e;

    aput-object v2, v0, v1

    iput-object v0, p0, Lb/a/q;->f:[Lb/a/q$e;

    .line 114
    return-void
.end method

.method static synthetic c()Lb/a/bw;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lb/a/q;->c:Lb/a/bw;

    return-object v0
.end method

.method static synthetic d()Lb/a/bo;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lb/a/q;->d:Lb/a/bo;

    return-object v0
.end method


# virtual methods
.method public a(Lb/a/ac;)Lb/a/q;
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lb/a/q;->a:Lb/a/ac;

    .line 140
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
    .line 163
    sget-object v0, Lb/a/q;->e:Ljava/util/Map;

    invoke-virtual {p1}, Lb/a/br;->y()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/bz;

    invoke-interface {v0}, Lb/a/bz;->b()Lb/a/by;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lb/a/by;->b(Lb/a/br;Lb/a/ay;)V

    .line 164
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 153
    if-nez p1, :cond_0

    .line 154
    const/4 v0, 0x0

    iput-object v0, p0, Lb/a/q;->a:Lb/a/ac;

    .line 156
    :cond_0
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lb/a/q;->a:Lb/a/ac;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb/a/bb;
        }
    .end annotation

    .prologue
    .line 191
    iget-object v0, p0, Lb/a/q;->a:Lb/a/ac;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lb/a/q;->a:Lb/a/ac;

    invoke-virtual {v0}, Lb/a/ac;->c()V

    .line 194
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
    .line 167
    sget-object v0, Lb/a/q;->e:Ljava/util/Map;

    invoke-virtual {p1}, Lb/a/br;->y()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/bz;

    invoke-interface {v0}, Lb/a/bz;->b()Lb/a/by;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lb/a/by;->a(Lb/a/br;Lb/a/ay;)V

    .line 168
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ControlPolicy("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 175
    invoke-virtual {p0}, Lb/a/q;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 176
    const-string v1, "latent:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    iget-object v1, p0, Lb/a/q;->a:Lb/a/ac;

    if-nez v1, :cond_1

    .line 178
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    :cond_0
    :goto_0
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 180
    :cond_1
    iget-object v1, p0, Lb/a/q;->a:Lb/a/ac;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
