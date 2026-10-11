.class public Lcom/ijinshan/cloudconfig/a;
.super Ljava/lang/Object;
.source "CloudHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ijinshan/cloudconfig/a$b;,
        Lcom/ijinshan/cloudconfig/a$a;
    }
.end annotation


# static fields
.field public static a:Lcom/ijinshan/cloudconfig/a$a;

.field public static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/BroadcastReceiver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-string v0, "en"

    sput-object v0, Lcom/ijinshan/cloudconfig/a;->c:Ljava/lang/String;

    .line 38
    const-string v0, "gp"

    sput-object v0, Lcom/ijinshan/cloudconfig/a;->d:Ljava/lang/String;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/ijinshan/cloudconfig/a;->e:Ljava/util/ArrayList;

    .line 257
    const-string v0, ""

    sput-object v0, Lcom/ijinshan/cloudconfig/a;->b:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 1

    .prologue
    .line 206
    invoke-static {p0, p1, p2, p3}, Lcom/ijinshan/cloudconfig/deepcloudconfig/b;->a(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    invoke-static {}, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->a()Lcom/ijinshan/cloudconfig/deepcloudconfig/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(ILjava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 142
    packed-switch p0, :pswitch_data_0

    .line 153
    invoke-static {}, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->a()Lcom/ijinshan/cloudconfig/deepcloudconfig/c;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->a(Z)V

    .line 155
    :goto_0
    return-void

    .line 144
    :pswitch_0
    invoke-static {}, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->a()Lcom/ijinshan/cloudconfig/deepcloudconfig/c;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->a(Z)V

    goto :goto_0

    .line 147
    :pswitch_1
    invoke-static {}, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->a()Lcom/ijinshan/cloudconfig/deepcloudconfig/c;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->a(Z)V

    goto :goto_0

    .line 150
    :pswitch_2
    invoke-static {}, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->a()Lcom/ijinshan/cloudconfig/deepcloudconfig/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 142
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static a(Landroid/content/BroadcastReceiver;)V
    .locals 2

    .prologue
    .line 71
    if-nez p0, :cond_1

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    invoke-static {}, Lcom/ijinshan/cloudconfig/c/a;->d()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ijinshan/cloudconfig/a;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.cmplay.activesdk.cloud_cfg.update"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 76
    invoke-static {}, Lcom/ijinshan/cloudconfig/c/a;->d()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 77
    sget-object v0, Lcom/ijinshan/cloudconfig/a;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 43
    sput-object p1, Lcom/ijinshan/cloudconfig/a;->d:Ljava/lang/String;

    .line 44
    invoke-static {p1, p2, v0, v0}, Lcom/ijinshan/cloudconfig/c/a;->a(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 45
    invoke-static {p0}, Lcom/ijinshan/cloudconfig/c/a;->a(Landroid/content/Context;)V

    .line 46
    invoke-static {}, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->a()Lcom/ijinshan/cloudconfig/deepcloudconfig/c;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->a(ZZ)V

    .line 47
    new-instance v0, Lcom/ijinshan/cloudconfig/a$b;

    invoke-direct {v0, p0}, Lcom/ijinshan/cloudconfig/a$b;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/ijinshan/cloudconfig/a/b;->a(Lcom/ijinshan/cloudconfig/a/a;)V

    .line 48
    if-eqz p4, :cond_0

    .line 49
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/ijinshan/cloudconfig/a$1;

    invoke-direct {v1}, Lcom/ijinshan/cloudconfig/a$1;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 56
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 60
    :goto_0
    return-void

    .line 58
    :cond_0
    invoke-static {}, Lcom/ijinshan/cloudconfig/c/a;->f()V

    goto :goto_0
.end method

.method public static a(Lcom/ijinshan/cloudconfig/a$a;)V
    .locals 0

    .prologue
    .line 255
    sput-object p0, Lcom/ijinshan/cloudconfig/a;->a:Lcom/ijinshan/cloudconfig/a$a;

    .line 256
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 109
    sput-object p0, Lcom/ijinshan/cloudconfig/a;->c:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    invoke-static {}, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->a()Lcom/ijinshan/cloudconfig/deepcloudconfig/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 172
    invoke-static {}, Lcom/ijinshan/cloudconfig/deepcloudconfig/a;->a()Lcom/ijinshan/cloudconfig/deepcloudconfig/a;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/ijinshan/cloudconfig/deepcloudconfig/a;->b(Ljava/lang/Integer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c()Z
    .locals 1

    .prologue
    .line 133
    sget-boolean v0, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->c:Z

    return v0
.end method

.method public static d()V
    .locals 1

    .prologue
    .line 161
    invoke-static {}, Lcom/ijinshan/cloudconfig/deepcloudconfig/a;->a()Lcom/ijinshan/cloudconfig/deepcloudconfig/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ijinshan/cloudconfig/deepcloudconfig/a;->b()V

    .line 162
    return-void
.end method

.method static synthetic e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/ijinshan/cloudconfig/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/ijinshan/cloudconfig/a;->d:Ljava/lang/String;

    return-object v0
.end method
