.class Lcom/cmplay/util/i$1$1;
.super Ljava/lang/Object;
.source "Helper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/util/i$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmplay/util/i$1;


# direct methods
.method constructor <init>(Lcom/cmplay/util/i$1;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/cmplay/util/i$1$1;->a:Lcom/cmplay/util/i$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 134
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 135
    return-void
.end method
