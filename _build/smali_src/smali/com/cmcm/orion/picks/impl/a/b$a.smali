.class public final Lcom/cmcm/orion/picks/impl/a/b$a;
.super Ljava/lang/Object;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmcm/orion/picks/impl/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmcm/orion/picks/impl/a/b$a$a;
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/cmcm/orion/picks/impl/a/b;

.field private final b:Lcom/cmcm/orion/picks/impl/a/b$b;

.field private final c:[Z

.field private d:Z

.field private e:Z


# direct methods
.method private constructor <init>(Lcom/cmcm/orion/picks/impl/a/b;Lcom/cmcm/orion/picks/impl/a/b$b;)V
    .locals 1

    .prologue
    .line 734
    iput-object p1, p0, Lcom/cmcm/orion/picks/impl/a/b$a;->a:Lcom/cmcm/orion/picks/impl/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 735
    iput-object p2, p0, Lcom/cmcm/orion/picks/impl/a/b$a;->b:Lcom/cmcm/orion/picks/impl/a/b$b;

    .line 736
    invoke-static {p2}, Lcom/cmcm/orion/picks/impl/a/b$b;->e(Lcom/cmcm/orion/picks/impl/a/b$b;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/cmcm/orion/picks/impl/a/b$a;->c:[Z

    .line 737
    return-void

    .line 736
    :cond_0
    invoke-static {p1}, Lcom/cmcm/orion/picks/impl/a/b;->f(Lcom/cmcm/orion/picks/impl/a/b;)I

    move-result v0

    new-array v0, v0, [Z

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/cmcm/orion/picks/impl/a/b;Lcom/cmcm/orion/picks/impl/a/b$b;B)V
    .locals 0

    .prologue
    .line 728
    invoke-direct {p0, p1, p2}, Lcom/cmcm/orion/picks/impl/a/b$a;-><init>(Lcom/cmcm/orion/picks/impl/a/b;Lcom/cmcm/orion/picks/impl/a/b$b;)V

    return-void
.end method

.method static synthetic a(Lcom/cmcm/orion/picks/impl/a/b$a;)Lcom/cmcm/orion/picks/impl/a/b$b;
    .locals 1

    .prologue
    .line 728
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/a/b$a;->b:Lcom/cmcm/orion/picks/impl/a/b$b;

    return-object v0
.end method

.method static synthetic b(Lcom/cmcm/orion/picks/impl/a/b$a;)[Z
    .locals 1

    .prologue
    .line 728
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/a/b$a;->c:[Z

    return-object v0
.end method

.method static synthetic c(Lcom/cmcm/orion/picks/impl/a/b$a;)Z
    .locals 1

    .prologue
    .line 728
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cmcm/orion/picks/impl/a/b$a;->d:Z

    return v0
.end method


# virtual methods
.method public final a()Ljava/io/OutputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 776
    iget-object v2, p0, Lcom/cmcm/orion/picks/impl/a/b$a;->a:Lcom/cmcm/orion/picks/impl/a/b;

    monitor-enter v2

    .line 777
    :try_start_0
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/a/b$a;->b:Lcom/cmcm/orion/picks/impl/a/b$b;

    invoke-static {v0}, Lcom/cmcm/orion/picks/impl/a/b$b;->b(Lcom/cmcm/orion/picks/impl/a/b$b;)Lcom/cmcm/orion/picks/impl/a/b$a;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 778
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 798
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 780
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/a/b$a;->b:Lcom/cmcm/orion/picks/impl/a/b$b;

    invoke-static {v0}, Lcom/cmcm/orion/picks/impl/a/b$b;->e(Lcom/cmcm/orion/picks/impl/a/b$b;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 781
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/a/b$a;->c:[Z

    const/4 v1, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v1

    .line 783
    :cond_1
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/a/b$a;->b:Lcom/cmcm/orion/picks/impl/a/b$b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cmcm/orion/picks/impl/a/b$b;->b(I)Ljava/io/File;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 786
    :try_start_2
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v1, v0

    .line 797
    :goto_0
    :try_start_3
    new-instance v0, Lcom/cmcm/orion/picks/impl/a/b$a$a;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v3}, Lcom/cmcm/orion/picks/impl/a/b$a$a;-><init>(Lcom/cmcm/orion/picks/impl/a/b$a;Ljava/io/OutputStream;B)V

    monitor-exit v2

    :goto_1
    return-object v0

    .line 789
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/a/b$a;->a:Lcom/cmcm/orion/picks/impl/a/b;

    invoke-static {v0}, Lcom/cmcm/orion/picks/impl/a/b;->g(Lcom/cmcm/orion/picks/impl/a/b;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 791
    :try_start_4
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v1, v0

    .line 795
    goto :goto_0

    .line 794
    :catch_1
    move-exception v0

    :try_start_5
    invoke-static {}, Lcom/cmcm/orion/picks/impl/a/b;->d()Ljava/io/OutputStream;

    move-result-object v0

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method

.method public final b()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 817
    iget-boolean v0, p0, Lcom/cmcm/orion/picks/impl/a/b$a;->d:Z

    if-eqz v0, :cond_0

    .line 818
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/a/b$a;->a:Lcom/cmcm/orion/picks/impl/a/b;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/cmcm/orion/picks/impl/a/b;->a(Lcom/cmcm/orion/picks/impl/a/b;Lcom/cmcm/orion/picks/impl/a/b$a;Z)V

    .line 819
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/a/b$a;->a:Lcom/cmcm/orion/picks/impl/a/b;

    iget-object v1, p0, Lcom/cmcm/orion/picks/impl/a/b$a;->b:Lcom/cmcm/orion/picks/impl/a/b$b;

    invoke-static {v1}, Lcom/cmcm/orion/picks/impl/a/b$b;->d(Lcom/cmcm/orion/picks/impl/a/b$b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmcm/orion/picks/impl/a/b;->c(Ljava/lang/String;)Z

    .line 823
    :goto_0
    iput-boolean v2, p0, Lcom/cmcm/orion/picks/impl/a/b$a;->e:Z

    .line 824
    return-void

    .line 821
    :cond_0
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/a/b$a;->a:Lcom/cmcm/orion/picks/impl/a/b;

    invoke-static {v0, p0, v2}, Lcom/cmcm/orion/picks/impl/a/b;->a(Lcom/cmcm/orion/picks/impl/a/b;Lcom/cmcm/orion/picks/impl/a/b$a;Z)V

    goto :goto_0
.end method

.method public final c()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 831
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/a/b$a;->a:Lcom/cmcm/orion/picks/impl/a/b;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/cmcm/orion/picks/impl/a/b;->a(Lcom/cmcm/orion/picks/impl/a/b;Lcom/cmcm/orion/picks/impl/a/b$a;Z)V

    .line 832
    return-void
.end method
