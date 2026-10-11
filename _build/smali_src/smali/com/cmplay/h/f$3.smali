.class Lcom/cmplay/h/f$3;
.super Ljava/lang/Object;
.source "ShareHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/h/f;->b(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Lcom/cmplay/h/f;


# direct methods
.method constructor <init>(Lcom/cmplay/h/f;ILandroid/app/Activity;)V
    .locals 0

    .prologue
    .line 970
    iput-object p1, p0, Lcom/cmplay/h/f$3;->c:Lcom/cmplay/h/f;

    iput p2, p0, Lcom/cmplay/h/f$3;->a:I

    iput-object p3, p0, Lcom/cmplay/h/f$3;->b:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 973
    new-instance v0, Lcom/cmplay/h/e;

    invoke-direct {v0}, Lcom/cmplay/h/e;-><init>()V

    .line 974
    const-string v1, "share_how_fast"

    invoke-static {v1}, Lcom/cmplay/util/NativeUtil;->getLanguageTextByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 975
    invoke-virtual {v0, v1}, Lcom/cmplay/h/e;->b(Ljava/lang/String;)V

    .line 976
    iget v1, p0, Lcom/cmplay/h/f$3;->a:I

    invoke-static {v3, v1}, Lcom/cmplay/h/d;->a(II)Ljava/lang/String;

    move-result-object v1

    .line 977
    invoke-virtual {v0, v1}, Lcom/cmplay/h/e;->a(Ljava/lang/String;)V

    .line 979
    invoke-static {}, Lcom/cmplay/util/NativeUtil;->isFacebookInstalled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 980
    iget v1, p0, Lcom/cmplay/h/f$3;->a:I

    invoke-virtual {v0, v3, v1}, Lcom/cmplay/h/e;->a(II)V

    .line 981
    iget-object v1, p0, Lcom/cmplay/h/f$3;->c:Lcom/cmplay/h/f;

    iget-object v2, p0, Lcom/cmplay/h/f$3;->b:Landroid/app/Activity;

    invoke-virtual {v1, v2, v0, v3}, Lcom/cmplay/h/f;->a(Landroid/app/Activity;Lcom/cmplay/h/e;I)Z

    .line 996
    :goto_0
    return-void

    .line 984
    :cond_0
    invoke-static {}, Lcom/cmplay/util/NativeUtil;->isWeChatInstalled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 985
    const/4 v1, 0x6

    iget v2, p0, Lcom/cmplay/h/f$3;->a:I

    invoke-virtual {v0, v1, v2}, Lcom/cmplay/h/e;->a(II)V

    .line 986
    iget-object v1, p0, Lcom/cmplay/h/f$3;->c:Lcom/cmplay/h/f;

    iget-object v2, p0, Lcom/cmplay/h/f$3;->b:Landroid/app/Activity;

    invoke-virtual {v1, v2, v0}, Lcom/cmplay/h/f;->c(Landroid/app/Activity;Lcom/cmplay/h/e;)Z

    goto :goto_0

    .line 994
    :cond_1
    const/4 v1, 0x5

    iget v2, p0, Lcom/cmplay/h/f$3;->a:I

    invoke-virtual {v0, v1, v2}, Lcom/cmplay/h/e;->a(II)V

    .line 995
    iget-object v1, p0, Lcom/cmplay/h/f$3;->c:Lcom/cmplay/h/f;

    iget-object v2, p0, Lcom/cmplay/h/f$3;->b:Landroid/app/Activity;

    invoke-virtual {v1, v2, v0}, Lcom/cmplay/h/f;->e(Landroid/app/Activity;Lcom/cmplay/h/e;)V

    goto :goto_0
.end method
