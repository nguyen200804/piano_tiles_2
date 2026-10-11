.class public final Lcom/facebook/share/widget/d;
.super Lcom/facebook/internal/h;
.source "ShareDialog.java"

# interfaces
.implements Lcom/facebook/share/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/share/widget/d$1;,
        Lcom/facebook/share/widget/d$a;,
        Lcom/facebook/share/widget/d$d;,
        Lcom/facebook/share/widget/d$c;,
        Lcom/facebook/share/widget/d$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/internal/h",
        "<",
        "Lcom/facebook/share/model/ShareContent;",
        "Lcom/facebook/share/a$a;",
        ">;",
        "Lcom/facebook/share/a;"
    }
.end annotation


# static fields
.field private static final b:I


# instance fields
.field private c:Z

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lcom/facebook/internal/e$b;->b:Lcom/facebook/internal/e$b;

    invoke-virtual {v0}, Lcom/facebook/internal/e$b;->a()I

    move-result v0

    sput v0, Lcom/facebook/share/widget/d;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 169
    sget v0, Lcom/facebook/share/widget/d;->b:I

    invoke-direct {p0, p1, v0}, Lcom/facebook/internal/h;-><init>(Landroid/app/Activity;I)V

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/share/widget/d;->c:Z

    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/share/widget/d;->d:Z

    .line 171
    sget v0, Lcom/facebook/share/widget/d;->b:I

    invoke-static {v0}, Lcom/facebook/share/internal/l;->a(I)V

    .line 172
    return-void
.end method

.method constructor <init>(Landroid/app/Activity;I)V
    .locals 1

    .prologue
    .line 199
    invoke-direct {p0, p1, p2}, Lcom/facebook/internal/h;-><init>(Landroid/app/Activity;I)V

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/share/widget/d;->c:Z

    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/share/widget/d;->d:Z

    .line 201
    invoke-static {p2}, Lcom/facebook/share/internal/l;->a(I)V

    .line 202
    return-void
.end method

.method constructor <init>(Landroid/app/Fragment;I)V
    .locals 1

    .prologue
    .line 211
    new-instance v0, Lcom/facebook/internal/l;

    invoke-direct {v0, p1}, Lcom/facebook/internal/l;-><init>(Landroid/app/Fragment;)V

    invoke-direct {p0, v0, p2}, Lcom/facebook/share/widget/d;-><init>(Lcom/facebook/internal/l;I)V

    .line 212
    return-void
.end method

.method constructor <init>(Landroid/support/v4/app/Fragment;I)V
    .locals 1

    .prologue
    .line 206
    new-instance v0, Lcom/facebook/internal/l;

    invoke-direct {v0, p1}, Lcom/facebook/internal/l;-><init>(Landroid/support/v4/app/Fragment;)V

    invoke-direct {p0, v0, p2}, Lcom/facebook/share/widget/d;-><init>(Lcom/facebook/internal/l;I)V

    .line 208
    return-void
.end method

.method private constructor <init>(Lcom/facebook/internal/l;I)V
    .locals 1

    .prologue
    .line 215
    invoke-direct {p0, p1, p2}, Lcom/facebook/internal/h;-><init>(Lcom/facebook/internal/l;I)V

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/share/widget/d;->c:Z

    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/share/widget/d;->d:Z

    .line 217
    invoke-static {p2}, Lcom/facebook/share/internal/l;->a(I)V

    .line 218
    return-void
.end method

