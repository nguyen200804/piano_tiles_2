.class Lcom/cmplay/crashreport/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/cmplay/crashreport/c;


# direct methods
.method constructor <init>(Lcom/cmplay/crashreport/c;)V
    .locals 0

    iput-object p1, p0, Lcom/cmplay/crashreport/d;->a:Lcom/cmplay/crashreport/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/cmplay/crashreport/d;->a:Lcom/cmplay/crashreport/c;

    invoke-static {v0}, Lcom/cmplay/crashreport/c;->a(Lcom/cmplay/crashreport/c;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Lcom/cmplay/crashreport/c;->b()J

    move-result-wide v2

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/cmplay/crashreport/d;->a:Lcom/cmplay/crashreport/c;

    invoke-static {v0}, Lcom/cmplay/crashreport/c;->c(Lcom/cmplay/crashreport/c;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/cmplay/crashreport/d;->a:Lcom/cmplay/crashreport/c;

    invoke-static {v1}, Lcom/cmplay/crashreport/c;->b(Lcom/cmplay/crashreport/c;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/cmplay/crashreport/d;->a:Lcom/cmplay/crashreport/c;

    invoke-static {v0}, Lcom/cmplay/crashreport/c;->c(Lcom/cmplay/crashreport/c;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/cmplay/crashreport/d;->a:Lcom/cmplay/crashreport/c;

    invoke-static {v1}, Lcom/cmplay/crashreport/c;->b(Lcom/cmplay/crashreport/c;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-static {}, Lcom/cmplay/crashreport/c;->c()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
