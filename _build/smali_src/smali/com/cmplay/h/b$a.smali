.class Lcom/cmplay/h/b$a;
.super Ljava/lang/Object;
.source "FBInfocClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmplay/h/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static a:Lcom/cmplay/h/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    new-instance v0, Lcom/cmplay/h/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/cmplay/h/b;-><init>(Lcom/cmplay/h/b$1;)V

    sput-object v0, Lcom/cmplay/h/b$a;->a:Lcom/cmplay/h/b;

    return-void
.end method

.method static synthetic a()Lcom/cmplay/h/b;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/cmplay/h/b$a;->a:Lcom/cmplay/h/b;

    return-object v0
.end method
