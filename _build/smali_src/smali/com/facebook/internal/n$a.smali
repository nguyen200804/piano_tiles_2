.class public Lcom/facebook/internal/n$a;
.super Ljava/lang/Object;
.source "ImageRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/net/Uri;

.field private c:Lcom/facebook/internal/n$b;

.field private d:Z

.field private e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 1

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    const-string v0, "imageUri"

    invoke-static {p2, v0}, Lcom/facebook/internal/ab;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    iput-object p1, p0, Lcom/facebook/internal/n$a;->a:Landroid/content/Context;

    .line 136
    iput-object p2, p0, Lcom/facebook/internal/n$a;->b:Landroid/net/Uri;

    .line 137
    return-void
.end method

.method static synthetic a(Lcom/facebook/internal/n$a;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/facebook/internal/n$a;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lcom/facebook/internal/n$a;)Landroid/net/Uri;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/facebook/internal/n$a;->b:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic c(Lcom/facebook/internal/n$a;)Lcom/facebook/internal/n$b;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/facebook/internal/n$a;->c:Lcom/facebook/internal/n$b;

    return-object v0
.end method

.method static synthetic d(Lcom/facebook/internal/n$a;)Z
    .locals 1

    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/facebook/internal/n$a;->d:Z

    return v0
.end method

.method static synthetic e(Lcom/facebook/internal/n$a;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/facebook/internal/n$a;->e:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/facebook/internal/n$b;)Lcom/facebook/internal/n$a;
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcom/facebook/internal/n$a;->c:Lcom/facebook/internal/n$b;

    .line 141
    return-object p0
.end method

.method public a(Ljava/lang/Object;)Lcom/facebook/internal/n$a;
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcom/facebook/internal/n$a;->e:Ljava/lang/Object;

    .line 146
    return-object p0
.end method

.method public a(Z)Lcom/facebook/internal/n$a;
    .locals 0

    .prologue
    .line 150
    iput-boolean p1, p0, Lcom/facebook/internal/n$a;->d:Z

    .line 151
    return-object p0
.end method

.method public a()Lcom/facebook/internal/n;
    .locals 2

    .prologue
    .line 155
    new-instance v0, Lcom/facebook/internal/n;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/internal/n;-><init>(Lcom/facebook/internal/n$a;Lcom/facebook/internal/n$1;)V

    return-object v0
.end method
