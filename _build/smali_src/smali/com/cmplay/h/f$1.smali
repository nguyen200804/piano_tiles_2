.class Lcom/cmplay/h/f$1;
.super Ljava/lang/Object;
.source "ShareHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/h/f;->b(Landroid/app/Activity;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/cmplay/h/f;


# direct methods
.method constructor <init>(Lcom/cmplay/h/f;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 251
    iput-object p1, p0, Lcom/cmplay/h/f$1;->b:Lcom/cmplay/h/f;

    iput-object p2, p0, Lcom/cmplay/h/f$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 255
    sget-object v0, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/cmplay/h/f$1;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 256
    return-void
.end method
