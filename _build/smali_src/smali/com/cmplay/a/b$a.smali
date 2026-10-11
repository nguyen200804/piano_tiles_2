.class Lcom/cmplay/a/b$a;
.super Ljava/lang/Object;
.source "GPLogin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmplay/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static a:Lcom/cmplay/a/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lcom/cmplay/a/b;

    invoke-direct {v0}, Lcom/cmplay/a/b;-><init>()V

    sput-object v0, Lcom/cmplay/a/b$a;->a:Lcom/cmplay/a/b;

    return-void
.end method

.method static synthetic a()Lcom/cmplay/a/b;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/cmplay/a/b$a;->a:Lcom/cmplay/a/b;

    return-object v0
.end method
