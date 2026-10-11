.class final Lcom/cmcm/orion/picks/impl/b/a$a;
.super Ljava/lang/Object;
.source "FileFetcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmcm/orion/picks/impl/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/io/File;

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cmcm/orion/picks/impl/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cmcm/orion/picks/impl/b/a$a;->b:Ljava/io/File;

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cmcm/orion/picks/impl/b/a$a;->c:Ljava/util/ArrayList;

    .line 114
    iput-object p1, p0, Lcom/cmcm/orion/picks/impl/b/a$a;->a:Ljava/lang/String;

    .line 115
    return-void
.end method

.method static synthetic a(Lcom/cmcm/orion/picks/impl/b/a$a;Ljava/io/File;)Ljava/io/File;
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/cmcm/orion/picks/impl/b/a$a;->b:Ljava/io/File;

    return-object p1
.end method

.method static synthetic a(Lcom/cmcm/orion/picks/impl/b/a$a;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/b/a$a;->c:Ljava/util/ArrayList;

    return-object v0
.end method

.method private a(Lcom/cmcm/orion/adsdk/d;)V
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/b/a$a;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/cmcm/orion/picks/impl/b/a;->a(Ljava/lang/String;)V

    .line 243
    new-instance v0, Lcom/cmcm/orion/picks/impl/b/a$a$3;

    invoke-direct {v0, p0, p1}, Lcom/cmcm/orion/picks/impl/b/a$a$3;-><init>(Lcom/cmcm/orion/picks/impl/b/a$a;Lcom/cmcm/orion/adsdk/d;)V

    invoke-static {v0}, Lcom/cmcm/orion/utils/e;->a(Ljava/lang/Runnable;)V

    .line 251
    return-void
.end method

.method static synthetic a(Lcom/cmcm/orion/picks/impl/b/a$a;Lcom/cmcm/orion/adsdk/d;)V
    .locals 0

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/cmcm/orion/picks/impl/b/a$a;->a(Lcom/cmcm/orion/adsdk/d;)V

    return-void
.end method

.method static synthetic a(Lcom/cmcm/orion/picks/impl/b/a$a;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/cmcm/orion/picks/impl/b/a$a;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/b/a$a;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/cmcm/orion/picks/impl/b/a;->a(Ljava/lang/String;)V

    .line 255
    new-instance v0, Lcom/cmcm/orion/picks/impl/b/a$a$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/cmcm/orion/picks/impl/b/a$a$4;-><init>(Lcom/cmcm/orion/picks/impl/b/a$a;Ljava/lang/String;Z)V

    invoke-static {v0}, Lcom/cmcm/orion/utils/e;->a(Ljava/lang/Runnable;)V

    .line 263
    return-void
.end method

.method static synthetic b(Lcom/cmcm/orion/picks/impl/b/a$a;)Ljava/io/File;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/b/a$a;->b:Ljava/io/File;

    return-object v0
.end method

.method static synthetic c(Lcom/cmcm/orion/picks/impl/b/a$a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/b/a$a;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 146
    invoke-static {}, Lcom/cmcm/orion/picks/impl/b/a;->a()Lcom/cmcm/orion/picks/impl/a/a;

    invoke-static {p1}, Lcom/cmcm/orion/picks/impl/a/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 147
    sget-object v0, Lcom/cmcm/orion/adsdk/d;->p:Lcom/cmcm/orion/adsdk/d;

    invoke-direct {p0, v0}, Lcom/cmcm/orion/picks/impl/b/a$a;->a(Lcom/cmcm/orion/adsdk/d;)V

    .line 239
    :goto_0
    return-void

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/b/a$a;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 152
    sget-object v0, Lcom/cmcm/orion/adsdk/d;->o:Lcom/cmcm/orion/adsdk/d;

    invoke-direct {p0, v0}, Lcom/cmcm/orion/picks/impl/b/a$a;->a(Lcom/cmcm/orion/adsdk/d;)V

    goto :goto_0

    .line 156
    :cond_1
    invoke-static {}, Lcom/cmcm/orion/picks/impl/b/a;->b()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "start: mDownloadUrl = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cmcm/orion/picks/impl/b/a$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    invoke-static {}, Lcom/cmcm/orion/picks/impl/b/a;->a()Lcom/cmcm/orion/picks/impl/a/a;

    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/b/a$a;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/cmcm/orion/picks/impl/a/a;->b(Ljava/lang/String;)Z

    move-result v0

    .line 158
    if-eqz v0, :cond_2

    .line 159
    invoke-static {}, Lcom/cmcm/orion/picks/impl/b/a;->a()Lcom/cmcm/orion/picks/impl/a/a;

    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/b/a$a;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/cmcm/orion/picks/impl/a/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/cmcm/orion/picks/impl/b/a$a;->a(Ljava/lang/String;Z)V

    goto :goto_0

    .line 163
    :cond_2
    iget-boolean v0, p0, Lcom/cmcm/orion/picks/impl/b/a$a;->d:Z

    if-eqz v0, :cond_3

    .line 164
    sget-object v0, Lcom/cmcm/orion/adsdk/d;->t:Lcom/cmcm/orion/adsdk/d;

    const-string v1, "Only cache error"

    invoke-virtual {v0, v1}, Lcom/cmcm/orion/adsdk/d;->a(Ljava/lang/String;)Lcom/cmcm/orion/adsdk/d;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cmcm/orion/picks/impl/b/a$a;->a(Lcom/cmcm/orion/adsdk/d;)V

    goto :goto_0

    .line 168
    :cond_3
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/b/a$a;->a:Ljava/lang/String;

    new-instance v1, Lcom/cmcm/orion/picks/impl/b/a$a$2;

    invoke-direct {v1, p0}, Lcom/cmcm/orion/picks/impl/b/a$a$2;-><init>(Lcom/cmcm/orion/picks/impl/b/a$a;)V

    invoke-static {v0, v1}, Lcom/cmcm/orion/utils/d;->a(Ljava/lang/String;Lcom/cmcm/orion/picks/impl/a$a;)Lcom/cmcm/orion/utils/d$b;

    goto :goto_0
.end method

.method public final a(Lcom/cmcm/orion/picks/impl/a$a;)V
    .locals 1

    .prologue
    .line 122
    new-instance v0, Lcom/cmcm/orion/picks/impl/b/a$a$1;

    invoke-direct {v0, p0, p1}, Lcom/cmcm/orion/picks/impl/b/a$a$1;-><init>(Lcom/cmcm/orion/picks/impl/b/a$a;Lcom/cmcm/orion/picks/impl/a$a;)V

    invoke-static {v0}, Lcom/cmcm/orion/utils/e;->a(Ljava/lang/Runnable;)V

    .line 132
    return-void
.end method

.method public final a(Z)V
    .locals 0

    .prologue
    .line 118
    iput-boolean p1, p0, Lcom/cmcm/orion/picks/impl/b/a$a;->d:Z

    .line 119
    return-void
.end method
