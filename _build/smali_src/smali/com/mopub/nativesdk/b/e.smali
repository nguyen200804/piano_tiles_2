.class public final Lcom/mopub/nativesdk/b/e;
.super Ljava/lang/Object;
.source "JumpLoader.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Z

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    .prologue
    .line 225
    iput p1, p0, Lcom/mopub/nativesdk/b/e;->d:I

    .line 226
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 209
    iput-object p1, p0, Lcom/mopub/nativesdk/b/e;->b:Ljava/lang/String;

    .line 210
    return-void
.end method

.method public final a(Z)V
    .locals 0

    .prologue
    .line 201
    iput-boolean p1, p0, Lcom/mopub/nativesdk/b/e;->a:Z

    .line 202
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 197
    iget-boolean v0, p0, Lcom/mopub/nativesdk/b/e;->a:Z

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/mopub/nativesdk/b/e;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 233
    iput-object p1, p0, Lcom/mopub/nativesdk/b/e;->e:Ljava/lang/String;

    .line 234
    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/mopub/nativesdk/b/e;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 221
    iget v0, p0, Lcom/mopub/nativesdk/b/e;->d:I

    return v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/mopub/nativesdk/b/e;->e:Ljava/lang/String;

    return-object v0
.end method
