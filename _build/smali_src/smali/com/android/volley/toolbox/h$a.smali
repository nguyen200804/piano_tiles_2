.class Lcom/android/volley/toolbox/h$a;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/volley/toolbox/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/volley/toolbox/h;

.field private final b:Lcom/android/volley/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/volley/l",
            "<*>;"
        }
    .end annotation
.end field

.field private c:Landroid/graphics/Bitmap;

.field private d:Lcom/android/volley/s;

.field private final e:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/volley/toolbox/h$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/volley/toolbox/h;Lcom/android/volley/l;Lcom/android/volley/toolbox/h$c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/l",
            "<*>;",
            "Lcom/android/volley/toolbox/h$c;",
            ")V"
        }
    .end annotation

    .prologue
    .line 464
    iput-object p1, p0, Lcom/android/volley/toolbox/h$a;->a:Lcom/android/volley/toolbox/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 457
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/volley/toolbox/h$a;->e:Ljava/util/LinkedList;

    .line 465
    iput-object p2, p0, Lcom/android/volley/toolbox/h$a;->b:Lcom/android/volley/l;

    .line 466
    iget-object v0, p0, Lcom/android/volley/toolbox/h$a;->e:Ljava/util/LinkedList;

    invoke-virtual {v0, p3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 467
    return-void
.end method

.method static synthetic a(Lcom/android/volley/toolbox/h$a;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .prologue
    .line 446
    iput-object p1, p0, Lcom/android/volley/toolbox/h$a;->c:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic a(Lcom/android/volley/toolbox/h$a;)Ljava/util/LinkedList;
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Lcom/android/volley/toolbox/h$a;->e:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic b(Lcom/android/volley/toolbox/h$a;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Lcom/android/volley/toolbox/h$a;->c:Landroid/graphics/Bitmap;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/android/volley/s;
    .locals 1

    .prologue
    .line 480
    iget-object v0, p0, Lcom/android/volley/toolbox/h$a;->d:Lcom/android/volley/s;

    return-object v0
.end method

.method public a(Lcom/android/volley/s;)V
    .locals 0

    .prologue
    .line 473
    iput-object p1, p0, Lcom/android/volley/toolbox/h$a;->d:Lcom/android/volley/s;

    .line 474
    return-void
.end method

.method public a(Lcom/android/volley/toolbox/h$c;)V
    .locals 1

    .prologue
    .line 488
    iget-object v0, p0, Lcom/android/volley/toolbox/h$a;->e:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 489
    return-void
.end method

.method public b(Lcom/android/volley/toolbox/h$c;)Z
    .locals 1

    .prologue
    .line 498
    iget-object v0, p0, Lcom/android/volley/toolbox/h$a;->e:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 499
    iget-object v0, p0, Lcom/android/volley/toolbox/h$a;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 500
    iget-object v0, p0, Lcom/android/volley/toolbox/h$a;->b:Lcom/android/volley/l;

    invoke-virtual {v0}, Lcom/android/volley/l;->f()V

    .line 501
    const/4 v0, 0x1

    .line 503
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
