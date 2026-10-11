.class Lcom/jirbo/adcolony/an$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jirbo/adcolony/an;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 904
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a()Z
    .locals 1

    .prologue
    .line 912
    const/4 v0, 0x1

    return v0
.end method

.method a(Lcom/jirbo/adcolony/a$g;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 917
    if-nez p1, :cond_0

    .line 926
    :goto_0
    return v0

    .line 919
    :cond_0
    const-string v2, "enabled"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/a$g;->g(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/jirbo/adcolony/an$b;->c:Z

    .line 921
    iget-boolean v2, p0, Lcom/jirbo/adcolony/an$b;->c:Z

    if-nez v2, :cond_1

    move v0, v1

    goto :goto_0

    .line 923
    :cond_1
    const-string v2, "product_ids"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/a$g;->c(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/jirbo/adcolony/an$b;->a:Ljava/lang/String;

    .line 924
    const-string v0, "in_progress"

    invoke-virtual {p1, v0}, Lcom/jirbo/adcolony/a$g;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/an$b;->b:Ljava/lang/String;

    move v0, v1

    .line 926
    goto :goto_0
.end method
