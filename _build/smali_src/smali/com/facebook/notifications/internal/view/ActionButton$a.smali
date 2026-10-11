.class public final enum Lcom/facebook/notifications/internal/view/ActionButton$a;
.super Ljava/lang/Enum;
.source "ActionButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/notifications/internal/view/ActionButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/notifications/internal/view/ActionButton$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/facebook/notifications/internal/view/ActionButton$a;

.field public static final enum b:Lcom/facebook/notifications/internal/view/ActionButton$a;

.field public static final enum c:Lcom/facebook/notifications/internal/view/ActionButton$a;

.field private static final synthetic d:[Lcom/facebook/notifications/internal/view/ActionButton$a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 45
    new-instance v0, Lcom/facebook/notifications/internal/view/ActionButton$a;

    const-string v1, "Primary"

    invoke-direct {v0, v1, v2}, Lcom/facebook/notifications/internal/view/ActionButton$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/notifications/internal/view/ActionButton$a;->a:Lcom/facebook/notifications/internal/view/ActionButton$a;

    .line 46
    new-instance v0, Lcom/facebook/notifications/internal/view/ActionButton$a;

    const-string v1, "Secondary"

    invoke-direct {v0, v1, v3}, Lcom/facebook/notifications/internal/view/ActionButton$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/notifications/internal/view/ActionButton$a;->b:Lcom/facebook/notifications/internal/view/ActionButton$a;

    .line 47
    new-instance v0, Lcom/facebook/notifications/internal/view/ActionButton$a;

    const-string v1, "Dismiss"

    invoke-direct {v0, v1, v4}, Lcom/facebook/notifications/internal/view/ActionButton$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/notifications/internal/view/ActionButton$a;->c:Lcom/facebook/notifications/internal/view/ActionButton$a;

    .line 44
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/facebook/notifications/internal/view/ActionButton$a;

    sget-object v1, Lcom/facebook/notifications/internal/view/ActionButton$a;->a:Lcom/facebook/notifications/internal/view/ActionButton$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/notifications/internal/view/ActionButton$a;->b:Lcom/facebook/notifications/internal/view/ActionButton$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/notifications/internal/view/ActionButton$a;->c:Lcom/facebook/notifications/internal/view/ActionButton$a;

    aput-object v1, v0, v4

    sput-object v0, Lcom/facebook/notifications/internal/view/ActionButton$a;->d:[Lcom/facebook/notifications/internal/view/ActionButton$a;

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
    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/notifications/internal/view/ActionButton$a;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 44
    const-class v0, Lcom/facebook/notifications/internal/view/ActionButton$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/notifications/internal/view/ActionButton$a;

    return-object v0
.end method

.method public static values()[Lcom/facebook/notifications/internal/view/ActionButton$a;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/facebook/notifications/internal/view/ActionButton$a;->d:[Lcom/facebook/notifications/internal/view/ActionButton$a;

    invoke-virtual {v0}, [Lcom/facebook/notifications/internal/view/ActionButton$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/notifications/internal/view/ActionButton$a;

    return-object v0
.end method
