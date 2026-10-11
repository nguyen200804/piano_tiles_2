.class Lcom/cmplay/crashreport/o;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cmplay/crashreport/f;


# instance fields
.field final synthetic a:Lcom/cmplay/crashreport/m;


# direct methods
.method constructor <init>(Lcom/cmplay/crashreport/m;)V
    .locals 0

    iput-object p1, p0, Lcom/cmplay/crashreport/o;->a:Lcom/cmplay/crashreport/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/cmplay/crashreport/o;->a:Lcom/cmplay/crashreport/m;

    invoke-static {v0, p1}, Lcom/cmplay/crashreport/m;->a(Lcom/cmplay/crashreport/m;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
