.class Lcom/cmplay/tile2/ui/AppActivity$3;
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
.field final synthetic a:Lcom/cmplay/tile2/ui/AppActivity;


# direct methods
.method constructor <init>(Lcom/cmplay/tile2/ui/AppActivity;)V
    .locals 0

    .prologue
    .line 887
    iput-object p1, p0, Lcom/cmplay/tile2/ui/AppActivity$3;->a:Lcom/cmplay/tile2/ui/AppActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 891
    const-string v0, "key_week_race_id_just_end"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/cmplay/util/aa;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 892
    invoke-static {v0}, Lcom/cmplay/util/NativeUtil;->openGetWeekRaceDiamondPage(Ljava/lang/String;)V

    .line 894
    invoke-static {}, Lcom/cmplay/h/f;->b()Lcom/cmplay/h/f;

    move-result-object v0

    const/16 v1, 0x25d

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/cmplay/h/f;->b(IIII)V

    .line 898
    return-void
.end method
