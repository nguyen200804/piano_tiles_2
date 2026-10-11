.class public final enum Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$c;
.super Ljava/lang/Enum;
.source "ShimmerLJYFrameLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$c;

.field public static final enum b:Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$c;

.field private static final synthetic c:[Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$c;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 41
    new-instance v0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$c;

    const-string v1, "LINEAR"

    invoke-direct {v0, v1, v2}, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$c;->a:Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$c;

    .line 42
    new-instance v0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$c;

    const-string v1, "RADIAL"

    invoke-direct {v0, v1, v3}, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$c;->b:Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$c;

    .line 40
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$c;

    sget-object v1, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$c;->a:Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$c;

    aput-object v1, v0, v2

    sget-object v1, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$c;->b:Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$c;

    aput-object v1, v0, v3

    sput-object v0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$c;->c:[Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$c;

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

.method public static valueOf(Ljava/lang/String;)Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$c;
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$c;

    return-object v0
.end method

.method public static values()[Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$c;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$c;->c:[Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$c;

    invoke-virtual {v0}, [Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$c;

    return-object v0
.end method
