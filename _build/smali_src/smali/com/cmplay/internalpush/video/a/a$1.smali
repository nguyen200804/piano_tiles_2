.class Lcom/cmplay/internalpush/video/a/a$1;
.super Ljava/lang/Object;
.source "VideoDownloadTaskManager.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/internalpush/video/a/a;->a(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmplay/internalpush/video/a/a;


# direct methods
.method constructor <init>(Lcom/cmplay/internalpush/video/a/a;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/cmplay/internalpush/video/a/a$1;->a:Lcom/cmplay/internalpush/video/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "filename"    # Ljava/lang/String;

    .prologue
    .line 110
    const-string v0, "innerpush_"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 112
    return v0
.end method
