.class Lcom/cmplay/util/s$1;
.super Ljava/lang/Object;
.source "NativeInterfaceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/util/s;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:I

.field final synthetic e:Lcom/cmplay/util/s;


# direct methods
.method constructor <init>(Lcom/cmplay/util/s;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 609
    iput-object p1, p0, Lcom/cmplay/util/s$1;->e:Lcom/cmplay/util/s;

    iput-object p2, p0, Lcom/cmplay/util/s$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/cmplay/util/s$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/cmplay/util/s$1;->c:Ljava/lang/String;

    iput p5, p0, Lcom/cmplay/util/s$1;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 612
    const/4 v0, 0x3

    sget v1, Lcom/cmplay/h/d;->n:I

    if-ne v0, v1, :cond_0

    .line 616
    invoke-static {}, Lcom/cmplay/h/f;->b()Lcom/cmplay/h/f;

    move-result-object v0

    iget-object v1, p0, Lcom/cmplay/util/s$1;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmplay/util/s$1;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmplay/util/s$1;->c:Ljava/lang/String;

    iget v4, p0, Lcom/cmplay/util/s$1;->d:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/cmplay/h/f;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 625
    :goto_0
    return-void

    .line 619
    :cond_0
    invoke-static {}, Lcom/cmplay/util/NativeUtil;->getRankPercent()F

    move-result v0

    sput v0, Lcom/cmplay/h/d;->o:F

    .line 623
    invoke-static {}, Lcom/cmplay/h/f;->b()Lcom/cmplay/h/f;

    move-result-object v0

    iget-object v1, p0, Lcom/cmplay/util/s$1;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmplay/util/s$1;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmplay/util/s$1;->c:Ljava/lang/String;

    iget v4, p0, Lcom/cmplay/util/s$1;->d:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/cmplay/h/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method
