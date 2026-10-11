.class Lcom/cmplay/j/a$2$1;
.super Ljava/lang/Object;
.source "EditTextDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/j/a$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmplay/j/a$2;


# direct methods
.method constructor <init>(Lcom/cmplay/j/a$2;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/cmplay/j/a$2$1;->a:Lcom/cmplay/j/a$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/cmplay/j/a$2$1;->a:Lcom/cmplay/j/a$2;

    iget-object v0, v0, Lcom/cmplay/j/a$2;->a:Lcom/cmplay/j/a;

    invoke-static {v0}, Lcom/cmplay/j/a;->a(Lcom/cmplay/j/a;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cmplay/util/NativeUtil;->onEditTextDone(Ljava/lang/String;)V

    .line 109
    return-void
.end method
