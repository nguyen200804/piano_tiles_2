.class final enum Lcom/facebook/appevents/a$d;
.super Ljava/lang/Enum;
.source "AppEventsLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/appevents/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/appevents/a$d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/facebook/appevents/a$d;

.field public static final enum b:Lcom/facebook/appevents/a$d;

.field public static final enum c:Lcom/facebook/appevents/a$d;

.field public static final enum d:Lcom/facebook/appevents/a$d;

.field public static final enum e:Lcom/facebook/appevents/a$d;

.field public static final enum f:Lcom/facebook/appevents/a$d;

.field private static final synthetic g:[Lcom/facebook/appevents/a$d;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 749
    new-instance v0, Lcom/facebook/appevents/a$d;

    const-string v1, "EXPLICIT"

    invoke-direct {v0, v1, v3}, Lcom/facebook/appevents/a$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/appevents/a$d;->a:Lcom/facebook/appevents/a$d;

    .line 750
    new-instance v0, Lcom/facebook/appevents/a$d;

    const-string v1, "TIMER"

    invoke-direct {v0, v1, v4}, Lcom/facebook/appevents/a$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/appevents/a$d;->b:Lcom/facebook/appevents/a$d;

    .line 751
    new-instance v0, Lcom/facebook/appevents/a$d;

    const-string v1, "SESSION_CHANGE"

    invoke-direct {v0, v1, v5}, Lcom/facebook/appevents/a$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/appevents/a$d;->c:Lcom/facebook/appevents/a$d;

    .line 752
    new-instance v0, Lcom/facebook/appevents/a$d;

    const-string v1, "PERSISTED_EVENTS"

    invoke-direct {v0, v1, v6}, Lcom/facebook/appevents/a$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/appevents/a$d;->d:Lcom/facebook/appevents/a$d;

    .line 753
    new-instance v0, Lcom/facebook/appevents/a$d;

    const-string v1, "EVENT_THRESHOLD"

    invoke-direct {v0, v1, v7}, Lcom/facebook/appevents/a$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/appevents/a$d;->e:Lcom/facebook/appevents/a$d;

    .line 754
    new-instance v0, Lcom/facebook/appevents/a$d;

    const-string v1, "EAGER_FLUSHING_EVENT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/facebook/appevents/a$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/appevents/a$d;->f:Lcom/facebook/appevents/a$d;

    .line 747
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/facebook/appevents/a$d;

    sget-object v1, Lcom/facebook/appevents/a$d;->a:Lcom/facebook/appevents/a$d;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/appevents/a$d;->b:Lcom/facebook/appevents/a$d;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/appevents/a$d;->c:Lcom/facebook/appevents/a$d;

    aput-object v1, v0, v5

    sget-object v1, Lcom/facebook/appevents/a$d;->d:Lcom/facebook/appevents/a$d;

    aput-object v1, v0, v6

    sget-object v1, Lcom/facebook/appevents/a$d;->e:Lcom/facebook/appevents/a$d;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/facebook/appevents/a$d;->f:Lcom/facebook/appevents/a$d;

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/appevents/a$d;->g:[Lcom/facebook/appevents/a$d;

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
    .line 748
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/appevents/a$d;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 747
    const-class v0, Lcom/facebook/appevents/a$d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/appevents/a$d;

    return-object v0
.end method

.method public static values()[Lcom/facebook/appevents/a$d;
    .locals 1

    .prologue
    .line 747
    sget-object v0, Lcom/facebook/appevents/a$d;->g:[Lcom/facebook/appevents/a$d;

    invoke-virtual {v0}, [Lcom/facebook/appevents/a$d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/appevents/a$d;

    return-object v0
.end method
