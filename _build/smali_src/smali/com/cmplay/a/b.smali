.class public Lcom/cmplay/a/b;
.super Ljava/lang/Object;
.source "GPLogin.java"

# interfaces
.implements Lcom/cmplay/sharebase/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmplay/a/b$a;
    }
.end annotation


# static fields
.field public static a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x2

    sput v0, Lcom/cmplay/a/b;->a:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method public static a()Lcom/cmplay/a/b;
    .locals 1

    .prologue
    .line 25
    invoke-static {}, Lcom/cmplay/a/b$a;->a()Lcom/cmplay/a/b;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x1

    sput v0, Lcom/cmplay/a/b;->a:I

    .line 31
    invoke-virtual {p0}, Lcom/cmplay/a/b;->g()V

    .line 32
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 36
    const-string v0, "gp_auth_token"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/cmplay/util/aa;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public c()Z
    .locals 2

    .prologue
    .line 41
    const-string v0, "authAccount"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/cmplay/util/aa;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 42
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 2

    .prologue
    .line 47
    const-string v0, "gp_auth_token"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/cmplay/util/aa;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 48
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    const/4 v0, 0x0

    .line 51
    :cond_0
    return-object v0
.end method

.method public g()V
    .locals 0

    .prologue
    .line 57
    invoke-static {}, Lcom/cmplay/util/NativeUtil;->reqPlayGamesUserInfo()V

    .line 58
    return-void
.end method

.method public h()V
    .locals 0

    .prologue
    .line 63
    return-void
.end method

.method public i()V
    .locals 0

    .prologue
    .line 68
    return-void
.end method
