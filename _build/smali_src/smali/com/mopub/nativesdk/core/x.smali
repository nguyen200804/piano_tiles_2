.class public final Lcom/mopub/nativesdk/core/x;
.super Ljava/lang/Object;
.source "RushRefer.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:J

.field private d:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/mopub/nativesdk/core/x;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final a(J)V
    .locals 1

    .prologue
    .line 34
    iput-wide p1, p0, Lcom/mopub/nativesdk/core/x;->d:J

    .line 35
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lcom/mopub/nativesdk/core/x;->a:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/mopub/nativesdk/core/x;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final b(J)V
    .locals 1

    .prologue
    .line 42
    iput-wide p1, p0, Lcom/mopub/nativesdk/core/x;->c:J

    .line 43
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/mopub/nativesdk/core/x;->b:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public final c()J
    .locals 2

    .prologue
    .line 30
    iget-wide v0, p0, Lcom/mopub/nativesdk/core/x;->d:J

    return-wide v0
.end method

.method public final d()J
    .locals 2

    .prologue
    .line 38
    iget-wide v0, p0, Lcom/mopub/nativesdk/core/x;->c:J

    return-wide v0
.end method
