.class public final Lcom/cmcm/orion/picks/a/a/m;
.super Ljava/lang/Object;
.source "PicksError.java"


# instance fields
.field public a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Lcom/cmcm/orion/picks/a/a/m;->a:I

    .line 71
    return-void
.end method

.method public static a(Lcom/cmcm/orion/picks/a/a/m;I)V
    .locals 0

    .prologue
    .line 74
    if-eqz p0, :cond_0

    .line 75
    iput p1, p0, Lcom/cmcm/orion/picks/a/a/m;->a:I

    .line 77
    :cond_0
    return-void
.end method
