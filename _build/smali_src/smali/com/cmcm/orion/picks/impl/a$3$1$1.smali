.class final Lcom/cmcm/orion/picks/impl/a$3$1$1;
.super Ljava/lang/Object;
.source "BrandVCAdMaterialLoader.java"

# interfaces
.implements Lcom/cmcm/orion/picks/impl/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmcm/orion/picks/impl/a$3$1;->b(Lcom/cmcm/orion/picks/impl/h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmcm/orion/picks/impl/a$3$1;


# direct methods
.method constructor <init>(Lcom/cmcm/orion/picks/impl/a$3$1;)V
    .locals 0

    .prologue
    .line 232
    iput-object p1, p0, Lcom/cmcm/orion/picks/impl/a$3$1$1;->a:Lcom/cmcm/orion/picks/impl/a$3$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;I)V
    .locals 4

    .prologue
    .line 235
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 237
    invoke-static {p1}, Lcom/cmcm/orion/picks/impl/a$1;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/cmcm/orion/picks/impl/i;->a(Ljava/lang/String;J)V

    .line 239
    :cond_0
    return-void
.end method
