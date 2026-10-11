.class Lcom/applovin/impl/adview/ae;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field final synthetic a:Lcom/applovin/impl/adview/ac;


# direct methods
.method constructor <init>(Lcom/applovin/impl/adview/ac;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/adview/ae;->a:Lcom/applovin/impl/adview/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    const-string v0, "AdWebView"

    const-string v1, "Received a LongClick event."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0
.end method
