.class Lb/a/cn$1;
.super Lcom/b/a/j;
.source "CacheService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/a/cn;->a(Lb/a/cs;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lb/a/cs;

.field final synthetic b:Lb/a/cn;


# direct methods
.method constructor <init>(Lb/a/cn;Lb/a/cs;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lb/a/cn$1;->b:Lb/a/cn;

    iput-object p2, p0, Lb/a/cn$1;->a:Lb/a/cs;

    invoke-direct {p0}, Lcom/b/a/j;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lb/a/cn$1;->b:Lb/a/cn;

    invoke-static {v0}, Lb/a/cn;->a(Lb/a/cn;)Lb/a/cr;

    move-result-object v0

    iget-object v1, p0, Lb/a/cn$1;->a:Lb/a/cs;

    invoke-interface {v0, v1}, Lb/a/cr;->a(Lb/a/cs;)V

    .line 43
    return-void
.end method
