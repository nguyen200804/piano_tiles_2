.class Lcom/cmplay/tile2/ui/AppActivity$13;
.super Ljava/lang/Object;
.source "AppActivity.java"

# interfaces
.implements Lcom/cmplay/util/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/tile2/ui/AppActivity;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmplay/tile2/ui/AppActivity;


# direct methods
.method constructor <init>(Lcom/cmplay/tile2/ui/AppActivity;)V
    .locals 0

    .prologue
    .line 398
    iput-object p1, p0, Lcom/cmplay/tile2/ui/AppActivity$13;->a:Lcom/cmplay/tile2/ui/AppActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 401
    invoke-static {}, Lcom/cmplay/util/NativeUtil;->refreshSDKMessage()V

    .line 402
    return-void
.end method
