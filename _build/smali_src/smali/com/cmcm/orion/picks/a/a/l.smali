.class public final Lcom/cmcm/orion/picks/a/a/l;
.super Ljava/lang/Object;
.source "MpaModule.java"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cmcm/orion/picks/a/a/k;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cmcm/orion/picks/a/a/l;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/cmcm/orion/picks/a/a/k;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 13
    iput-object p1, p0, Lcom/cmcm/orion/picks/a/a/l;->a:Ljava/util/List;

    .line 14
    return-void
.end method
