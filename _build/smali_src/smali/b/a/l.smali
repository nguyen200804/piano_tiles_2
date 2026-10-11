.class public final enum Lb/a/l;
.super Ljava/lang/Enum;
.source "AccessType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lb/a/l;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lb/a/l;

.field public static final enum b:Lb/a/l;

.field public static final enum c:Lb/a/l;

.field public static final enum d:Lb/a/l;

.field private static final synthetic f:[Lb/a/l;


# instance fields
.field private final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 16
    new-instance v0, Lb/a/l;

    const-string v1, "ACCESS_TYPE_UNKNOWN"

    invoke-direct {v0, v1, v2, v2}, Lb/a/l;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lb/a/l;->a:Lb/a/l;

    .line 17
    new-instance v0, Lb/a/l;

    const-string v1, "ACCESS_TYPE_2G_3G"

    invoke-direct {v0, v1, v3, v3}, Lb/a/l;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lb/a/l;->b:Lb/a/l;

    .line 18
    new-instance v0, Lb/a/l;

    const-string v1, "ACCESS_TYPE_WIFI"

    invoke-direct {v0, v1, v4, v4}, Lb/a/l;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lb/a/l;->c:Lb/a/l;

    .line 19
    new-instance v0, Lb/a/l;

    const-string v1, "ACCESS_TYPE_ETHERNET"

    invoke-direct {v0, v1, v5, v5}, Lb/a/l;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lb/a/l;->d:Lb/a/l;

    .line 15
    const/4 v0, 0x4

    new-array v0, v0, [Lb/a/l;

    sget-object v1, Lb/a/l;->a:Lb/a/l;

    aput-object v1, v0, v2

    sget-object v1, Lb/a/l;->b:Lb/a/l;

    aput-object v1, v0, v3

    sget-object v1, Lb/a/l;->c:Lb/a/l;

    aput-object v1, v0, v4

    sget-object v1, Lb/a/l;->d:Lb/a/l;

    aput-object v1, v0, v5

    sput-object v0, Lb/a/l;->f:[Lb/a/l;

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
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 24
    iput p3, p0, Lb/a/l;->e:I

    .line 25
    return-void
.end method

.method public static a(I)Lb/a/l;
    .locals 1

    .prologue
    .line 39
    packed-switch p0, :pswitch_data_0

    .line 49
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 41
    :pswitch_0
    sget-object v0, Lb/a/l;->a:Lb/a/l;

    goto :goto_0

    .line 43
    :pswitch_1
    sget-object v0, Lb/a/l;->b:Lb/a/l;

    goto :goto_0

    .line 45
    :pswitch_2
    sget-object v0, Lb/a/l;->c:Lb/a/l;

    goto :goto_0

    .line 47
    :pswitch_3
    sget-object v0, Lb/a/l;->d:Lb/a/l;

    goto :goto_0

    .line 39
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lb/a/l;
    .locals 1

    .prologue
    .line 15
    const-class v0, Lb/a/l;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lb/a/l;

    return-object v0
.end method

.method public static values()[Lb/a/l;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lb/a/l;->f:[Lb/a/l;

    invoke-virtual {v0}, [Lb/a/l;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lb/a/l;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lb/a/l;->e:I

    return v0
.end method
