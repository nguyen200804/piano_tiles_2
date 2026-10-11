.class final Lcom/cmcm/orion/picks/impl/j$3;
.super Ljava/lang/Object;
.source "VastXmlParse.java"

# interfaces
.implements Lcom/cmcm/orion/picks/impl/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmcm/orion/picks/impl/j;->a(Lcom/cmcm/orion/picks/impl/h;Ljava/lang/String;Lcom/cmcm/orion/picks/impl/a$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmcm/orion/picks/impl/h;

.field final synthetic b:Lcom/cmcm/orion/picks/impl/a$a;

.field final synthetic c:Lcom/cmcm/orion/picks/impl/j;


# direct methods
.method constructor <init>(Lcom/cmcm/orion/picks/impl/j;Lcom/cmcm/orion/picks/impl/h;Lcom/cmcm/orion/picks/impl/a$a;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/cmcm/orion/picks/impl/j$3;->c:Lcom/cmcm/orion/picks/impl/j;

    iput-object p2, p0, Lcom/cmcm/orion/picks/impl/j$3;->a:Lcom/cmcm/orion/picks/impl/h;

    iput-object p3, p0, Lcom/cmcm/orion/picks/impl/j$3;->b:Lcom/cmcm/orion/picks/impl/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILcom/cmcm/orion/adsdk/d;)V
    .locals 3

    .prologue
    .line 104
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/j$3;->c:Lcom/cmcm/orion/picks/impl/j;

    iget-object v1, p0, Lcom/cmcm/orion/picks/impl/j$3;->a:Lcom/cmcm/orion/picks/impl/h;

    iget-object v2, p0, Lcom/cmcm/orion/picks/impl/j$3;->b:Lcom/cmcm/orion/picks/impl/a$a;

    invoke-static {v0, v1, p2, v2}, Lcom/cmcm/orion/picks/impl/j;->a(Lcom/cmcm/orion/picks/impl/j;Lcom/cmcm/orion/picks/impl/h;Lcom/cmcm/orion/adsdk/d;Lcom/cmcm/orion/picks/impl/a$a;)V

    .line 105
    return-void
.end method

.method public final a(ILjava/io/InputStream;Ljava/lang/String;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 99
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/j$3;->c:Lcom/cmcm/orion/picks/impl/j;

    iget-object v1, p0, Lcom/cmcm/orion/picks/impl/j$3;->a:Lcom/cmcm/orion/picks/impl/h;

    invoke-static {p2, p3}, Lcom/cmcm/orion/utils/d;->a(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/cmcm/orion/picks/impl/j$3;->b:Lcom/cmcm/orion/picks/impl/a$a;

    invoke-static {v0, v1, v2, v3}, Lcom/cmcm/orion/picks/impl/j;->a(Lcom/cmcm/orion/picks/impl/j;Lcom/cmcm/orion/picks/impl/h;Ljava/lang/String;Lcom/cmcm/orion/picks/impl/a$a;)V

    .line 100
    return-void
.end method
