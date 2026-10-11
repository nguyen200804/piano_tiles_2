.class public Lb/a/bn$a;
.super Ljava/lang/Object;
.source "TCompactProtocol.java"

# interfaces
.implements Lb/a/bt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/bn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lb/a/bn$a;->a:J

    .line 72
    return-void
.end method


# virtual methods
.method public a(Lb/a/ce;)Lb/a/br;
    .locals 4

    .prologue
    .line 79
    new-instance v0, Lb/a/bn;

    iget-wide v2, p0, Lb/a/bn$a;->a:J

    invoke-direct {v0, p1, v2, v3}, Lb/a/bn;-><init>(Lb/a/ce;J)V

    return-object v0
.end method
