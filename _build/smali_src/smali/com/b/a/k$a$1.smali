.class Lcom/b/a/k$a$1;
.super Ljava/lang/Object;
.source "StoreHelper.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/a/k$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/b/a/k$a;


# direct methods
.method constructor <init>(Lcom/b/a/k$a;)V
    .locals 0

    .prologue
    .line 332
    iput-object p1, p0, Lcom/b/a/k$a$1;->a:Lcom/b/a/k$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 336
    const-string v0, "um"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
