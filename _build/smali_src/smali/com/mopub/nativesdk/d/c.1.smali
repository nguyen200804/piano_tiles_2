.class public Lcom/mopub/nativesdk/d/c;
.super Ljava/lang/Object;
.source "AdvertisingIdClient.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1007
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/mopub/nativesdk/d/c;->a:Ljava/lang/String;

    .line 33
    iput-boolean p2, p0, Lcom/mopub/nativesdk/d/c;->b:Z

    .line 34
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/mopub/nativesdk/d/c;->a:Ljava/lang/String;

    return-object v0
.end method
