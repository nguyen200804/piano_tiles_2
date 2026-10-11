.class public Lcom/cmplay/internalpush/d;
.super Ljava/lang/Object;
.source "CMPPromotionVideoCallBack.java"

# interfaces
.implements Lcom/cmplay/base/util/c/c;
.implements Lcom/cmplay/internalpush/video/b/a;
.implements Lcom/cmplay/internalpush/video/b/c;
.implements Lcom/cmplay/internalpush/video/b/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmplay/internalpush/d$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/cmplay/internalpush/m;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cmplay/internalpush/d;->b:Lcom/cmplay/internalpush/m;

    .line 37
    return-void
.end method

.method public static c()Lcom/cmplay/internalpush/d;
    .locals 1

    .prologue
    .line 39
    invoke-static {}, Lcom/cmplay/internalpush/d$a;->a()Lcom/cmplay/internalpush/d;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 136
    return-void
.end method

.method public a(I)V
    .locals 3

    .prologue
    .line 96
    const-string v0, "zzb"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CMPPromotionVideoCallBack.onDataUpdate  sceneType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 129
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 105
    invoke-static {}, Lcom/cmplay/base/util/q;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 112
    :goto_0
    return-void

    .line 109
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/cmplay/internalpush/d;->a:Landroid/content/Context;

    .line 110
    invoke-static {p0}, Lcom/cmplay/internalpush/video/e;->a(Lcom/cmplay/internalpush/video/b/c;)V

    .line 111
    invoke-static {p0}, Lcom/cmplay/internalpush/video/e;->a(Lcom/cmplay/internalpush/video/b/d;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 143
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/cmplay/base/util/c/b;)V
    .locals 2

    .prologue
    .line 66
    sget-object v0, Lcom/cmplay/internalpush/e;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmplay/base/util/c/d;->a(Landroid/content/Context;)Lcom/cmplay/base/util/c/d;

    move-result-object v0

    new-instance v1, Lcom/cmplay/internalpush/d$1;

    invoke-direct {v1, p0, p2}, Lcom/cmplay/internalpush/d$1;-><init>(Lcom/cmplay/internalpush/d;Lcom/cmplay/base/util/c/b;)V

    invoke-virtual {v0, p1, v1}, Lcom/cmplay/base/util/c/d;->a(Ljava/lang/String;Lcom/cmplay/base/util/c/b;)V

    .line 77
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 55
    invoke-static {p1, p2, p3}, Lcom/cmplay/internalpush/e;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u89c6\u9891\u57cb\u70b9\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/cmplay/internalpush/d;->b:Lcom/cmplay/internalpush/m;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/cmplay/internalpush/d;->b:Lcom/cmplay/internalpush/m;

    invoke-interface {v0}, Lcom/cmplay/internalpush/m;->a()V

    .line 159
    :cond_0
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 167
    return-void
.end method

.method public b(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 85
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

    .line 86
    sget-object v0, Lcom/cmplay/internalpush/e;->a:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/cmplay/webview/ui/WebViewActivity;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 87
    const/4 v0, 0x1

    return v0
.end method

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    invoke-static {}, Lcom/cmplay/base/util/i;->b()I

    move-result v0

    invoke-static {v0, p1}, Lcom/ijinshan/cloudconfig/a;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()V
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x1

    sput-boolean v0, Lcom/cmplay/internalpush/e;->b:Z

    .line 121
    return-void
.end method
