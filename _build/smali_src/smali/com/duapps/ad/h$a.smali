.class public final enum Lcom/duapps/ad/h$a;
.super Ljava/lang/Enum;
.source "InterstitialAd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duapps/ad/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/duapps/ad/h$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/duapps/ad/h$a;

.field public static final enum b:Lcom/duapps/ad/h$a;

.field private static final synthetic c:[Lcom/duapps/ad/h$a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 50
    new-instance v0, Lcom/duapps/ad/h$a;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v2}, Lcom/duapps/ad/h$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/duapps/ad/h$a;->a:Lcom/duapps/ad/h$a;

    .line 51
    new-instance v0, Lcom/duapps/ad/h$a;

    const-string v1, "SCREEN"

    invoke-direct {v0, v1, v3}, Lcom/duapps/ad/h$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/duapps/ad/h$a;->b:Lcom/duapps/ad/h$a;

    .line 49
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/duapps/ad/h$a;

    sget-object v1, Lcom/duapps/ad/h$a;->a:Lcom/duapps/ad/h$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/duapps/ad/h$a;->b:Lcom/duapps/ad/h$a;

    aput-object v1, v0, v3

    sput-object v0, Lcom/duapps/ad/h$a;->c:[Lcom/duapps/ad/h$a;

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
    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/duapps/ad/h$a;
    .locals 1

    .prologue
    .line 49
    const-class v0, Lcom/duapps/ad/h$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/duapps/ad/h$a;

    return-object v0
.end method

.method public static values()[Lcom/duapps/ad/h$a;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/duapps/ad/h$a;->c:[Lcom/duapps/ad/h$a;

    invoke-virtual {v0}, [Lcom/duapps/ad/h$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/duapps/ad/h$a;

    return-object v0
.end method
