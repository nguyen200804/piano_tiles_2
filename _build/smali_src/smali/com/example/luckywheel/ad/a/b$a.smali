.class public Lcom/example/luckywheel/ad/a/b$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/luckywheel/ad/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field private static a:Lcom/example/luckywheel/ad/a/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/example/luckywheel/ad/a/b;

    invoke-direct {v0}, Lcom/example/luckywheel/ad/a/b;-><init>()V

    sput-object v0, Lcom/example/luckywheel/ad/a/b$a;->a:Lcom/example/luckywheel/ad/a/b;

    return-void
.end method

.method static synthetic a()Lcom/example/luckywheel/ad/a/b;
    .locals 1

    sget-object v0, Lcom/example/luckywheel/ad/a/b$a;->a:Lcom/example/luckywheel/ad/a/b;

    return-object v0
.end method
