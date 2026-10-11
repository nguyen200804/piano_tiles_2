.class Lcom/cmplay/internalpush/n$a;
.super Ljava/lang/Object;
.source "OpenScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmplay/internalpush/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static a:Lcom/cmplay/internalpush/n;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Lcom/cmplay/internalpush/n;

    invoke-direct {v0}, Lcom/cmplay/internalpush/n;-><init>()V

    sput-object v0, Lcom/cmplay/internalpush/n$a;->a:Lcom/cmplay/internalpush/n;

    return-void
.end method

.method static synthetic a()Lcom/cmplay/internalpush/n;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/cmplay/internalpush/n$a;->a:Lcom/cmplay/internalpush/n;

    return-object v0
.end method
