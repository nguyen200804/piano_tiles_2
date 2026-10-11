.class Lb/a/cn$2;
.super Lcom/b/a/j;
.source "CacheService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/a/cn;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lb/a/cn;


# direct methods
.method constructor <init>(Lb/a/cn;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lb/a/cn$2;->a:Lb/a/cn;

    invoke-direct {p0}, Lcom/b/a/j;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lb/a/cn$2;->a:Lb/a/cn;

    invoke-static {v0}, Lb/a/cn;->a(Lb/a/cn;)Lb/a/cr;

    move-result-object v0

    invoke-interface {v0}, Lb/a/cr;->b()V

    .line 63
    return-void
.end method
