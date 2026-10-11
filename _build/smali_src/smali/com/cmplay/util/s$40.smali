.class Lcom/cmplay/util/s$40;
.super Ljava/lang/Object;
.source "NativeInterfaceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/util/s;->m(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/cmplay/util/s;


# direct methods
.method constructor <init>(Lcom/cmplay/util/s;ILandroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 3400
    iput-object p1, p0, Lcom/cmplay/util/s$40;->d:Lcom/cmplay/util/s;

    iput p2, p0, Lcom/cmplay/util/s$40;->a:I

    iput-object p3, p0, Lcom/cmplay/util/s$40;->b:Landroid/app/Activity;

    iput-object p4, p0, Lcom/cmplay/util/s$40;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 3403
    iget v0, p0, Lcom/cmplay/util/s$40;->a:I

    invoke-static {v0}, Lcom/cmplay/j/a$a;->a(I)Lcom/cmplay/j/a$a;

    move-result-object v0

    .line 3404
    iget-object v1, p0, Lcom/cmplay/util/s$40;->b:Landroid/app/Activity;

    iget-object v2, p0, Lcom/cmplay/util/s$40;->c:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/cmplay/j/a;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/cmplay/j/a$a;)V

    .line 3405
    return-void
.end method
