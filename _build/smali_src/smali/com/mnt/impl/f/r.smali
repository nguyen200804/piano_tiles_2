.class final Lcom/mnt/impl/f/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mnt/impl/f/o$b$a;


# instance fields
.field private synthetic a:Lcom/mnt/impl/f/q;


# direct methods
.method constructor <init>(Lcom/mnt/impl/f/q;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/mnt/impl/f/r;->a:Lcom/mnt/impl/f/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/mnt/impl/f/r;->a:Lcom/mnt/impl/f/q;

    iget-object v0, v0, Lcom/mnt/impl/f/q;->a:Lcom/mnt/impl/f/o$c;

    invoke-static {v0}, Lcom/mnt/impl/f/o$c;->a(Lcom/mnt/impl/f/o$c;)Z

    .line 107
    return-void
.end method
