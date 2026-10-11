.class public Lb/a/bs;
.super Lb/a/bb;
.source "TProtocolException.java"


# instance fields
.field protected a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lb/a/bb;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lb/a/bs;->a:I

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lb/a/bb;-><init>(Ljava/lang/String;)V

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lb/a/bs;->a:I

    .line 57
    return-void
.end method
