.class final Lcom/jirbo/adcolony/f$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jirbo/adcolony/f;->a(Landroid/app/Activity;)V
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
    .line 214
    iput-object p1, p0, Lcom/jirbo/adcolony/f$2;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 217
    iget-object v0, p0, Lcom/jirbo/adcolony/f$2;->a:Landroid/app/Activity;

    new-instance v1, Lcom/jirbo/adcolony/f$2$1;

    invoke-direct {v1, p0}, Lcom/jirbo/adcolony/f$2$1;-><init>(Lcom/jirbo/adcolony/f$2;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 237
    return-void
.end method
