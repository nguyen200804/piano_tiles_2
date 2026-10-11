.class Lcom/cmplay/internalpush/g$a;
.super Ljava/lang/Object;
.source "Family.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmplay/internalpush/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static a:Lcom/cmplay/internalpush/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lcom/cmplay/internalpush/g;

    invoke-direct {v0}, Lcom/cmplay/internalpush/g;-><init>()V

    sput-object v0, Lcom/cmplay/internalpush/g$a;->a:Lcom/cmplay/internalpush/g;

    return-void
.end method

.method static synthetic a()Lcom/cmplay/internalpush/g;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/cmplay/internalpush/g$a;->a:Lcom/cmplay/internalpush/g;

    return-object v0
.end method
