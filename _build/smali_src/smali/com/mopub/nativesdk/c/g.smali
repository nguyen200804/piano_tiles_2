.class public final Lcom/mopub/nativesdk/c/g;
.super Lcom/mopub/nativesdk/c/a;
.source "ImpressionLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mopub/nativesdk/c/a",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/mopub/nativesdk/c/a;-><init>(Landroid/content/Context;)V

    .line 30
    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x2

    return v0
.end method

.method protected final synthetic a(Ljava/util/Map;[B)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 14
    .line 1070
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RESPONSE: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1072
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 14
    return-object v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/mopub/nativesdk/c/g;->b:Ljava/lang/String;

    .line 35
    return-void
.end method

.method protected final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/mopub/nativesdk/c/g;->b:Ljava/lang/String;

    return-object v0
.end method

.method protected final c()[B
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    return-object v0
.end method
