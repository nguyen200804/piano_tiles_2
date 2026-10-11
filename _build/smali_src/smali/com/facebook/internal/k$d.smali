.class public final Lcom/facebook/internal/k$d;
.super Ljava/lang/Object;
.source "FileLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 603
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 611
    const/16 v0, 0x400

    iput v0, p0, Lcom/facebook/internal/k$d;->b:I

    .line 612
    const/high16 v0, 0x100000

    iput v0, p0, Lcom/facebook/internal/k$d;->a:I

    .line 613
    return-void
.end method


# virtual methods
.method a()I
    .locals 1

    .prologue
    .line 616
    iget v0, p0, Lcom/facebook/internal/k$d;->a:I

    return v0
.end method

.method b()I
    .locals 1

    .prologue
    .line 620
    iget v0, p0, Lcom/facebook/internal/k$d;->b:I

    return v0
.end method
