.class Lb/a/ah$b;
.super Ljava/lang/Object;
.source "Resolution.java"

# interfaces
.implements Lb/a/bz;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/ah;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lb/a/ah$1;)V
    .locals 0

    .prologue
    .line 257
    invoke-direct {p0}, Lb/a/ah$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lb/a/ah$a;
    .locals 2

    .prologue
    .line 259
    new-instance v0, Lb/a/ah$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lb/a/ah$a;-><init>(Lb/a/ah$1;)V

    return-object v0
.end method

.method public synthetic b()Lb/a/by;
    .locals 1

    .prologue
    .line 257
    invoke-virtual {p0}, Lb/a/ah$b;->a()Lb/a/ah$a;

    move-result-object v0

    return-object v0
.end method
