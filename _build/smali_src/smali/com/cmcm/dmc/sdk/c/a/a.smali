.class public Lcom/cmcm/dmc/sdk/c/a/a;
.super Ljava/lang/Object;


# instance fields
.field private a:J

.field private b:J

.field private c:J

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    iget-wide v0, p0, Lcom/cmcm/dmc/sdk/c/a/a;->a:J

    return-wide v0
.end method

.method public a(J)V
    .locals 1

    iput-wide p1, p0, Lcom/cmcm/dmc/sdk/c/a/a;->a:J

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmcm/dmc/sdk/c/a/a;->d:Ljava/lang/String;

    return-void
.end method

.method public b()J
    .locals 2

    iget-wide v0, p0, Lcom/cmcm/dmc/sdk/c/a/a;->b:J

    return-wide v0
.end method

.method public b(J)V
    .locals 1

    iput-wide p1, p0, Lcom/cmcm/dmc/sdk/c/a/a;->b:J

    return-void
.end method

.method public c()J
    .locals 2

    iget-wide v0, p0, Lcom/cmcm/dmc/sdk/c/a/a;->c:J

    return-wide v0
.end method

.method public c(J)V
    .locals 1

    iput-wide p1, p0, Lcom/cmcm/dmc/sdk/c/a/a;->c:J

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/c/a/a;->d:Ljava/lang/String;

    return-object v0
.end method
