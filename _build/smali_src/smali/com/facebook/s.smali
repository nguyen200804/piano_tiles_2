.class public final enum Lcom/facebook/s;
.super Ljava/lang/Enum;
.source "HttpMethod.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/s;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/facebook/s;

.field public static final enum b:Lcom/facebook/s;

.field public static final enum c:Lcom/facebook/s;

.field private static final synthetic d:[Lcom/facebook/s;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 30
    new-instance v0, Lcom/facebook/s;

    const-string v1, "GET"

    invoke-direct {v0, v1, v2}, Lcom/facebook/s;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/s;->a:Lcom/facebook/s;

    .line 35
    new-instance v0, Lcom/facebook/s;

    const-string v1, "POST"

    invoke-direct {v0, v1, v3}, Lcom/facebook/s;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/s;->b:Lcom/facebook/s;

    .line 40
    new-instance v0, Lcom/facebook/s;

    const-string v1, "DELETE"

    invoke-direct {v0, v1, v4}, Lcom/facebook/s;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/s;->c:Lcom/facebook/s;

    .line 26
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/facebook/s;

    sget-object v1, Lcom/facebook/s;->a:Lcom/facebook/s;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/s;->b:Lcom/facebook/s;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/s;->c:Lcom/facebook/s;

    aput-object v1, v0, v4

    sput-object v0, Lcom/facebook/s;->d:[Lcom/facebook/s;

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
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/s;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 26
    const-class v0, Lcom/facebook/s;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/s;

    return-object v0
.end method

.method public static values()[Lcom/facebook/s;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/facebook/s;->d:[Lcom/facebook/s;

    invoke-virtual {v0}, [Lcom/facebook/s;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/s;

    return-object v0
.end method
