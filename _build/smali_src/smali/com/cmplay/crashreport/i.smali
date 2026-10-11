.class Lcom/cmplay/crashreport/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/cmplay/crashreport/CrashReportService;


# direct methods
.method constructor <init>(Lcom/cmplay/crashreport/CrashReportService;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmplay/crashreport/i;->b:Lcom/cmplay/crashreport/CrashReportService;

    iput-object p2, p0, Lcom/cmplay/crashreport/i;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/cmplay/crashreport/i;->b:Lcom/cmplay/crashreport/CrashReportService;

    iget-object v1, p0, Lcom/cmplay/crashreport/i;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/cmplay/crashreport/CrashReportService;->a(Lcom/cmplay/crashreport/CrashReportService;Ljava/lang/String;)V

    return-void
.end method
