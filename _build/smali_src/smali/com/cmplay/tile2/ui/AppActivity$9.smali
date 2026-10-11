.class Lcom/cmplay/tile2/ui/AppActivity$9;
.super Ljava/lang/Object;
.source "AppActivity.java"

# interfaces
.implements Lcom/cmplay/util/ConnectionChangedReceiver$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmplay/tile2/ui/AppActivity;
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
    .line 154
    iput-object p1, p0, Lcom/cmplay/tile2/ui/AppActivity$9;->a:Lcom/cmplay/tile2/ui/AppActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .prologue
    .line 158
    invoke-static {p1}, Lcom/cmplay/util/NativeUtil;->notifyNetWorkChange(I)V

    .line 159
    return-void
.end method
