.class public Lcom/ijinshan/cloudconfig/a/b;
.super Ljava/lang/Object;
.source "InnerCallBackHelper.java"


# static fields
.field private static a:Lcom/ijinshan/cloudconfig/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const/4 v0, 0x0

    sput-object v0, Lcom/ijinshan/cloudconfig/a/b;->a:Lcom/ijinshan/cloudconfig/a/a;

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/ijinshan/cloudconfig/a/b;->a:Lcom/ijinshan/cloudconfig/a/a;

    if-eqz v0, :cond_0

    .line 16
    sget-object v0, Lcom/ijinshan/cloudconfig/a/b;->a:Lcom/ijinshan/cloudconfig/a/a;

    invoke-interface {v0}, Lcom/ijinshan/cloudconfig/a/a;->a()Ljava/lang/String;

    move-result-object v0

    .line 18
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static a(Lcom/ijinshan/cloudconfig/a/a;)V
    .locals 3

    .prologue
    .line 10
    sput-object p0, Lcom/ijinshan/cloudconfig/a/b;->a:Lcom/ijinshan/cloudconfig/a/a;

    .line 11
    const-string v0, "zzb_cloud"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InnerCallBackHelper.initCallBack   sRcmdCallBack:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/ijinshan/cloudconfig/a/b;->a:Lcom/ijinshan/cloudconfig/a/a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ijinshan/cloudconfig/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    return-void
.end method

.method public static a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/ijinshan/cloudconfig/a/b;->a:Lcom/ijinshan/cloudconfig/a/a;

    if-eqz v0, :cond_0

    .line 62
    sget-object v0, Lcom/ijinshan/cloudconfig/a/b;->a:Lcom/ijinshan/cloudconfig/a/a;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/ijinshan/cloudconfig/a/a;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 64
    :cond_0
    return-void
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/ijinshan/cloudconfig/a/b;->a:Lcom/ijinshan/cloudconfig/a/a;

    if-eqz v0, :cond_0

    .line 23
    sget-object v0, Lcom/ijinshan/cloudconfig/a/b;->a:Lcom/ijinshan/cloudconfig/a/a;

    invoke-interface {v0}, Lcom/ijinshan/cloudconfig/a/a;->b()Ljava/lang/String;

    move-result-object v0

    .line 25
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/ijinshan/cloudconfig/a/b;->a:Lcom/ijinshan/cloudconfig/a/a;

    if-eqz v0, :cond_0

    .line 30
    sget-object v0, Lcom/ijinshan/cloudconfig/a/b;->a:Lcom/ijinshan/cloudconfig/a/a;

    invoke-interface {v0}, Lcom/ijinshan/cloudconfig/a/a;->c()Ljava/lang/String;

    move-result-object v0

    .line 32
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/ijinshan/cloudconfig/a/b;->a:Lcom/ijinshan/cloudconfig/a/a;

    if-eqz v0, :cond_0

    .line 37
    sget-object v0, Lcom/ijinshan/cloudconfig/a/b;->a:Lcom/ijinshan/cloudconfig/a/a;

    invoke-interface {v0}, Lcom/ijinshan/cloudconfig/a/a;->d()Ljava/lang/String;

    move-result-object v0

    .line 39
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/ijinshan/cloudconfig/a/b;->a:Lcom/ijinshan/cloudconfig/a/a;

    if-eqz v0, :cond_0

    .line 44
    sget-object v0, Lcom/ijinshan/cloudconfig/a/b;->a:Lcom/ijinshan/cloudconfig/a/a;

    invoke-interface {v0}, Lcom/ijinshan/cloudconfig/a/a;->e()Ljava/lang/String;

    move-result-object v0

    .line 46
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/ijinshan/cloudconfig/a/b;->a:Lcom/ijinshan/cloudconfig/a/a;

    if-eqz v0, :cond_0

    .line 50
    sget-object v0, Lcom/ijinshan/cloudconfig/a/b;->a:Lcom/ijinshan/cloudconfig/a/a;

    invoke-interface {v0}, Lcom/ijinshan/cloudconfig/a/a;->f()Ljava/lang/String;

    move-result-object v0

    .line 52
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/ijinshan/cloudconfig/a/b;->a:Lcom/ijinshan/cloudconfig/a/a;

    if-eqz v0, :cond_0

    .line 56
    sget-object v0, Lcom/ijinshan/cloudconfig/a/b;->a:Lcom/ijinshan/cloudconfig/a/a;

    invoke-interface {v0}, Lcom/ijinshan/cloudconfig/a/a;->g()Ljava/lang/String;

    move-result-object v0

    .line 58
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method
