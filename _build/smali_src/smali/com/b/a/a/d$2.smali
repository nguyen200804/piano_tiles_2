.class Lcom/b/a/a/d$2;
.super Lcom/b/a/j;
.source "InternalGameAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/b/a/a/d;->a(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Lcom/b/a/a/d;


# direct methods
.method constructor <init>(Lcom/b/a/a/d;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcom/b/a/a/d$2;->c:Lcom/b/a/a/d;

    iput-object p2, p0, Lcom/b/a/a/d$2;->a:Ljava/lang/String;

    iput p3, p0, Lcom/b/a/a/d$2;->b:I

    invoke-direct {p0}, Lcom/b/a/j;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    .line 150
    iget-object v0, p0, Lcom/b/a/a/d$2;->c:Lcom/b/a/a/d;

    invoke-static {v0}, Lcom/b/a/a/d;->c(Lcom/b/a/a/d;)Lcom/b/a/a/c;

    move-result-object v0

    iget-object v1, p0, Lcom/b/a/a/d$2;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/b/a/a/c;->b(Ljava/lang/String;)Lcom/b/a/a/c$a;

    move-result-object v0

    .line 151
    if-eqz v0, :cond_2

    .line 152
    invoke-virtual {v0}, Lcom/b/a/a/c$a;->e()J

    move-result-wide v0

    .line 153
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 154
    const-string v0, "MobclickAgent"

    const-string v1, "level duration is 0"

    invoke-static {v0, v1}, Lb/a/ap;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    :goto_0
    return-void

    .line 158
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 160
    const-string v3, "level"

    iget-object v4, p0, Lcom/b/a/a/d$2;->a:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    const-string v3, "status"

    iget v4, p0, Lcom/b/a/a/d$2;->b:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    const-string v3, "duration"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    iget-object v0, p0, Lcom/b/a/a/d$2;->c:Lcom/b/a/a/d;

    invoke-static {v0}, Lcom/b/a/a/d;->c(Lcom/b/a/a/d;)Lcom/b/a/a/c;

    move-result-object v0

    iget-object v0, v0, Lcom/b/a/a/c;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, "user_level"

    iget-object v1, p0, Lcom/b/a/a/d$2;->c:Lcom/b/a/a/d;

    invoke-static {v1}, Lcom/b/a/a/d;->c(Lcom/b/a/a/d;)Lcom/b/a/a/c;

    move-result-object v1

    iget-object v1, v1, Lcom/b/a/a/c;->b:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    :cond_1
    iget-object v0, p0, Lcom/b/a/a/d$2;->c:Lcom/b/a/a/d;

    invoke-static {v0}, Lcom/b/a/a/d;->b(Lcom/b/a/a/d;)Lcom/b/a/g;

    move-result-object v0

    iget-object v1, p0, Lcom/b/a/a/d$2;->c:Lcom/b/a/a/d;

    invoke-static {v1}, Lcom/b/a/a/d;->a(Lcom/b/a/a/d;)Landroid/content/Context;

    move-result-object v1

    const-string v3, "level"

    invoke-virtual {v0, v1, v3, v2}, Lcom/b/a/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_0

    .line 166
    :cond_2
    const-string v0, "MobclickAgent"

    const-string v1, "finishLevel(or failLevel) called before startLevel"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lb/a/ap;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
