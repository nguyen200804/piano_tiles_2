.class public Lcom/cmplay/internalpush/c;
.super Ljava/lang/Object;
.source "CMPPromotionCallBack.java"

# interfaces
.implements Lcom/cmplay/internalpush/h;
.implements Lcom/ijinshan/cloudconfig/a$a;


# instance fields
.field private a:Lcom/cmplay/internalpush/l;

.field private b:Lcom/cmplay/internalpush/l;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object v0, p0, Lcom/cmplay/internalpush/c;->a:Lcom/cmplay/internalpush/l;

    .line 21
    iput-object v0, p0, Lcom/cmplay/internalpush/c;->b:Lcom/cmplay/internalpush/l;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3

    .prologue
    .line 64
    const-string v0, "zzb"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CMPPromotionCallBack.onDataUpdate  sceneType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const/4 v0, 0x3

    if-ne v0, p1, :cond_1

    .line 66
    iget-object v0, p0, Lcom/cmplay/internalpush/c;->a:Lcom/cmplay/internalpush/l;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/cmplay/internalpush/c;->a:Lcom/cmplay/internalpush/l;

    invoke-interface {v0}, Lcom/cmplay/internalpush/l;->a()V

    .line 69
    :cond_0
    const-string v0, "internal_push"

    const-string v1, "CMPPromotionCallBack.onDataUpdate  sceneType:SCENE_TYPE_SETTING"

    invoke-static {v0, v1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    new-instance v0, Lcom/cmplay/internalpush/c$1;

    invoke-direct {v0, p0}, Lcom/cmplay/internalpush/c$1;-><init>(Lcom/cmplay/internalpush/c;)V

    invoke-static {v0}, Lcom/cmplay/util/d;->a(Lcom/cmplay/util/d$a;)V

    .line 79
    :cond_1
    const/4 v0, 0x5

    if-ne v0, p1, :cond_3

    .line 80
    iget-object v0, p0, Lcom/cmplay/internalpush/c;->b:Lcom/cmplay/internalpush/l;

    if-eqz v0, :cond_2

    .line 81
    iget-object v0, p0, Lcom/cmplay/internalpush/c;->b:Lcom/cmplay/internalpush/l;

    invoke-interface {v0}, Lcom/cmplay/internalpush/l;->a()V

    .line 83
    :cond_2
    const-string v0, "internal_push"

    const-string v1, "CMPPromotionCallBack.onDataUpdate  sceneType:SCENE_TYPE_FAMILY_POPUP"

    invoke-static {v0, v1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    new-instance v0, Lcom/cmplay/internalpush/c$2;

    invoke-direct {v0, p0}, Lcom/cmplay/internalpush/c$2;-><init>(Lcom/cmplay/internalpush/c;)V

    invoke-static {v0}, Lcom/cmplay/util/d;->a(Lcom/cmplay/util/d$a;)V

    .line 93
    :cond_3
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 44
    const-string v0, "zzb_opens"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "innerPushJumpToLevel ---"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "magic_ver="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&remark="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&error_url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/cmplay/base/util/i;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_cloud_magic"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/cmplay/internalpush/e;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 103
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 110
    invoke-static {p1, p2, p3}, Lcom/cmplay/internalpush/e;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 112
    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 31
    if-eqz p1, :cond_0

    .line 32
    const-string v0, "open_screen_scene"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    const-string v0, "section_result_card"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    const-string v0, "section_setting_card"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    const-string v0, "insert_screen_scene"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    const-string v0, "section_family_popup"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    sget-object v0, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmplay/exitpopup/b;->a(Landroid/content/Context;)Lcom/cmplay/exitpopup/b;

    .line 40
    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 53
    const-string v0, "zzb"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "innerPushJumpWebView --> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    sget-object v0, Lcom/cmplay/internalpush/e;->a:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/cmplay/webview/ui/WebViewActivity;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 55
    const/4 v0, 0x1

    return v0
.end method
