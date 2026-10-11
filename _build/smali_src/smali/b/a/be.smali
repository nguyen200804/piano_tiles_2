.class public abstract Lb/a/be;
.super Ljava/lang/Object;
.source "TUnion.java"

# interfaces
.implements Lb/a/ay;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/a/be$c;,
        Lb/a/be$d;,
        Lb/a/be$a;,
        Lb/a/be$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lb/a/be",
        "<**>;F::",
        "Lb/a/bc;",
        ">",
        "Ljava/lang/Object;",
        "Lb/a/ay",
        "<TT;TF;>;"
    }
.end annotation


# static fields
.field private static final a:Ljava/util/Map;
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
.field protected b:Ljava/lang/Object;

.field protected c:Lb/a/bc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TF;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lb/a/be;->a:Ljava/util/Map;

    .line 52
    sget-object v0, Lb/a/be;->a:Ljava/util/Map;

    const-class v1, Lb/a/ca;

    new-instance v2, Lb/a/be$b;

    invoke-direct {v2, v3}, Lb/a/be$b;-><init>(Lb/a/be$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lb/a/be;->a:Ljava/util/Map;

    const-class v1, Lb/a/cb;

    new-instance v2, Lb/a/be$d;

    invoke-direct {v2, v3}, Lb/a/be$d;-><init>(Lb/a/be$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object v0, p0, Lb/a/be;->c:Lb/a/bc;

    .line 47
    iput-object v0, p0, Lb/a/be;->b:Ljava/lang/Object;

    .line 48
    return-void
.end method


# virtual methods
.method protected abstract a(Lb/a/bc;)Lb/a/bo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)",
            "Lb/a/bo;"
        }
    .end annotation
.end method

.method protected abstract a()Lb/a/bw;
.end method

.method protected abstract a(Lb/a/br;Lb/a/bo;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb/a/bb;
        }
    .end annotation
.end method

.method protected abstract a(Lb/a/br;S)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb/a/bb;
        }
    .end annotation
.end method

.method public a(Lb/a/br;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb/a/bb;
        }
    .end annotation

    .prologue
    .line 141
    sget-object v0, Lb/a/be;->a:Ljava/util/Map;

    invoke-virtual {p1}, Lb/a/br;->y()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/bz;

    invoke-interface {v0}, Lb/a/bz;->b()Lb/a/by;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lb/a/by;->b(Lb/a/br;Lb/a/ay;)V

    .line 142
    return-void
.end method

.method public b()Lb/a/bc;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TF;"
        }
    .end annotation

    .prologue
    .line 109
    iget-object v0, p0, Lb/a/be;->c:Lb/a/bc;

    return-object v0
.end method

.method protected abstract b(S)Lb/a/bc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(S)TF;"
        }
    .end annotation
.end method

.method public b(Lb/a/br;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb/a/bb;
        }
    .end annotation

    .prologue
    .line 155
    sget-object v0, Lb/a/be;->a:Ljava/util/Map;

    invoke-virtual {p1}, Lb/a/br;->y()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/bz;

    invoke-interface {v0}, Lb/a/bz;->b()Lb/a/by;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lb/a/by;->a(Lb/a/br;Lb/a/ay;)V

    .line 156
    return-void
.end method

.method public c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lb/a/be;->b:Ljava/lang/Object;

    return-object v0
.end method

.method protected abstract c(Lb/a/br;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb/a/bb;
        }
    .end annotation
.end method

.method protected abstract d(Lb/a/br;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb/a/bb;
        }
    .end annotation
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lb/a/be;->c:Lb/a/bc;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 186
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 187
    const-string v0, "<"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    invoke-virtual {p0}, Lb/a/be;->b()Lb/a/bc;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 192
    invoke-virtual {p0}, Lb/a/be;->c()Ljava/lang/Object;

    move-result-object v0

    .line 193
    invoke-virtual {p0}, Lb/a/be;->b()Lb/a/bc;

    move-result-object v2

    invoke-virtual {p0, v2}, Lb/a/be;->a(Lb/a/bc;)Lb/a/bo;

    move-result-object v2

    iget-object v2, v2, Lb/a/bo;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    instance-of v2, v0, Ljava/nio/ByteBuffer;

    if-eqz v2, :cond_1

    .line 196
    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-static {v0, v1}, Lb/a/az;->a(Ljava/nio/ByteBuffer;Ljava/lang/StringBuilder;)V

    .line 201
    :cond_0
    :goto_0
    const-string v0, ">"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 198
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
