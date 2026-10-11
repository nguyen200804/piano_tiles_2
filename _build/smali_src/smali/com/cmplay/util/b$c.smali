.class public final enum Lcom/cmplay/util/b$c;
.super Ljava/lang/Enum;
.source "AsyncTaskEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmplay/util/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/cmplay/util/b$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/cmplay/util/b$c;

.field public static final enum b:Lcom/cmplay/util/b$c;

.field public static final enum c:Lcom/cmplay/util/b$c;

.field private static final synthetic d:[Lcom/cmplay/util/b$c;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 231
    new-instance v0, Lcom/cmplay/util/b$c;

    const-string v1, "PENDING"

    invoke-direct {v0, v1, v2}, Lcom/cmplay/util/b$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cmplay/util/b$c;->a:Lcom/cmplay/util/b$c;

    .line 235
    new-instance v0, Lcom/cmplay/util/b$c;

    const-string v1, "RUNNING"

    invoke-direct {v0, v1, v3}, Lcom/cmplay/util/b$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cmplay/util/b$c;->b:Lcom/cmplay/util/b$c;

    .line 239
    new-instance v0, Lcom/cmplay/util/b$c;

    const-string v1, "FINISHED"

    invoke-direct {v0, v1, v4}, Lcom/cmplay/util/b$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cmplay/util/b$c;->c:Lcom/cmplay/util/b$c;

    .line 227
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/cmplay/util/b$c;

    sget-object v1, Lcom/cmplay/util/b$c;->a:Lcom/cmplay/util/b$c;

    aput-object v1, v0, v2

    sget-object v1, Lcom/cmplay/util/b$c;->b:Lcom/cmplay/util/b$c;

    aput-object v1, v0, v3

    sget-object v1, Lcom/cmplay/util/b$c;->c:Lcom/cmplay/util/b$c;

    aput-object v1, v0, v4

    sput-object v0, Lcom/cmplay/util/b$c;->d:[Lcom/cmplay/util/b$c;

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
    .line 227
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cmplay/util/b$c;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 227
    const-class v0, Lcom/cmplay/util/b$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/cmplay/util/b$c;

    return-object v0
.end method

.method public static values()[Lcom/cmplay/util/b$c;
    .locals 1

    .prologue
    .line 227
    sget-object v0, Lcom/cmplay/util/b$c;->d:[Lcom/cmplay/util/b$c;

    invoke-virtual {v0}, [Lcom/cmplay/util/b$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cmplay/util/b$c;

    return-object v0
.end method
