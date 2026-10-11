.class Lcom/cmplay/b/b$3;
.super Ljava/lang/Object;
.source "AppCardHelper.java"

# interfaces
.implements Lcom/cmplay/util/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/b/b;->b(Lcom/cmplay/b/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmplay/b/a;

.field final synthetic b:Lcom/cmplay/b/b;


# direct methods
.method constructor <init>(Lcom/cmplay/b/b;Lcom/cmplay/b/a;)V
    .locals 0

    .prologue
    .line 284
    iput-object p1, p0, Lcom/cmplay/b/b$3;->b:Lcom/cmplay/b/b;

    iput-object p2, p0, Lcom/cmplay/b/b$3;->a:Lcom/cmplay/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 287
    invoke-static {}, Lcom/cmplay/util/NativeUtil;->notifyCheckRecommendInstalled()V

    .line 288
    iget-object v0, p0, Lcom/cmplay/b/b$3;->b:Lcom/cmplay/b/b;

    iget-object v1, p0, Lcom/cmplay/b/b$3;->a:Lcom/cmplay/b/a;

    invoke-static {v0, v1}, Lcom/cmplay/b/b;->b(Lcom/cmplay/b/b;Lcom/cmplay/b/a;)V

    .line 289
    sget-object v0, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmplay/b/e;->a(Landroid/content/Context;)Lcom/cmplay/b/e;

    move-result-object v0

    iget-object v1, p0, Lcom/cmplay/b/b$3;->a:Lcom/cmplay/b/a;

    iget v1, v1, Lcom/cmplay/b/a;->a:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/cmplay/b/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    return-void
.end method
