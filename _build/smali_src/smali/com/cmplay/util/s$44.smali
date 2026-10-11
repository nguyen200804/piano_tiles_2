.class Lcom/cmplay/util/s$44;
.super Ljava/lang/Object;
.source "NativeInterfaceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/util/s;->h(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/cmplay/util/s;


# direct methods
.method constructor <init>(Lcom/cmplay/util/s;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 915
    iput-object p1, p0, Lcom/cmplay/util/s$44;->c:Lcom/cmplay/util/s;

    iput-object p2, p0, Lcom/cmplay/util/s$44;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/cmplay/util/s$44;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 918
    iget-object v0, p0, Lcom/cmplay/util/s$44;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/cmplay/util/s$44;->b:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 919
    return-void
.end method
