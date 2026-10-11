.class Lcom/cmplay/internalpush/s$a;
.super Ljava/lang/Object;
.source "Setting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmplay/internalpush/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static a:Lcom/cmplay/internalpush/s;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lcom/cmplay/internalpush/s;

    invoke-direct {v0}, Lcom/cmplay/internalpush/s;-><init>()V

    sput-object v0, Lcom/cmplay/internalpush/s$a;->a:Lcom/cmplay/internalpush/s;

    return-void
.end method

.method static synthetic a()Lcom/cmplay/internalpush/s;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/cmplay/internalpush/s$a;->a:Lcom/cmplay/internalpush/s;

    return-object v0
.end method
