.class public Lcom/cmplay/internalpush/p;
.super Ljava/lang/Object;
.source "ResultPage.java"

# interfaces
.implements Lcom/cmplay/internalpush/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmplay/internalpush/p$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:Lcom/cmplay/internalpush/i$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/cmplay/internalpush/p;
    .locals 1

    .prologue
    .line 24
    invoke-static {}, Lcom/cmplay/internalpush/p$a;->a()Lcom/cmplay/internalpush/p;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 57
    invoke-static {p1}, Lcom/cmplay/internalpush/data/p;->a(Landroid/content/Context;)Lcom/cmplay/internalpush/data/p;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/cmplay/internalpush/data/p;->b(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Context;Lcom/cmplay/internalpush/data/d;)V
    .locals 11

    .prologue
    const/4 v1, 0x2

    .line 71
    if-nez p2, :cond_0

    .line 88
    :goto_0
    return-void

    .line 74
    :cond_0
    const-string v0, "internal_push"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ResultPage.onClickAd()  proId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/cmplay/internalpush/data/d;->d()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/cmplay/internalpush/a/b;->a(Landroid/content/Context;Lcom/cmplay/internalpush/data/d;Lcom/cmplay/base/util/t;)V

    .line 79
    invoke-static {p1}, Lcom/cmplay/internalpush/data/p;->a(Landroid/content/Context;)Lcom/cmplay/internalpush/data/p;

    move-result-object v0

    invoke-virtual {p2}, Lcom/cmplay/internalpush/data/d;->d()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, v1}, Lcom/cmplay/internalpush/data/p;->a(JI)V

    .line 82
    iget-object v0, p0, Lcom/cmplay/internalpush/p;->b:Lcom/cmplay/internalpush/i$a;

    if-eqz v0, :cond_1

    .line 83
    iget-object v0, p0, Lcom/cmplay/internalpush/p;->b:Lcom/cmplay/internalpush/i$a;

    invoke-interface {v0}, Lcom/cmplay/internalpush/i$a;->a()V

    .line 87
    :cond_1
    invoke-static {}, Lcom/cmplay/internalpush/o;->a()Lcom/cmplay/internalpush/o;

    move-result-object v0

    invoke-virtual {p2}, Lcom/cmplay/internalpush/data/d;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/cmplay/internalpush/data/d;->d()J

    move-result-wide v4

    const-string v6, ""

    invoke-virtual {p0}, Lcom/cmplay/internalpush/p;->b()I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {p2}, Lcom/cmplay/internalpush/data/d;->m()J

    move-result-wide v9

    move v2, v1

    invoke-virtual/range {v0 .. v10}, Lcom/cmplay/internalpush/o;->a(IILjava/lang/String;JLjava/lang/String;IIJ)V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;IZ)Z
    .locals 11

    .prologue
    const-wide/16 v4, 0x0

    const/4 v7, 0x0

    .line 33
    invoke-static {}, Lcom/cmplay/internalpush/o;->a()Lcom/cmplay/internalpush/o;

    move-result-object v0

    const/4 v1, 0x2

    const/16 v2, 0x13

    const-string v3, ""

    const-string v6, ""

    move v8, v7

    move-wide v9, v4

    invoke-virtual/range {v0 .. v10}, Lcom/cmplay/internalpush/o;->a(IILjava/lang/String;JLjava/lang/String;IIJ)V

    .line 35
    iput p2, p0, Lcom/cmplay/internalpush/p;->a:I

    .line 36
    invoke-static {p1}, Lcom/cmplay/internalpush/data/p;->a(Landroid/content/Context;)Lcom/cmplay/internalpush/data/p;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p3, v1}, Lcom/cmplay/internalpush/data/p;->a(ZZ)Z

    move-result v0

    .line 37
    if-nez v0, :cond_0

    .line 38
    invoke-static {p1}, Lcom/cmplay/internalpush/data/p;->a(Landroid/content/Context;)Lcom/cmplay/internalpush/data/p;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cmplay/internalpush/data/p;->b()V

    .line 40
    :cond_0
    return v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lcom/cmplay/internalpush/p;->a:I

    return v0
.end method
