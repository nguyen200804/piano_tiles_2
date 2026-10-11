.class Lb/a/x$b;
.super Ljava/lang/Object;
.source "IdTracking.java"

# interfaces
.implements Lb/a/bz;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 353
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lb/a/x$1;)V
    .locals 0

    .prologue
    .line 353
    invoke-direct {p0}, Lb/a/x$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lb/a/x$a;
    .locals 2

    .prologue
    .line 355
    new-instance v0, Lb/a/x$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lb/a/x$a;-><init>(Lb/a/x$1;)V

    return-object v0
.end method

.method public synthetic b()Lb/a/by;
    .locals 1

    .prologue
    .line 353
    invoke-virtual {p0}, Lb/a/x$b;->a()Lb/a/x$a;

    move-result-object v0

    return-object v0
.end method
