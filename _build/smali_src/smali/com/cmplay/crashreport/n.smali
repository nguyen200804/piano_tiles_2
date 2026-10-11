.class Lcom/cmplay/crashreport/n;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/cmplay/crashreport/m;


# direct methods
.method constructor <init>(Lcom/cmplay/crashreport/m;)V
    .locals 0

    iput-object p1, p0, Lcom/cmplay/crashreport/n;->a:Lcom/cmplay/crashreport/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/cmplay/crashreport/n;->a:Lcom/cmplay/crashreport/m;

    invoke-static {}, Lcom/cmplay/crashreport/m;->e()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmplay/crashreport/m;->a(Lcom/cmplay/crashreport/m;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
