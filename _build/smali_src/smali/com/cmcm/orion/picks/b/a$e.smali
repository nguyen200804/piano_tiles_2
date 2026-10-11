.class final enum Lcom/cmcm/orion/picks/b/a$e;
.super Ljava/lang/Enum;
.source "BrandVideoCardAd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmcm/orion/picks/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/cmcm/orion/picks/b/a$e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/cmcm/orion/picks/b/a$e;

.field public static final enum b:Lcom/cmcm/orion/picks/b/a$e;

.field private static final synthetic c:[Lcom/cmcm/orion/picks/b/a$e;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 87
    new-instance v0, Lcom/cmcm/orion/picks/b/a$e;

    const-string v1, "LOAD"

    invoke-direct {v0, v1, v2}, Lcom/cmcm/orion/picks/b/a$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cmcm/orion/picks/b/a$e;->a:Lcom/cmcm/orion/picks/b/a$e;

    new-instance v0, Lcom/cmcm/orion/picks/b/a$e;

    const-string v1, "PRELOAD"

    invoke-direct {v0, v1, v3}, Lcom/cmcm/orion/picks/b/a$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cmcm/orion/picks/b/a$e;->b:Lcom/cmcm/orion/picks/b/a$e;

    .line 86
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/cmcm/orion/picks/b/a$e;

    sget-object v1, Lcom/cmcm/orion/picks/b/a$e;->a:Lcom/cmcm/orion/picks/b/a$e;

    aput-object v1, v0, v2

    sget-object v1, Lcom/cmcm/orion/picks/b/a$e;->b:Lcom/cmcm/orion/picks/b/a$e;

    aput-object v1, v0, v3

    sput-object v0, Lcom/cmcm/orion/picks/b/a$e;->c:[Lcom/cmcm/orion/picks/b/a$e;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 86
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cmcm/orion/picks/b/a$e;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 86
    const-class v0, Lcom/cmcm/orion/picks/b/a$e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/cmcm/orion/picks/b/a$e;

    return-object v0
.end method

.method public static values()[Lcom/cmcm/orion/picks/b/a$e;
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lcom/cmcm/orion/picks/b/a$e;->c:[Lcom/cmcm/orion/picks/b/a$e;

    invoke-virtual {v0}, [Lcom/cmcm/orion/picks/b/a$e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cmcm/orion/picks/b/a$e;

    return-object v0
.end method
