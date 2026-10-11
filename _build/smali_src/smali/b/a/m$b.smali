.class Lb/a/m$b;
.super Ljava/lang/Object;
.source "ActivateMsg.java"

# interfaces
.implements Lb/a/bz;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lb/a/m$1;)V
    .locals 0

    .prologue
    .line 215
    invoke-direct {p0}, Lb/a/m$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lb/a/m$a;
    .locals 2

    .prologue
    .line 217
    new-instance v0, Lb/a/m$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lb/a/m$a;-><init>(Lb/a/m$1;)V

    return-object v0
.end method

.method public synthetic b()Lb/a/by;
    .locals 1

    .prologue
    .line 215
    invoke-virtual {p0}, Lb/a/m$b;->a()Lb/a/m$a;

    move-result-object v0

    return-object v0
.end method
