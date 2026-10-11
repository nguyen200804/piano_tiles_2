.class Lcom/facebook/login/widget/LoginButton$a;
.super Ljava/lang/Object;
.source "LoginButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/login/widget/LoginButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/facebook/login/a;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/facebook/internal/t;

.field private d:Lcom/facebook/login/c;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    sget-object v0, Lcom/facebook/login/a;->c:Lcom/facebook/login/a;

    iput-object v0, p0, Lcom/facebook/login/widget/LoginButton$a;->a:Lcom/facebook/login/a;

    .line 125
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/login/widget/LoginButton$a;->b:Ljava/util/List;

    .line 126
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/login/widget/LoginButton$a;->c:Lcom/facebook/internal/t;

    .line 127
    sget-object v0, Lcom/facebook/login/c;->a:Lcom/facebook/login/c;

    iput-object v0, p0, Lcom/facebook/login/widget/LoginButton$a;->d:Lcom/facebook/login/c;

    return-void
.end method

.method static synthetic a(Lcom/facebook/login/widget/LoginButton$a;)Lcom/facebook/internal/t;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton$a;->c:Lcom/facebook/internal/t;

    return-object v0
.end method

.method static synthetic b(Lcom/facebook/login/widget/LoginButton$a;)Ljava/util/List;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton$a;->b:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/facebook/login/a;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton$a;->a:Lcom/facebook/login/a;

    return-object v0
.end method

.method public b()Lcom/facebook/login/c;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton$a;->d:Lcom/facebook/login/c;

    return-object v0
.end method
