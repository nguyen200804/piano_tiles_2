.class public final enum Lcom/duapps/ad/inmobi/IMData$a;
.super Ljava/lang/Enum;
.source "IMData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duapps/ad/inmobi/IMData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/duapps/ad/inmobi/IMData$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/duapps/ad/inmobi/IMData$a;

.field public static final enum b:Lcom/duapps/ad/inmobi/IMData$a;

.field public static final enum c:Lcom/duapps/ad/inmobi/IMData$a;

.field private static final synthetic e:[Lcom/duapps/ad/inmobi/IMData$a;


# instance fields
.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 233
    new-instance v0, Lcom/duapps/ad/inmobi/IMData$a;

    const-string v1, "None"

    invoke-direct {v0, v1, v3, v3}, Lcom/duapps/ad/inmobi/IMData$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/duapps/ad/inmobi/IMData$a;->a:Lcom/duapps/ad/inmobi/IMData$a;

    .line 234
    new-instance v0, Lcom/duapps/ad/inmobi/IMData$a;

    const-string v1, "Impression"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v4, v2}, Lcom/duapps/ad/inmobi/IMData$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/duapps/ad/inmobi/IMData$a;->b:Lcom/duapps/ad/inmobi/IMData$a;

    .line 235
    new-instance v0, Lcom/duapps/ad/inmobi/IMData$a;

    const-string v1, "Click"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v5, v2}, Lcom/duapps/ad/inmobi/IMData$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/duapps/ad/inmobi/IMData$a;->c:Lcom/duapps/ad/inmobi/IMData$a;

    .line 232
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/duapps/ad/inmobi/IMData$a;

    sget-object v1, Lcom/duapps/ad/inmobi/IMData$a;->a:Lcom/duapps/ad/inmobi/IMData$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/duapps/ad/inmobi/IMData$a;->b:Lcom/duapps/ad/inmobi/IMData$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/duapps/ad/inmobi/IMData$a;->c:Lcom/duapps/ad/inmobi/IMData$a;

    aput-object v1, v0, v5

    sput-object v0, Lcom/duapps/ad/inmobi/IMData$a;->e:[Lcom/duapps/ad/inmobi/IMData$a;

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
    .line 238
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 239
    iput p3, p0, Lcom/duapps/ad/inmobi/IMData$a;->d:I

    .line 240
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/duapps/ad/inmobi/IMData$a;
    .locals 1

    .prologue
    .line 232
    const-class v0, Lcom/duapps/ad/inmobi/IMData$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/duapps/ad/inmobi/IMData$a;

    return-object v0
.end method

.method public static values()[Lcom/duapps/ad/inmobi/IMData$a;
    .locals 1

    .prologue
    .line 232
    sget-object v0, Lcom/duapps/ad/inmobi/IMData$a;->e:[Lcom/duapps/ad/inmobi/IMData$a;

    invoke-virtual {v0}, [Lcom/duapps/ad/inmobi/IMData$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/duapps/ad/inmobi/IMData$a;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 243
    iget v0, p0, Lcom/duapps/ad/inmobi/IMData$a;->d:I

    return v0
.end method
