.class Lcom/cmplay/internalpush/o$a;
.super Ljava/lang/Object;
.source "ReportInfocHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmplay/internalpush/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static a:Lcom/cmplay/internalpush/o;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lcom/cmplay/internalpush/o;

    invoke-direct {v0}, Lcom/cmplay/internalpush/o;-><init>()V

    sput-object v0, Lcom/cmplay/internalpush/o$a;->a:Lcom/cmplay/internalpush/o;

    return-void
.end method

.method static synthetic a()Lcom/cmplay/internalpush/o;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/cmplay/internalpush/o$a;->a:Lcom/cmplay/internalpush/o;

    return-object v0
.end method
