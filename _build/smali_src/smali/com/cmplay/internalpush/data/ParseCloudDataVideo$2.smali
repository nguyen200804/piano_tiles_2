.class Lcom/cmplay/internalpush/data/ParseCloudDataVideo$2;
.super Ljava/lang/Object;
.source "ParseCloudDataVideo.java"

# interfaces
.implements Lcom/cmplay/internalpush/video/b/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmplay/internalpush/data/ParseCloudDataVideo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmplay/internalpush/data/ParseCloudDataVideo;


# direct methods
.method constructor <init>(Lcom/cmplay/internalpush/data/ParseCloudDataVideo;)V
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo$2;->a:Lcom/cmplay/internalpush/data/ParseCloudDataVideo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 188
    sget-boolean v0, Lcom/cmplay/internalpush/video/e;->b:Z

    if-nez v0, :cond_0

    .line 189
    const-string v0, "internal_push"

    const-string v1, "ParseCloudDataVideo.IVideoDownloadFinishCallback  \u5148\u7b49\u5f85\u5176\u5176\u5b83\u89c6\u9891\u62c9\u53d6\uff0cinnerpush\u4e0d\u88ab\u5141\u8bb8\u62c9\u53d6\u89c6\u9891 not allowed load video"

    invoke-static {v0, v1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    :goto_0
    return-void

    .line 194
    :cond_0
    invoke-static {}, Lcom/cmplay/base/util/i;->b()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "inner_push_common_section"

    const-string v2, "inner_push_reward_video_init_delay_time"

    const/16 v3, 0x28

    invoke-static {v0, v1, v2, v3}, Lcom/cmplay/internalpush/f;->a(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 196
    mul-int/lit16 v0, v0, 0x3e8

    .line 197
    iget-object v1, p0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo$2;->a:Lcom/cmplay/internalpush/data/ParseCloudDataVideo;

    new-instance v2, Lcom/cmplay/internalpush/data/ParseCloudDataVideo$2$1;

    invoke-direct {v2, p0}, Lcom/cmplay/internalpush/data/ParseCloudDataVideo$2$1;-><init>(Lcom/cmplay/internalpush/data/ParseCloudDataVideo$2;)V

    invoke-virtual {v1, v0, v2}, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->a(ILjava/util/TimerTask;)V

    goto :goto_0
.end method
