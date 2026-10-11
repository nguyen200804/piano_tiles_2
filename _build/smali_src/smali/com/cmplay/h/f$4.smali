.class Lcom/cmplay/h/f$4;
.super Ljava/lang/Object;
.source "ShareHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/h/f;->c(I)Z
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
    .line 1008
    iput-object p1, p0, Lcom/cmplay/h/f$4;->c:Lcom/cmplay/h/f;

    iput p2, p0, Lcom/cmplay/h/f$4;->a:I

    iput-object p3, p0, Lcom/cmplay/h/f$4;->b:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1011
    new-instance v0, Lcom/cmplay/h/e;

    invoke-direct {v0}, Lcom/cmplay/h/e;-><init>()V

    .line 1012
    const-string v1, "share_how_fast"

    invoke-static {v1}, Lcom/cmplay/util/NativeUtil;->getLanguageTextByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1013
    invoke-virtual {v0, v1}, Lcom/cmplay/h/e;->b(Ljava/lang/String;)V

    .line 1014
    iget v1, p0, Lcom/cmplay/h/f$4;->a:I

    invoke-static {v3, v1}, Lcom/cmplay/h/d;->a(II)Ljava/lang/String;

    move-result-object v1

    .line 1015
    invoke-virtual {v0, v1}, Lcom/cmplay/h/e;->a(Ljava/lang/String;)V

    .line 1016
    iget v1, p0, Lcom/cmplay/h/f$4;->a:I

    invoke-virtual {v0, v3, v1}, Lcom/cmplay/h/e;->a(II)V

    .line 1017
    iget-object v1, p0, Lcom/cmplay/h/f$4;->c:Lcom/cmplay/h/f;

    iget-object v2, p0, Lcom/cmplay/h/f$4;->b:Landroid/app/Activity;

    invoke-virtual {v1, v2, v0, v3}, Lcom/cmplay/h/f;->a(Landroid/app/Activity;Lcom/cmplay/h/e;I)Z

    .line 1018
    return-void
.end method
