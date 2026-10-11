.class Lcom/cmplay/tile2/ui/AppActivity$12$1;
.super Ljava/lang/Object;
.source "AppActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/tile2/ui/AppActivity$12;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmplay/tile2/ui/AppActivity$12;


# direct methods
.method constructor <init>(Lcom/cmplay/tile2/ui/AppActivity$12;)V
    .locals 0

    .prologue
    .line 309
    iput-object p1, p0, Lcom/cmplay/tile2/ui/AppActivity$12$1;->a:Lcom/cmplay/tile2/ui/AppActivity$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 312
    const-string v0, "internal_push"

    const-string v1, "NativeUtil.onOpenScreenClose()"

    invoke-static {v0, v1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    invoke-static {}, Lcom/cmplay/util/NativeUtil;->onOpenScreenClose()V

    .line 314
    return-void
.end method
