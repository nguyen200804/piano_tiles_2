.class Lcom/cmplay/h/f$5;
.super Ljava/lang/Object;
.source "ShareHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/h/f;->d(ILjava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Landroid/app/Activity;

.field final synthetic d:Lcom/cmplay/h/f;


# direct methods
.method constructor <init>(Lcom/cmplay/h/f;Ljava/lang/String;ILandroid/app/Activity;)V
    .locals 0

    .prologue
    .line 1029
    iput-object p1, p0, Lcom/cmplay/h/f$5;->d:Lcom/cmplay/h/f;

    iput-object p2, p0, Lcom/cmplay/h/f$5;->a:Ljava/lang/String;

    iput p3, p0, Lcom/cmplay/h/f$5;->b:I

    iput-object p4, p0, Lcom/cmplay/h/f$5;->c:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1033
    new-instance v0, Lcom/cmplay/h/e;

    invoke-direct {v0}, Lcom/cmplay/h/e;-><init>()V

    .line 1034
    iget-object v1, p0, Lcom/cmplay/h/f$5;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/cmplay/h/e;->f(Ljava/lang/String;)V

    .line 1035
    const-string v1, "invite_index"

    invoke-static {v1}, Lcom/cmplay/util/NativeUtil;->getLanguageTextByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmplay/h/e;->b(Ljava/lang/String;)V

    .line 1036
    iget v1, p0, Lcom/cmplay/h/f$5;->b:I

    invoke-virtual {v0, v1}, Lcom/cmplay/h/e;->c(I)V

    .line 1037
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/cmplay/h/e;->b(I)V

    .line 1038
    iget-object v1, p0, Lcom/cmplay/h/f$5;->d:Lcom/cmplay/h/f;

    iget-object v2, p0, Lcom/cmplay/h/f$5;->c:Landroid/app/Activity;

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v0, v3}, Lcom/cmplay/h/f;->a(Landroid/app/Activity;Lcom/cmplay/h/e;I)Z

    .line 1039
    return-void
.end method
