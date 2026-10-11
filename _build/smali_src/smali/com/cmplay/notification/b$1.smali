.class Lcom/cmplay/notification/b$1;
.super Ljava/lang/Object;
.source "NewNotificationManager.java"

# interfaces
.implements Lcom/android/volley/toolbox/h$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/notification/b;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lorg/json/JSONObject;

.field final synthetic f:Lcom/cmplay/notification/b;


# direct methods
.method constructor <init>(Lcom/cmplay/notification/b;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 206
    iput-object p1, p0, Lcom/cmplay/notification/b$1;->f:Lcom/cmplay/notification/b;

    iput p2, p0, Lcom/cmplay/notification/b$1;->a:I

    iput-object p3, p0, Lcom/cmplay/notification/b$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/cmplay/notification/b$1;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/cmplay/notification/b$1;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/cmplay/notification/b$1;->e:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/android/volley/s;)V
    .locals 6

    .prologue
    .line 223
    const-string v0, "mys"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notification "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/cmplay/notification/b$1;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " icon load failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget-object v0, p0, Lcom/cmplay/notification/b$1;->f:Lcom/cmplay/notification/b;

    iget v1, p0, Lcom/cmplay/notification/b$1;->a:I

    iget-object v2, p0, Lcom/cmplay/notification/b$1;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmplay/notification/b$1;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/cmplay/notification/b$1;->d:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/cmplay/notification/b;->a(Lcom/cmplay/notification/b;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/app/Notification;

    move-result-object v0

    .line 225
    if-eqz v0, :cond_0

    .line 226
    iget-object v1, p0, Lcom/cmplay/notification/b$1;->f:Lcom/cmplay/notification/b;

    iget v2, p0, Lcom/cmplay/notification/b$1;->a:I

    iget-object v3, p0, Lcom/cmplay/notification/b$1;->e:Lorg/json/JSONObject;

    invoke-static {v1, v2, v0, v3}, Lcom/cmplay/notification/b;->a(Lcom/cmplay/notification/b;ILandroid/app/Notification;Lorg/json/JSONObject;)V

    .line 228
    :cond_0
    return-void
.end method

.method public a(Lcom/android/volley/toolbox/h$c;Z)V
    .locals 6

    .prologue
    .line 209
    invoke-virtual {p1}, Lcom/android/volley/toolbox/h$c;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 210
    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    .line 219
    :cond_0
    :goto_0
    return-void

    .line 213
    :cond_1
    const-string v0, "mys"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notification "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/cmplay/notification/b$1;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " icon load successfully"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    invoke-virtual {p1}, Lcom/android/volley/toolbox/h$c;->b()Landroid/graphics/Bitmap;

    move-result-object v5

    .line 215
    iget-object v0, p0, Lcom/cmplay/notification/b$1;->f:Lcom/cmplay/notification/b;

    iget v1, p0, Lcom/cmplay/notification/b$1;->a:I

    iget-object v2, p0, Lcom/cmplay/notification/b$1;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmplay/notification/b$1;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/cmplay/notification/b$1;->d:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/cmplay/notification/b;->a(Lcom/cmplay/notification/b;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/app/Notification;

    move-result-object v0

    .line 216
    if-eqz v0, :cond_0

    .line 217
    iget-object v1, p0, Lcom/cmplay/notification/b$1;->f:Lcom/cmplay/notification/b;

    iget v2, p0, Lcom/cmplay/notification/b$1;->a:I

    iget-object v3, p0, Lcom/cmplay/notification/b$1;->e:Lorg/json/JSONObject;

    invoke-static {v1, v2, v0, v3}, Lcom/cmplay/notification/b;->a(Lcom/cmplay/notification/b;ILandroid/app/Notification;Lorg/json/JSONObject;)V

    goto :goto_0
.end method
