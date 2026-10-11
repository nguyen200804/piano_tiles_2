.class public final Lcom/mnt/impl/b/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:[I

.field private static c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 11
    sget-object v0, Lcom/mnt/impl/e;->mg:Ljava/lang/String;

    sput-object v0, Lcom/mnt/impl/b/j;->c:Ljava/lang/String;

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/mnt/impl/b/j;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/mnt/impl/e;->mh:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mnt/impl/b/j;->a:Ljava/lang/String;

    .line 23
    const/16 v0, 0x18

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/mnt/impl/b/j;->b:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x35
        0x36
        0x53
        0x58
        0x36
        0x4f
        0x31
        0x58
        0x39
        0x38
        0x51
        0x56
        0x43
        0x54
        0x56
        0x34
        0x52
        0x48
        0x5a
        0x36
        0x35
        0x35
        0x49
        0x48
    .end array-data
.end method
