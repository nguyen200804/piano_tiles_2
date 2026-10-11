.class public Lcom/cmplay/util/c/a;
.super Ljava/lang/Object;
.source "BaseTracker.java"


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Landroid/content/ContentValues;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/cmplay/util/c/a;->a:Ljava/lang/String;

    .line 20
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/cmplay/util/c/a;->b:Landroid/content/ContentValues;

    .line 21
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/cmplay/util/c/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method protected a(Ljava/lang/String;B)V
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/cmplay/util/c/a;->b:Landroid/content/ContentValues;

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Byte;)V

    .line 58
    return-void
.end method

.method protected a(Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/cmplay/util/c/a;->b:Landroid/content/ContentValues;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 50
    return-void
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/cmplay/util/c/a;->b:Landroid/content/ContentValues;

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 5

    .prologue
    .line 32
    iget-object v0, p0, Lcom/cmplay/util/c/a;->b:Landroid/content/ContentValues;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmplay/util/c/a;->b:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v0

    if-nez v0, :cond_1

    .line 33
    :cond_0
    const-string v0, ""

    .line 41
    :goto_0
    return-object v0

    .line 35
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 36
    iget-object v0, p0, Lcom/cmplay/util/c/a;->b:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 37
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 38
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 39
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 41
    :cond_2
    const-string v0, "&"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected b(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/cmplay/util/c/a;->b:Landroid/content/ContentValues;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 46
    return-void
.end method
