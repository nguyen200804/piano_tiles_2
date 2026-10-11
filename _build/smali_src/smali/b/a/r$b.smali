.class Lb/a/r$b;
.super Ljava/lang/Object;
.source "DeviceInfo.java"

# interfaces
.implements Lb/a/bz;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 922
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lb/a/r$1;)V
    .locals 0

    .prologue
    .line 922
    invoke-direct {p0}, Lb/a/r$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lb/a/r$a;
    .locals 2

    .prologue
    .line 924
    new-instance v0, Lb/a/r$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lb/a/r$a;-><init>(Lb/a/r$1;)V

    return-object v0
.end method

.method public synthetic b()Lb/a/by;
    .locals 1

    .prologue
    .line 922
    invoke-virtual {p0}, Lb/a/r$b;->a()Lb/a/r$a;

    move-result-object v0

    return-object v0
.end method
