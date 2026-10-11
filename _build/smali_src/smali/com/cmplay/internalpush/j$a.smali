.class Lcom/cmplay/internalpush/j$a;
.super Ljava/lang/Object;
.source "InsertScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmplay/internalpush/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static a:Lcom/cmplay/internalpush/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lcom/cmplay/internalpush/j;

    invoke-direct {v0}, Lcom/cmplay/internalpush/j;-><init>()V

    sput-object v0, Lcom/cmplay/internalpush/j$a;->a:Lcom/cmplay/internalpush/j;

    return-void
.end method

.method static synthetic a()Lcom/cmplay/internalpush/j;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/cmplay/internalpush/j$a;->a:Lcom/cmplay/internalpush/j;

    return-object v0
.end method
