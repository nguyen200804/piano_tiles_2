.class public final Lcom/mnt/impl/b/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mnt/impl/b/f$a;
    }
.end annotation


# static fields
.field private static final e:Ljava/lang/String;

.field private static g:Lcom/mnt/impl/b/f;


# instance fields
.field public a:Landroid/view/WindowManager;

.field public b:Landroid/view/WindowManager$LayoutParams;

.field public c:Landroid/view/ViewGroup;

.field public d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/mnt/impl/e;->mj:Ljava/lang/String;

    sput-object v0, Lcom/mnt/impl/b/f;->e:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mnt/impl/b/f;->c:Landroid/view/ViewGroup;

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mnt/impl/b/f;->d:Ljava/util/Map;

    .line 31
    iput-object p1, p0, Lcom/mnt/impl/b/f;->f:Landroid/content/Context;

    .line 1153
    iget-object v0, p0, Lcom/mnt/impl/b/f;->a:Landroid/view/WindowManager;

    if-nez v0, :cond_0

    .line 1156
    iget-object v0, p0, Lcom/mnt/impl/b/f;->a:Landroid/view/WindowManager;

    if-nez v0, :cond_0

    .line 1157
    iget-object v0, p0, Lcom/mnt/impl/b/f;->f:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/mnt/impl/b/f;->a:Landroid/view/WindowManager;

    .line 2129
    :cond_0
    iget-object v0, p0, Lcom/mnt/impl/b/f;->b:Landroid/view/WindowManager$LayoutParams;

    if-nez v0, :cond_1

    .line 2130
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/mnt/impl/b/f;->b:Landroid/view/WindowManager$LayoutParams;

    .line 2134
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_2

    .line 2136
    iget-object v0, p0, Lcom/mnt/impl/b/f;->b:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7d5

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 2141
    :goto_0
    iget-object v0, p0, Lcom/mnt/impl/b/f;->b:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 2143
    iget-object v0, p0, Lcom/mnt/impl/b/f;->b:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x11

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 34
    return-void

    .line 2138
    :cond_2
    iget-object v0, p0, Lcom/mnt/impl/b/f;->b:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7d2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Lcom/mnt/impl/b/f;
    .locals 2

    .prologue
    .line 37
    sget-object v0, Lcom/mnt/impl/b/f;->g:Lcom/mnt/impl/b/f;

    if-eqz v0, :cond_0

    .line 38
    sget-object v0, Lcom/mnt/impl/b/f;->g:Lcom/mnt/impl/b/f;

    .line 47
    :goto_0
    return-object v0

    .line 40
    :cond_0
    sget-object v1, Lcom/mnt/impl/b/f;->e:Ljava/lang/String;

    monitor-enter v1

    .line 41
    :try_start_0
    sget-object v0, Lcom/mnt/impl/b/f;->g:Lcom/mnt/impl/b/f;

    if-eqz v0, :cond_1

    .line 42
    sget-object v0, Lcom/mnt/impl/b/f;->g:Lcom/mnt/impl/b/f;

    monitor-exit v1

    goto :goto_0

    .line 46
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 43
    :cond_1
    :try_start_1
    sget-object v0, Lcom/mnt/impl/b/f;->g:Lcom/mnt/impl/b/f;

    if-nez v0, :cond_2

    .line 44
    new-instance v0, Lcom/mnt/impl/b/f;

    invoke-direct {v0, p0}, Lcom/mnt/impl/b/f;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mnt/impl/b/f;->g:Lcom/mnt/impl/b/f;

    .line 46
    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    sget-object v0, Lcom/mnt/impl/b/f;->g:Lcom/mnt/impl/b/f;

    goto :goto_0
.end method
