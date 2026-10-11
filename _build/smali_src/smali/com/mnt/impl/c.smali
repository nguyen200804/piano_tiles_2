.class public final Lcom/mnt/impl/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/mnt/Ad;

.field private synthetic b:Lcom/mnt/impl/b;


# direct methods
.method public constructor <init>(Lcom/mnt/impl/b;Lcom/mnt/Ad;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/mnt/impl/c;->b:Lcom/mnt/impl/b;

    iput-object p2, p0, Lcom/mnt/impl/c;->a:Lcom/mnt/Ad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/mnt/impl/c;->b:Lcom/mnt/impl/b;

    iget-object v1, p0, Lcom/mnt/impl/c;->a:Lcom/mnt/Ad;

    invoke-virtual {v0, v1}, Lcom/mnt/impl/b;->a(Ljava/lang/Object;)V

    .line 129
    iget-object v0, p0, Lcom/mnt/impl/c;->b:Lcom/mnt/impl/b;

    invoke-static {v0}, Lcom/mnt/impl/b;->a(Lcom/mnt/impl/b;)Lcom/mnt/a/f;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/mnt/impl/c;->b:Lcom/mnt/impl/b;

    invoke-static {v0}, Lcom/mnt/impl/b;->a(Lcom/mnt/impl/b;)Lcom/mnt/a/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/mnt/a/f;->a()V

    .line 132
    :cond_0
    return-void
.end method
