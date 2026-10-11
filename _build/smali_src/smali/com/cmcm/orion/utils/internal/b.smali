.class public final Lcom/cmcm/orion/utils/internal/b;
.super Landroid/os/AsyncTask;
.source "BusinessDataReportHelper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/cmcm/orion/picks/a/a/f;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cmcm/orion/picks/a/a/e;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/cmcm/orion/picks/impl/a$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/cmcm/orion/picks/a/a/e;Lcom/cmcm/orion/picks/a/a/f;)V
    .locals 1

    .prologue
    .line 30
    iput-object p2, p0, Lcom/cmcm/orion/utils/internal/b;->a:Lcom/cmcm/orion/picks/a/a/f;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cmcm/orion/utils/internal/b;->b:Ljava/util/List;

    .line 32
    iget-object v0, p0, Lcom/cmcm/orion/utils/internal/b;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    return-void
.end method

.method public final a(Lcom/cmcm/orion/picks/impl/a$a;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/cmcm/orion/utils/internal/b;->c:Lcom/cmcm/orion/picks/impl/a$a;

    .line 45
    return-void
.end method

.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 17
    .line 1055
    iget-object v0, p0, Lcom/cmcm/orion/utils/internal/b;->a:Lcom/cmcm/orion/picks/a/a/f;

    if-eqz v0, :cond_1

    .line 1059
    iget-object v0, p0, Lcom/cmcm/orion/utils/internal/b;->a:Lcom/cmcm/orion/picks/a/a/f;

    invoke-virtual {v0}, Lcom/cmcm/orion/picks/a/a/f;->a()Ljava/lang/String;

    move-result-object v3

    .line 1075
    iget-object v0, p0, Lcom/cmcm/orion/utils/internal/b;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmcm/orion/utils/internal/b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    move-object v0, v2

    .line 2068
    :goto_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 17
    :cond_1
    :goto_1
    return-object v2

    .line 1078
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1079
    const-string v0, "&attach=["

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1080
    const/4 v0, 0x1

    .line 1081
    iget-object v1, p0, Lcom/cmcm/orion/utils/internal/b;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v0

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmcm/orion/picks/a/a/e;

    .line 1082
    if-eqz v1, :cond_3

    .line 1083
    const/4 v1, 0x0

    .line 1087
    :goto_3
    invoke-virtual {v0}, Lcom/cmcm/orion/picks/a/a/e;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1085
    :cond_3
    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 1089
    :cond_4
    const-string v0, "]"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1090
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3048
    :cond_5
    invoke-static {}, Lcom/cmcm/orion/picks/a/a/h;->j()Ljava/lang/String;

    move-result-object v1

    .line 2071
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/cmcm/orion/utils/internal/b;->c:Lcom/cmcm/orion/picks/impl/a$a;

    invoke-static {v1, v0, v3}, Lcom/cmcm/orion/utils/d;->a(Ljava/lang/String;Ljava/lang/String;Lcom/cmcm/orion/picks/impl/a$a;)Lcom/cmcm/orion/utils/d$b;

    goto :goto_1
.end method
