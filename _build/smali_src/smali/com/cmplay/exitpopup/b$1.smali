.class Lcom/cmplay/exitpopup/b$1;
.super Ljava/lang/Object;
.source "ExitGameParseCloudData.java"

# interfaces
.implements Lcom/cmplay/base/util/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/exitpopup/b;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmplay/exitpopup/b;


# direct methods
.method constructor <init>(Lcom/cmplay/exitpopup/b;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/cmplay/exitpopup/b$1;->a:Lcom/cmplay/exitpopup/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 108
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/cmplay/exitpopup/b$1;->a:Lcom/cmplay/exitpopup/b;

    iget-object v0, v0, Lcom/cmplay/exitpopup/b;->b:Ljava/util/HashMap;

    invoke-static {}, Lcom/cmplay/util/NativeUtil;->isNetworkAvailable()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    return-void
.end method
