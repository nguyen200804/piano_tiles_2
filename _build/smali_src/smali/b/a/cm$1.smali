.class Lb/a/cm$1;
.super Lcom/b/a/j;
.source "CacheImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/a/cm;->d(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lb/a/cm;


# direct methods
.method constructor <init>(Lb/a/cm;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lb/a/cm$1;->a:Lb/a/cm;

    invoke-direct {p0}, Lcom/b/a/j;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lb/a/cm$1;->a:Lb/a/cm;

    invoke-virtual {v0}, Lb/a/cm;->a()V

    .line 132
    return-void
.end method
