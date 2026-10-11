.class public final enum Lcom/facebook/internal/b$a;
.super Ljava/lang/Enum;
.source "AppEventsLoggerUtility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/internal/b$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/facebook/internal/b$a;

.field public static final enum b:Lcom/facebook/internal/b$a;

.field private static final synthetic c:[Lcom/facebook/internal/b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 41
    new-instance v0, Lcom/facebook/internal/b$a;

    const-string v1, "MOBILE_INSTALL_EVENT"

    invoke-direct {v0, v1, v2}, Lcom/facebook/internal/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/internal/b$a;->a:Lcom/facebook/internal/b$a;

    .line 42
    new-instance v0, Lcom/facebook/internal/b$a;

    const-string v1, "CUSTOM_APP_EVENTS"

    invoke-direct {v0, v1, v3}, Lcom/facebook/internal/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/internal/b$a;->b:Lcom/facebook/internal/b$a;

    .line 40
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/facebook/internal/b$a;

    sget-object v1, Lcom/facebook/internal/b$a;->a:Lcom/facebook/internal/b$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/internal/b$a;->b:Lcom/facebook/internal/b$a;

    aput-object v1, v0, v3

    sput-object v0, Lcom/facebook/internal/b$a;->c:[Lcom/facebook/internal/b$a;

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
    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/internal/b$a;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 40
    const-class v0, Lcom/facebook/internal/b$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/internal/b$a;

    return-object v0
.end method

.method public static values()[Lcom/facebook/internal/b$a;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/facebook/internal/b$a;->c:[Lcom/facebook/internal/b$a;

    invoke-virtual {v0}, [Lcom/facebook/internal/b$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/internal/b$a;

    return-object v0
.end method
