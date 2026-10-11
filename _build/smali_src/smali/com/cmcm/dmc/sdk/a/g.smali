.class public Lcom/cmcm/dmc/sdk/a/g;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:Z

.field private final c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/cmcm/dmc/sdk/a/g;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cmcm/dmc/sdk/a/g;->d:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/cmcm/dmc/sdk/a/g;->c:Ljava/lang/Class;

    return-void
.end method

.method private d()V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cmcm/dmc/sdk/a/g;->b:Z

    iget-object v1, p0, Lcom/cmcm/dmc/sdk/a/g;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v3, p0, Lcom/cmcm/dmc/sdk/a/g;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/cmcm/dmc/sdk/a/g;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iput-object v2, p0, Lcom/cmcm/dmc/sdk/a/g;->d:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/a/g;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/a/g;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b()V
    .locals 1

    iget v0, p0, Lcom/cmcm/dmc/sdk/a/g;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/cmcm/dmc/sdk/a/g;->a:I

    return-void
.end method

.method public c()V
    .locals 1

    iget v0, p0, Lcom/cmcm/dmc/sdk/a/g;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/cmcm/dmc/sdk/a/g;->a:I

    iget v0, p0, Lcom/cmcm/dmc/sdk/a/g;->a:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/cmcm/dmc/sdk/a/g;->b:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/cmcm/dmc/sdk/a/g;->d()V

    :cond_0
    return-void
.end method
