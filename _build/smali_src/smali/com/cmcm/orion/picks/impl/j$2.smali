.class final Lcom/cmcm/orion/picks/impl/j$2;
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
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/cmcm/orion/picks/impl/a$a;

.field final synthetic c:Lcom/cmcm/orion/picks/impl/j;


# direct methods
.method constructor <init>(Lcom/cmcm/orion/picks/impl/j;Ljava/lang/String;Lcom/cmcm/orion/picks/impl/a$a;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/cmcm/orion/picks/impl/j$2;->c:Lcom/cmcm/orion/picks/impl/j;

    iput-object p2, p0, Lcom/cmcm/orion/picks/impl/j$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/cmcm/orion/picks/impl/j$2;->b:Lcom/cmcm/orion/picks/impl/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 64
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/j$2;->c:Lcom/cmcm/orion/picks/impl/j;

    iget-object v1, p0, Lcom/cmcm/orion/picks/impl/j$2;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmcm/orion/picks/impl/j$2;->b:Lcom/cmcm/orion/picks/impl/a$a;

    invoke-static {v0, v1, v2}, Lcom/cmcm/orion/picks/impl/j;->a(Lcom/cmcm/orion/picks/impl/j;Ljava/lang/String;Lcom/cmcm/orion/picks/impl/a$a;)V

    .line 65
    return-void
.end method
