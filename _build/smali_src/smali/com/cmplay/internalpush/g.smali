.class public Lcom/cmplay/internalpush/g;
.super Ljava/lang/Object;
.source "Family.java"

# interfaces
.implements Lcom/cmplay/internalpush/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmplay/internalpush/g$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:Lcom/cmplay/internalpush/i$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/cmplay/internalpush/g;
    .locals 1

    .prologue
    .line 25
    invoke-static {}, Lcom/cmplay/internalpush/g$a;->a()Lcom/cmplay/internalpush/g;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/cmplay/internalpush/data/d;)V
    .locals 11

    .prologue
    const/4 v2, 0x2

    .line 91
    if-nez p2, :cond_0

    .line 111
    :goto_0
    return-void

    .line 98
    :cond_0
    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/cmplay/internalpush/a/b;->a(Landroid/content/Context;Lcom/cmplay/internalpush/data/d;Lcom/cmplay/base/util/t;)V

    .line 101
    invoke-static {p1}, Lcom/cmplay/internalpush/data/b;->a(Landroid/content/Context;)Lcom/cmplay/internalpush/data/b;

    move-result-object v0

    invoke-virtual {p2}, Lcom/cmplay/internalpush/data/d;->d()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5, v2}, Lcom/cmplay/internalpush/data/b;->a(JI)V

    .line 104
    iget-object v0, p0, Lcom/cmplay/internalpush/g;->b:Lcom/cmplay/internalpush/i$a;

    if-eqz v0, :cond_1

    .line 105
    iget-object v0, p0, Lcom/cmplay/internalpush/g;->b:Lcom/cmplay/internalpush/i$a;

    invoke-interface {v0}, Lcom/cmplay/internalpush/i$a;->a()V

    .line 109
    :cond_1
    invoke-virtual {p2}, Lcom/cmplay/internalpush/data/d;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/cmplay/internalpush/a/b;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v7, v2

    .line 110
    :goto_1
    invoke-static {}, Lcom/cmplay/internalpush/o;->a()Lcom/cmplay/internalpush/o;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {p2}, Lcom/cmplay/internalpush/data/d;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/cmplay/internalpush/data/d;->d()J

    move-result-wide v4

    const-string v6, ""

    const/4 v8, 0x0

    invoke-virtual {p2}, Lcom/cmplay/internalpush/data/d;->m()J

    move-result-wide v9

    invoke-virtual/range {v0 .. v10}, Lcom/cmplay/internalpush/o;->a(IILjava/lang/String;JLjava/lang/String;IIJ)V

    goto :goto_0

    .line 109
    :cond_2
    const/4 v7, 0x1

    goto :goto_1
.end method

.method public a(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 44
    invoke-static {p1}, Lcom/cmplay/internalpush/data/b;->a(Landroid/content/Context;)Lcom/cmplay/internalpush/data/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmplay/internalpush/data/b;->e()Z

    move-result v0

    return v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 154
    iget v0, p0, Lcom/cmplay/internalpush/g;->a:I

    return v0
.end method

.method public b(Landroid/content/Context;)Z
    .locals 11

    .prologue
    const-wide/16 v4, 0x0

    const/4 v7, 0x0

    .line 53
    invoke-static {}, Lcom/cmplay/internalpush/o;->a()Lcom/cmplay/internalpush/o;

    move-result-object v0

    const/4 v1, 0x7

    const/16 v2, 0x13

    const-string v3, ""

    const-string v6, ""

    move v8, v7

    move-wide v9, v4

    invoke-virtual/range {v0 .. v10}, Lcom/cmplay/internalpush/o;->a(IILjava/lang/String;JLjava/lang/String;IIJ)V

    .line 55
    invoke-static {p1}, Lcom/cmplay/internalpush/data/b;->a(Landroid/content/Context;)Lcom/cmplay/internalpush/data/b;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/cmplay/internalpush/data/b;->a(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v7, 0x1

    .line 56
    :cond_0
    if-nez v7, :cond_1

    .line 57
    invoke-static {p1}, Lcom/cmplay/internalpush/data/b;->a(Landroid/content/Context;)Lcom/cmplay/internalpush/data/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmplay/internalpush/data/b;->b()V

    .line 59
    :cond_1
    return v7
.end method

.method public c(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 68
    invoke-static {p1}, Lcom/cmplay/internalpush/data/b;->a(Landroid/content/Context;)Lcom/cmplay/internalpush/data/b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/cmplay/internalpush/data/b;->a(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 77
    invoke-static {p1}, Lcom/cmplay/internalpush/data/b;->a(Landroid/content/Context;)Lcom/cmplay/internalpush/data/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmplay/internalpush/data/b;->f()Z

    move-result v0

    return v0
.end method
