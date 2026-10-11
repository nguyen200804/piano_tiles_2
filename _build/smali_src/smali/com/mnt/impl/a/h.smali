.class public final Lcom/mnt/impl/a/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mnt/a/f;


# static fields
.field public static final g:Ljava/lang/String;

.field public static final h:Ljava/lang/String;

.field public static final i:Ljava/lang/String;

.field public static final j:Ljava/lang/String;


# instance fields
.field public a:Landroid/content/Context;

.field public b:Lcom/mnt/Ad;

.field public c:Lcom/mnt/impl/b;

.field public d:Ljava/lang/String;

.field public e:Lcom/mnt/IAdListener;

.field public f:Z

.field public k:I

.field public l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public m:Lcom/mnt/MntBuild;

.field public n:Lcom/mnt/impl/dsp/c;

.field o:I

.field p:I

.field private q:Z

.field private r:Lcom/mnt/impl/f/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/mnt/impl/e;->pS:Ljava/lang/String;

    sput-object v0, Lcom/mnt/impl/a/h;->g:Ljava/lang/String;

    .line 41
    sget-object v0, Lcom/mnt/impl/e;->pT:Ljava/lang/String;

    sput-object v0, Lcom/mnt/impl/a/h;->h:Ljava/lang/String;

    .line 42
    sget-object v0, Lcom/mnt/impl/e;->pU:Ljava/lang/String;

    sput-object v0, Lcom/mnt/impl/a/h;->i:Ljava/lang/String;

    .line 43
    sget-object v0, Lcom/mnt/impl/e;->pV:Ljava/lang/String;

    sput-object v0, Lcom/mnt/impl/a/h;->j:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mnt/impl/a/h;->q:Z

    .line 256
    new-instance v0, Lcom/mnt/impl/a/j;

    invoke-direct {v0, p0}, Lcom/mnt/impl/a/j;-><init>(Lcom/mnt/impl/a/h;)V

    iput-object v0, p0, Lcom/mnt/impl/a/h;->r:Lcom/mnt/impl/f/a;

    .line 54
    iput-object p1, p0, Lcom/mnt/impl/a/h;->a:Landroid/content/Context;

    .line 55
    return-void
.end method

.method static synthetic a(Lcom/mnt/impl/a/h;I)I
    .locals 0

    .prologue
    .line 29
    iput p1, p0, Lcom/mnt/impl/a/h;->k:I

    return p1
.end method

.method static synthetic a(Lcom/mnt/impl/a/h;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/mnt/impl/a/h;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/mnt/impl/a/h;Lcom/mnt/impl/dsp/c;)Lcom/mnt/impl/dsp/c;
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/mnt/impl/a/h;->n:Lcom/mnt/impl/dsp/c;

    return-object p1
.end method

.method static synthetic a(Lcom/mnt/impl/a/h;Z)Z
    .locals 0

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/mnt/impl/a/h;->f:Z

    return p1
.end method

.method static synthetic b(Lcom/mnt/impl/a/h;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/mnt/impl/a/h;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/mnt/impl/a/h;)Lcom/mnt/IAdListener;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/mnt/impl/a/h;->e:Lcom/mnt/IAdListener;

    return-object v0
.end method

.method static synthetic d(Lcom/mnt/impl/a/h;)V
    .locals 2

    .prologue
    .line 29
    .line 3073
    iget-object v0, p0, Lcom/mnt/impl/a/h;->c:Lcom/mnt/impl/b;

    iget-object v1, p0, Lcom/mnt/impl/a/h;->m:Lcom/mnt/MntBuild;

    invoke-virtual {v0, v1}, Lcom/mnt/impl/b;->a(Lcom/mnt/MntBuild;)V

    .line 29
    return-void
.end method

.method static synthetic e(Lcom/mnt/impl/a/h;)Ljava/util/List;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/mnt/impl/a/h;->l:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/mnt/impl/a/h;->e:Lcom/mnt/IAdListener;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/mnt/impl/a/h;->e:Lcom/mnt/IAdListener;

    invoke-interface {v0}, Lcom/mnt/IAdListener;->onAdClicked()V

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/mnt/impl/a/h;->c:Lcom/mnt/impl/b;

    if-eqz v0, :cond_1

    .line 182
    iget-object v0, p0, Lcom/mnt/impl/a/h;->c:Lcom/mnt/impl/b;

    iget-object v1, p0, Lcom/mnt/impl/a/h;->b:Lcom/mnt/Ad;

    invoke-virtual {v0, v1}, Lcom/mnt/impl/b;->a(Ljava/lang/Object;)V

    .line 184
    :cond_1
    return-void
