.class public Lcom/mnt/MntConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static DEBUG:Z = false

.field public static final IS_LOG:Z = false

.field public static final IS_SUPPORT_PRO:Z = true

.field public static final SDK_NAME:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mnt/MntConfig;->DEBUG:Z

    .line 10
    sget-object v0, Lcom/mnt/impl/e;->qf:Ljava/lang/String;

    sput-object v0, Lcom/mnt/MntConfig;->SDK_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
