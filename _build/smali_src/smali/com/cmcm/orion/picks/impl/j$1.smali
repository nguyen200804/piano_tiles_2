.class final Lcom/cmcm/orion/picks/impl/j$1;
.super Ljava/lang/Object;
.source "VastXmlParse.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmcm/orion/picks/impl/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/cmcm/orion/picks/impl/a$a;

.field final synthetic c:Lcom/cmcm/orion/picks/impl/h;

.field final synthetic d:Lcom/cmcm/orion/adsdk/d;

.field final synthetic e:I

.field final synthetic f:Lcom/cmcm/orion/picks/impl/j;


# direct methods
.method constructor <init>(Lcom/cmcm/orion/picks/impl/j;ZLcom/cmcm/orion/picks/impl/a$a;Lcom/cmcm/orion/picks/impl/h;Lcom/cmcm/orion/adsdk/d;I)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/cmcm/orion/picks/impl/j$1;->f:Lcom/cmcm/orion/picks/impl/j;

    iput-boolean p2, p0, Lcom/cmcm/orion/picks/impl/j$1;->a:Z

    iput-object p3, p0, Lcom/cmcm/orion/picks/impl/j$1;->b:Lcom/cmcm/orion/picks/impl/a$a;

    iput-object p4, p0, Lcom/cmcm/orion/picks/impl/j$1;->c:Lcom/cmcm/orion/picks/impl/h;

    iput-object p5, p0, Lcom/cmcm/orion/picks/impl/j$1;->d:Lcom/cmcm/orion/adsdk/d;

    iput p6, p0, Lcom/cmcm/orion/picks/impl/j$1;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/cmcm/orion/picks/impl/j$1;->a:Z

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/j$1;->b:Lcom/cmcm/orion/picks/impl/a$a;

    iget-object v1, p0, Lcom/cmcm/orion/picks/impl/j$1;->c:Lcom/cmcm/orion/picks/impl/h;

    invoke-interface {v0, v1}, Lcom/cmcm/orion/picks/impl/a$a;->b(Lcom/cmcm/orion/picks/impl/h;)V

    .line 54
    :goto_0
    return-void

    .line 51
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "vast:xml parse fail ,error:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cmcm/orion/picks/impl/j$1;->d:Lcom/cmcm/orion/adsdk/d;

    invoke-virtual {v1}, Lcom/cmcm/orion/adsdk/d;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cmcm/orion/picks/impl/j$1;->d:Lcom/cmcm/orion/adsdk/d;

    invoke-virtual {v1}, Lcom/cmcm/orion/adsdk/d;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/j$1;->b:Lcom/cmcm/orion/picks/impl/a$a;

    iget-object v1, p0, Lcom/cmcm/orion/picks/impl/j$1;->c:Lcom/cmcm/orion/picks/impl/h;

    iget-object v2, p0, Lcom/cmcm/orion/picks/impl/j$1;->d:Lcom/cmcm/orion/adsdk/d;

    iget v3, p0, Lcom/cmcm/orion/picks/impl/j$1;->e:I

    invoke-interface {v0, v1, v2, v3}, Lcom/cmcm/orion/picks/impl/a$a;->a(Lcom/cmcm/orion/picks/impl/h;Lcom/cmcm/orion/adsdk/d;I)V

    goto :goto_0
.end method
