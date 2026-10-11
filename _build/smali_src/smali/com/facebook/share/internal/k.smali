.class public final enum Lcom/facebook/share/internal/k;
.super Ljava/lang/Enum;
.source "ShareDialogFeature.java"

# interfaces
.implements Lcom/facebook/internal/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/share/internal/k;",
        ">;",
        "Lcom/facebook/internal/f;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/facebook/share/internal/k;

.field public static final enum b:Lcom/facebook/share/internal/k;

.field public static final enum c:Lcom/facebook/share/internal/k;

.field private static final synthetic e:[Lcom/facebook/share/internal/k;


# instance fields
.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 36
    new-instance v0, Lcom/facebook/share/internal/k;

    const-string v1, "SHARE_DIALOG"

    const v2, 0x1332b3a

    invoke-direct {v0, v1, v3, v2}, Lcom/facebook/share/internal/k;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/share/internal/k;->a:Lcom/facebook/share/internal/k;

    .line 40
    new-instance v0, Lcom/facebook/share/internal/k;

    const-string v1, "PHOTOS"

    const v2, 0x13350ac

    invoke-direct {v0, v1, v4, v2}, Lcom/facebook/share/internal/k;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/share/internal/k;->b:Lcom/facebook/share/internal/k;

    .line 44
    new-instance v0, Lcom/facebook/share/internal/k;

    const-string v1, "VIDEO"

    const v2, 0x13353e4

    invoke-direct {v0, v1, v5, v2}, Lcom/facebook/share/internal/k;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/share/internal/k;->c:Lcom/facebook/share/internal/k;

    .line 31
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/facebook/share/internal/k;

    sget-object v1, Lcom/facebook/share/internal/k;->a:Lcom/facebook/share/internal/k;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/share/internal/k;->b:Lcom/facebook/share/internal/k;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/share/internal/k;->c:Lcom/facebook/share/internal/k;

    aput-object v1, v0, v5

    sput-object v0, Lcom/facebook/share/internal/k;->e:[Lcom/facebook/share/internal/k;

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
    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 50
    iput p3, p0, Lcom/facebook/share/internal/k;->d:I

    .line 51
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/share/internal/k;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 31
    const-class v0, Lcom/facebook/share/internal/k;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/share/internal/k;

    return-object v0
.end method

.method public static values()[Lcom/facebook/share/internal/k;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/facebook/share/internal/k;->e:[Lcom/facebook/share/internal/k;

    invoke-virtual {v0}, [Lcom/facebook/share/internal/k;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/share/internal/k;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    const-string v0, "com.facebook.platform.action.request.FEED_DIALOG"

    return-object v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/facebook/share/internal/k;->d:I

    return v0
.end method
