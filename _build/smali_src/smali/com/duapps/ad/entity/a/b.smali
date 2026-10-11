.class public Lcom/duapps/ad/entity/a/b;
.super Ljava/lang/Object;
.source "BaseChannel.java"


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
.field private a:Z

.field public volatile c:Z

.field public volatile d:Z

.field public volatile e:Z

.field public f:J

.field public g:J

.field protected h:Landroid/content/Context;

.field protected i:I

.field protected j:Lcom/duapps/ad/entity/a/d;

.field public k:Ljava/lang/String;

.field public volatile l:Z

.field public m:I

.field protected n:Lcom/duapps/ad/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;IJ)V
    .locals 7

    .prologue
    .line 34
    const-string v6, ""

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/duapps/ad/entity/a/b;-><init>(Landroid/content/Context;IJLjava/lang/String;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IJLjava/lang/String;)V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Lcom/duapps/ad/entity/a/b$1;

    invoke-direct {v0, p0}, Lcom/duapps/ad/entity/a/b$1;-><init>(Lcom/duapps/ad/entity/a/b;)V

    iput-object v0, p0, Lcom/duapps/ad/entity/a/b;->n:Lcom/duapps/ad/b;

    .line 38
    iput-wide p3, p0, Lcom/duapps/ad/entity/a/b;->f:J

    .line 39
    iput-object p1, p0, Lcom/duapps/ad/entity/a/b;->h:Landroid/content/Context;

    .line 40
    iput p2, p0, Lcom/duapps/ad/entity/a/b;->i:I

    .line 41
    iput-object p5, p0, Lcom/duapps/ad/entity/a/b;->k:Ljava/lang/String;

    .line 42
    invoke-static {p2}, Lcom/duapps/ad/c/b/c;->a(I)V

    .line 43
    return-void
.end method

.method static synthetic a(Lcom/duapps/ad/entity/a/b;)Z
    .locals 1

    .prologue
    .line 9
    iget-boolean v0, p0, Lcom/duapps/ad/entity/a/b;->a:Z

    return v0
.end method


# virtual methods
.method public a(Lcom/duapps/ad/entity/a/d;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/duapps/ad/entity/a/b;->j:Lcom/duapps/ad/entity/a/d;

    .line 63
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/duapps/ad/entity/a/b;->a:Z

    .line 51
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    return v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public d()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 54
    const/4 v0, 0x0

    return-object v0
.end method
