.class Lcom/cmplay/tile2/ui/AppActivity$2;
.super Ljava/lang/Object;
.source "AppActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/tile2/ui/AppActivity;->a(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/cmplay/tile2/ui/AppActivity;


# direct methods
.method constructor <init>(Lcom/cmplay/tile2/ui/AppActivity;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 876
    iput-object p1, p0, Lcom/cmplay/tile2/ui/AppActivity$2;->c:Lcom/cmplay/tile2/ui/AppActivity;

    iput p2, p0, Lcom/cmplay/tile2/ui/AppActivity$2;->a:I

    iput-object p3, p0, Lcom/cmplay/tile2/ui/AppActivity$2;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 879
    iget v0, p0, Lcom/cmplay/tile2/ui/AppActivity$2;->a:I

    iget-object v1, p0, Lcom/cmplay/tile2/ui/AppActivity$2;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/cmplay/util/NativeUtil;->doNotificationAction(ILjava/lang/String;)V

    .line 880
    return-void
.end method
