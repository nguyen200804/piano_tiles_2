.class Lcom/cmplay/util/s$4;
.super Ljava/lang/Object;
.source "NativeInterfaceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/util/s;->i(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/cmplay/util/s;


# direct methods
.method constructor <init>(Lcom/cmplay/util/s;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1026
    iput-object p1, p0, Lcom/cmplay/util/s$4;->b:Lcom/cmplay/util/s;

    iput-object p2, p0, Lcom/cmplay/util/s$4;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1030
    iget-object v0, p0, Lcom/cmplay/util/s$4;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/cmplay/util/NativeUtil;->getPriceCallback(Ljava/lang/String;)V

    .line 1031
    return-void
.end method
