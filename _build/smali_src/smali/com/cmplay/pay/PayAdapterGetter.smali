.class public Lcom/cmplay/pay/PayAdapterGetter;
.super Ljava/lang/Object;
.source "PayAdapterGetter.java"


# static fields
.field private static sInstance:Lcom/cmplay/pay/PayAdapterGetter;


# instance fields
.field private sAdapter:Lcom/cmplay/pay/PayAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/cmplay/pay/PayAdapterGetter;
    .locals 2

    .prologue
    .line 17
    sget-object v0, Lcom/cmplay/pay/PayAdapterGetter;->sInstance:Lcom/cmplay/pay/PayAdapterGetter;

    if-nez v0, :cond_1

    .line 18
    const-class v1, Lcom/cmplay/pay/PayAdapterGetter;

    monitor-enter v1

    .line 19
    :try_start_0
    sget-object v0, Lcom/cmplay/pay/PayAdapterGetter;->sInstance:Lcom/cmplay/pay/PayAdapterGetter;

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Lcom/cmplay/pay/PayAdapterGetter;

    invoke-direct {v0}, Lcom/cmplay/pay/PayAdapterGetter;-><init>()V

    sput-object v0, Lcom/cmplay/pay/PayAdapterGetter;->sInstance:Lcom/cmplay/pay/PayAdapterGetter;

    .line 22
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    :cond_1
    sget-object v0, Lcom/cmplay/pay/PayAdapterGetter;->sInstance:Lcom/cmplay/pay/PayAdapterGetter;

    return-object v0

    .line 22
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public getAdapter()Lcom/cmplay/base/a;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/cmplay/pay/PayAdapterGetter;->sAdapter:Lcom/cmplay/pay/PayAdapter;

    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    new-instance v0, Lcom/cmplay/pay/PayAdapter;

    invoke-direct {v0}, Lcom/cmplay/pay/PayAdapter;-><init>()V

    iput-object v0, p0, Lcom/cmplay/pay/PayAdapterGetter;->sAdapter:Lcom/cmplay/pay/PayAdapter;

    .line 30
    iget-object v0, p0, Lcom/cmplay/pay/PayAdapterGetter;->sAdapter:Lcom/cmplay/pay/PayAdapter;

    invoke-virtual {v0, p1}, Lcom/cmplay/pay/PayAdapter;->init(Landroid/content/Context;)V

    .line 31
    return-void
.end method
