.class Lcom/cmplay/internalpush/n$1;
.super Ljava/lang/Object;
.source "OpenScreen.java"

# interfaces
.implements Lcom/cmplay/base/util/t;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/internalpush/n;->a(Landroid/content/Context;Lcom/cmplay/internalpush/data/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmplay/internalpush/data/d;

.field final synthetic b:Lcom/cmplay/internalpush/n;


# direct methods
.method constructor <init>(Lcom/cmplay/internalpush/n;Lcom/cmplay/internalpush/data/d;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/cmplay/internalpush/n$1;->b:Lcom/cmplay/internalpush/n;

    iput-object p2, p0, Lcom/cmplay/internalpush/n$1;->a:Lcom/cmplay/internalpush/data/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 11

    .prologue
    const/4 v8, 0x0

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 108
    if-eqz p1, :cond_0

    .line 111
    invoke-static {}, Lcom/cmplay/internalpush/o;->a()Lcom/cmplay/internalpush/o;

    move-result-object v0

    iget-object v3, p0, Lcom/cmplay/internalpush/n$1;->a:Lcom/cmplay/internalpush/data/d;

    invoke-virtual {v3}, Lcom/cmplay/internalpush/data/d;->f()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/cmplay/internalpush/n$1;->a:Lcom/cmplay/internalpush/data/d;

    invoke-virtual {v4}, Lcom/cmplay/internalpush/data/d;->d()J

    move-result-wide v4

    const-string v6, ""

    iget-object v7, p0, Lcom/cmplay/internalpush/n$1;->a:Lcom/cmplay/internalpush/data/d;

    invoke-virtual {v7}, Lcom/cmplay/internalpush/data/d;->m()J

    move-result-wide v9

    move v7, v1

    invoke-virtual/range {v0 .. v10}, Lcom/cmplay/internalpush/o;->a(IILjava/lang/String;JLjava/lang/String;IIJ)V

    .line 116
    :goto_0
    return-void

    .line 114
    :cond_0
    invoke-static {}, Lcom/cmplay/internalpush/o;->a()Lcom/cmplay/internalpush/o;

    move-result-object v0

    iget-object v3, p0, Lcom/cmplay/internalpush/n$1;->a:Lcom/cmplay/internalpush/data/d;

    invoke-virtual {v3}, Lcom/cmplay/internalpush/data/d;->f()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/cmplay/internalpush/n$1;->a:Lcom/cmplay/internalpush/data/d;

    invoke-virtual {v4}, Lcom/cmplay/internalpush/data/d;->d()J

    move-result-wide v4

    const-string v6, ""

    iget-object v7, p0, Lcom/cmplay/internalpush/n$1;->a:Lcom/cmplay/internalpush/data/d;

    invoke-virtual {v7}, Lcom/cmplay/internalpush/data/d;->m()J

    move-result-wide v9

    move v7, v2

    invoke-virtual/range {v0 .. v10}, Lcom/cmplay/internalpush/o;->a(IILjava/lang/String;JLjava/lang/String;IIJ)V

    goto :goto_0
.end method
