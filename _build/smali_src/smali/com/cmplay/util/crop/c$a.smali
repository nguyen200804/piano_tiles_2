.class final enum Lcom/cmplay/util/crop/c$a;
.super Ljava/lang/Enum;
.source "HighlightView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmplay/util/crop/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/cmplay/util/crop/c$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/cmplay/util/crop/c$a;

.field public static final enum b:Lcom/cmplay/util/crop/c$a;

.field public static final enum c:Lcom/cmplay/util/crop/c$a;

.field private static final synthetic d:[Lcom/cmplay/util/crop/c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 58
    new-instance v0, Lcom/cmplay/util/crop/c$a;

    const-string v1, "Changing"

    invoke-direct {v0, v1, v2}, Lcom/cmplay/util/crop/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cmplay/util/crop/c$a;->a:Lcom/cmplay/util/crop/c$a;

    new-instance v0, Lcom/cmplay/util/crop/c$a;

    const-string v1, "Always"

    invoke-direct {v0, v1, v3}, Lcom/cmplay/util/crop/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cmplay/util/crop/c$a;->b:Lcom/cmplay/util/crop/c$a;

    new-instance v0, Lcom/cmplay/util/crop/c$a;

    const-string v1, "Never"

    invoke-direct {v0, v1, v4}, Lcom/cmplay/util/crop/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cmplay/util/crop/c$a;->c:Lcom/cmplay/util/crop/c$a;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/cmplay/util/crop/c$a;

    sget-object v1, Lcom/cmplay/util/crop/c$a;->a:Lcom/cmplay/util/crop/c$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/cmplay/util/crop/c$a;->b:Lcom/cmplay/util/crop/c$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/cmplay/util/crop/c$a;->c:Lcom/cmplay/util/crop/c$a;

    aput-object v1, v0, v4

    sput-object v0, Lcom/cmplay/util/crop/c$a;->d:[Lcom/cmplay/util/crop/c$a;

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
    .line 58
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cmplay/util/crop/c$a;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 58
    const-class v0, Lcom/cmplay/util/crop/c$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/cmplay/util/crop/c$a;

    return-object v0
.end method

.method public static values()[Lcom/cmplay/util/crop/c$a;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/cmplay/util/crop/c$a;->d:[Lcom/cmplay/util/crop/c$a;

    invoke-virtual {v0}, [Lcom/cmplay/util/crop/c$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cmplay/util/crop/c$a;

    return-object v0
.end method
