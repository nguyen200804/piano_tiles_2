.class final Lcom/cmcm/orion/utils/internal/a$c;
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
    name = "c"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:J

.field public c:Lcom/cmcm/orion/utils/internal/a$b;

.field public d:Z

.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/cmcm/orion/utils/internal/a$b;Ljava/lang/String;J)V
    .locals 1

    .prologue
    .line 1007
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1008
    iput-object p1, p0, Lcom/cmcm/orion/utils/internal/a$c;->c:Lcom/cmcm/orion/utils/internal/a$b;

    .line 1009
    iput-object p2, p0, Lcom/cmcm/orion/utils/internal/a$c;->a:Ljava/lang/String;

    .line 1010
    iput-wide p3, p0, Lcom/cmcm/orion/utils/internal/a$c;->b:J

    .line 1011
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cmcm/orion/utils/internal/a$c;->d:Z

    .line 1012
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cmcm/orion/utils/internal/a$c;->e:Ljava/lang/String;

    .line 1013
    return-void
.end method
