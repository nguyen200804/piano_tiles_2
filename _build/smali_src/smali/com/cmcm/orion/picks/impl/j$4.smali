.class final Lcom/cmcm/orion/picks/impl/j$4;
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
.field final synthetic a:Lcom/cmcm/orion/picks/impl/h;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/cmcm/orion/picks/impl/a$a;

.field final synthetic d:Lcom/cmcm/orion/picks/impl/j;


# direct methods
.method constructor <init>(Lcom/cmcm/orion/picks/impl/j;Lcom/cmcm/orion/picks/impl/h;Ljava/lang/String;Lcom/cmcm/orion/picks/impl/a$a;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/cmcm/orion/picks/impl/j$4;->d:Lcom/cmcm/orion/picks/impl/j;

    iput-object p2, p0, Lcom/cmcm/orion/picks/impl/j$4;->a:Lcom/cmcm/orion/picks/impl/h;

    iput-object p3, p0, Lcom/cmcm/orion/picks/impl/j$4;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/cmcm/orion/picks/impl/j$4;->c:Lcom/cmcm/orion/picks/impl/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 113
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/j$4;->d:Lcom/cmcm/orion/picks/impl/j;

    iget-object v1, p0, Lcom/cmcm/orion/picks/impl/j$4;->a:Lcom/cmcm/orion/picks/impl/h;

    iget-object v2, p0, Lcom/cmcm/orion/picks/impl/j$4;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmcm/orion/picks/impl/j$4;->c:Lcom/cmcm/orion/picks/impl/a$a;

    invoke-static {v0, v1, v2, v3}, Lcom/cmcm/orion/picks/impl/j;->b(Lcom/cmcm/orion/picks/impl/j;Lcom/cmcm/orion/picks/impl/h;Ljava/lang/String;Lcom/cmcm/orion/picks/impl/a$a;)V

    .line 114
    return-void
.end method
