.class Lcom/cmplay/d/c$1;
.super Ljava/lang/Object;
.source "MainSceneListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/d/c;->a(Lcom/cmplay/d/a$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmplay/d/c;


# direct methods
.method constructor <init>(Lcom/cmplay/d/c;)V
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/cmplay/d/c$1;->a:Lcom/cmplay/d/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 24
    invoke-static {}, Lcom/cmplay/b/b;->a()Lcom/cmplay/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmplay/b/b;->e()V

    .line 25
    return-void
.end method
