.class final Lcom/cmplay/util/i$1;
.super Ljava/lang/Object;
.source "Helper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/util/i;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/cmplay/util/i$1;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 128
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/cmplay/util/i$1;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 129
    const v1, 0x7f050036

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 130
    const v1, 0x7f050035

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 131
    const v1, 0x7f050032

    new-instance v2, Lcom/cmplay/util/i$1$1;

    invoke-direct {v2, p0}, Lcom/cmplay/util/i$1$1;-><init>(Lcom/cmplay/util/i$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 137
    const v1, 0x7f050033

    new-instance v2, Lcom/cmplay/util/i$1$2;

    invoke-direct {v2, p0}, Lcom/cmplay/util/i$1$2;-><init>(Lcom/cmplay/util/i$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 145
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 146
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 147
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 148
    return-void
.end method
