.class Lcom/cmplay/ad/c/a$a;
.super Ljava/lang/Object;
.source "InnerPushVideoAds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmplay/ad/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static a:Lcom/cmplay/ad/c/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lcom/cmplay/ad/c/a;

    invoke-direct {v0}, Lcom/cmplay/ad/c/a;-><init>()V

    sput-object v0, Lcom/cmplay/ad/c/a$a;->a:Lcom/cmplay/ad/c/a;

    return-void
.end method

.method static synthetic a()Lcom/cmplay/ad/c/a;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/cmplay/ad/c/a$a;->a:Lcom/cmplay/ad/c/a;

    return-object v0
.end method
