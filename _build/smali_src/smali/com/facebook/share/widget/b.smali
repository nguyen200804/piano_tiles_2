.class public Lcom/facebook/share/widget/b;
.super Lcom/facebook/internal/h;
.source "GameRequestDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/share/widget/b$b;,
        Lcom/facebook/share/widget/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/internal/h",
        "<",
        "Lcom/facebook/share/model/GameRequestContent;",
        "Lcom/facebook/share/widget/b$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/facebook/internal/e$b;->e:Lcom/facebook/internal/e$b;

    invoke-virtual {v0}, Lcom/facebook/internal/e$b;->a()I

    move-result v0

    sput v0, Lcom/facebook/share/widget/b;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 149
    sget v0, Lcom/facebook/share/widget/b;->b:I

    invoke-direct {p0, p1, v0}, Lcom/facebook/internal/h;-><init>(Landroid/app/Activity;I)V

    .line 150
    return-void
.end method

.method public static a(Landroid/app/Activity;Lcom/facebook/share/model/GameRequestContent;)V
    .locals 1

    .prologue
    .line 109
    new-instance v0, Lcom/facebook/share/widget/b;

    invoke-direct {v0, p0}, Lcom/facebook/share/widget/b;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, p1}, Lcom/facebook/share/widget/b;->b(Ljava/lang/Object;)V

    .line 110
    return-void
.end method


# virtual methods
.method protected a(Lcom/facebook/internal/e;Lcom/facebook/g;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/internal/e;",
            "Lcom/facebook/g",
            "<",
            "Lcom/facebook/share/widget/b$a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 176
    if-nez p2, :cond_0

    const/4 v0, 0x0

    .line 189
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/share/widget/b;->a()I

    move-result v1

    new-instance v2, Lcom/facebook/share/widget/b$2;

    invoke-direct {v2, p0, v0}, Lcom/facebook/share/widget/b$2;-><init>(Lcom/facebook/share/widget/b;Lcom/facebook/share/internal/i;)V

    invoke-virtual {p1, v1, v2}, Lcom/facebook/internal/e;->b(ILcom/facebook/internal/e$a;)V

    .line 201
    return-void

    .line 176
    :cond_0
    new-instance v0, Lcom/facebook/share/widget/b$1;

    invoke-direct {v0, p0, p2, p2}, Lcom/facebook/share/widget/b$1;-><init>(Lcom/facebook/share/widget/b;Lcom/facebook/g;Lcom/facebook/g;)V

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
            "Lcom/facebook/share/model/GameRequestContent;",
            "Lcom/facebook/share/widget/b$a;",
            ">.a;>;"
        }
    .end annotation

    .prologue
    .line 210
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 211
    new-instance v1, Lcom/facebook/share/widget/b$b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/facebook/share/widget/b$b;-><init>(Lcom/facebook/share/widget/b;Lcom/facebook/share/widget/b$1;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    return-object v0
.end method

.method protected d()Lcom/facebook/internal/a;
    .locals 2

    .prologue
    .line 205
    new-instance v0, Lcom/facebook/internal/a;

    invoke-virtual {p0}, Lcom/facebook/share/widget/b;->a()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/facebook/internal/a;-><init>(I)V

    return-object v0
.end method
