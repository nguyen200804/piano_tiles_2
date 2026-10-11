.class Lcom/cmplay/internalpush/data/ParseCloudDataVideo$5;
.super Ljava/lang/Object;
.source "ParseCloudDataVideo.java"

# interfaces
.implements Lcom/cmplay/base/util/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->c(Ljava/lang/String;)V
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
    .line 535
    iput-object p1, p0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo$5;->a:Lcom/cmplay/internalpush/data/ParseCloudDataVideo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 543
    const-string v0, "\u89c6\u9891\u56fe\u7247\u4e0b\u8f7d\u6210\u529f--!"

    invoke-static {v0}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;)V

    .line 544
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 538
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u89c6\u9891\u56fe\u7247\u4e0b\u8f7d\u5931\u8d25!  errorCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;)V

    .line 539
    return-void
.end method
