.class public final Lcom/mopub/nativesdk/core/y;
.super Ljava/lang/Object;
.source "Strategy.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static a:I

.field static b:Lcom/mopub/nativesdk/core/D;

.field static c:Lcom/mopub/nativesdk/core/C;

.field static d:Lcom/mopub/nativesdk/core/G;

.field static e:Lcom/mopub/nativesdk/core/B;

.field static f:Lcom/mopub/nativesdk/core/A;

.field static g:Lcom/mopub/nativesdk/core/z;

.field static h:Lcom/mopub/nativesdk/core/F;

.field private static k:Lcom/mopub/nativesdk/core/E;


# instance fields
.field i:J

.field j:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const/4 v0, 0x1

    sput v0, Lcom/mopub/nativesdk/core/y;->a:I

    .line 11
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/mopub/nativesdk/core/D;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/mopub/nativesdk/core/y;->b:Lcom/mopub/nativesdk/core/D;

    return-object v0
.end method

.method public static a(Lcom/mopub/nativesdk/core/E;)V
    .locals 0

    .prologue
    .line 172
    sput-object p0, Lcom/mopub/nativesdk/core/y;->k:Lcom/mopub/nativesdk/core/E;

    .line 173
    return-void
.end method

.method public static d()Lcom/mopub/nativesdk/core/E;
    .locals 1

    .prologue
    .line 168
    sget-object v0, Lcom/mopub/nativesdk/core/y;->k:Lcom/mopub/nativesdk/core/E;

    return-object v0
.end method


# virtual methods
.method public final a(J)V
    .locals 1

    .prologue
    .line 156
    iput-wide p1, p0, Lcom/mopub/nativesdk/core/y;->i:J

    .line 157
    return-void
.end method

.method public final a(Lcom/mopub/nativesdk/core/A;)V
    .locals 0

    .prologue
    .line 124
    sput-object p1, Lcom/mopub/nativesdk/core/y;->f:Lcom/mopub/nativesdk/core/A;

    .line 125
    return-void
.end method

.method public final a(Lcom/mopub/nativesdk/core/B;)V
    .locals 0

    .prologue
    .line 116
    sput-object p1, Lcom/mopub/nativesdk/core/y;->e:Lcom/mopub/nativesdk/core/B;

    .line 117
    return-void
.end method

.method public final a(Lcom/mopub/nativesdk/core/C;)V
    .locals 0

    .prologue
    .line 100
    sput-object p1, Lcom/mopub/nativesdk/core/y;->c:Lcom/mopub/nativesdk/core/C;

    .line 101
    return-void
.end method

.method public final a(Lcom/mopub/nativesdk/core/D;)V
    .locals 0

    .prologue
    .line 92
    sput-object p1, Lcom/mopub/nativesdk/core/y;->b:Lcom/mopub/nativesdk/core/D;

    .line 93
    return-void
.end method

.method public final a(Lcom/mopub/nativesdk/core/F;)V
    .locals 0

    .prologue
    .line 140
    sput-object p1, Lcom/mopub/nativesdk/core/y;->h:Lcom/mopub/nativesdk/core/F;

    .line 141
    return-void
.end method

.method public final a(Lcom/mopub/nativesdk/core/G;)V
    .locals 0

    .prologue
    .line 108
    sput-object p1, Lcom/mopub/nativesdk/core/y;->d:Lcom/mopub/nativesdk/core/G;

    .line 109
    return-void
.end method

.method public final a(Lcom/mopub/nativesdk/core/z;)V
    .locals 0

    .prologue
    .line 132
    sput-object p1, Lcom/mopub/nativesdk/core/y;->g:Lcom/mopub/nativesdk/core/z;

    .line 133
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lcom/mopub/nativesdk/core/y;->j:Ljava/lang/String;

    .line 165
    return-void
.end method

.method public final b()J
    .locals 2

    .prologue
    .line 152
    iget-wide v0, p0, Lcom/mopub/nativesdk/core/y;->i:J

    return-wide v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/mopub/nativesdk/core/y;->j:Ljava/lang/String;

    return-object v0
.end method
