.class Lcom/cmplay/b/b$1;
.super Ljava/lang/Object;
.source "AppCardHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/b/b;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmplay/b/b;


# direct methods
.method constructor <init>(Lcom/cmplay/b/b;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/cmplay/b/b$1;->a:Lcom/cmplay/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 62
    invoke-static {}, Lcom/cmplay/cloud/a;->a()Lcom/cmplay/cloud/a;

    move-result-object v1

    const-string v3, "section_common"

    const-string v4, "cloud_key_is_load_card_image"

    invoke-virtual {v1, v8, v3, v4, v0}, Lcom/cmplay/cloud/a;->a(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    .line 65
    if-nez v1, :cond_1

    sget-object v1, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/cmplay/b/d;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v0

    .line 66
    :goto_0
    sget-object v3, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/cmplay/util/t;->c(Landroid/content/Context;)Z

    move-result v3

    .line 68
    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "section_result_card"

    aput-object v5, v4, v2

    const-string v5, "section_setting_card"

    aput-object v5, v4, v0

    const-string v0, "section_battle_card"

    aput-object v0, v4, v8

    const/4 v0, 0x3

    const-string v5, "section_popup_card"

    aput-object v5, v4, v0

    .line 71
    array-length v5, v4

    :goto_1
    if-ge v2, v5, :cond_3

    aget-object v6, v4, v2

    .line 72
    invoke-static {}, Lcom/cmplay/cloud/a;->a()Lcom/cmplay/cloud/a;

    move-result-object v0

    invoke-virtual {v0, v8, v6}, Lcom/cmplay/cloud/a;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 73
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 71
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    move v1, v2

    .line 65
    goto :goto_0

    .line 77
    :cond_2
    iget-object v7, p0, Lcom/cmplay/b/b$1;->a:Lcom/cmplay/b/b;

    invoke-static {v7, v0}, Lcom/cmplay/b/b;->a(Lcom/cmplay/b/b;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 78
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_0

    .line 79
    new-instance v7, Lcom/cmplay/b/b$a;

    invoke-direct {v7}, Lcom/cmplay/b/b$a;-><init>()V

    invoke-static {v0, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 81
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmplay/b/a;

    .line 82
    invoke-static {v0, v6, v3, v1}, Lcom/cmplay/b/c;->a(Lcom/cmplay/b/a;Ljava/lang/String;ZZ)V

    goto :goto_2

    .line 86
    :cond_3
    return-void
.end method
