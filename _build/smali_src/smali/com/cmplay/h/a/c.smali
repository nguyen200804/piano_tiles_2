.class public abstract Lcom/cmplay/h/a/c;
.super Ljava/lang/Object;
.source "SharePlatform.java"

# interfaces
.implements Lcom/cmplay/h/c;


# instance fields
.field protected a:Lcom/cmplay/h/a;

.field protected b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/cmplay/h/a/c;->b:Landroid/content/Context;

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/cmplay/h/a;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p2, p0, Lcom/cmplay/h/a/c;->a:Lcom/cmplay/h/a;

    .line 26
    iput-object p1, p0, Lcom/cmplay/h/a/c;->b:Landroid/content/Context;

    .line 27
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/cmplay/h/a/c;->a:Lcom/cmplay/h/a;

    invoke-virtual {v0}, Lcom/cmplay/h/a;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected a(II)V
    .locals 0

    .prologue
    .line 54
    invoke-static {p1, p2}, Lcom/cmplay/util/NativeUtil;->shareCallbackOnGLThread(II)V

    .line 55
    return-void
.end method

.method public abstract a(Lcom/cmplay/h/e;)V
.end method

.method protected a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 75
    invoke-static {}, Lcom/cmplay/h/b;->a()Lcom/cmplay/h/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cmplay/h/b;->a(Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method protected b()V
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/cmplay/h/a/c;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 63
    instance-of v1, v0, Lcom/cmplay/tile2/ui/ShareActivity;

    if-nez v1, :cond_0

    instance-of v1, v0, Lcom/cmplay/tile2/ui/LoveShareActivity;

    if-nez v1, :cond_0

    instance-of v0, v0, Lcom/cmplay/tile2/ui/SongMixShareActivity;

    if-eqz v0, :cond_1

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/cmplay/h/a/c;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 67
    :cond_1
    return-void
.end method
