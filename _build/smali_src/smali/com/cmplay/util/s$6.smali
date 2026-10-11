.class Lcom/cmplay/util/s$6;
.super Ljava/lang/Object;
.source "NativeInterfaceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/util/s;->S()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmplay/util/s;


# direct methods
.method constructor <init>(Lcom/cmplay/util/s;)V
    .locals 0

    .prologue
    .line 1046
    iput-object p1, p0, Lcom/cmplay/util/s$6;->a:Lcom/cmplay/util/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 1050
    invoke-static {}, Lcom/cmplay/util/NativeUtil;->backKeyClicked()V

    .line 1051
    return-void
.end method
