.class Lcom/applovin/impl/sdk/br;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field final synthetic a:Lcom/applovin/impl/sdk/bq;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/bq;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/br;->a:Lcom/applovin/impl/sdk/bq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/br;->a:Lcom/applovin/impl/sdk/bq;

    iget-object v0, v0, Lcom/applovin/impl/sdk/bq;->a:Lcom/applovin/impl/sdk/bo;

    invoke-static {v0}, Lcom/applovin/impl/sdk/bo;->b(Lcom/applovin/impl/sdk/bo;)Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v0

    const-string v1, "TaskManager"

    const-string v2, "Caught unhandled exception"

    invoke-interface {v0, v1, v2, p2}, Lcom/applovin/sdk/AppLovinLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
