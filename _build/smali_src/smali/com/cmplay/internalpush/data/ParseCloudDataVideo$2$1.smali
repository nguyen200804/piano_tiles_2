.class Lcom/cmplay/internalpush/data/ParseCloudDataVideo$2$1;
.super Ljava/util/TimerTask;
.source "ParseCloudDataVideo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/internalpush/data/ParseCloudDataVideo$2;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmplay/internalpush/data/ParseCloudDataVideo$2;


# direct methods
.method constructor <init>(Lcom/cmplay/internalpush/data/ParseCloudDataVideo$2;)V
    .locals 0

    .prologue
    .line 197
    iput-object p1, p0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo$2$1;->a:Lcom/cmplay/internalpush/data/ParseCloudDataVideo$2;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 200
    const-string v0, "internal_push"

    const-string v1, "ParseCloudDataVideo.IVideoDownloadFinishCallback TimerTask    \u5ef6\u65f6\u65f6\u95f4\u5230\uff0c\u5f00\u59cb\u4e0b\u8f7d\u89c6\u9891"

    invoke-static {v0, v1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo$2$1;->a:Lcom/cmplay/internalpush/data/ParseCloudDataVideo$2;

    iget-object v0, v0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo$2;->a:Lcom/cmplay/internalpush/data/ParseCloudDataVideo;

    invoke-virtual {v0}, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->f()V

    .line 203
    const-string v0, "internal_push"

    const-string v1, "ParseCloudDataVideo.IVideoDownloadFinishCallback TimerTask    \u4e0b\u8f7d\u89c6\u9891\u5b8c\u6210"

    invoke-static {v0, v1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    return-void
.end method
