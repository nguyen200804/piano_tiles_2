.class final Lcom/cmcm/orion/utils/a$1;
.super Ljava/lang/Object;
.source "BackgroundThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmcm/orion/utils/a;->a(Landroid/os/AsyncTask;[Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/os/AsyncTask;

.field final synthetic b:[Ljava/lang/Object;


# direct methods
.method constructor <init>(Landroid/os/AsyncTask;[Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/cmcm/orion/utils/a$1;->a:Landroid/os/AsyncTask;

    iput-object p2, p0, Lcom/cmcm/orion/utils/a$1;->b:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 145
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 146
    iget-object v0, p0, Lcom/cmcm/orion/utils/a$1;->a:Landroid/os/AsyncTask;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lcom/cmcm/orion/utils/a$1;->b:[Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 152
    :goto_0
    return-void

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/cmcm/orion/utils/a$1;->a:Landroid/os/AsyncTask;

    iget-object v1, p0, Lcom/cmcm/orion/utils/a$1;->b:[Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 152
    :catch_0
    move-exception v0

    goto :goto_0
.end method
