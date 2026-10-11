.class final enum Lcom/cmcm/orion/picks/b/a$f;
.super Ljava/lang/Enum;
.source "BrandVideoCardAd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmcm/orion/picks/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/cmcm/orion/picks/b/a$f;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/cmcm/orion/picks/b/a$f;

.field public static final enum b:Lcom/cmcm/orion/picks/b/a$f;

.field public static final enum c:Lcom/cmcm/orion/picks/b/a$f;

.field public static final enum d:Lcom/cmcm/orion/picks/b/a$f;

.field public static final enum e:Lcom/cmcm/orion/picks/b/a$f;

.field public static final enum f:Lcom/cmcm/orion/picks/b/a$f;

.field public static final enum g:Lcom/cmcm/orion/picks/b/a$f;

.field private static final synthetic i:[Lcom/cmcm/orion/picks/b/a$f;


# instance fields
.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 93
    new-instance v0, Lcom/cmcm/orion/picks/b/a$f;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v4, v4}, Lcom/cmcm/orion/picks/b/a$f;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cmcm/orion/picks/b/a$f;->a:Lcom/cmcm/orion/picks/b/a$f;

    new-instance v0, Lcom/cmcm/orion/picks/b/a$f;

    const-string v1, "LOADING_AD"

    invoke-direct {v0, v1, v5, v5}, Lcom/cmcm/orion/picks/b/a$f;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cmcm/orion/picks/b/a$f;->b:Lcom/cmcm/orion/picks/b/a$f;

    new-instance v0, Lcom/cmcm/orion/picks/b/a$f;

    const-string v1, "AD_LOADED"

    invoke-direct {v0, v1, v6, v6}, Lcom/cmcm/orion/picks/b/a$f;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cmcm/orion/picks/b/a$f;->c:Lcom/cmcm/orion/picks/b/a$f;

    new-instance v0, Lcom/cmcm/orion/picks/b/a$f;

    const-string v1, "LOADING_MATERIAL"

    invoke-direct {v0, v1, v7, v7}, Lcom/cmcm/orion/picks/b/a$f;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cmcm/orion/picks/b/a$f;->d:Lcom/cmcm/orion/picks/b/a$f;

    new-instance v0, Lcom/cmcm/orion/picks/b/a$f;

    const-string v1, "MATERIAL_LOADED"

    invoke-direct {v0, v1, v8, v8}, Lcom/cmcm/orion/picks/b/a$f;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cmcm/orion/picks/b/a$f;->e:Lcom/cmcm/orion/picks/b/a$f;

    new-instance v0, Lcom/cmcm/orion/picks/b/a$f;

    const-string v1, "READY"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/cmcm/orion/picks/b/a$f;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cmcm/orion/picks/b/a$f;->f:Lcom/cmcm/orion/picks/b/a$f;

    new-instance v0, Lcom/cmcm/orion/picks/b/a$f;

    const-string v1, "ERROR"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/cmcm/orion/picks/b/a$f;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cmcm/orion/picks/b/a$f;->g:Lcom/cmcm/orion/picks/b/a$f;

    .line 92
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/cmcm/orion/picks/b/a$f;

    sget-object v1, Lcom/cmcm/orion/picks/b/a$f;->a:Lcom/cmcm/orion/picks/b/a$f;

    aput-object v1, v0, v4

    sget-object v1, Lcom/cmcm/orion/picks/b/a$f;->b:Lcom/cmcm/orion/picks/b/a$f;

    aput-object v1, v0, v5

    sget-object v1, Lcom/cmcm/orion/picks/b/a$f;->c:Lcom/cmcm/orion/picks/b/a$f;

    aput-object v1, v0, v6

    sget-object v1, Lcom/cmcm/orion/picks/b/a$f;->d:Lcom/cmcm/orion/picks/b/a$f;

    aput-object v1, v0, v7

    sget-object v1, Lcom/cmcm/orion/picks/b/a$f;->e:Lcom/cmcm/orion/picks/b/a$f;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/cmcm/orion/picks/b/a$f;->f:Lcom/cmcm/orion/picks/b/a$f;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/cmcm/orion/picks/b/a$f;->g:Lcom/cmcm/orion/picks/b/a$f;

    aput-object v2, v0, v1

    sput-object v0, Lcom/cmcm/orion/picks/b/a$f;->i:[Lcom/cmcm/orion/picks/b/a$f;

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
    .line 97
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 98
    iput p3, p0, Lcom/cmcm/orion/picks/b/a$f;->h:I

    .line 99
    return-void
.end method

.method static synthetic a(Lcom/cmcm/orion/picks/b/a$f;Lcom/cmcm/orion/picks/b/a$f;)Z
    .locals 2

    .prologue
    .line 92
    .line 1102
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/cmcm/orion/picks/b/a$f;->h:I

    iget v1, p1, Lcom/cmcm/orion/picks/b/a$f;->h:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    .line 92
    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cmcm/orion/picks/b/a$f;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 92
    const-class v0, Lcom/cmcm/orion/picks/b/a$f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/cmcm/orion/picks/b/a$f;

    return-object v0
.end method

.method public static values()[Lcom/cmcm/orion/picks/b/a$f;
    .locals 1

    .prologue
    .line 92
    sget-object v0, Lcom/cmcm/orion/picks/b/a$f;->i:[Lcom/cmcm/orion/picks/b/a$f;

    invoke-virtual {v0}, [Lcom/cmcm/orion/picks/b/a$f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cmcm/orion/picks/b/a$f;

    return-object v0
.end method
