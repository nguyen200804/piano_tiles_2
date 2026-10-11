.class public final Lcom/cmcm/orion/picks/impl/h$a;
.super Ljava/lang/Object;
.source "VastModel.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmcm/orion/picks/impl/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/cmcm/orion/picks/impl/h;

.field private b:I

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/cmcm/orion/picks/impl/g$a;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/cmcm/orion/picks/impl/h;)V
    .locals 0

    .prologue
    .line 326
    iput-object p1, p0, Lcom/cmcm/orion/picks/impl/h$a;->a:Lcom/cmcm/orion/picks/impl/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 335
    iget v0, p0, Lcom/cmcm/orion/picks/impl/h$a;->b:I

    return v0
.end method

.method public final a(I)V
    .locals 0

    .prologue
    .line 358
    iput p1, p0, Lcom/cmcm/orion/picks/impl/h$a;->b:I

    .line 359
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 366
    iput-object p1, p0, Lcom/cmcm/orion/picks/impl/h$a;->d:Ljava/lang/String;

    .line 367
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 370
    iput-object p1, p0, Lcom/cmcm/orion/picks/impl/h$a;->e:Ljava/util/List;

    .line 371
    return-void
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 339
    iget v0, p0, Lcom/cmcm/orion/picks/impl/h$a;->c:I

    return v0
.end method

.method public final b(I)V
    .locals 0

    .prologue
    .line 362
    iput p1, p0, Lcom/cmcm/orion/picks/impl/h$a;->c:I

    .line 363
    return-void
.end method

.method public final c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 347
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/h$a;->e:Ljava/util/List;

    return-object v0
.end method

.method public final d()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/cmcm/orion/picks/impl/g$a;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 351
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/h$a;->f:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 352
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/cmcm/orion/picks/impl/h$a;->f:Ljava/util/Map;

    .line 354
    :cond_0
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/h$a;->f:Ljava/util/Map;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 375
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CompanionAds{adWidth="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/cmcm/orion/picks/impl/h$a;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", adHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/cmcm/orion/picks/impl/h$a;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", adId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cmcm/orion/picks/impl/h$a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", staticResourceList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cmcm/orion/picks/impl/h$a;->e:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", companionReportUrls="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cmcm/orion/picks/impl/h$a;->f:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
