.class Lcom/cmplay/util/s$45;
.super Ljava/lang/Object;
.source "NativeInterfaceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/util/s;->a(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Z

.field final synthetic d:Lcom/cmplay/util/s;


# direct methods
.method constructor <init>(Lcom/cmplay/util/s;Landroid/app/Activity;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 926
    iput-object p1, p0, Lcom/cmplay/util/s$45;->d:Lcom/cmplay/util/s;

    iput-object p2, p0, Lcom/cmplay/util/s$45;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/cmplay/util/s$45;->b:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/cmplay/util/s$45;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 929
    iget-object v2, p0, Lcom/cmplay/util/s$45;->a:Landroid/app/Activity;

    iget-object v3, p0, Lcom/cmplay/util/s$45;->b:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/cmplay/util/s$45;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v2, v3, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 930
    const/16 v2, 0x11

    invoke-virtual {v0, v2, v1, v1}, Landroid/widget/Toast;->setGravity(III)V

    .line 931
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 932
    return-void

    :cond_0
    move v0, v1

    .line 929
    goto :goto_0
.end method
