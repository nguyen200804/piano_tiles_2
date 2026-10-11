.class Lcom/jirbo/adcolony/an$k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jirbo/adcolony/an;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "k"
.end annotation


# instance fields
.field a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jirbo/adcolony/an$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 831
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 834
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jirbo/adcolony/an$k;->a:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method a(I)Lcom/jirbo/adcolony/an$a;
    .locals 1

    .prologue
    .line 874
    iget-object v0, p0, Lcom/jirbo/adcolony/an$k;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jirbo/adcolony/an$a;

    return-object v0
.end method

.method a(Ljava/lang/String;)Lcom/jirbo/adcolony/an$a;
    .locals 3

    .prologue
    .line 880
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/jirbo/adcolony/an$k;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 882
    iget-object v0, p0, Lcom/jirbo/adcolony/an$k;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jirbo/adcolony/an$a;

    .line 883
    iget-object v2, v0, Lcom/jirbo/adcolony/an$a;->a:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 885
    :goto_1
    return-object v0

    .line 880
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 885
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method a()V
    .locals 3

    .prologue
    .line 838
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/jirbo/adcolony/an$k;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 840
    iget-object v0, p0, Lcom/jirbo/adcolony/an$k;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jirbo/adcolony/an$a;

    .line 841
    invoke-virtual {v0}, Lcom/jirbo/adcolony/an$a;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, v0, Lcom/jirbo/adcolony/an$a;->r:Z

    if-nez v2, :cond_0

    .line 843
    invoke-static {}, Lcom/jirbo/adcolony/t;->f()V

    .line 844
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/jirbo/adcolony/an$a;->r:Z

    .line 838
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 847
    :cond_1
    return-void
.end method

.method a(Lcom/jirbo/adcolony/a$c;)Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 852
    if-nez p1, :cond_1

    .line 867
    :cond_0
    :goto_0
    return v2

    :cond_1
    move v1, v2

    .line 855
    :goto_1
    iget-object v0, p0, Lcom/jirbo/adcolony/an$k;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 857
    iget-object v0, p0, Lcom/jirbo/adcolony/an$k;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jirbo/adcolony/an$a;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/an$a;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/jirbo/adcolony/an$k;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 855
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    move v0, v2

    .line 861
    :goto_2
    invoke-virtual {p1}, Lcom/jirbo/adcolony/a$c;->f_()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 863
    new-instance v1, Lcom/jirbo/adcolony/an$a;

    invoke-direct {v1}, Lcom/jirbo/adcolony/an$a;-><init>()V

    .line 864
    invoke-virtual {p1, v0}, Lcom/jirbo/adcolony/a$c;->a(I)Lcom/jirbo/adcolony/a$g;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/jirbo/adcolony/an$a;->a(Lcom/jirbo/adcolony/a$g;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 865
    iget-object v3, p0, Lcom/jirbo/adcolony/an$k;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 861
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 867
    :cond_4
    const/4 v2, 0x1

    goto :goto_0
.end method

.method b()I
    .locals 1

    .prologue
    .line 872
    iget-object v0, p0, Lcom/jirbo/adcolony/an$k;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method b(I)Lcom/jirbo/adcolony/an$a;
    .locals 3

    .prologue
    .line 889
    :goto_0
    iget-object v0, p0, Lcom/jirbo/adcolony/an$k;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 891
    iget-object v0, p0, Lcom/jirbo/adcolony/an$k;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jirbo/adcolony/an$a;

    .line 892
    iget-object v1, v0, Lcom/jirbo/adcolony/an$a;->z:Lcom/jirbo/adcolony/an$w;

    iget-boolean v1, v1, Lcom/jirbo/adcolony/an$w;->a:Z

    if-eqz v1, :cond_1

    .line 900
    :cond_0
    :goto_1
    return-object v0

    .line 889
    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 895
    :cond_2
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v0, p0, Lcom/jirbo/adcolony/an$k;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 897
    iget-object v0, p0, Lcom/jirbo/adcolony/an$k;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jirbo/adcolony/an$a;

    .line 898
    iget-object v2, v0, Lcom/jirbo/adcolony/an$a;->z:Lcom/jirbo/adcolony/an$w;

    iget-boolean v2, v2, Lcom/jirbo/adcolony/an$w;->a:Z

    if-nez v2, :cond_0

    .line 895
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 900
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method c()Lcom/jirbo/adcolony/an$a;
    .locals 2

    .prologue
    .line 876
    iget-object v0, p0, Lcom/jirbo/adcolony/an$k;->a:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jirbo/adcolony/an$a;

    return-object v0
.end method
