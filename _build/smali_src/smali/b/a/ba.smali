.class public Lb/a/ba;
.super Ljava/lang/Object;
.source "TDeserializer.java"


# instance fields
.field private final a:Lb/a/br;

.field private final b:Lb/a/cd;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    new-instance v0, Lb/a/bn$a;

    invoke-direct {v0}, Lb/a/bn$a;-><init>()V

    invoke-direct {p0, v0}, Lb/a/ba;-><init>(Lb/a/bt;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Lb/a/bt;)V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Lb/a/cd;

    invoke-direct {v0}, Lb/a/cd;-><init>()V

    iput-object v0, p0, Lb/a/ba;->b:Lb/a/cd;

    .line 59
    iget-object v0, p0, Lb/a/ba;->b:Lb/a/cd;

    invoke-interface {p1, v0}, Lb/a/bt;->a(Lb/a/ce;)Lb/a/br;

    move-result-object v0

    iput-object v0, p0, Lb/a/ba;->a:Lb/a/br;

    .line 60
    return-void
.end method


# virtual methods
.method public a(Lb/a/ay;[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb/a/bb;
        }
    .end annotation

    .prologue
    .line 70
    :try_start_0
    iget-object v0, p0, Lb/a/ba;->b:Lb/a/cd;

    invoke-virtual {v0, p2}, Lb/a/cd;->a([B)V

    .line 71
    iget-object v0, p0, Lb/a/ba;->a:Lb/a/br;

    invoke-interface {p1, v0}, Lb/a/ay;->a(Lb/a/br;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    iget-object v0, p0, Lb/a/ba;->b:Lb/a/cd;

    invoke-virtual {v0}, Lb/a/cd;->a()V

    .line 74
    iget-object v0, p0, Lb/a/ba;->a:Lb/a/br;

    invoke-virtual {v0}, Lb/a/br;->x()V

    .line 76
    return-void

    .line 73
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lb/a/ba;->b:Lb/a/cd;

    invoke-virtual {v1}, Lb/a/cd;->a()V

    .line 74
    iget-object v1, p0, Lb/a/ba;->a:Lb/a/br;

    invoke-virtual {v1}, Lb/a/br;->x()V

    throw v0
.end method
