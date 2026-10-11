.class final Lcom/cmcm/orion/picks/impl/a/a$1;
.super Ljava/lang/Object;
.source "CacheUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmcm/orion/picks/impl/a/a;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lcom/cmcm/orion/picks/impl/a/a$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 151
    :try_start_0
    invoke-static {}, Lcom/cmcm/orion/picks/impl/a/a;->b()Lcom/cmcm/orion/picks/impl/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/cmcm/orion/picks/impl/a/a$1;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/cmcm/orion/picks/impl/a/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmcm/orion/picks/impl/a/b;->c(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
