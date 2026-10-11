.class Lcom/cmplay/internalpush/data/ParseCloudDataVideo$1;
.super Ljava/lang/Object;
.source "ParseCloudDataVideo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->a(Ljava/lang/String;Lcom/cmplay/internalpush/video/b/a;Lcom/cmplay/internalpush/video/b/c;)V
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
    .line 144
    iput-object p1, p0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo$1;->a:Lcom/cmplay/internalpush/data/ParseCloudDataVideo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 147
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 148
    iget-object v0, p0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo$1;->a:Lcom/cmplay/internalpush/data/ParseCloudDataVideo;

    iget-object v0, v0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmplay/internalpush/data/c;

    .line 149
    iget-object v3, p0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo$1;->a:Lcom/cmplay/internalpush/data/ParseCloudDataVideo;

    invoke-virtual {v0}, Lcom/cmplay/internalpush/data/c;->F()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->a(Lcom/cmplay/internalpush/data/ParseCloudDataVideo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 150
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo$1;->a:Lcom/cmplay/internalpush/data/ParseCloudDataVideo;

    invoke-static {v0}, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->a(Lcom/cmplay/internalpush/data/ParseCloudDataVideo;)Ljava/util/ArrayList;

    move-result-object v0

    .line 155
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmplay/internalpush/data/c;

    .line 156
    iget-object v3, p0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo$1;->a:Lcom/cmplay/internalpush/data/ParseCloudDataVideo;

    invoke-virtual {v0}, Lcom/cmplay/internalpush/data/c;->F()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->a(Lcom/cmplay/internalpush/data/ParseCloudDataVideo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 157
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 160
    :cond_1
    invoke-static {}, Lcom/cmplay/internalpush/video/a/a;->a()Lcom/cmplay/internalpush/video/a/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/cmplay/internalpush/video/a/a;->a(Ljava/util/ArrayList;)V

    .line 161
    return-void
.end method
