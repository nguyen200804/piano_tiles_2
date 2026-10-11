.class Lb/a/ab$b;
.super Ljava/lang/Object;
.source "InstantMsg.java"

# interfaces
.implements Lb/a/bz;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/ab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 413
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lb/a/ab$1;)V
    .locals 0

    .prologue
    .line 413
    invoke-direct {p0}, Lb/a/ab$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lb/a/ab$a;
    .locals 2

    .prologue
    .line 415
    new-instance v0, Lb/a/ab$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lb/a/ab$a;-><init>(Lb/a/ab$1;)V

    return-object v0
.end method

.method public synthetic b()Lb/a/by;
    .locals 1

    .prologue
    .line 413
    invoke-virtual {p0}, Lb/a/ab$b;->a()Lb/a/ab$a;

    move-result-object v0

    return-object v0
.end method