.method static synthetic a(Lcom/facebook/share/widget/d;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/facebook/share/widget/d;->b()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/content/Context;Lcom/facebook/share/model/ShareContent;Lcom/facebook/share/widget/d$b;)V
    .locals 5

    .prologue
    .line 414
    iget-boolean v0, p0, Lcom/facebook/share/widget/d;->d:Z

    if-eqz v0, :cond_0

    .line 415
    sget-object p3, Lcom/facebook/share/widget/d$b;->a:Lcom/facebook/share/widget/d$b;

    .line 418
    :cond_0
    sget-object v0, Lcom/facebook/share/widget/d$1;->a:[I

    invoke-virtual {p3}, Lcom/facebook/share/widget/d$b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 429
    const-string v0, "unknown"

    .line 434
    :goto_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/share/widget/d;->g(Ljava/lang/Class;)Lcom/facebook/internal/f;

    move-result-object v1

    .line 435
    sget-object v2, Lcom/facebook/share/internal/k;->a:Lcom/facebook/share/internal/k;

    if-ne v1, v2, :cond_1

    .line 436
    const-string v1, "status"

    .line 447
    :goto_1
    invoke-static {p1}, Lcom/facebook/appevents/a;->b(Landroid/content/Context;)Lcom/facebook/appevents/a;

    move-result-object v2

    .line 448
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 449
    const-string v4, "fb_share_dialog_show"

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    const-string v0, "fb_share_dialog_content_type"

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    const-string v0, "fb_share_dialog_show"

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1, v3}, Lcom/facebook/appevents/a;->a(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V

    .line 458
    return-void

    .line 420
    :pswitch_0
    const-string v0, "automatic"

    goto :goto_0

    .line 423
    :pswitch_1
    const-string v0, "web"

    goto :goto_0

    .line 426
    :pswitch_2
    const-string v0, "native"

    goto :goto_0

    .line 437
    :cond_1
    sget-object v2, Lcom/facebook/share/internal/k;->b:Lcom/facebook/share/internal/k;

    if-ne v1, v2, :cond_2

    .line 438
    const-string v1, "photo"

    goto :goto_1

    .line 439
    :cond_2
    sget-object v2, Lcom/facebook/share/internal/k;->c:Lcom/facebook/share/internal/k;

    if-ne v1, v2, :cond_3

    .line 440
    const-string v1, "video"

    goto :goto_1

    .line 441
    :cond_3
    sget-object v2, Lcom/facebook/share/internal/f;->a:Lcom/facebook/share/internal/f;

    if-ne v1, v2, :cond_4

    .line 442
    const-string v1, "open_graph"

    goto :goto_1

    .line 444
    :cond_4
    const-string v1, "unknown"

    goto :goto_1

    .line 418
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic a(Lcom/facebook/share/widget/d;Landroid/content/Context;Lcom/facebook/share/model/ShareContent;Lcom/facebook/share/widget/d$b;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/share/widget/d;->a(Landroid/content/Context;Lcom/facebook/share/model/ShareContent;Lcom/facebook/share/widget/d$b;)V

    return-void
.end method

.method public static a(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/facebook/share/model/ShareContent;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 145
    invoke-static {p0}, Lcom/facebook/share/widget/d;->f(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/facebook/share/widget/d;->e(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/facebook/share/widget/d;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/facebook/share/widget/d;->b()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Ljava/lang/Class;)Z
    .locals 1

    .prologue
    .line 54
    invoke-static {p0}, Lcom/facebook/share/widget/d;->e(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/facebook/share/widget/d;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/facebook/share/widget/d;->b()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Ljava/lang/Class;)Lcom/facebook/internal/f;
    .locals 1

    .prologue
    .line 54
    invoke-static {p0}, Lcom/facebook/share/widget/d;->g(Ljava/lang/Class;)Lcom/facebook/internal/f;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Ljava/lang/Class;)Z
    .locals 1

    .prologue
    .line 54
    invoke-static {p0}, Lcom/facebook/share/widget/d;->f(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method private static e(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/facebook/share/model/ShareContent;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 149
    invoke-static {p0}, Lcom/facebook/share/widget/d;->g(Ljava/lang/Class;)Lcom/facebook/internal/f;

    move-result-object v0

    .line 151
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/facebook/internal/g;->a(Lcom/facebook/internal/f;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static f(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/facebook/share/model/ShareContent;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 160
    const-class v0, Lcom/facebook/share/model/ShareLinkContent;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Lcom/facebook/share/model/ShareOpenGraphContent;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static g(Ljava/lang/Class;)Lcom/facebook/internal/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/facebook/share/model/ShareContent;",
            ">;)",
            "Lcom/facebook/internal/f;"
        }
    .end annotation

    .prologue
    .line 400
    const-class v0, Lcom/facebook/share/model/ShareLinkContent;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 401
    sget-object v0, Lcom/facebook/share/internal/k;->a:Lcom/facebook/share/internal/k;

    .line 409
    :goto_0
    return-object v0

    .line 402
    :cond_0
    const-class v0, Lcom/facebook/share/model/SharePhotoContent;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 403
    sget-object v0, Lcom/facebook/share/internal/k;->b:Lcom/facebook/share/internal/k;

    goto :goto_0

    .line 404
    :cond_1
    const-class v0, Lcom/facebook/share/model/ShareVideoContent;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 405
    sget-object v0, Lcom/facebook/share/internal/k;->c:Lcom/facebook/share/internal/k;

    goto :goto_0

    .line 406
    :cond_2
    const-class v0, Lcom/facebook/share/model/ShareOpenGraphContent;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 407
    sget-object v0, Lcom/facebook/share/internal/f;->a:Lcom/facebook/share/internal/f;

    goto :goto_0

    .line 409
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected a(Lcom/facebook/internal/e;Lcom/facebook/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/internal/e;",
            "Lcom/facebook/g",
            "<",
            "Lcom/facebook/share/a$a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 224
    invoke-virtual {p0}, Lcom/facebook/share/widget/d;->a()I

    move-result v0

    invoke-static {v0, p1, p2}, Lcom/facebook/share/internal/l;->a(ILcom/facebook/e;Lcom/facebook/g;)V

    .line 226
    return-void
.end method

.method public a(Lcom/facebook/share/model/ShareContent;Lcom/facebook/share/widget/d$b;)V
    .locals 1

    .prologue
    .line 253
    sget-object v0, Lcom/facebook/share/widget/d$b;->a:Lcom/facebook/share/widget/d$b;

    if-ne p2, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/facebook/share/widget/d;->d:Z

    .line 255
    iget-boolean v0, p0, Lcom/facebook/share/widget/d;->d:Z

    if-eqz v0, :cond_0

    sget-object p2, Lcom/facebook/share/widget/d;->a:Ljava/lang/Object;

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/facebook/share/widget/d;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 256
    return-void

    .line 253
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected c()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/internal/h",
            "<",
            "Lcom/facebook/share/model/ShareContent;",
            "Lcom/facebook/share/a$a;",
            ">.a;>;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 265
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 266
    new-instance v1, Lcom/facebook/share/widget/d$c;

    invoke-direct {v1, p0, v2}, Lcom/facebook/share/widget/d$c;-><init>(Lcom/facebook/share/widget/d;Lcom/facebook/share/widget/d$1;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    new-instance v1, Lcom/facebook/share/widget/d$a;

    invoke-direct {v1, p0, v2}, Lcom/facebook/share/widget/d$a;-><init>(Lcom/facebook/share/widget/d;Lcom/facebook/share/widget/d$1;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    new-instance v1, Lcom/facebook/share/widget/d$d;

    invoke-direct {v1, p0, v2}, Lcom/facebook/share/widget/d$d;-><init>(Lcom/facebook/share/widget/d;Lcom/facebook/share/widget/d$1;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 270
    return-object v0
.end method

.method protected d()Lcom/facebook/internal/a;
    .locals 2

    .prologue
    .line 260
    new-instance v0, Lcom/facebook/internal/a;

    invoke-virtual {p0}, Lcom/facebook/share/widget/d;->a()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/facebook/internal/a;-><init>(I)V

    return-object v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 230
    iget-boolean v0, p0, Lcom/facebook/share/widget/d;->c:Z

    return v0
.end method
