.class final Lcom/mopub/dg/d/l;
.super Ljava/lang/Thread;


# instance fields
.field private a:Lcom/mopub/dg/d/m;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/mopub/dg/d/m;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p1, p0, Lcom/mopub/dg/d/l;->a:Lcom/mopub/dg/d/m;

    iput-object p2, p0, Lcom/mopub/dg/d/l;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/mopub/dg/d/l;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/mopub/dg/d/l;->a:Lcom/mopub/dg/d/m;

    invoke-static {v0, v1}, Lcom/mopub/dg/d/k;->b(Ljava/lang/String;Lcom/mopub/dg/d/m;)Ljava/util/ArrayList;

    return-void
.end method
