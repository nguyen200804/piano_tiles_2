.class public abstract Lcom/facebook/internal/h;
.super Ljava/lang/Object;
.source "FacebookDialogBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/internal/h$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<CONTENT:",
        "Ljava/lang/Object;",
        "RESU",
        "LT:Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field protected static final a:Ljava/lang/Object;


# instance fields
.field private final b:Landroid/app/Activity;

.field private final c:Lcom/facebook/internal/l;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/internal/h",
            "<TCONTENT;TRESU",
            "LT;",
            ">.a;>;"
        }
    .end annotation
.end field

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/facebook/internal/h;->a:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>(Landroid/app/Activity;I)V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const-string v0, "activity"

    invoke-static {p1, v0}, Lcom/facebook/internal/ab;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    iput-object p1, p0, Lcom/facebook/internal/h;->b:Landroid/app/Activity;

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/internal/h;->c:Lcom/facebook/internal/l;

    .line 55
    iput p2, p0, Lcom/facebook/internal/h;->e:I

    .line 56
    return-void
.end method

.method protected constructor <init>(Lcom/facebook/internal/l;I)V
    .locals 2

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const-string v0, "fragmentWrapper"

    invoke-static {p1, v0}, Lcom/facebook/internal/ab;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    iput-object p1, p0, Lcom/facebook/internal/h;->c:Lcom/facebook/internal/l;

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/internal/h;->b:Landroid/app/Activity;

    .line 62
    iput p2, p0, Lcom/facebook/internal/h;->e:I

    .line 64
    invoke-virtual {p1}, Lcom/facebook/internal/l;->c()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot use a fragment that is not attached to an activity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_0
    return-void
.end method

.method private c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/facebook/internal/a;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCONTENT;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/facebook/internal/a;"
        }
    .end annotation

    .prologue
    .line 176
    sget-object v0, Lcom/facebook/internal/h;->a:Ljava/lang/Object;

    if-ne p2, v0, :cond_3

    const/4 v0, 0x1

    move v1, v0

    .line 178
    :goto_0
    const/4 v2, 0x0

    .line 179
    invoke-direct {p0}, Lcom/facebook/internal/h;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/internal/h$a;

    .line 180
    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/facebook/internal/h$a;->a()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, p2}, Lcom/facebook/internal/aa;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 183
    :cond_1
    invoke-virtual {v0, p1}, Lcom/facebook/internal/h$a;->a(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 188
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/facebook/internal/h$a;->b(Ljava/lang/Object;)Lcom/facebook/internal/a;
    :try_end_0
    .catch Lcom/facebook/i; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 196
    :goto_1
    if-nez v0, :cond_2

    .line 197
    invoke-virtual {p0}, Lcom/facebook/internal/h;->d()Lcom/facebook/internal/a;

    move-result-object v0

    .line 198
    invoke-static {v0}, Lcom/facebook/internal/g;->a(Lcom/facebook/internal/a;)V

    .line 201
    :cond_2
    return-object v0

    .line 176
    :cond_3
    const/4 v0, 0x0

    move v1, v0

    goto :goto_0

    .line 189
    :catch_0
    move-exception v1

    .line 190
    invoke-virtual {p0}, Lcom/facebook/internal/h;->d()Lcom/facebook/internal/a;

    move-result-object v0

    .line 191
    invoke-static {v0, v1}, Lcom/facebook/internal/g;->a(Lcom/facebook/internal/a;Lcom/facebook/i;)V

    goto :goto_1

    :cond_4
    move-object v0, v2

    goto :goto_1
.end method

.method private e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/internal/h",
            "<TCONTENT;TRESU",
            "LT;",
            ">.a;>;"
        }
    .end annotation

    .prologue
    .line 205
    iget-object v0, p0, Lcom/facebook/internal/h;->d:Ljava/util/List;

    if-nez v0, :cond_0

    .line 206
    invoke-virtual {p0}, Lcom/facebook/internal/h;->c()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/internal/h;->d:Ljava/util/List;

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/facebook/internal/h;->d:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lcom/facebook/internal/h;->e:I

    return v0
