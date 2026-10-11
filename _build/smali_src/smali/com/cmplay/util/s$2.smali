.class Lcom/cmplay/util/s$2;
.super Ljava/lang/Object;
.source "NativeInterfaceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/util/s;->a(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/cmplay/util/s;


# direct methods
.method constructor <init>(Lcom/cmplay/util/s;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 985
    iput-object p1, p0, Lcom/cmplay/util/s$2;->c:Lcom/cmplay/util/s;

    iput-object p2, p0, Lcom/cmplay/util/s$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/cmplay/util/s$2;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 989
    iget-object v0, p0, Lcom/cmplay/util/s$2;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/cmplay/util/s$2;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/cmplay/util/NativeUtil;->sendConsumeInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 990
    return-void
.end method
