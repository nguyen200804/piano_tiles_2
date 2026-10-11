.class Lcom/cmplay/internalpush/d$a;
.super Ljava/lang/Object;
.source "CMPPromotionVideoCallBack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmplay/internalpush/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static a:Lcom/cmplay/internalpush/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Lcom/cmplay/internalpush/d;

    invoke-direct {v0}, Lcom/cmplay/internalpush/d;-><init>()V

    sput-object v0, Lcom/cmplay/internalpush/d$a;->a:Lcom/cmplay/internalpush/d;

    return-void
.end method

.method static synthetic a()Lcom/cmplay/internalpush/d;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/cmplay/internalpush/d$a;->a:Lcom/cmplay/internalpush/d;

    return-object v0
.end method
