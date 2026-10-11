.class Lcom/cmplay/util/s$32;
.super Ljava/lang/Object;
.source "NativeInterfaceImpl.java"

# interfaces
.implements Lcom/cmplay/util/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/util/s;->w(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Lcom/cmplay/util/s;


# direct methods
.method constructor <init>(Lcom/cmplay/util/s;III)V
    .locals 0

    .prologue
    .line 2605
    iput-object p1, p0, Lcom/cmplay/util/s$32;->d:Lcom/cmplay/util/s;

    iput p2, p0, Lcom/cmplay/util/s$32;->a:I

    iput p3, p0, Lcom/cmplay/util/s$32;->b:I

    iput p4, p0, Lcom/cmplay/util/s$32;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 2608
    iget v0, p0, Lcom/cmplay/util/s$32;->a:I

    iget v1, p0, Lcom/cmplay/util/s$32;->b:I

    iget v2, p0, Lcom/cmplay/util/s$32;->c:I

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/cmplay/util/NativeUtil;->pushUnlockMusicNotify(IIIZ)V

    .line 2609
    return-void
.end method
