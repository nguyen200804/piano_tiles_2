.class Lcom/jirbo/adcolony/ADCVideo$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jirbo/adcolony/ADCVideo;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jirbo/adcolony/ADCVideo;


# direct methods
.method constructor <init>(Lcom/jirbo/adcolony/ADCVideo;)V
    .locals 0

    .prologue
    .line 773
    iput-object p1, p0, Lcom/jirbo/adcolony/ADCVideo$3;->a:Lcom/jirbo/adcolony/ADCVideo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "media_player"    # Landroid/media/MediaPlayer;

    .prologue
    .line 777
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo$3;->a:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v1, p0, Lcom/jirbo/adcolony/ADCVideo$3;->a:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCVideo;->M:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/ADCVideo;->setContentView(Landroid/view/View;)V

    .line 778
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo$3;->a:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideo;->O:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 779
    const/4 v0, 0x0

    sput-boolean v0, Lcom/jirbo/adcolony/ADCVideo;->f:Z

    .line 780
    return-void
.end method
