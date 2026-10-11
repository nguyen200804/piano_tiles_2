.class public Lcom/b/a/c$c;
.super Lcom/b/a/c$f;
.source "ReportPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/b/a/c$f;-><init>()V

    .line 64
    return-void
.end method


# virtual methods
.method public a(Z)Z
    .locals 0

    .prologue
    .line 67
    return p1
.end method
