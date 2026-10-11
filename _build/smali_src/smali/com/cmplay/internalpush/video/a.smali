.class public Lcom/cmplay/internalpush/video/a;
.super Ljava/lang/Object;
.source "InnerPushAgent.java"


# instance fields
.field private a:I

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cmplay/internalpush/video/a;->e:Z

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/cmplay/internalpush/video/a;->a:I

    return v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 39
    iput p1, p0, Lcom/cmplay/internalpush/video/a;->a:I

    .line 40
    return-void
.end method

.method public a(Landroid/content/Context;Lcom/cmplay/internalpush/data/d;Lcom/cmplay/base/util/t;)V
    .locals 0

    .prologue
    .line 87
    invoke-static {p1, p2, p3}, Lcom/cmplay/internalpush/a/b;->a(Landroid/content/Context;Lcom/cmplay/internalpush/data/d;Lcom/cmplay/base/util/t;)V

    .line 88
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/cmplay/internalpush/video/a;->f:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public a(Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 25
    if-nez p1, :cond_0

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cmplay/internalpush/video/a;->e:Z

    .line 28
    :cond_0
    iput v1, p0, Lcom/cmplay/internalpush/video/a;->a:I

    .line 29
    iput-boolean v1, p0, Lcom/cmplay/internalpush/video/a;->b:Z

    .line 30
    iput-boolean v1, p0, Lcom/cmplay/internalpush/video/a;->d:Z

    .line 31
    iput-boolean v1, p0, Lcom/cmplay/internalpush/video/a;->c:Z

    .line 32
    return-void
.end method

.method public a(ZIZ)V
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/cmplay/internalpush/video/a;->b:Z

    if-eqz v0, :cond_0

    .line 75
    :goto_0
    return-void

    .line 74
    :cond_0
    iput-boolean p1, p0, Lcom/cmplay/internalpush/video/a;->b:Z

    goto :goto_0
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/cmplay/internalpush/video/a;->d:Z

    .line 48
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/cmplay/internalpush/video/a;->d:Z

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/cmplay/internalpush/video/a;->f:Ljava/lang/String;

    return-object v0
.end method

.method public c(Z)V
    .locals 0

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/cmplay/internalpush/video/a;->c:Z

    .line 56
    return-void
.end method

.method public d(Z)V
    .locals 0

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/cmplay/internalpush/video/a;->e:Z

    .line 83
    return-void
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/cmplay/internalpush/video/a;->b:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/cmplay/internalpush/video/a;->d:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/cmplay/internalpush/video/a;->e:Z

    return v0
.end method
