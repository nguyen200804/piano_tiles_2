.class public Lb/a/bd;
.super Ljava/lang/Object;
.source "TSerializer.java"


# instance fields
.field private final a:Ljava/io/ByteArrayOutputStream;

.field private final b:Lb/a/cc;

.field private c:Lb/a/br;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    new-instance v0, Lb/a/bn$a;

    invoke-direct {v0}, Lb/a/bn$a;-><init>()V

    invoke-direct {p0, v0}, Lb/a/bd;-><init>(Lb/a/bt;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Lb/a/bt;)V
    .locals 2

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lb/a/bd;->a:Ljava/io/ByteArrayOutputStream;

    .line 47
    new-instance v0, Lb/a/cc;

    iget-object v1, p0, Lb/a/bd;->a:Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, v1}, Lb/a/cc;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lb/a/bd;->b:Lb/a/cc;

    .line 68
    iget-object v0, p0, Lb/a/bd;->b:Lb/a/cc;

    invoke-interface {p1, v0}, Lb/a/bt;->a(Lb/a/ce;)Lb/a/br;

    move-result-object v0

    iput-object v0, p0, Lb/a/bd;->c:Lb/a/br;

    .line 69
    return-void
.end method


# virtual methods
.method public a(Lb/a/ay;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb/a/bb;
        }
    .end annotation

    .prologue
    .line 81
    iget-object v0, p0, Lb/a/bd;->a:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 82
    iget-object v0, p0, Lb/a/bd;->c:Lb/a/br;

    invoke-interface {p1, v0}, Lb/a/ay;->b(Lb/a/br;)V

    .line 83
    iget-object v0, p0, Lb/a/bd;->a:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method
