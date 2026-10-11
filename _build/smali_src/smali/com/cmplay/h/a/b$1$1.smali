.class Lcom/cmplay/h/a/b$1$1;
.super Ljava/lang/Object;
.source "FaceBookPlatform.java"

# interfaces
.implements Lcom/facebook/GraphRequest$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/h/a/b$1;->a(Lcom/facebook/login/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/cmplay/h/a/b$1;


# direct methods
.method constructor <init>(Lcom/cmplay/h/a/b$1;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 478
    iput-object p1, p0, Lcom/cmplay/h/a/b$1$1;->b:Lcom/cmplay/h/a/b$1;

    iput-object p2, p0, Lcom/cmplay/h/a/b$1$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;Lcom/facebook/q;)V
    .locals 4

    .prologue
    .line 481
    if-eqz p1, :cond_0

    .line 482
    iget-object v0, p0, Lcom/cmplay/h/a/b$1$1;->b:Lcom/cmplay/h/a/b$1;

    iget-object v0, v0, Lcom/cmplay/h/a/b$1;->a:Lcom/cmplay/h/a/b;

    invoke-static {v0}, Lcom/cmplay/h/a/b;->i(Lcom/cmplay/h/a/b;)Lcom/cmplay/h/a/b$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 483
    iget-object v0, p0, Lcom/cmplay/h/a/b$1$1;->b:Lcom/cmplay/h/a/b$1;

    iget-object v0, v0, Lcom/cmplay/h/a/b$1;->a:Lcom/cmplay/h/a/b;

    invoke-static {v0}, Lcom/cmplay/h/a/b;->i(Lcom/cmplay/h/a/b;)Lcom/cmplay/h/a/b$b;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "name"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/cmplay/h/a/b$1$1;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/cmplay/h/a/b$b;->a(ZLjava/lang/String;Ljava/lang/String;)V

    .line 489
    :cond_0
    return-void
.end method
