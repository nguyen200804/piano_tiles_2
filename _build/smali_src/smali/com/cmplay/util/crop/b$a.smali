.class Lcom/cmplay/util/crop/b$a;
.super Lcom/cmplay/util/crop/d$a;
.source "CropUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmplay/util/crop/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/cmplay/util/crop/d;

.field private final b:Landroid/app/ProgressDialog;

.field private final c:Ljava/lang/Runnable;

.field private final d:Landroid/os/Handler;

.field private final e:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/cmplay/util/crop/d;Ljava/lang/Runnable;Landroid/app/ProgressDialog;Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 184
    invoke-direct {p0}, Lcom/cmplay/util/crop/d$a;-><init>()V

    .line 176
    new-instance v0, Lcom/cmplay/util/crop/b$a$1;

    invoke-direct {v0, p0}, Lcom/cmplay/util/crop/b$a$1;-><init>(Lcom/cmplay/util/crop/b$a;)V

    iput-object v0, p0, Lcom/cmplay/util/crop/b$a;->e:Ljava/lang/Runnable;

    .line 185
    iput-object p1, p0, Lcom/cmplay/util/crop/b$a;->a:Lcom/cmplay/util/crop/d;

    .line 186
    iput-object p3, p0, Lcom/cmplay/util/crop/b$a;->b:Landroid/app/ProgressDialog;

    .line 187
    iput-object p2, p0, Lcom/cmplay/util/crop/b$a;->c:Ljava/lang/Runnable;

    .line 188
    iget-object v0, p0, Lcom/cmplay/util/crop/b$a;->a:Lcom/cmplay/util/crop/d;

    invoke-virtual {v0, p0}, Lcom/cmplay/util/crop/d;->b(Lcom/cmplay/util/crop/d$b;)V

    .line 189
    iput-object p4, p0, Lcom/cmplay/util/crop/b$a;->d:Landroid/os/Handler;

    .line 190
    return-void
.end method

.method static synthetic a(Lcom/cmplay/util/crop/b$a;)Lcom/cmplay/util/crop/d;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/cmplay/util/crop/b$a;->a:Lcom/cmplay/util/crop/d;

    return-object v0
.end method

.method static synthetic b(Lcom/cmplay/util/crop/b$a;)Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/cmplay/util/crop/b$a;->b:Landroid/app/ProgressDialog;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/cmplay/util/crop/d;)V
    .locals 2

    .prologue
    .line 204
    iget-object v0, p0, Lcom/cmplay/util/crop/b$a;->e:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 205
    iget-object v0, p0, Lcom/cmplay/util/crop/b$a;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/cmplay/util/crop/b$a;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 206
    return-void
.end method

.method public b(Lcom/cmplay/util/crop/d;)V
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/cmplay/util/crop/b$a;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    .line 211
    return-void
.end method

.method public c(Lcom/cmplay/util/crop/d;)V
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/cmplay/util/crop/b$a;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 216
    return-void
.end method

.method public run()V
    .locals 3

    .prologue
    .line 194
    :try_start_0
    iget-object v0, p0, Lcom/cmplay/util/crop/b$a;->c:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    iget-object v0, p0, Lcom/cmplay/util/crop/b$a;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/cmplay/util/crop/b$a;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 198
    return-void

    .line 196
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/cmplay/util/crop/b$a;->d:Landroid/os/Handler;

    iget-object v2, p0, Lcom/cmplay/util/crop/b$a;->e:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    throw v0
.end method
