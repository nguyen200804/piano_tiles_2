.class final Lcom/cmcm/orion/picks/impl/player/a$j;
.super Ljava/lang/Object;
.source "Mp4Player.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmcm/orion/picks/impl/player/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "j"
.end annotation


# instance fields
.field final synthetic a:Lcom/cmcm/orion/picks/impl/player/a;

.field private b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/cmcm/orion/picks/impl/player/a$i;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/cmcm/orion/picks/impl/player/a$l;

.field private d:I

.field private e:I

.field private f:Landroid/view/Surface;

.field private g:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/cmcm/orion/picks/impl/player/a;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 278
    iput-object p1, p0, Lcom/cmcm/orion/picks/impl/player/a$j;->a:Lcom/cmcm/orion/picks/impl/player/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 210
    new-instance v0, Lcom/cmcm/orion/picks/impl/player/a$j$1;

    invoke-direct {v0, p0}, Lcom/cmcm/orion/picks/impl/player/a$j$1;-><init>(Lcom/cmcm/orion/picks/impl/player/a$j;)V

    iput-object v0, p0, Lcom/cmcm/orion/picks/impl/player/a$j;->g:Ljava/lang/Runnable;

    .line 279
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/cmcm/orion/picks/impl/player/a$j;->b:Ljava/util/HashMap;

    .line 280
    new-instance v0, Lcom/cmcm/orion/picks/impl/player/a$l;

    invoke-direct {v0, p1, v1}, Lcom/cmcm/orion/picks/impl/player/a$l;-><init>(Lcom/cmcm/orion/picks/impl/player/a;B)V

    iput-object v0, p0, Lcom/cmcm/orion/picks/impl/player/a$j;->c:Lcom/cmcm/orion/picks/impl/player/a$l;

    .line 281
    iput v1, p0, Lcom/cmcm/orion/picks/impl/player/a$j;->d:I

    .line 282
    iput v1, p0, Lcom/cmcm/orion/picks/impl/player/a$j;->e:I

    .line 283
    return-void
.end method

.method static synthetic a(Lcom/cmcm/orion/picks/impl/player/a$j;)I
    .locals 1

    .prologue
    .line 203
    .line 1247
    iget v0, p0, Lcom/cmcm/orion/picks/impl/player/a$j;->e:I

    .line 203
    return v0
.end method

.method static synthetic a(Lcom/cmcm/orion/picks/impl/player/a$j;Landroid/view/Surface;)Landroid/view/Surface;
    .locals 0

    .prologue
    .line 203
    iput-object p1, p0, Lcom/cmcm/orion/picks/impl/player/a$j;->f:Landroid/view/Surface;

    return-object p1
.end method

.method static synthetic a(Lcom/cmcm/orion/picks/impl/player/a$j;I)V
    .locals 2

    .prologue
    .line 203
    .line 1286
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/player/a$j;->c:Lcom/cmcm/orion/picks/impl/player/a$l;

    new-instance v1, Lcom/cmcm/orion/picks/impl/player/a$j$5;

    invoke-direct {v1, p0, p1}, Lcom/cmcm/orion/picks/impl/player/a$j$5;-><init>(Lcom/cmcm/orion/picks/impl/player/a$j;I)V

    invoke-static {v0, v1}, Lcom/cmcm/orion/picks/impl/player/a$l;->c(Lcom/cmcm/orion/picks/impl/player/a$l;Ljava/lang/Runnable;)V

    .line 203
    return-void
.end method

.method static synthetic b(Lcom/cmcm/orion/picks/impl/player/a$j;)I
    .locals 1

    .prologue
    .line 203
    iget v0, p0, Lcom/cmcm/orion/picks/impl/player/a$j;->d:I

    return v0
.end method

.method static synthetic b(Lcom/cmcm/orion/picks/impl/player/a$j;I)I
    .locals 0

    .prologue
    .line 203
    iput p1, p0, Lcom/cmcm/orion/picks/impl/player/a$j;->d:I

    return p1
.end method

.method static synthetic c(Lcom/cmcm/orion/picks/impl/player/a$j;I)I
    .locals 0

    .prologue
    .line 203
    iput p1, p0, Lcom/cmcm/orion/picks/impl/player/a$j;->e:I

    return p1
.end method

.method static synthetic c(Lcom/cmcm/orion/picks/impl/player/a$j;)Lcom/cmcm/orion/picks/impl/player/a$l;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/player/a$j;->c:Lcom/cmcm/orion/picks/impl/player/a$l;

    return-object v0
.end method

.method static synthetic d(Lcom/cmcm/orion/picks/impl/player/a$j;)Landroid/view/Surface;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/player/a$j;->f:Landroid/view/Surface;

    return-object v0
.end method

