.class public final Lcom/mnt/impl/d/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/mnt/impl/d/a;->a:Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 40
    if-nez p1, :cond_1

    .line 51
    :cond_0
    :goto_0
    return v0

    .line 43
    :cond_1
    instance-of v1, p1, Lcom/mnt/impl/d/a;

    if-eqz v1, :cond_0

    .line 44
    check-cast p1, Lcom/mnt/impl/d/a;

    .line 46
    iget-object v1, p1, Lcom/mnt/impl/d/a;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/mnt/impl/d/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 47
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/mnt/impl/d/a;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 34
    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 35
    return v0

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/mnt/impl/d/a;->a:Ljava/lang/String;

    .line 34
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method
