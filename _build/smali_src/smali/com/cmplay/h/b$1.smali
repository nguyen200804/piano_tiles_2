.class Lcom/cmplay/h/b$1;
.super Ljava/lang/Object;
.source "FBInfocClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/h/b;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmplay/h/b;


# direct methods
.method constructor <init>(Lcom/cmplay/h/b;)V
    .locals 0

    .prologue
    .line 202
    iput-object p1, p0, Lcom/cmplay/h/b$1;->a:Lcom/cmplay/h/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 205
    invoke-static {}, Lcom/cmplay/util/NativeUtil;->isFBEverLoginBefore()Z

    move-result v0

    .line 207
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 208
    const-string v2, "login_state"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    iget-object v0, p0, Lcom/cmplay/h/b$1;->a:Lcom/cmplay/h/b;

    const-string v2, "login_state"

    invoke-virtual {v0, v2, v1}, Lcom/cmplay/h/b;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 214
    return-void
.end method
