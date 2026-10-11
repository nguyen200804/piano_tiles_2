.class public Lcom/facebook/share/widget/a;
.super Lcom/facebook/internal/h;
.source "AppInviteDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/share/widget/a$c;,
        Lcom/facebook/share/widget/a$a;,
        Lcom/facebook/share/widget/a$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/internal/h",
        "<",
        "Lcom/facebook/share/model/AppInviteContent;",
        "Lcom/facebook/share/widget/a$b;",
        ">;"
    }
.end annotation


# static fields
.field private static final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/facebook/internal/e$b;->h:Lcom/facebook/internal/e$b;

    invoke-virtual {v0}, Lcom/facebook/internal/e$b;->a()I

    move-result v0

    sput v0, Lcom/facebook/share/widget/a;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 144
    sget v0, Lcom/facebook/share/widget/a;->b:I

    invoke-direct {p0, p1, v0}, Lcom/facebook/internal/h;-><init>(Landroid/app/Activity;I)V

    .line 145
    return-void
.end method

.method static synthetic a(Lcom/facebook/share/model/AppInviteContent;)Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 41
    invoke-static {p0}, Lcom/facebook/share/widget/a;->b(Lcom/facebook/share/model/AppInviteContent;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method private static b(Lcom/facebook/share/model/AppInviteContent;)Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 273
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 275
    const-string v1, "app_link_url"

    invoke-virtual {p0}, Lcom/facebook/share/model/AppInviteContent;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    const-string v1, "preview_image_url"

    invoke-virtual {p0}, Lcom/facebook/share/model/AppInviteContent;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    return-object v0
.end method

.method public static e()Z
    .locals 1

    .prologue
    .line 80
    invoke-static {}, Lcom/facebook/share/widget/a;->i()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/facebook/share/widget/a;->j()Z

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

.method static synthetic f()Z
    .locals 1

    .prologue
    .line 41
    invoke-static {}, Lcom/facebook/share/widget/a;->i()Z

    move-result v0

    return v0
.end method

.method static synthetic g()Lcom/facebook/internal/f;
    .locals 1

    .prologue
    .line 41
    invoke-static {}, Lcom/facebook/share/widget/a;->k()Lcom/facebook/internal/f;

    move-result-object v0

    return-object v0
.end method

.method static synthetic h()Z
    .locals 1

    .prologue
    .line 41
    invoke-static {}, Lcom/facebook/share/widget/a;->j()Z

    move-result v0

    return v0
.end method

.method private static i()Z
    .locals 1

    .prologue
    .line 131
    invoke-static {}, Lcom/facebook/share/widget/a;->k()Lcom/facebook/internal/f;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/internal/g;->a(Lcom/facebook/internal/f;)Z

    move-result v0

    return v0
.end method

.method private static j()Z
    .locals 1

    .prologue
    .line 135
    invoke-static {}, Lcom/facebook/share/widget/a;->k()Lcom/facebook/internal/f;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/internal/g;->b(Lcom/facebook/internal/f;)Z

    move-result v0

    return v0
.end method

.method private static k()Lcom/facebook/internal/f;
    .locals 1

    .prologue
    .line 269
    sget-object v0, Lcom/facebook/share/internal/a;->a:Lcom/facebook/share/internal/a;

    return-object v0
.end method


# virtual methods
.method protected a(Lcom/facebook/internal/e;Lcom/facebook/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/internal/e;",
            "Lcom/facebook/g",
            "<",
            "Lcom/facebook/share/widget/a$b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 172
    if-nez p2, :cond_0

    const/4 v0, 0x0

    .line 186
    :goto_0
    new-instance v1, Lcom/facebook/share/widget/a$2;

    invoke-direct {v1, p0, v0}, Lcom/facebook/share/widget/a$2;-><init>(Lcom/facebook/share/widget/a;Lcom/facebook/share/internal/i;)V

    .line 197
    invoke-virtual {p0}, Lcom/facebook/share/widget/a;->a()I

    move-result v0

    invoke-virtual {p1, v0, v1}, Lcom/facebook/internal/e;->b(ILcom/facebook/internal/e$a;)V

    .line 200
    return-void

    .line 172
    :cond_0
    new-instance v0, Lcom/facebook/share/widget/a$1;

    invoke-direct {v0, p0, p2, p2}, Lcom/facebook/share/widget/a$1;-><init>(Lcom/facebook/share/widget/a;Lcom/facebook/g;Lcom/facebook/g;)V

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
            "Lcom/facebook/share/model/AppInviteContent;",
            "Lcom/facebook/share/widget/a$b;",
            ">.a;>;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 209
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 210
    new-instance v1, Lcom/facebook/share/widget/a$a;

    invoke-direct {v1, p0, v2}, Lcom/facebook/share/widget/a$a;-><init>(Lcom/facebook/share/widget/a;Lcom/facebook/share/widget/a$1;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    new-instance v1, Lcom/facebook/share/widget/a$c;

    invoke-direct {v1, p0, v2}, Lcom/facebook/share/widget/a$c;-><init>(Lcom/facebook/share/widget/a;Lcom/facebook/share/widget/a$1;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    return-object v0
.end method

.method protected d()Lcom/facebook/internal/a;
    .locals 2

    .prologue
    .line 204
    new-instance v0, Lcom/facebook/internal/a;

    invoke-virtual {p0}, Lcom/facebook/share/widget/a;->a()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/facebook/internal/a;-><init>(I)V

    return-object v0
.end method
