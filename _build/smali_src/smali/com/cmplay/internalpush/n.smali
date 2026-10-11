.class public Lcom/cmplay/internalpush/n;
.super Ljava/lang/Object;
.source "OpenScreen.java"

# interfaces
.implements Lcom/cmplay/internalpush/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmplay/internalpush/n$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:Lcom/cmplay/internalpush/i$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/cmplay/internalpush/n;
    .locals 1

    .prologue
    .line 33
    invoke-static {}, Lcom/cmplay/internalpush/n$a;->a()Lcom/cmplay/internalpush/n;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 66
    invoke-static {p1}, Lcom/cmplay/internalpush/data/n;->a(Landroid/content/Context;)Lcom/cmplay/internalpush/data/n;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/cmplay/internalpush/data/n;->b(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 76
    invoke-virtual {p0, p1}, Lcom/cmplay/internalpush/n;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 77
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 93
    :goto_0
    return-void

    .line 80
    :cond_0
    new-instance v1, Lcom/cmplay/internalpush/data/g;

    invoke-direct {v1, v0}, Lcom/cmplay/internalpush/data/g;-><init>(Ljava/lang/String;)V

    .line 81
    invoke-virtual {v1}, Lcom/cmplay/internalpush/data/g;->l()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 90
    invoke-static {p1, v0}, Lcom/cmplay/internalpush/ui/OpenScreenActivity;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 84
    :pswitch_0
    invoke-static {p1, v0}, Lcom/cmplay/internalpush/ui/OpenScreenActivity;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 87
    :pswitch_1
    invoke-static {p1, v0}, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->a(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_0

    .line 81
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Landroid/content/Context;Lcom/cmplay/internalpush/data/d;)V
    .locals 11

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 97
    if-nez p2, :cond_1

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    const-string v0, "internal_push"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OpenScreen.onClickAd()  proId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/cmplay/internalpush/data/d;->d()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-virtual {p2}, Lcom/cmplay/internalpush/data/d;->h()I

    move-result v0

    .line 103
    if-ne v0, v1, :cond_2

    .line 105
    new-instance v0, Lcom/cmplay/internalpush/n$1;

    invoke-direct {v0, p0, p2}, Lcom/cmplay/internalpush/n$1;-><init>(Lcom/cmplay/internalpush/n;Lcom/cmplay/internalpush/data/d;)V

    invoke-static {p1, p2, v0}, Lcom/cmplay/internalpush/a/b;->a(Landroid/content/Context;Lcom/cmplay/internalpush/data/d;Lcom/cmplay/base/util/t;)V

    .line 126
    :goto_1
    invoke-static {p1}, Lcom/cmplay/internalpush/data/n;->a(Landroid/content/Context;)Lcom/cmplay/internalpush/data/n;

    move-result-object v0

    invoke-virtual {p2}, Lcom/cmplay/internalpush/data/d;->d()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5, v2}, Lcom/cmplay/internalpush/data/n;->a(JI)V

    .line 129
    iget-object v0, p0, Lcom/cmplay/internalpush/n;->b:Lcom/cmplay/internalpush/i$a;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/cmplay/internalpush/n;->b:Lcom/cmplay/internalpush/i$a;

    invoke-interface {v0}, Lcom/cmplay/internalpush/i$a;->a()V

    goto :goto_0

    .line 120
    :cond_2
    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/cmplay/internalpush/a/b;->a(Landroid/content/Context;Lcom/cmplay/internalpush/data/d;Lcom/cmplay/base/util/t;)V

    .line 122
    invoke-static {}, Lcom/cmplay/internalpush/o;->a()Lcom/cmplay/internalpush/o;

    move-result-object v0

    invoke-virtual {p2}, Lcom/cmplay/internalpush/data/d;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/cmplay/internalpush/data/d;->d()J

    move-result-wide v4

    const-string v6, ""

    invoke-virtual {p0}, Lcom/cmplay/internalpush/n;->b()I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {p2}, Lcom/cmplay/internalpush/data/d;->m()J

    move-result-wide v9

    invoke-virtual/range {v0 .. v10}, Lcom/cmplay/internalpush/o;->a(IILjava/lang/String;JLjava/lang/String;IIJ)V

    goto :goto_1
.end method

.method public a(Lcom/cmplay/internalpush/i$a;)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lcom/cmplay/internalpush/n;->b:Lcom/cmplay/internalpush/i$a;

    .line 187
    return-void
.end method

