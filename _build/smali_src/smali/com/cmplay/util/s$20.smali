.class Lcom/cmplay/util/s$20;
.super Ljava/lang/Object;
.source "NativeInterfaceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/util/s;->e(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/cmplay/util/s;


# direct methods
.method constructor <init>(Lcom/cmplay/util/s;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 1727
    iput-object p1, p0, Lcom/cmplay/util/s$20;->c:Lcom/cmplay/util/s;

    iput p2, p0, Lcom/cmplay/util/s$20;->a:I

    iput-object p3, p0, Lcom/cmplay/util/s$20;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1730
    iget v0, p0, Lcom/cmplay/util/s$20;->a:I

    iget-object v1, p0, Lcom/cmplay/util/s$20;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/cmplay/util/NativeUtil;->reqInvitableFriendsCallback(ILjava/lang/String;)V

    .line 1731
    return-void
.end method
