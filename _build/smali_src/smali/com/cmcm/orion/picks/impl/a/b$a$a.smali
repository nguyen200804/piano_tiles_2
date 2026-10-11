.class final Lcom/cmcm/orion/picks/impl/a/b$a$a;
.super Ljava/io/FilterOutputStream;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmcm/orion/picks/impl/a/b$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/cmcm/orion/picks/impl/a/b$a;


# direct methods
.method private constructor <init>(Lcom/cmcm/orion/picks/impl/a/b$a;Ljava/io/OutputStream;)V
    .locals 0

    .prologue
    .line 844
    iput-object p1, p0, Lcom/cmcm/orion/picks/impl/a/b$a$a;->a:Lcom/cmcm/orion/picks/impl/a/b$a;

    .line 845
    invoke-direct {p0, p2}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 846
    return-void
.end method

.method synthetic constructor <init>(Lcom/cmcm/orion/picks/impl/a/b$a;Ljava/io/OutputStream;B)V
    .locals 0

    .prologue
    .line 843
    invoke-direct {p0, p1, p2}, Lcom/cmcm/orion/picks/impl/a/b$a$a;-><init>(Lcom/cmcm/orion/picks/impl/a/b$a;Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    .prologue
    .line 869
    :try_start_0
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/a/b$a$a;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 873
    :goto_0
    return-void

    .line 871
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/a/b$a$a;->a:Lcom/cmcm/orion/picks/impl/a/b$a;

    invoke-static {v0}, Lcom/cmcm/orion/picks/impl/a/b$a;->c(Lcom/cmcm/orion/picks/impl/a/b$a;)Z

    goto :goto_0
.end method

.method public final flush()V
    .locals 1

    .prologue
    .line 878
    :try_start_0
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/a/b$a$a;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 882
    :goto_0
    return-void

    .line 880
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/a/b$a$a;->a:Lcom/cmcm/orion/picks/impl/a/b$a;

    invoke-static {v0}, Lcom/cmcm/orion/picks/impl/a/b$a;->c(Lcom/cmcm/orion/picks/impl/a/b$a;)Z

    goto :goto_0
.end method

.method public final write(I)V
    .locals 1
    .param p1, "oneByte"    # I

    .prologue
    .line 851
    :try_start_0
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/a/b$a$a;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 855
    :goto_0
    return-void

    .line 853
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/a/b$a$a;->a:Lcom/cmcm/orion/picks/impl/a/b$a;

    invoke-static {v0}, Lcom/cmcm/orion/picks/impl/a/b$a;->c(Lcom/cmcm/orion/picks/impl/a/b$a;)Z

    goto :goto_0
.end method

.method public final write([BII)V
    .locals 1
    .param p1, "buffer"    # [B
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 860
    :try_start_0
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/a/b$a$a;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 864
    :goto_0
    return-void

    .line 862
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/a/b$a$a;->a:Lcom/cmcm/orion/picks/impl/a/b$a;

    invoke-static {v0}, Lcom/cmcm/orion/picks/impl/a/b$a;->c(Lcom/cmcm/orion/picks/impl/a/b$a;)Z

    goto :goto_0
.end method