.end method

.method public final a(Lcom/mnt/AdError;)V
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mnt/impl/a/h;->b:Lcom/mnt/Ad;

    .line 130
    iget-object v0, p0, Lcom/mnt/impl/a/h;->e:Lcom/mnt/IAdListener;

    invoke-interface {v0, p1}, Lcom/mnt/IAdListener;->onAdError(Lcom/mnt/AdError;)V

    .line 147
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mnt/Ad;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 152
    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 153
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .line 154
    check-cast v0, Lcom/mnt/impl/e/c;

    .line 155
    sget-object v3, Lcom/mnt/Ad;->AD_CREATIVE_SIZE_1200x627:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/mnt/impl/e/c;->getCreatives(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 156
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 157
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mnt/impl/a/h;->q:Z

    .line 158
    instance-of v0, v1, Lcom/mnt/Ad;

    if-eqz v0, :cond_3

    .line 159
    check-cast v1, Lcom/mnt/Ad;

    iput-object v1, p0, Lcom/mnt/impl/a/h;->b:Lcom/mnt/Ad;

    .line 160
    iget-object v1, p0, Lcom/mnt/impl/a/h;->b:Lcom/mnt/Ad;

    .line 1197
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mnt/impl/a/h;->l:Ljava/util/List;

    .line 1198
    iget-object v0, p0, Lcom/mnt/impl/a/h;->l:Ljava/util/List;

    invoke-virtual {v1}, Lcom/mnt/Ad;->getIcon()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v1

    .line 1199
    check-cast v0, Lcom/mnt/impl/e/c;

    .line 1200
    sget-object v2, Lcom/mnt/Ad;->AD_CREATIVE_SIZE_1200x627:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/mnt/impl/e/c;->getCreatives(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 1201
    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1202
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 1203
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1204
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1207
    iget-object v4, p0, Lcom/mnt/impl/a/h;->l:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1208
    new-instance v4, Lcom/mnt/impl/g/a;

    iget-object v5, p0, Lcom/mnt/impl/a/h;->a:Landroid/content/Context;

    iget-object v6, p0, Lcom/mnt/impl/a/h;->r:Lcom/mnt/impl/f/a;

    sget-object v7, Lcom/mnt/impl/c/a;->b:Lcom/mnt/impl/c/a;

    .line 2022
    iget v7, v7, Lcom/mnt/impl/c/a;->c:I

    .line 1208
    invoke-direct {v4, v5, v0, v6}, Lcom/mnt/impl/g/a;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/mnt/impl/f/a;)V

    invoke-virtual {v4}, Lcom/mnt/impl/g/a;->c()V

    .line 1202
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 1211
    :cond_2
    new-instance v0, Lcom/mnt/impl/g/a;

    iget-object v2, p0, Lcom/mnt/impl/a/h;->a:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/mnt/Ad;->getIcon()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/mnt/impl/a/h;->r:Lcom/mnt/impl/f/a;

    sget-object v4, Lcom/mnt/impl/c/a;->b:Lcom/mnt/impl/c/a;

    .line 3022
    iget v4, v4, Lcom/mnt/impl/c/a;->c:I

    .line 1211
    invoke-direct {v0, v2, v1, v3}, Lcom/mnt/impl/g/a;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/mnt/impl/f/a;)V

    invoke-virtual {v0}, Lcom/mnt/impl/g/a;->c()V

    .line 166
    :cond_3
    iget-boolean v0, p0, Lcom/mnt/impl/a/h;->q:Z

    if-nez v0, :cond_4

    .line 167
    iget-object v0, p0, Lcom/mnt/impl/a/h;->e:Lcom/mnt/IAdListener;

    sget-object v1, Lcom/mnt/AdError;->NO_MATERIAL:Lcom/mnt/AdError;

    invoke-interface {v0, v1}, Lcom/mnt/IAdListener;->onAdError(Lcom/mnt/AdError;)V

    .line 174
    :cond_4
    :goto_1
    return-void

    .line 170
    :cond_5
    iget-object v0, p0, Lcom/mnt/impl/a/h;->e:Lcom/mnt/IAdListener;

    if-eqz v0, :cond_4

    .line 171
    iget-object v0, p0, Lcom/mnt/impl/a/h;->e:Lcom/mnt/IAdListener;

    sget-object v1, Lcom/mnt/AdError;->NO_OFFERS:Lcom/mnt/AdError;

    invoke-interface {v0, v1}, Lcom/mnt/IAdListener;->onAdError(Lcom/mnt/AdError;)V

    goto :goto_1
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 189
    return-void
.end method
