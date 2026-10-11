.class final Lcom/cmcm/dmc/sdk/a/m$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmcm/dmc/sdk/a/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/cmcm/dmc/sdk/a/m;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/cmcm/dmc/sdk/a/m;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/cmcm/dmc/sdk/a/m;-><init>(Lcom/cmcm/dmc/sdk/a/m$1;)V

    sput-object v0, Lcom/cmcm/dmc/sdk/a/m$a;->a:Lcom/cmcm/dmc/sdk/a/m;

    return-void
.end method

.method static synthetic a()Lcom/cmcm/dmc/sdk/a/m;
    .locals 1

    sget-object v0, Lcom/cmcm/dmc/sdk/a/m$a;->a:Lcom/cmcm/dmc/sdk/a/m;

    return-object v0
.end method
