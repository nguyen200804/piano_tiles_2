.class Lcom/cmplay/util/p$1;
.super Ljava/util/TimerTask;
.source "MusicTrackPlayMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/util/p;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmplay/util/p;


# direct methods
.method constructor <init>(Lcom/cmplay/util/p;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/cmplay/util/p$1;->a:Lcom/cmplay/util/p;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/cmplay/util/p$1;->a:Lcom/cmplay/util/p;

    invoke-static {v0}, Lcom/cmplay/util/p;->a(Lcom/cmplay/util/p;)V

    .line 54
    return-void
.end method
