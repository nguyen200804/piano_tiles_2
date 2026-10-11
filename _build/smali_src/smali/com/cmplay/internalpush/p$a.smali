.class Lcom/cmplay/internalpush/p$a;
.super Ljava/lang/Object;
.source "ResultPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmplay/internalpush/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static a:Lcom/cmplay/internalpush/p;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lcom/cmplay/internalpush/p;

    invoke-direct {v0}, Lcom/cmplay/internalpush/p;-><init>()V

    sput-object v0, Lcom/cmplay/internalpush/p$a;->a:Lcom/cmplay/internalpush/p;

    return-void
.end method

.method static synthetic a()Lcom/cmplay/internalpush/p;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/cmplay/internalpush/p$a;->a:Lcom/cmplay/internalpush/p;

    return-object v0
.end method
