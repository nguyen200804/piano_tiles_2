.class Lcom/cmplay/exitpopup/a$a;
.super Ljava/lang/Object;
.source "ExitGame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmplay/exitpopup/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static a:Lcom/cmplay/exitpopup/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lcom/cmplay/exitpopup/a;

    invoke-direct {v0}, Lcom/cmplay/exitpopup/a;-><init>()V

    sput-object v0, Lcom/cmplay/exitpopup/a$a;->a:Lcom/cmplay/exitpopup/a;

    return-void
.end method

.method static synthetic a()Lcom/cmplay/exitpopup/a;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/cmplay/exitpopup/a$a;->a:Lcom/cmplay/exitpopup/a;

    return-object v0
.end method
