.class public final Lcom/cmcm/orion/picks/a/a/g;
.super Ljava/lang/Object;
.source "CmMarketHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmcm/orion/picks/a/a/g$b;,
        Lcom/cmcm/orion/picks/a/a/g$a;
    }
.end annotation


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field private static c:Lcom/cmcm/orion/picks/a/a/g;


# instance fields
.field private d:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 35
    new-instance v0, Lcom/cmcm/orion/picks/a/a/g;

    invoke-direct {v0}, Lcom/cmcm/orion/picks/a/a/g;-><init>()V

    sput-object v0, Lcom/cmcm/orion/picks/a/a/g;->c:Lcom/cmcm/orion/picks/a/a/g;

    .line 42
    const-string v0, ""

    sput-object v0, Lcom/cmcm/orion/picks/a/a/g;->a:Ljava/lang/String;

    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-boolean v0, Lcom/cmcm/orion/picks/a/a/h;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "http://"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/cmcm/orion/picks/a/a/h;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/cmcm/orion/picks/a/a/h;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cmcm/orion/picks/a/a/g;->b:Ljava/lang/String;

    return-void

    :cond_0
    const-string v0, "https://"

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    return-void
.end method

.method public static a()Lcom/cmcm/orion/picks/a/a/g;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lcom/cmcm/orion/picks/a/a/g;->c:Lcom/cmcm/orion/picks/a/a/g;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 89
    iget-object v0, p0, Lcom/cmcm/orion/picks/a/a/g;->d:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 90
    new-instance v0, Lcom/cmcm/orion/picks/a/a/g$a;

    invoke-direct {v0, p1}, Lcom/cmcm/orion/picks/a/a/g$a;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/cmcm/orion/picks/a/a/g;->d:Ljava/lang/Runnable;

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/cmcm/orion/picks/a/a/g;->d:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/cmcm/orion/utils/a;->a(Ljava/lang/Runnable;)V

    .line 1098
    new-instance v0, Lcom/cmcm/orion/picks/a/a/g$1;

    invoke-direct {v0, p0, p1}, Lcom/cmcm/orion/picks/a/a/g$1;-><init>(Lcom/cmcm/orion/picks/a/a/g;Ljava/lang/String;)V

    const-wide/32 v2, 0x5265c00

    invoke-static {v0, v2, v3}, Lcom/cmcm/orion/utils/a;->a(Ljava/lang/Runnable;J)V

    .line 95
    return-void
.end method
