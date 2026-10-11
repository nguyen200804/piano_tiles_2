.class public Lcom/cmplay/internalpush/s;
.super Ljava/lang/Object;
.source "Setting.java"

# interfaces
.implements Lcom/cmplay/internalpush/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmplay/internalpush/s$a;
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

.method public static a()Lcom/cmplay/internalpush/s;
    .locals 1

    .prologue
    .line 25
    invoke-static {}, Lcom/cmplay/internalpush/s$a;->a()Lcom/cmplay/internalpush/s;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/cmplay/internalpush/data/d;)V
    .locals 11

    .prologue
    const/4 v2, 0x2

    .line 90
    if-nez p2, :cond_0

    .line 109
    :goto_0
    return-void

    .line 97
    :cond_0
    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/cmplay/internalpush/a/b;->a(Landroid/content/Context;Lcom/cmplay/internalpush/data/d;Lcom/cmplay/base/util/t;)V

    .line 100
    invoke-static {p1}, Lcom/cmplay/internalpush/data/q;->a(Landroid/content/Context;)Lcom/cmplay/internalpush/data/q;

    move-result-object v0

    invoke-virtual {p2}, Lcom/cmplay/internalpush/data/d;->d()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5, v2}, Lcom/cmplay/internalpush/data/q;->a(JI)V

    .line 103
    iget-object v0, p0, Lcom/cmplay/internalpush/s;->b:Lcom/cmplay/internalpush/i$a;

    if-eqz v0, :cond_1

    .line 104
    iget-object v0, p0, Lcom/cmplay/internalpush/s;->b:Lcom/cmplay/internalpush/i$a;

    invoke-interface {v0}, Lcom/cmplay/internalpush/i$a;->a()V

    .line 108
    :cond_1
    invoke-static {}, Lcom/cmplay/internalpush/o;->a()Lcom/cmplay/internalpush/o;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p2}, Lcom/cmplay/internalpush/data/d;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/cmplay/internalpush/data/d;->d()J

    move-result-wide v4

    const-string v6, ""

    invoke-virtual {p0}, Lcom/cmplay/internalpush/s;->b()I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {p2}, Lcom/cmplay/internalpush/data/d;->m()J

    move-result-wide v9

    invoke-virtual/range {v0 .. v10}, Lcom/cmplay/internalpush/o;->a(IILjava/lang/String;JLjava/lang/String;IIJ)V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 44
    invoke-static {p1}, Lcom/cmplay/internalpush/data/q;->a(Landroid/content/Context;)Lcom/cmplay/internalpush/data/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmplay/internalpush/data/q;->e()Z

    move-result v0

    return v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 152
    iget v0, p0, Lcom/cmplay/internalpush/s;->a:I

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

    const/4 v1, 0x3

    const/16 v2, 0x13

    const-string v3, ""

    const-string v6, ""

    move v8, v7

    move-wide v9, v4

    invoke-virtual/range {v0 .. v10}, Lcom/cmplay/internalpush/o;->a(IILjava/lang/String;JLjava/lang/String;IIJ)V

    .line 55
    invoke-static {p1}, Lcom/cmplay/internalpush/data/q;->a(Landroid/content/Context;)Lcom/cmplay/internalpush/data/q;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/cmplay/internalpush/data/q;->b(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v7, 0x1

    .line 56
    :cond_0
    if-nez v7, :cond_1

    .line 57
    invoke-static {p1}, Lcom/cmplay/internalpush/data/q;->a(Landroid/content/Context;)Lcom/cmplay/internalpush/data/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmplay/internalpush/data/q;->b()V

    .line 59
    :cond_1
    return v7
.end method

.method public c(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 76
    invoke-static {p1}, Lcom/cmplay/internalpush/data/q;->a(Landroid/content/Context;)Lcom/cmplay/internalpush/data/q;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/cmplay/internalpush/data/q;->b(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
