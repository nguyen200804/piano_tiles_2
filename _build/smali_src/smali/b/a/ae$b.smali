.class Lb/a/ae$b;
.super Ljava/lang/Object;
.source "MiscInfo.java"

# interfaces
.implements Lb/a/bz;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/ae;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 614
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lb/a/ae$1;)V
    .locals 0

    .prologue
    .line 614
    invoke-direct {p0}, Lb/a/ae$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lb/a/ae$a;
    .locals 2

    .prologue
    .line 616
    new-instance v0, Lb/a/ae$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lb/a/ae$a;-><init>(Lb/a/ae$1;)V

    return-object v0
.end method

.method public synthetic b()Lb/a/by;
    .locals 1

    .prologue
    .line 614
    invoke-virtual {p0}, Lb/a/ae$b;->a()Lb/a/ae$a;

    move-result-object v0

    return-object v0
.end method
