.class public Lcom/cmcm/dmc/sdk/g/e;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/cmcm/dmc/sdk/g/e;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/cmcm/dmc/sdk/g/e;
    .locals 2

    sget-object v0, Lcom/cmcm/dmc/sdk/g/e;->a:Lcom/cmcm/dmc/sdk/g/e;

    if-nez v0, :cond_1

    const-class v1, Lcom/cmcm/dmc/sdk/g/e;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/cmcm/dmc/sdk/g/e;->a:Lcom/cmcm/dmc/sdk/g/e;

    if-nez v0, :cond_0

    new-instance v0, Lcom/cmcm/dmc/sdk/g/e;

    invoke-direct {v0}, Lcom/cmcm/dmc/sdk/g/e;-><init>()V

    sput-object v0, Lcom/cmcm/dmc/sdk/g/e;->a:Lcom/cmcm/dmc/sdk/g/e;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/cmcm/dmc/sdk/g/e;->a:Lcom/cmcm/dmc/sdk/g/e;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/g/e;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/cmcm/dmc/sdk/g/e;->c:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cmcm/dmc/sdk/g/e;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/cmcm/dmc/sdk/g/e;->c:Ljava/lang/String;

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/g/e;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/cmcm/dmc/sdk/g/e;->b:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lcom/cmcm/dmc/sdk/g/e;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "00"

    iput-object v1, p0, Lcom/cmcm/dmc/sdk/g/e;->b:Ljava/lang/String;

    :cond_0
    iget-object v1, p0, Lcom/cmcm/dmc/sdk/g/e;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "00"

    iput-object v1, p0, Lcom/cmcm/dmc/sdk/g/e;->c:Ljava/lang/String;

    :cond_1
    iget-object v1, p0, Lcom/cmcm/dmc/sdk/g/e;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/cmcm/dmc/sdk/g/e;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
