.class public final Lcom/mopub/dg/d/f;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    sput-object v0, Lcom/mopub/dg/d/f;->a:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public static varargs a(Landroid/os/AsyncTask;[Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Lcom/mopub/dg/d/f;->a:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
