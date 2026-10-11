.class Lcom/cmplay/c/a/a$1;
.super Ljava/lang/Object;
.source "CCrashUpdater.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/c/a/a;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmplay/c/a/a;


# direct methods
.method constructor <init>(Lcom/cmplay/c/a/a;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/cmplay/c/a/a$1;->a:Lcom/cmplay/c/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/cmplay/c/a/a$1;->a:Lcom/cmplay/c/a/a;

    invoke-static {v0}, Lcom/cmplay/c/a/a;->c(Lcom/cmplay/c/a/a;)V

    .line 135
    return-void
.end method
