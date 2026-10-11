.class Lcom/cmplay/crashreport/v;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/cmplay/crashreport/WifiStateReceiver;


# direct methods
.method constructor <init>(Lcom/cmplay/crashreport/WifiStateReceiver;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/cmplay/crashreport/v;->b:Lcom/cmplay/crashreport/WifiStateReceiver;

    iput-object p2, p0, Lcom/cmplay/crashreport/v;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/cmplay/crashreport/k;->a()Lcom/cmplay/crashreport/k;

    move-result-object v0

    iget-object v1, p0, Lcom/cmplay/crashreport/v;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/cmplay/crashreport/k;->a(Landroid/content/Context;)V

    return-void
.end method
