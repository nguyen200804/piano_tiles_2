.class public final Lcom/cmcm/orion/utils/d$b;
.super Ljava/lang/Object;
.source "Networking.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmcm/orion/utils/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:[B

.field private e:Lcom/cmcm/orion/picks/impl/a$a;

.field private f:Z

.field private g:Ljava/lang/String;

.field private h:I


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 386
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 373
    iput v1, p0, Lcom/cmcm/orion/utils/d$b;->a:I

    .line 375
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/cmcm/orion/utils/d$b;->c:Ljava/util/HashMap;

    .line 380
    iput-boolean v1, p0, Lcom/cmcm/orion/utils/d$b;->f:Z

    .line 384
    const/16 v0, 0x2710

    iput v0, p0, Lcom/cmcm/orion/utils/d$b;->h:I

    .line 387
    iget-object v0, p0, Lcom/cmcm/orion/utils/d$b;->c:Ljava/util/HashMap;

    const-string v1, "User-Agent"

    invoke-static {}, Lcom/cmcm/orion/picks/a/a/h;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    return-void
.end method

.method static synthetic a(Lcom/cmcm/orion/utils/d$b;)Lcom/cmcm/orion/picks/impl/a$a;
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcom/cmcm/orion/utils/d$b;->e:Lcom/cmcm/orion/picks/impl/a$a;

    return-object v0
.end method

.method static synthetic a(Lcom/cmcm/orion/utils/d$b;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 368
    iput-object p1, p0, Lcom/cmcm/orion/utils/d$b;->g:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/cmcm/orion/utils/d$b;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcom/cmcm/orion/utils/d$b;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/cmcm/orion/utils/d$b;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcom/cmcm/orion/utils/d$b;->c:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic d(Lcom/cmcm/orion/utils/d$b;)I
    .locals 1

    .prologue
    .line 368
    iget v0, p0, Lcom/cmcm/orion/utils/d$b;->a:I

    return v0
.end method

.method static synthetic e(Lcom/cmcm/orion/utils/d$b;)Z
    .locals 1

    .prologue
    .line 368
    iget-boolean v0, p0, Lcom/cmcm/orion/utils/d$b;->f:Z

    return v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 406
    iget v0, p0, Lcom/cmcm/orion/utils/d$b;->h:I

    return v0
.end method

.method public final a(I)V
    .locals 0

    .prologue
    .line 446
    iput p1, p0, Lcom/cmcm/orion/utils/d$b;->a:I

    .line 447
    return-void
.end method

.method public final a(Lcom/cmcm/orion/picks/impl/a$a;)V
    .locals 0

    .prologue
    .line 398
    iput-object p1, p0, Lcom/cmcm/orion/utils/d$b;->e:Lcom/cmcm/orion/picks/impl/a$a;

    .line 399
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 402
    iput-object p1, p0, Lcom/cmcm/orion/utils/d$b;->b:Ljava/lang/String;

    .line 403
    return-void
.end method

.method public final a([B)V
    .locals 0

    .prologue
    .line 418
    iput-object p1, p0, Lcom/cmcm/orion/utils/d$b;->d:[B

    .line 419
    return-void
.end method

.method public final b()[B
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lcom/cmcm/orion/utils/d$b;->d:[B

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 450
    iget-object v0, p0, Lcom/cmcm/orion/utils/d$b;->g:Ljava/lang/String;

    return-object v0
.end method