.method static synthetic d(Lcom/cmcm/orion/picks/impl/player/a$j;I)Lcom/cmcm/orion/picks/impl/player/a$i;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 203
    .line 1315
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/player/a$j;->b:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1316
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/player/a$j;->b:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmcm/orion/picks/impl/player/a$i;

    .line 203
    :cond_0
    :goto_0
    return-object v0

    .line 1318
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 1365
    const/4 v0, 0x0

    .line 1370
    :goto_1
    if-eqz v0, :cond_0

    .line 1371
    iget-object v1, p0, Lcom/cmcm/orion/picks/impl/player/a$j;->b:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1320
    :pswitch_0
    new-instance v0, Lcom/cmcm/orion/picks/impl/player/a$b;

    iget-object v1, p0, Lcom/cmcm/orion/picks/impl/player/a$j;->a:Lcom/cmcm/orion/picks/impl/player/a;

    invoke-direct {v0, v1, v2}, Lcom/cmcm/orion/picks/impl/player/a$b;-><init>(Lcom/cmcm/orion/picks/impl/player/a;B)V

    goto :goto_1

    .line 1325
    :pswitch_1
    new-instance v0, Lcom/cmcm/orion/picks/impl/player/a$c;

    iget-object v1, p0, Lcom/cmcm/orion/picks/impl/player/a$j;->a:Lcom/cmcm/orion/picks/impl/player/a;

    invoke-direct {v0, v1, v2}, Lcom/cmcm/orion/picks/impl/player/a$c;-><init>(Lcom/cmcm/orion/picks/impl/player/a;B)V

    goto :goto_1

    .line 1330
    :pswitch_2
    new-instance v0, Lcom/cmcm/orion/picks/impl/player/a$f;

    iget-object v1, p0, Lcom/cmcm/orion/picks/impl/player/a$j;->a:Lcom/cmcm/orion/picks/impl/player/a;

    invoke-direct {v0, v1, v2}, Lcom/cmcm/orion/picks/impl/player/a$f;-><init>(Lcom/cmcm/orion/picks/impl/player/a;B)V

    goto :goto_1

    .line 1335
    :pswitch_3
    new-instance v0, Lcom/cmcm/orion/picks/impl/player/a$h;

    iget-object v1, p0, Lcom/cmcm/orion/picks/impl/player/a$j;->a:Lcom/cmcm/orion/picks/impl/player/a;

    invoke-direct {v0, v1, v2}, Lcom/cmcm/orion/picks/impl/player/a$h;-><init>(Lcom/cmcm/orion/picks/impl/player/a;B)V

    goto :goto_1

    .line 1340
    :pswitch_4
    new-instance v0, Lcom/cmcm/orion/picks/impl/player/a$d;

    iget-object v1, p0, Lcom/cmcm/orion/picks/impl/player/a$j;->a:Lcom/cmcm/orion/picks/impl/player/a;

    invoke-direct {v0, v1, v2}, Lcom/cmcm/orion/picks/impl/player/a$d;-><init>(Lcom/cmcm/orion/picks/impl/player/a;B)V

    goto :goto_1

    .line 1345
    :pswitch_5
    new-instance v0, Lcom/cmcm/orion/picks/impl/player/a$e;

    iget-object v1, p0, Lcom/cmcm/orion/picks/impl/player/a$j;->a:Lcom/cmcm/orion/picks/impl/player/a;

    invoke-direct {v0, v1, v2}, Lcom/cmcm/orion/picks/impl/player/a$e;-><init>(Lcom/cmcm/orion/picks/impl/player/a;B)V

    goto :goto_1

    .line 1350
    :pswitch_6
    new-instance v0, Lcom/cmcm/orion/picks/impl/player/a$k;

    iget-object v1, p0, Lcom/cmcm/orion/picks/impl/player/a$j;->a:Lcom/cmcm/orion/picks/impl/player/a;

    invoke-direct {v0, v1, v2}, Lcom/cmcm/orion/picks/impl/player/a$k;-><init>(Lcom/cmcm/orion/picks/impl/player/a;B)V

    goto :goto_1

    .line 1355
    :pswitch_7
    new-instance v0, Lcom/cmcm/orion/picks/impl/player/a$g;

    iget-object v1, p0, Lcom/cmcm/orion/picks/impl/player/a$j;->a:Lcom/cmcm/orion/picks/impl/player/a;

    invoke-direct {v0, v1, v2}, Lcom/cmcm/orion/picks/impl/player/a$g;-><init>(Lcom/cmcm/orion/picks/impl/player/a;B)V

    goto :goto_1

    .line 1360
    :pswitch_8
    new-instance v0, Lcom/cmcm/orion/picks/impl/player/a$a;

    iget-object v1, p0, Lcom/cmcm/orion/picks/impl/player/a$j;->a:Lcom/cmcm/orion/picks/impl/player/a;

    invoke-direct {v0, v1, v2}, Lcom/cmcm/orion/picks/impl/player/a$a;-><init>(Lcom/cmcm/orion/picks/impl/player/a;B)V

    goto :goto_1

    .line 1318
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method static synthetic e(Lcom/cmcm/orion/picks/impl/player/a$j;)I
    .locals 1

    .prologue
    .line 203
    .line 3234
    iget v0, p0, Lcom/cmcm/orion/picks/impl/player/a$j;->d:I

    .line 203
    return v0
