.class final Lcom/cmcm/orion/utils/internal/a$b;
.super Ljava/lang/Object;
.source "AppInstallationTracker.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmcm/orion/utils/internal/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field private a:Lcom/cmcm/orion/picks/a/a/a;

.field private b:I

.field private c:Z


# direct methods
.method private constructor <init>(Lcom/cmcm/orion/picks/a/a/a;IZ)V
    .locals 0

    .prologue
    .line 1042
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1043
    iput-object p1, p0, Lcom/cmcm/orion/utils/internal/a$b;->a:Lcom/cmcm/orion/picks/a/a/a;

    .line 1044
    iput p2, p0, Lcom/cmcm/orion/utils/internal/a$b;->b:I

    .line 1045
    iput-boolean p3, p0, Lcom/cmcm/orion/utils/internal/a$b;->c:Z

    .line 1046
    return-void
.end method

.method synthetic constructor <init>(Lcom/cmcm/orion/picks/a/a/a;IZB)V
    .locals 0

    .prologue
    .line 1035
    invoke-direct {p0, p1, p2, p3}, Lcom/cmcm/orion/utils/internal/a$b;-><init>(Lcom/cmcm/orion/picks/a/a/a;IZ)V

    return-void
.end method

.method static synthetic a(Lcom/cmcm/orion/utils/internal/a$b;)Lcom/cmcm/orion/picks/a/a/a;
    .locals 1

    .prologue
    .line 1035
    iget-object v0, p0, Lcom/cmcm/orion/utils/internal/a$b;->a:Lcom/cmcm/orion/picks/a/a/a;

    return-object v0
.end method

.method static synthetic b(Lcom/cmcm/orion/utils/internal/a$b;)I
    .locals 1

    .prologue
    .line 1035
    iget v0, p0, Lcom/cmcm/orion/utils/internal/a$b;->b:I

    return v0
.end method

.method static synthetic c(Lcom/cmcm/orion/utils/internal/a$b;)Z
    .locals 1

    .prologue
    .line 1035
    iget-boolean v0, p0, Lcom/cmcm/orion/utils/internal/a$b;->c:Z

    return v0
.end method
