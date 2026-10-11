.class final Lcom/mnt/impl/d/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mnt/impl/d/g;


# instance fields
.field private synthetic a:Lcom/mnt/impl/d/c;


# direct methods
.method constructor <init>(Lcom/mnt/impl/d/c;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/mnt/impl/d/d;->a:Lcom/mnt/impl/d/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/mnt/impl/d/d;->a:Lcom/mnt/impl/d/c;

    .line 1015
    iget-object v0, v0, Lcom/mnt/impl/d/c;->a:Landroid/content/Context;

    .line 51
    invoke-static {v0, p1}, Lcom/mnt/impl/d;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 53
    if-eqz v0, :cond_2

    .line 2094
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2098
    sget-object v0, Lcom/mnt/impl/d/c;->b:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2099
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/mnt/impl/d/c;->b:Ljava/util/List;

    .line 2102
    :cond_0
    new-instance v0, Lcom/mnt/impl/d/a;

    invoke-direct {v0, p2}, Lcom/mnt/impl/d/a;-><init>(Ljava/lang/String;)V

    .line 2103
    sget-object v1, Lcom/mnt/impl/d/c;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2104
    sget-object v1, Lcom/mnt/impl/d/c;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2107
    :cond_1
    new-instance v0, Lcom/mnt/impl/d/a;

    invoke-direct {v0}, Lcom/mnt/impl/d/a;-><init>()V

    .line 2108
    sget-object v1, Lcom/mnt/impl/d/c;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 2110
    iput-object p2, v0, Lcom/mnt/impl/d/a;->a:Ljava/lang/String;

    .line 2112
    sget-object v1, Lcom/mnt/impl/d/c;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    :cond_2
    return-void
.end method
