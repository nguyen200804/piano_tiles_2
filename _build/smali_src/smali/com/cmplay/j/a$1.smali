.class Lcom/cmplay/j/a$1;
.super Ljava/lang/Object;
.source "EditTextDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/j/a;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmplay/j/a;


# direct methods
.method constructor <init>(Lcom/cmplay/j/a;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/cmplay/j/a$1;->a:Lcom/cmplay/j/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/cmplay/j/a$1;->a:Lcom/cmplay/j/a;

    invoke-virtual {v0}, Lcom/cmplay/j/a;->dismiss()V

    .line 98
    return-void
.end method
