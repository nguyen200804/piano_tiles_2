.class public final enum Lcom/cmplay/util/ab$a;
.super Ljava/lang/Enum;
.source "SignUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmplay/util/ab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/cmplay/util/ab$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/cmplay/util/ab$a;

.field public static final enum b:Lcom/cmplay/util/ab$a;

.field public static final enum c:Lcom/cmplay/util/ab$a;

.field public static final enum d:Lcom/cmplay/util/ab$a;

.field private static final synthetic f:[Lcom/cmplay/util/ab$a;


# instance fields
.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 184
    new-instance v0, Lcom/cmplay/util/ab$a;

    const-string v1, "POST"

    const-string v2, "POST"

    invoke-direct {v0, v1, v3, v2}, Lcom/cmplay/util/ab$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/cmplay/util/ab$a;->a:Lcom/cmplay/util/ab$a;

    new-instance v0, Lcom/cmplay/util/ab$a;

    const-string v1, "DELETE"

    const-string v2, "DELETE"

    invoke-direct {v0, v1, v4, v2}, Lcom/cmplay/util/ab$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/cmplay/util/ab$a;->b:Lcom/cmplay/util/ab$a;

    new-instance v0, Lcom/cmplay/util/ab$a;

    const-string v1, "GET"

    const-string v2, "GET"

    invoke-direct {v0, v1, v5, v2}, Lcom/cmplay/util/ab$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/cmplay/util/ab$a;->c:Lcom/cmplay/util/ab$a;

    new-instance v0, Lcom/cmplay/util/ab$a;

    const-string v1, "PUT"

    const-string v2, "PUT"

    invoke-direct {v0, v1, v6, v2}, Lcom/cmplay/util/ab$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/cmplay/util/ab$a;->d:Lcom/cmplay/util/ab$a;

    .line 182
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/cmplay/util/ab$a;

    sget-object v1, Lcom/cmplay/util/ab$a;->a:Lcom/cmplay/util/ab$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/cmplay/util/ab$a;->b:Lcom/cmplay/util/ab$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/cmplay/util/ab$a;->c:Lcom/cmplay/util/ab$a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/cmplay/util/ab$a;->d:Lcom/cmplay/util/ab$a;

    aput-object v1, v0, v6

    sput-object v0, Lcom/cmplay/util/ab$a;->f:[Lcom/cmplay/util/ab$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 187
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 188
    iput-object p3, p0, Lcom/cmplay/util/ab$a;->e:Ljava/lang/String;

    .line 189
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cmplay/util/ab$a;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 182
    const-class v0, Lcom/cmplay/util/ab$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/cmplay/util/ab$a;

    return-object v0
.end method

.method public static values()[Lcom/cmplay/util/ab$a;
    .locals 1

    .prologue
    .line 182
    sget-object v0, Lcom/cmplay/util/ab$a;->f:[Lcom/cmplay/util/ab$a;

    invoke-virtual {v0}, [Lcom/cmplay/util/ab$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cmplay/util/ab$a;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/cmplay/util/ab$a;->e:Ljava/lang/String;

    return-object v0
.end method
