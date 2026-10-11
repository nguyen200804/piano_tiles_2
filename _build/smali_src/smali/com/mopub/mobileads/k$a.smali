.class final enum Lcom/mopub/mobileads/k$a;
.super Ljava/lang/Enum;
.source "VastResource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mopub/mobileads/k$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum IMAGE:Lcom/mopub/mobileads/k$a;

.field public static final enum JAVASCRIPT:Lcom/mopub/mobileads/k$a;

.field public static final enum NONE:Lcom/mopub/mobileads/k$a;

.field private static final synthetic a:[Lcom/mopub/mobileads/k$a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 36
    new-instance v0, Lcom/mopub/mobileads/k$a;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/mopub/mobileads/k$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mopub/mobileads/k$a;->NONE:Lcom/mopub/mobileads/k$a;

    .line 37
    new-instance v0, Lcom/mopub/mobileads/k$a;

    const-string v1, "IMAGE"

    invoke-direct {v0, v1, v3}, Lcom/mopub/mobileads/k$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mopub/mobileads/k$a;->IMAGE:Lcom/mopub/mobileads/k$a;

    .line 38
    new-instance v0, Lcom/mopub/mobileads/k$a;

    const-string v1, "JAVASCRIPT"

    invoke-direct {v0, v1, v4}, Lcom/mopub/mobileads/k$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mopub/mobileads/k$a;->JAVASCRIPT:Lcom/mopub/mobileads/k$a;

    .line 35
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/mopub/mobileads/k$a;

    sget-object v1, Lcom/mopub/mobileads/k$a;->NONE:Lcom/mopub/mobileads/k$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mopub/mobileads/k$a;->IMAGE:Lcom/mopub/mobileads/k$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mopub/mobileads/k$a;->JAVASCRIPT:Lcom/mopub/mobileads/k$a;

    aput-object v1, v0, v4

    sput-object v0, Lcom/mopub/mobileads/k$a;->a:[Lcom/mopub/mobileads/k$a;

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
    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mopub/mobileads/k$a;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 35
    const-class v0, Lcom/mopub/mobileads/k$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mopub/mobileads/k$a;

    return-object v0
.end method

.method public static values()[Lcom/mopub/mobileads/k$a;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/mopub/mobileads/k$a;->a:[Lcom/mopub/mobileads/k$a;

    invoke-virtual {v0}, [Lcom/mopub/mobileads/k$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mopub/mobileads/k$a;

    return-object v0
.end method
