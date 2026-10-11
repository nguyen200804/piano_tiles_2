.class Lb/a/p$b;
.super Ljava/lang/Object;
.source "ClientStats.java"

# interfaces
.implements Lb/a/bz;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 302
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lb/a/p$1;)V
    .locals 0

    .prologue
    .line 302
    invoke-direct {p0}, Lb/a/p$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lb/a/p$a;
    .locals 2

    .prologue
    .line 304
    new-instance v0, Lb/a/p$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lb/a/p$a;-><init>(Lb/a/p$1;)V

    return-object v0
.end method

.method public synthetic b()Lb/a/by;
    .locals 1

    .prologue
    .line 302
    invoke-virtual {p0}, Lb/a/p$b;->a()Lb/a/p$a;

    move-result-object v0

    return-object v0
.end method
