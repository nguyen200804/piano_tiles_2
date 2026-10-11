.class public Lcom/cmplay/internalpush/j;
.super Ljava/lang/Object;
.source "InsertScreen.java"

# interfaces
.implements Lcom/cmplay/internalpush/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmplay/internalpush/j$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:Lcom/cmplay/internalpush/i$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/cmplay/internalpush/j;
    .locals 1

    .prologue
    .line 26
    invoke-static {}, Lcom/cmplay/internalpush/j$a;->a()Lcom/cmplay/internalpush/j;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 59
    invoke-static {p1}, Lcom/cmplay/internalpush/data/k;->a(Landroid/content/Context;)Lcom/cmplay/internalpush/data/k;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/cmplay/internalpush/data/k;->b(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 70
    invoke-virtual {p0, p1}, Lcom/cmplay/internalpush/j;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 71
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    :goto_0
    return-void

    .line 74
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u63d2\u5c4fjson-----"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;)V

    .line 75
    invoke-static {p1, v0}, Lcom/cmplay/internalpush/ui/InsertScreenActivity;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Lcom/cmplay/internalpush/data/d;)V
    .locals 11

    .prologue
    const/4 v2, 0x2

    .line 80
    if-nez p2, :cond_0

    .line 99
    :goto_0
    return-void

    .line 87
    :cond_0
    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/cmplay/internalpush/a/b;->a(Landroid/content/Context;Lcom/cmplay/internalpush/data/d;Lcom/cmplay/base/util/t;)V

    .line 90
    invoke-static {p1}, Lcom/cmplay/internalpush/data/k;->a(Landroid/content/Context;)Lcom/cmplay/internalpush/data/k;

    move-result-object v0

    invoke-virtual {p2}, Lcom/cmplay/internalpush/data/d;->d()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5, v2}, Lcom/cmplay/internalpush/data/k;->a(JI)V

    .line 93
    iget-object v0, p0, Lcom/cmplay/internalpush/j;->b:Lcom/cmplay/internalpush/i$a;

    if-eqz v0, :cond_1

    .line 94
    iget-object v0, p0, Lcom/cmplay/internalpush/j;->b:Lcom/cmplay/internalpush/i$a;

    invoke-interface {v0}, Lcom/cmplay/internalpush/i$a;->a()V

    .line 98
    :cond_1
    invoke-static {}, Lcom/cmplay/internalpush/o;->a()Lcom/cmplay/internalpush/o;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {p2}, Lcom/cmplay/internalpush/data/d;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/cmplay/internalpush/data/d;->d()J

    move-result-wide v4

    const-string v6, ""

    invoke-virtual {p0}, Lcom/cmplay/internalpush/j;->b()I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {p2}, Lcom/cmplay/internalpush/data/d;->m()J

    move-result-wide v9

    invoke-virtual/range {v0 .. v10}, Lcom/cmplay/internalpush/o;->a(IILjava/lang/String;JLjava/lang/String;IIJ)V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;IZ)Z
    .locals 11

    .prologue
    const-wide/16 v4, 0x0

    const/4 v7, 0x0

    .line 35
    invoke-static {}, Lcom/cmplay/internalpush/o;->a()Lcom/cmplay/internalpush/o;

    move-result-object v0

    const/4 v1, 0x6

    const/16 v2, 0x13

    const-string v3, ""

    const-string v6, ""

    move v8, v7

    move-wide v9, v4

    invoke-virtual/range {v0 .. v10}, Lcom/cmplay/internalpush/o;->a(IILjava/lang/String;JLjava/lang/String;IIJ)V

    .line 37
    iput p2, p0, Lcom/cmplay/internalpush/j;->a:I

    .line 38
    invoke-static {p1}, Lcom/cmplay/internalpush/data/k;->a(Landroid/content/Context;)Lcom/cmplay/internalpush/data/k;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p3, v1}, Lcom/cmplay/internalpush/data/k;->a(ZZ)Z

    move-result v0

    .line 39
    if-nez v0, :cond_0

    .line 40
    invoke-static {p1}, Lcom/cmplay/internalpush/data/k;->a(Landroid/content/Context;)Lcom/cmplay/internalpush/data/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cmplay/internalpush/data/k;->b()V

    .line 42
    :cond_0
    return v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Lcom/cmplay/internalpush/j;->a:I

    return v0
.end method

.method public b(Landroid/content/Context;Lcom/cmplay/internalpush/data/d;)Z
    .locals 11

    .prologue
    const/4 v8, 0x0

    .line 107
    iget-object v0, p0, Lcom/cmplay/internalpush/j;->b:Lcom/cmplay/internalpush/i$a;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/cmplay/internalpush/j;->b:Lcom/cmplay/internalpush/i$a;

    invoke-interface {v0}, Lcom/cmplay/internalpush/i$a;->a()V

    .line 111
    :cond_0
    invoke-static {}, Lcom/cmplay/internalpush/o;->a()Lcom/cmplay/internalpush/o;

    move-result-object v0

    const/4 v1, 0x6

    const/4 v2, 0x3

    invoke-virtual {p2}, Lcom/cmplay/internalpush/data/d;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/cmplay/internalpush/data/d;->d()J

    move-result-wide v4

    const-string v6, ""

    invoke-virtual {p0}, Lcom/cmplay/internalpush/j;->b()I

    move-result v7

    invoke-virtual {p2}, Lcom/cmplay/internalpush/data/d;->m()J

    move-result-wide v9

    invoke-virtual/range {v0 .. v10}, Lcom/cmplay/internalpush/o;->a(IILjava/lang/String;JLjava/lang/String;IIJ)V

    .line 113
    return v8
.end method

.method public c(Landroid/content/Context;Lcom/cmplay/internalpush/data/d;)V
    .locals 11

    .prologue
    .line 122
    iget-object v0, p0, Lcom/cmplay/internalpush/j;->b:Lcom/cmplay/internalpush/i$a;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/cmplay/internalpush/j;->b:Lcom/cmplay/internalpush/i$a;

    invoke-interface {v0}, Lcom/cmplay/internalpush/i$a;->a()V

    .line 126
    :cond_0
    invoke-static {}, Lcom/cmplay/internalpush/o;->a()Lcom/cmplay/internalpush/o;

    move-result-object v0

    const/4 v1, 0x6

    const/4 v2, 0x3

    invoke-virtual {p2}, Lcom/cmplay/internalpush/data/d;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/cmplay/internalpush/data/d;->d()J

    move-result-wide v4

    const-string v6, ""

    invoke-virtual {p0}, Lcom/cmplay/internalpush/j;->b()I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {p2}, Lcom/cmplay/internalpush/data/d;->m()J

    move-result-wide v9

    invoke-virtual/range {v0 .. v10}, Lcom/cmplay/internalpush/o;->a(IILjava/lang/String;JLjava/lang/String;IIJ)V

    .line 127
    return-void
.end method
