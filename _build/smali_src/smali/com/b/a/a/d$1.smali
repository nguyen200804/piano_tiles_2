.class Lcom/b/a/a/d$1;
.super Lcom/b/a/j;
.source "InternalGameAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/b/a/a/d;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/b/a/a/d;


# direct methods
.method constructor <init>(Lcom/b/a/a/d;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/b/a/a/d$1;->b:Lcom/b/a/a/d;

    iput-object p2, p0, Lcom/b/a/a/d$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/b/a/j;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 127
    iget-object v0, p0, Lcom/b/a/a/d$1;->b:Lcom/b/a/a/d;

    invoke-static {v0}, Lcom/b/a/a/d;->c(Lcom/b/a/a/d;)Lcom/b/a/a/c;

    move-result-object v0

    iget-object v1, p0, Lcom/b/a/a/d$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/b/a/a/c;->a(Ljava/lang/String;)Lcom/b/a/a/c$a;

    .line 129
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 131
    const-string v1, "level"

    iget-object v2, p0, Lcom/b/a/a/d$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    const-string v1, "status"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    iget-object v1, p0, Lcom/b/a/a/d$1;->b:Lcom/b/a/a/d;

    invoke-static {v1}, Lcom/b/a/a/d;->c(Lcom/b/a/a/d;)Lcom/b/a/a/c;

    move-result-object v1

    iget-object v1, v1, Lcom/b/a/a/c;->b:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, "user_level"

    iget-object v2, p0, Lcom/b/a/a/d$1;->b:Lcom/b/a/a/d;

    invoke-static {v2}, Lcom/b/a/a/d;->c(Lcom/b/a/a/d;)Lcom/b/a/a/c;

    move-result-object v2

    iget-object v2, v2, Lcom/b/a/a/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    :cond_0
    iget-object v1, p0, Lcom/b/a/a/d$1;->b:Lcom/b/a/a/d;

    invoke-static {v1}, Lcom/b/a/a/d;->b(Lcom/b/a/a/d;)Lcom/b/a/g;

    move-result-object v1

    iget-object v2, p0, Lcom/b/a/a/d$1;->b:Lcom/b/a/a/d;

    invoke-static {v2}, Lcom/b/a/a/d;->a(Lcom/b/a/a/d;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "level"

    invoke-virtual {v1, v2, v3, v0}, Lcom/b/a/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 136
    return-void
.end method