.end method

.method static synthetic e(Lcom/cmcm/orion/picks/impl/player/a$j;I)V
    .locals 2

    .prologue
    .line 203
    .line 2238
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/player/a$j;->c:Lcom/cmcm/orion/picks/impl/player/a$l;

    new-instance v1, Lcom/cmcm/orion/picks/impl/player/a$j$2;

    invoke-direct {v1, p0, p1}, Lcom/cmcm/orion/picks/impl/player/a$j$2;-><init>(Lcom/cmcm/orion/picks/impl/player/a$j;I)V

    invoke-static {v0, v1}, Lcom/cmcm/orion/picks/impl/player/a$l;->c(Lcom/cmcm/orion/picks/impl/player/a$l;Ljava/lang/Runnable;)V

    .line 203
    return-void
.end method


# virtual methods
.method public final a()Landroid/view/Surface;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/player/a$j;->f:Landroid/view/Surface;

    return-object v0
.end method

.method public final a(I)V
    .locals 2

    .prologue
    .line 251
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/player/a$j;->c:Lcom/cmcm/orion/picks/impl/player/a$l;

    new-instance v1, Lcom/cmcm/orion/picks/impl/player/a$j$3;

    invoke-direct {v1, p0, p1}, Lcom/cmcm/orion/picks/impl/player/a$j$3;-><init>(Lcom/cmcm/orion/picks/impl/player/a$j;I)V

    invoke-static {v0, v1}, Lcom/cmcm/orion/picks/impl/player/a$l;->c(Lcom/cmcm/orion/picks/impl/player/a$l;Ljava/lang/Runnable;)V

    .line 258
    return-void
.end method

.method public final a(Landroid/view/Surface;)V
    .locals 2

    .prologue
    .line 261
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/player/a$j;->c:Lcom/cmcm/orion/picks/impl/player/a$l;

    new-instance v1, Lcom/cmcm/orion/picks/impl/player/a$j$4;

    invoke-direct {v1, p0, p1}, Lcom/cmcm/orion/picks/impl/player/a$j$4;-><init>(Lcom/cmcm/orion/picks/impl/player/a$j;Landroid/view/Surface;)V

    invoke-static {v0, v1}, Lcom/cmcm/orion/picks/impl/player/a$l;->c(Lcom/cmcm/orion/picks/impl/player/a$l;Ljava/lang/Runnable;)V

    .line 272
    return-void
.end method

.method final a(Z)V
    .locals 2

    .prologue
    .line 226
    if-eqz p1, :cond_0

    .line 227
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/player/a$j;->c:Lcom/cmcm/orion/picks/impl/player/a$l;

    iget-object v1, p0, Lcom/cmcm/orion/picks/impl/player/a$j;->g:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lcom/cmcm/orion/picks/impl/player/a$l;->c(Lcom/cmcm/orion/picks/impl/player/a$l;Ljava/lang/Runnable;)V

    .line 231
    :goto_0
    return-void

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/player/a$j;->c:Lcom/cmcm/orion/picks/impl/player/a$l;

    iget-object v1, p0, Lcom/cmcm/orion/picks/impl/player/a$j;->g:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lcom/cmcm/orion/picks/impl/player/a$l;->b(Lcom/cmcm/orion/picks/impl/player/a$l;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 302
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/player/a$j;->c:Lcom/cmcm/orion/picks/impl/player/a$l;

    new-instance v1, Lcom/cmcm/orion/picks/impl/player/a$j$6;

    invoke-direct {v1, p0}, Lcom/cmcm/orion/picks/impl/player/a$j$6;-><init>(Lcom/cmcm/orion/picks/impl/player/a$j;)V

    invoke-static {v0, v1}, Lcom/cmcm/orion/picks/impl/player/a$l;->c(Lcom/cmcm/orion/picks/impl/player/a$l;Ljava/lang/Runnable;)V

    .line 311
    return-void
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 379
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/player/a$j;->f:Landroid/view/Surface;

    if-eqz v0, :cond_1

    .line 380
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 381
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/player/a$j;->f:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 383
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cmcm/orion/picks/impl/player/a$j;->f:Landroid/view/Surface;

    .line 385
    :cond_1
    return-void
.end method
