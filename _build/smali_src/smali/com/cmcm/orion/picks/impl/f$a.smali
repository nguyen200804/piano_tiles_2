.class public final Lcom/cmcm/orion/picks/impl/f$a;
.super Ljava/lang/Object;
.source "UIConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmcm/orion/picks/impl/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Z

.field public b:J

.field public c:I

.field public d:I

.field public e:I

.field public f:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cmcm/orion/picks/impl/f$a;->a:Z

    .line 22
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/cmcm/orion/picks/impl/f$a;->b:J

    .line 24
    iput v2, p0, Lcom/cmcm/orion/picks/impl/f$a;->c:I

    .line 25
    iput v2, p0, Lcom/cmcm/orion/picks/impl/f$a;->d:I

    .line 26
    iput v2, p0, Lcom/cmcm/orion/picks/impl/f$a;->e:I

    .line 27
    iput v2, p0, Lcom/cmcm/orion/picks/impl/f$a;->f:I

    return-void
.end method
