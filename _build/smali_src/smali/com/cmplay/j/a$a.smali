.class public final enum Lcom/cmplay/j/a$a;
.super Ljava/lang/Enum;
.source "EditTextDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmplay/j/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/cmplay/j/a$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/cmplay/j/a$a;

.field public static final enum b:Lcom/cmplay/j/a$a;

.field public static final enum c:Lcom/cmplay/j/a$a;

.field private static final synthetic e:[Lcom/cmplay/j/a$a;


# instance fields
.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 34
    new-instance v0, Lcom/cmplay/j/a$a;

    const-string v1, "NUMBER"

    invoke-direct {v0, v1, v4, v2}, Lcom/cmplay/j/a$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cmplay/j/a$a;->a:Lcom/cmplay/j/a$a;

    .line 35
    new-instance v0, Lcom/cmplay/j/a$a;

    const-string v1, "ALPHABET_NUMBER"

    invoke-direct {v0, v1, v2, v3}, Lcom/cmplay/j/a$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cmplay/j/a$a;->b:Lcom/cmplay/j/a$a;

    .line 36
    new-instance v0, Lcom/cmplay/j/a$a;

    const-string v1, "NO_LIMIT"

    invoke-direct {v0, v1, v3, v5}, Lcom/cmplay/j/a$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cmplay/j/a$a;->c:Lcom/cmplay/j/a$a;

    .line 33
    new-array v0, v5, [Lcom/cmplay/j/a$a;

    sget-object v1, Lcom/cmplay/j/a$a;->a:Lcom/cmplay/j/a$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/cmplay/j/a$a;->b:Lcom/cmplay/j/a$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/cmplay/j/a$a;->c:Lcom/cmplay/j/a$a;

    aput-object v1, v0, v3

    sput-object v0, Lcom/cmplay/j/a$a;->e:[Lcom/cmplay/j/a$a;

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
    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 41
    iput p3, p0, Lcom/cmplay/j/a$a;->d:I

    .line 42
    return-void
.end method

.method public static a(I)Lcom/cmplay/j/a$a;
    .locals 2

    .prologue
    .line 45
    packed-switch p0, :pswitch_data_0

    .line 53
    new-instance v0, Landroid/icu/impl/IllegalIcuArgumentException;

    const-string v1, ""

    invoke-direct {v0, v1}, Landroid/icu/impl/IllegalIcuArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :pswitch_0
    sget-object v0, Lcom/cmplay/j/a$a;->a:Lcom/cmplay/j/a$a;

    .line 51
    :goto_0
    return-object v0

    .line 49
    :pswitch_1
    sget-object v0, Lcom/cmplay/j/a$a;->b:Lcom/cmplay/j/a$a;

    goto :goto_0

    .line 51
    :pswitch_2
    sget-object v0, Lcom/cmplay/j/a$a;->c:Lcom/cmplay/j/a$a;

    goto :goto_0

    .line 45
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cmplay/j/a$a;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 33
    const-class v0, Lcom/cmplay/j/a$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/cmplay/j/a$a;

    return-object v0
.end method

.method public static values()[Lcom/cmplay/j/a$a;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/cmplay/j/a$a;->e:[Lcom/cmplay/j/a$a;

    invoke-virtual {v0}, [Lcom/cmplay/j/a$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cmplay/j/a$a;

    return-object v0
.end method
