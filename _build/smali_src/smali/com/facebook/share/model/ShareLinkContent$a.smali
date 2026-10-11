.class public final Lcom/facebook/share/model/ShareLinkContent$a;
.super Lcom/facebook/share/model/ShareContent$a;
.source "ShareLinkContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/model/ShareLinkContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/share/model/ShareContent$a",
        "<",
        "Lcom/facebook/share/model/ShareLinkContent;",
        "Lcom/facebook/share/model/ShareLinkContent$a;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/facebook/share/model/ShareContent$a;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/share/model/ShareLinkContent$a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/facebook/share/model/ShareLinkContent$a;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/facebook/share/model/ShareLinkContent$a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/facebook/share/model/ShareLinkContent$a;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/facebook/share/model/ShareLinkContent$a;)Landroid/net/Uri;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/facebook/share/model/ShareLinkContent$a;->c:Landroid/net/Uri;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/facebook/share/model/ShareLinkContent$a;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 120
    iput-object p1, p0, Lcom/facebook/share/model/ShareLinkContent$a;->a:Ljava/lang/String;

    .line 121
    return-object p0
.end method

.method public a()Lcom/facebook/share/model/ShareLinkContent;
    .locals 2

    .prologue
    .line 146
    new-instance v0, Lcom/facebook/share/model/ShareLinkContent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/share/model/ShareLinkContent;-><init>(Lcom/facebook/share/model/ShareLinkContent$a;Lcom/facebook/share/model/ShareLinkContent$1;)V

    return-object v0
.end method

.method public b(Landroid/net/Uri;)Lcom/facebook/share/model/ShareLinkContent$a;
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 140
    iput-object p1, p0, Lcom/facebook/share/model/ShareLinkContent$a;->c:Landroid/net/Uri;

    .line 141
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/facebook/share/model/ShareLinkContent$a;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 130
    iput-object p1, p0, Lcom/facebook/share/model/ShareLinkContent$a;->b:Ljava/lang/String;

    .line 131
    return-object p0
.end method
