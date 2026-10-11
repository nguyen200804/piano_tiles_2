.class Lcom/cmplay/util/s$9;
.super Ljava/lang/Object;
.source "NativeInterfaceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/util/s;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/cmplay/util/s;


# direct methods
.method constructor <init>(Lcom/cmplay/util/s;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1082
    iput-object p1, p0, Lcom/cmplay/util/s$9;->d:Lcom/cmplay/util/s;

    iput-object p2, p0, Lcom/cmplay/util/s$9;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/cmplay/util/s$9;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/cmplay/util/s$9;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1085
    iget-object v0, p0, Lcom/cmplay/util/s$9;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/cmplay/util/s$9;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmplay/util/s$9;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/cmplay/util/NativeUtil;->subscribePayCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1086
    return-void
.end method
