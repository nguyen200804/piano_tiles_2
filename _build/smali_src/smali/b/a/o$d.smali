.class Lb/a/o$d;
.super Ljava/lang/Object;
.source "AppInfo.java"

# interfaces
.implements Lb/a/bz;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 819
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lb/a/o$1;)V
    .locals 0

    .prologue
    .line 819
    invoke-direct {p0}, Lb/a/o$d;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lb/a/o$c;
    .locals 2

    .prologue
    .line 821
    new-instance v0, Lb/a/o$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lb/a/o$c;-><init>(Lb/a/o$1;)V

    return-object v0
.end method

.method public synthetic b()Lb/a/by;
    .locals 1

    .prologue
    .line 819
    invoke-virtual {p0}, Lb/a/o$d;->a()Lb/a/o$c;

    move-result-object v0

    return-object v0
.end method