.end method

.method public final a(Lcom/facebook/e;Lcom/facebook/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/e;",
            "Lcom/facebook/g",
            "<TRESU",
            "LT;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 74
    instance-of v0, p1, Lcom/facebook/internal/e;

    if-nez v0, :cond_0

    .line 75
    new-instance v0, Lcom/facebook/i;

    const-string v1, "Unexpected CallbackManager, please use the provided Factory."

    invoke-direct {v0, v1}, Lcom/facebook/i;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_0
    check-cast p1, Lcom/facebook/internal/e;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/internal/h;->a(Lcom/facebook/internal/e;Lcom/facebook/g;)V

    .line 79
    return-void
.end method

.method protected abstract a(Lcom/facebook/internal/e;Lcom/facebook/g;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/internal/e;",
            "Lcom/facebook/g",
            "<TRESU",
            "LT;",
            ">;)V"
        }
    .end annotation
.end method

.method public a(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCONTENT;)Z"
        }
    .end annotation

    .prologue
    .line 120
    sget-object v0, Lcom/facebook/internal/h;->a:Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lcom/facebook/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCONTENT;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 125
    sget-object v0, Lcom/facebook/internal/h;->a:Ljava/lang/Object;

    if-ne p2, v0, :cond_2

    move v1, v2

    .line 127
    :goto_0
    invoke-direct {p0}, Lcom/facebook/internal/h;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/internal/h$a;

    .line 128
    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/facebook/internal/h$a;->a()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, p2}, Lcom/facebook/internal/aa;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 131
    :cond_1
    invoke-virtual {v0, p1}, Lcom/facebook/internal/h$a;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    :goto_1
    return v2

    :cond_2
    move v1, v3

    .line 125
    goto :goto_0

    :cond_3
    move v2, v3

    .line 136
    goto :goto_1
.end method

.method protected b()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/facebook/internal/h;->b:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/facebook/internal/h;->b:Landroid/app/Activity;

    .line 172
    :goto_0
    return-object v0

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/facebook/internal/h;->c:Lcom/facebook/internal/l;

    if-eqz v0, :cond_1

    .line 169
    iget-object v0, p0, Lcom/facebook/internal/h;->c:Lcom/facebook/internal/l;

    invoke-virtual {v0}, Lcom/facebook/internal/l;->c()Landroid/app/Activity;

    move-result-object v0

    goto :goto_0

    .line 172
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCONTENT;)V"
        }
    .end annotation

    .prologue
    .line 141
    sget-object v0, Lcom/facebook/internal/h;->a:Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lcom/facebook/internal/h;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 142
    return-void
.end method

.method protected b(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCONTENT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 146
    invoke-direct {p0, p1, p2}, Lcom/facebook/internal/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/facebook/internal/a;

    move-result-object v0

    .line 147
    if-eqz v0, :cond_2

    .line 148
    iget-object v1, p0, Lcom/facebook/internal/h;->c:Lcom/facebook/internal/l;

    if-eqz v1, :cond_1

    .line 149
    iget-object v1, p0, Lcom/facebook/internal/h;->c:Lcom/facebook/internal/l;

    invoke-static {v0, v1}, Lcom/facebook/internal/g;->a(Lcom/facebook/internal/a;Lcom/facebook/internal/l;)V

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 151
    :cond_1
    iget-object v1, p0, Lcom/facebook/internal/h;->b:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/facebook/internal/g;->a(Lcom/facebook/internal/a;Landroid/app/Activity;)V

    goto :goto_0

    .line 155
    :cond_2
    const-string v0, "No code path should ever result in a null appCall"

    .line 156
    const-string v1, "FacebookDialog"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-static {}, Lcom/facebook/l;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 158
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected abstract c()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/internal/h",
            "<TCONTENT;TRESU",
            "LT;",
            ">.a;>;"
        }
    .end annotation
.end method

.method protected abstract d()Lcom/facebook/internal/a;
.end method
