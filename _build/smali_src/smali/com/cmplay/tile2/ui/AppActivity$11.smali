.class Lcom/cmplay/tile2/ui/AppActivity$11;
.super Ljava/lang/Object;
.source "AppActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/tile2/ui/AppActivity;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmplay/tile2/ui/AppActivity;


# direct methods
.method constructor <init>(Lcom/cmplay/tile2/ui/AppActivity;)V
    .locals 0

    .prologue
    .line 287
    iput-object p1, p0, Lcom/cmplay/tile2/ui/AppActivity$11;->a:Lcom/cmplay/tile2/ui/AppActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 290
    invoke-static {}, Lcom/cmplay/b/b;->a()Lcom/cmplay/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmplay/b/b;->c()V

    .line 291
    return-void
.end method
