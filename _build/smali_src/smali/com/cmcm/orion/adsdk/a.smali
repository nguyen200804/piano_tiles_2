.class public final enum Lcom/cmcm/orion/adsdk/a;
.super Ljava/lang/Enum;
.source "AdStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/cmcm/orion/adsdk/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/cmcm/orion/adsdk/a;

.field public static final enum b:Lcom/cmcm/orion/adsdk/a;

.field private static final synthetic d:[Lcom/cmcm/orion/adsdk/a;


# instance fields
.field public c:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 9
    new-instance v0, Lcom/cmcm/orion/adsdk/a;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v2, v2}, Lcom/cmcm/orion/adsdk/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cmcm/orion/adsdk/a;->a:Lcom/cmcm/orion/adsdk/a;

    .line 10
    new-instance v0, Lcom/cmcm/orion/adsdk/a;

    const-string v1, "ABANDON"

    invoke-direct {v0, v1, v3, v3}, Lcom/cmcm/orion/adsdk/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cmcm/orion/adsdk/a;->b:Lcom/cmcm/orion/adsdk/a;

    .line 7
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/cmcm/orion/adsdk/a;

    sget-object v1, Lcom/cmcm/orion/adsdk/a;->a:Lcom/cmcm/orion/adsdk/a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/cmcm/orion/adsdk/a;->b:Lcom/cmcm/orion/adsdk/a;

    aput-object v1, v0, v3

    sput-object v0, Lcom/cmcm/orion/adsdk/a;->d:[Lcom/cmcm/orion/adsdk/a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 14
    iput p3, p0, Lcom/cmcm/orion/adsdk/a;->c:I

    .line 15
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cmcm/orion/adsdk/a;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 7
    const-class v0, Lcom/cmcm/orion/adsdk/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/cmcm/orion/adsdk/a;

    return-object v0
.end method

.method public static values()[Lcom/cmcm/orion/adsdk/a;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/cmcm/orion/adsdk/a;->d:[Lcom/cmcm/orion/adsdk/a;

    invoke-virtual {v0}, [Lcom/cmcm/orion/adsdk/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cmcm/orion/adsdk/a;

    return-object v0
.end method
