.class final enum Lcom/facebook/appevents/a$e;
.super Ljava/lang/Enum;
.source "AppEventsLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/appevents/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/appevents/a$e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/facebook/appevents/a$e;

.field public static final enum b:Lcom/facebook/appevents/a$e;

.field public static final enum c:Lcom/facebook/appevents/a$e;

.field public static final enum d:Lcom/facebook/appevents/a$e;

.field private static final synthetic e:[Lcom/facebook/appevents/a$e;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 759
    new-instance v0, Lcom/facebook/appevents/a$e;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v2}, Lcom/facebook/appevents/a$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/appevents/a$e;->a:Lcom/facebook/appevents/a$e;

    .line 760
    new-instance v0, Lcom/facebook/appevents/a$e;

    const-string v1, "SERVER_ERROR"

    invoke-direct {v0, v1, v3}, Lcom/facebook/appevents/a$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/appevents/a$e;->b:Lcom/facebook/appevents/a$e;

    .line 761
    new-instance v0, Lcom/facebook/appevents/a$e;

    const-string v1, "NO_CONNECTIVITY"

    invoke-direct {v0, v1, v4}, Lcom/facebook/appevents/a$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/appevents/a$e;->c:Lcom/facebook/appevents/a$e;

    .line 762
    new-instance v0, Lcom/facebook/appevents/a$e;

    const-string v1, "UNKNOWN_ERROR"

    invoke-direct {v0, v1, v5}, Lcom/facebook/appevents/a$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/appevents/a$e;->d:Lcom/facebook/appevents/a$e;

    .line 757
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/facebook/appevents/a$e;

    sget-object v1, Lcom/facebook/appevents/a$e;->a:Lcom/facebook/appevents/a$e;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/appevents/a$e;->b:Lcom/facebook/appevents/a$e;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/appevents/a$e;->c:Lcom/facebook/appevents/a$e;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/appevents/a$e;->d:Lcom/facebook/appevents/a$e;

    aput-object v1, v0, v5

    sput-object v0, Lcom/facebook/appevents/a$e;->e:[Lcom/facebook/appevents/a$e;

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
    .line 758
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/appevents/a$e;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 757
    const-class v0, Lcom/facebook/appevents/a$e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/appevents/a$e;

    return-object v0
.end method

.method public static values()[Lcom/facebook/appevents/a$e;
    .locals 1

    .prologue
    .line 757
    sget-object v0, Lcom/facebook/appevents/a$e;->e:[Lcom/facebook/appevents/a$e;

    invoke-virtual {v0}, [Lcom/facebook/appevents/a$e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/appevents/a$e;

    return-object v0
.end method
