.class Lcom/cmplay/notification/c$1$1;
.super Ljava/lang/Object;
.source "NotificationUtil.java"

# interfaces
.implements Lcom/android/volley/toolbox/h$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/notification/c$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmplay/notification/c$1;


# direct methods
.method constructor <init>(Lcom/cmplay/notification/c$1;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcom/cmplay/notification/c$1$1;->a:Lcom/cmplay/notification/c$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/android/volley/s;)V
    .locals 7

    .prologue
    .line 177
    const-string v0, "Notification"

    const-string v1, "notification  icon load failed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v0, p0, Lcom/cmplay/notification/c$1$1;->a:Lcom/cmplay/notification/c$1;

    iget-object v0, v0, Lcom/cmplay/notification/c$1;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/cmplay/notification/c$1$1;->a:Lcom/cmplay/notification/c$1;

    iget v1, v1, Lcom/cmplay/notification/c$1;->c:I

    iget-object v2, p0, Lcom/cmplay/notification/c$1$1;->a:Lcom/cmplay/notification/c$1;

    iget-object v2, v2, Lcom/cmplay/notification/c$1;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmplay/notification/c$1$1;->a:Lcom/cmplay/notification/c$1;

    iget-object v3, v3, Lcom/cmplay/notification/c$1;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/cmplay/notification/c$1$1;->a:Lcom/cmplay/notification/c$1;

    iget-object v4, v4, Lcom/cmplay/notification/c$1;->f:Ljava/lang/String;

    iget-object v5, p0, Lcom/cmplay/notification/c$1$1;->a:Lcom/cmplay/notification/c$1;

    iget-object v5, v5, Lcom/cmplay/notification/c$1;->g:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/cmplay/notification/c;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 179
    return-void
.end method

.method public a(Lcom/android/volley/toolbox/h$c;Z)V
    .locals 7

    .prologue
    .line 166
    invoke-virtual {p1}, Lcom/android/volley/toolbox/h$c;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 167
    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 173
    :goto_0
    return-void

    .line 170
    :cond_0
    const-string v0, "Notification"

    const-string v1, "notification  icon load successfully"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    invoke-virtual {p1}, Lcom/android/volley/toolbox/h$c;->b()Landroid/graphics/Bitmap;

    move-result-object v6

    .line 172
    iget-object v0, p0, Lcom/cmplay/notification/c$1$1;->a:Lcom/cmplay/notification/c$1;

    iget-object v0, v0, Lcom/cmplay/notification/c$1;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/cmplay/notification/c$1$1;->a:Lcom/cmplay/notification/c$1;

    iget v1, v1, Lcom/cmplay/notification/c$1;->c:I

    iget-object v2, p0, Lcom/cmplay/notification/c$1$1;->a:Lcom/cmplay/notification/c$1;

    iget-object v2, v2, Lcom/cmplay/notification/c$1;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmplay/notification/c$1$1;->a:Lcom/cmplay/notification/c$1;

    iget-object v3, v3, Lcom/cmplay/notification/c$1;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/cmplay/notification/c$1$1;->a:Lcom/cmplay/notification/c$1;

    iget-object v4, v4, Lcom/cmplay/notification/c$1;->f:Ljava/lang/String;

    iget-object v5, p0, Lcom/cmplay/notification/c$1$1;->a:Lcom/cmplay/notification/c$1;

    iget-object v5, v5, Lcom/cmplay/notification/c$1;->g:Ljava/lang/String;

    invoke-static/range {v0 .. v6}, Lcom/cmplay/notification/c;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method
