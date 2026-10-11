.class final Lcom/mnt/impl/i/b/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Lcom/mnt/impl/i/b/a;


# direct methods
.method constructor <init>(Lcom/mnt/impl/i/b/a;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/mnt/impl/i/b/b;->b:Lcom/mnt/impl/i/b/a;

    iput-object p2, p0, Lcom/mnt/impl/i/b/b;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 135
    :cond_0
    iget-object v0, p0, Lcom/mnt/impl/i/b/b;->b:Lcom/mnt/impl/i/b/a;

    iget-object v1, p0, Lcom/mnt/impl/i/b/b;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mnt/impl/i/b/a;->a(Lcom/mnt/impl/i/b/a;Ljava/lang/String;)Z

    move-result v0

    .line 136
    if-eqz v0, :cond_0

    .line 137
    return-void
.end method