.method public a(Landroid/content/Context;IZ)Z
    .locals 11

    .prologue
    const-wide/16 v4, 0x0

    const/4 v1, 0x1

    const/4 v7, 0x0

    .line 42
    invoke-static {}, Lcom/cmplay/internalpush/o;->a()Lcom/cmplay/internalpush/o;

    move-result-object v0

    const/16 v2, 0x13

    const-string v3, ""

    const-string v6, ""

    move v8, v7

    move-wide v9, v4

    invoke-virtual/range {v0 .. v10}, Lcom/cmplay/internalpush/o;->a(IILjava/lang/String;JLjava/lang/String;IIJ)V

    .line 44
    iput p2, p0, Lcom/cmplay/internalpush/n;->a:I

    .line 45
    invoke-static {p1}, Lcom/cmplay/internalpush/data/n;->a(Landroid/content/Context;)Lcom/cmplay/internalpush/data/n;

    move-result-object v0

    invoke-virtual {v0, p3, v1}, Lcom/cmplay/internalpush/data/n;->a(ZZ)Z

    move-result v0

    .line 46
    if-nez v0, :cond_0

    .line 47
    invoke-static {p1}, Lcom/cmplay/internalpush/data/n;->a(Landroid/content/Context;)Lcom/cmplay/internalpush/data/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cmplay/internalpush/data/n;->b()V

    .line 49
    :cond_0
    return v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 190
    iget v0, p0, Lcom/cmplay/internalpush/n;->a:I

    return v0
.end method

.method public b(Landroid/content/Context;Lcom/cmplay/internalpush/data/d;)V
    .locals 11

    .prologue
    const/4 v8, 0x0

    .line 138
    invoke-virtual {p2}, Lcom/cmplay/internalpush/data/d;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v8}, Lcom/cmplay/base/util/webview/ui/WebViewActivity;->StartWebViewActivity(Landroid/content/Context;Ljava/lang/String;I)V

    .line 146
    invoke-static {}, Lcom/cmplay/internalpush/o;->a()Lcom/cmplay/internalpush/o;

    move-result-object v0

    const/4 v1, 0x1

    const/16 v2, 0xf

    invoke-virtual {p2}, Lcom/cmplay/internalpush/data/d;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/cmplay/internalpush/data/d;->d()J

    move-result-wide v4

    const-string v6, ""

    invoke-virtual {p0}, Lcom/cmplay/internalpush/n;->b()I

    move-result v7

    invoke-virtual {p2}, Lcom/cmplay/internalpush/data/d;->m()J

    move-result-wide v9

    invoke-virtual/range {v0 .. v10}, Lcom/cmplay/internalpush/o;->a(IILjava/lang/String;JLjava/lang/String;IIJ)V

    .line 147
    return-void
.end method

.method public c(Landroid/content/Context;Lcom/cmplay/internalpush/data/d;)Z
    .locals 11

    .prologue
    const/4 v8, 0x0

    .line 156
    iget-object v0, p0, Lcom/cmplay/internalpush/n;->b:Lcom/cmplay/internalpush/i$a;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/cmplay/internalpush/n;->b:Lcom/cmplay/internalpush/i$a;

    invoke-interface {v0}, Lcom/cmplay/internalpush/i$a;->a()V

    .line 159
    :cond_0
    if-nez p2, :cond_1

    .line 165
    :goto_0
    return v8

    .line 163
    :cond_1
    invoke-static {}, Lcom/cmplay/internalpush/o;->a()Lcom/cmplay/internalpush/o;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x3

    invoke-virtual {p2}, Lcom/cmplay/internalpush/data/d;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/cmplay/internalpush/data/d;->d()J

    move-result-wide v4

    const-string v6, ""

    invoke-virtual {p0}, Lcom/cmplay/internalpush/n;->b()I

    move-result v7

    invoke-virtual {p2}, Lcom/cmplay/internalpush/data/d;->m()J

    move-result-wide v9

    invoke-virtual/range {v0 .. v10}, Lcom/cmplay/internalpush/o;->a(IILjava/lang/String;JLjava/lang/String;IIJ)V

    goto :goto_0
.end method

.method public d(Landroid/content/Context;Lcom/cmplay/internalpush/data/d;)V
    .locals 11

    .prologue
    .line 174
    iget-object v0, p0, Lcom/cmplay/internalpush/n;->b:Lcom/cmplay/internalpush/i$a;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/cmplay/internalpush/n;->b:Lcom/cmplay/internalpush/i$a;

    invoke-interface {v0}, Lcom/cmplay/internalpush/i$a;->a()V

    .line 177
    :cond_0
    if-nez p2, :cond_1

    .line 182
    :goto_0
    return-void

    .line 181
    :cond_1
    invoke-static {}, Lcom/cmplay/internalpush/o;->a()Lcom/cmplay/internalpush/o;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x3

    invoke-virtual {p2}, Lcom/cmplay/internalpush/data/d;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/cmplay/internalpush/data/d;->d()J

    move-result-wide v4

    const-string v6, ""

    invoke-virtual {p0}, Lcom/cmplay/internalpush/n;->b()I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {p2}, Lcom/cmplay/internalpush/data/d;->m()J

    move-result-wide v9

    invoke-virtual/range {v0 .. v10}, Lcom/cmplay/internalpush/o;->a(IILjava/lang/String;JLjava/lang/String;IIJ)V

    goto :goto_0
.end method
