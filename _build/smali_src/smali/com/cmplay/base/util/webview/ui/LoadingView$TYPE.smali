.class public final enum Lcom/cmplay/base/util/webview/ui/LoadingView$TYPE;
.super Ljava/lang/Enum;
.source "LoadingView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmplay/base/util/webview/ui/LoadingView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/cmplay/base/util/webview/ui/LoadingView$TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cmplay/base/util/webview/ui/LoadingView$TYPE;

.field public static final enum BIG:Lcom/cmplay/base/util/webview/ui/LoadingView$TYPE;

.field public static final enum RADAR:Lcom/cmplay/base/util/webview/ui/LoadingView$TYPE;

.field public static final enum SMALL:Lcom/cmplay/base/util/webview/ui/LoadingView$TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 26
    new-instance v0, Lcom/cmplay/base/util/webview/ui/LoadingView$TYPE;

    const-string v1, "BIG"

    invoke-direct {v0, v1, v2}, Lcom/cmplay/base/util/webview/ui/LoadingView$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cmplay/base/util/webview/ui/LoadingView$TYPE;->BIG:Lcom/cmplay/base/util/webview/ui/LoadingView$TYPE;

    new-instance v0, Lcom/cmplay/base/util/webview/ui/LoadingView$TYPE;

    const-string v1, "SMALL"

    invoke-direct {v0, v1, v3}, Lcom/cmplay/base/util/webview/ui/LoadingView$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cmplay/base/util/webview/ui/LoadingView$TYPE;->SMALL:Lcom/cmplay/base/util/webview/ui/LoadingView$TYPE;

    new-instance v0, Lcom/cmplay/base/util/webview/ui/LoadingView$TYPE;

    const-string v1, "RADAR"

    invoke-direct {v0, v1, v4}, Lcom/cmplay/base/util/webview/ui/LoadingView$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cmplay/base/util/webview/ui/LoadingView$TYPE;->RADAR:Lcom/cmplay/base/util/webview/ui/LoadingView$TYPE;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/cmplay/base/util/webview/ui/LoadingView$TYPE;

    sget-object v1, Lcom/cmplay/base/util/webview/ui/LoadingView$TYPE;->BIG:Lcom/cmplay/base/util/webview/ui/LoadingView$TYPE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/cmplay/base/util/webview/ui/LoadingView$TYPE;->SMALL:Lcom/cmplay/base/util/webview/ui/LoadingView$TYPE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/cmplay/base/util/webview/ui/LoadingView$TYPE;->RADAR:Lcom/cmplay/base/util/webview/ui/LoadingView$TYPE;

    aput-object v1, v0, v4

    sput-object v0, Lcom/cmplay/base/util/webview/ui/LoadingView$TYPE;->$VALUES:[Lcom/cmplay/base/util/webview/ui/LoadingView$TYPE;

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

.method public static valueOf(Ljava/lang/String;)Lcom/cmplay/base/util/webview/ui/LoadingView$TYPE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 26
    const-class v0, Lcom/cmplay/base/util/webview/ui/LoadingView$TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/cmplay/base/util/webview/ui/LoadingView$TYPE;

    return-object v0
.end method

.method public static values()[Lcom/cmplay/base/util/webview/ui/LoadingView$TYPE;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/cmplay/base/util/webview/ui/LoadingView$TYPE;->$VALUES:[Lcom/cmplay/base/util/webview/ui/LoadingView$TYPE;

    invoke-virtual {v0}, [Lcom/cmplay/base/util/webview/ui/LoadingView$TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cmplay/base/util/webview/ui/LoadingView$TYPE;

    return-object v0
.end method
