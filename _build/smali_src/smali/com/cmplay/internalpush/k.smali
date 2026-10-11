.class public Lcom/cmplay/internalpush/k;
.super Ljava/lang/Object;
.source "InternalPushManager.java"


# static fields
.field public static a:Landroid/content/Context;

.field public static b:Lcom/cmplay/internalpush/CloudUpdateReceiver;

.field public static c:Z

.field public static d:Z

.field public static e:Z

.field public static f:Lcom/cmplay/internalpush/h;

.field private static g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 25
    sput-boolean v1, Lcom/cmplay/internalpush/k;->c:Z

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/cmplay/internalpush/k;->g:Ljava/util/ArrayList;

    .line 27
    sput-boolean v1, Lcom/cmplay/internalpush/k;->h:Z

    .line 46
    sput-boolean v1, Lcom/cmplay/internalpush/k;->d:Z

    .line 47
    sput-boolean v1, Lcom/cmplay/internalpush/k;->e:Z

    .line 50
    const/4 v0, 0x0

    sput-object v0, Lcom/cmplay/internalpush/k;->f:Lcom/cmplay/internalpush/h;

    return-void
.end method

.method public static a()Lcom/cmplay/internalpush/h;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/cmplay/internalpush/k;->f:Lcom/cmplay/internalpush/h;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/cmplay/internalpush/h;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 64
    const-string v0, "zzb_pro"

    const-string v1, "Openscreen init2"

    invoke-static {v0, v1}, Lcom/cmplay/base/util/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/cmplay/internalpush/k;->a:Landroid/content/Context;

    .line 67
    sput-object p1, Lcom/cmplay/internalpush/k;->f:Lcom/cmplay/internalpush/h;

    .line 68
    sget-object v0, Lcom/cmplay/internalpush/k;->f:Lcom/cmplay/internalpush/h;

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "error: innerPushCallBack is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_0
    invoke-static {}, Lcom/cmplay/internalpush/a/a/b;->a()Lcom/cmplay/internalpush/a/a/b;

    move-result-object v0

    sget-object v1, Lcom/cmplay/internalpush/k;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/cmplay/internalpush/a/a/b;->a(Landroid/content/Context;)V

    .line 74
    invoke-static {p0}, Lcom/cmplay/internalpush/a/d;->a(Landroid/content/Context;)V

    .line 76
    sget-object v0, Lcom/cmplay/internalpush/k;->f:Lcom/cmplay/internalpush/h;

    sget-object v1, Lcom/cmplay/internalpush/k;->g:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/cmplay/internalpush/h;->a(Ljava/util/ArrayList;)V

    .line 77
    sget-object v0, Lcom/cmplay/internalpush/k;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 78
    const-string v2, "open_screen_scene"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 79
    invoke-static {p0}, Lcom/cmplay/internalpush/data/n;->a(Landroid/content/Context;)Lcom/cmplay/internalpush/data/n;

    goto :goto_0

    .line 80
    :cond_2
    const-string v2, "section_result_card"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 81
    invoke-static {p0}, Lcom/cmplay/internalpush/data/p;->a(Landroid/content/Context;)Lcom/cmplay/internalpush/data/p;

    goto :goto_0

    .line 82
    :cond_3
    const-string v2, "section_setting_card"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 83
    invoke-static {p0}, Lcom/cmplay/internalpush/data/q;->a(Landroid/content/Context;)Lcom/cmplay/internalpush/data/q;

    .line 84
    sput-boolean v6, Lcom/cmplay/internalpush/k;->d:Z

    goto :goto_0

    .line 85
    :cond_4
    const-string v2, "insert_screen_scene"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 86
    invoke-static {p0}, Lcom/cmplay/internalpush/data/k;->a(Landroid/content/Context;)Lcom/cmplay/internalpush/data/k;

    goto :goto_0

    .line 87
    :cond_5
    const-string v2, "section_family_popup"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    invoke-static {p0}, Lcom/cmplay/internalpush/data/b;->a(Landroid/content/Context;)Lcom/cmplay/internalpush/data/b;

    .line 89
    sput-boolean v6, Lcom/cmplay/internalpush/k;->e:Z

    goto :goto_0

    .line 92
    :cond_6
    invoke-static {}, Lcom/cmplay/internalpush/k;->b()V

    .line 94
    invoke-static {}, Lcom/cmplay/base/util/q;->b()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 96
    const-string v0, "launch_time"

    invoke-static {v0, v5}, Lcom/cmplay/internalpush/a/d;->a(Ljava/lang/String;I)I

    move-result v0

    .line 97
    const-string v1, "launch_time"

    add-int/lit8 v2, v0, 0x1

    invoke-static {v1, v2}, Lcom/cmplay/internalpush/a/d;->b(Ljava/lang/String;I)V

    .line 99
    const-string v1, "hit_top_launch_time"

    invoke-static {v1, v5}, Lcom/cmplay/internalpush/a/d;->a(Ljava/lang/String;I)I

    move-result v1

    .line 100
    const-string v2, "hit_top_launch_time"

    add-int/lit8 v3, v1, 0x1

    invoke-static {v2, v3}, Lcom/cmplay/internalpush/a/d;->b(Ljava/lang/String;I)V

    .line 101
    const-string v2, "internal_push"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CMPlaySDK.init  LAUNCH_TIME   lastLaunchTime:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "  curLaunchTime:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "launch_time"

    invoke-static {v3, v5}, Lcom/cmplay/internalpush/a/d;->a(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "    lastLaunchTimeOfHitTop:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  curLaunchTimeOfHitTop:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "hit_top_launch_time"

    .line 102
    invoke-static {v1, v5}, Lcom/cmplay/internalpush/a/d;->a(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 101
    invoke-static {v2, v0}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    :cond_7
    sput-boolean v6, Lcom/cmplay/internalpush/k;->h:Z

    .line 106
    return-void
.end method

.method public static b()V
    .locals 1

    .prologue
    .line 109
    sget-boolean v0, Lcom/cmplay/internalpush/k;->c:Z

    if-nez v0, :cond_0

    .line 110
    new-instance v0, Lcom/cmplay/internalpush/CloudUpdateReceiver;

    invoke-direct {v0}, Lcom/cmplay/internalpush/CloudUpdateReceiver;-><init>()V

    sput-object v0, Lcom/cmplay/internalpush/k;->b:Lcom/cmplay/internalpush/CloudUpdateReceiver;

    .line 111
    sget-object v0, Lcom/cmplay/internalpush/k;->b:Lcom/cmplay/internalpush/CloudUpdateReceiver;

    invoke-static {v0}, Lcom/cmplay/internalpush/f;->a(Landroid/content/BroadcastReceiver;)V

    .line 112
    const/4 v0, 0x1

    sput-boolean v0, Lcom/cmplay/internalpush/k;->c:Z

    .line 114
    :cond_0
    return-void
.end method
