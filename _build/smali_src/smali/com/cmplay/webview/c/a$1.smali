.class Lcom/cmplay/webview/c/a$1;
.super Ljava/lang/Object;
.source "SoundManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/webview/c/a;->a(Landroid/content/Context;[Ljava/lang/String;Lcom/cmplay/webview/c/a$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[Ljava/lang/String;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/cmplay/webview/c/a$a;

.field final synthetic d:Lcom/cmplay/webview/c/a;


# direct methods
.method constructor <init>(Lcom/cmplay/webview/c/a;[Ljava/lang/String;Landroid/content/Context;Lcom/cmplay/webview/c/a$a;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/cmplay/webview/c/a$1;->d:Lcom/cmplay/webview/c/a;

    iput-object p2, p0, Lcom/cmplay/webview/c/a$1;->a:[Ljava/lang/String;

    iput-object p3, p0, Lcom/cmplay/webview/c/a$1;->b:Landroid/content/Context;

    iput-object p4, p0, Lcom/cmplay/webview/c/a$1;->c:Lcom/cmplay/webview/c/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 54
    iget-object v0, p0, Lcom/cmplay/webview/c/a$1;->d:Lcom/cmplay/webview/c/a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/cmplay/webview/c/a;->a(Lcom/cmplay/webview/c/a;J)J

    .line 55
    iget-object v0, p0, Lcom/cmplay/webview/c/a$1;->a:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmplay/webview/c/a$1;->a:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/cmplay/webview/c/a$1;->d:Lcom/cmplay/webview/c/a;

    iget-object v1, p0, Lcom/cmplay/webview/c/a$1;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/cmplay/webview/c/a$1;->c:Lcom/cmplay/webview/c/a$a;

    invoke-static {v0, v1, v2}, Lcom/cmplay/webview/c/a;->a(Lcom/cmplay/webview/c/a;Landroid/content/Context;Lcom/cmplay/webview/c/a$a;)V

    .line 60
    :goto_0
    return-void

    .line 58
    :cond_1
    iget-object v0, p0, Lcom/cmplay/webview/c/a$1;->d:Lcom/cmplay/webview/c/a;

    iget-object v1, p0, Lcom/cmplay/webview/c/a$1;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/cmplay/webview/c/a$1;->a:[Ljava/lang/String;

    iget-object v3, p0, Lcom/cmplay/webview/c/a$1;->c:Lcom/cmplay/webview/c/a$a;

    invoke-static {v0, v1, v2, v3}, Lcom/cmplay/webview/c/a;->a(Lcom/cmplay/webview/c/a;Landroid/content/Context;[Ljava/lang/String;Lcom/cmplay/webview/c/a$a;)V

    goto :goto_0
.end method
