.class Lb/a/w$b;
.super Ljava/lang/Object;
.source "IdSnapshot.java"

# interfaces
.implements Lb/a/bz;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 305
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lb/a/w$1;)V
    .locals 0

    .prologue
    .line 305
    invoke-direct {p0}, Lb/a/w$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lb/a/w$a;
    .locals 2

    .prologue
    .line 307
    new-instance v0, Lb/a/w$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lb/a/w$a;-><init>(Lb/a/w$1;)V

    return-object v0
.end method

.method public synthetic b()Lb/a/by;
    .locals 1

    .prologue
    .line 305
    invoke-virtual {p0}, Lb/a/w$b;->a()Lb/a/w$a;

    move-result-object v0

    return-object v0
.end method
