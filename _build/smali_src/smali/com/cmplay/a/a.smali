.class public Lcom/cmplay/a/a;
.super Ljava/lang/Object;
.source "FBLogin.java"

# interfaces
.implements Lcom/cmplay/sharebase/b;


# static fields
.field private static a:Lcom/cmplay/a/a;

.field private static final j:Ljava/lang/String;


# instance fields
.field private b:I

.field private c:I

.field private d:Lcom/cmplay/a/e;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cmplay/a/e;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cmplay/a/e;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/facebook/GraphRequest$b;

.field private h:Lcom/facebook/GraphRequest$b;

.field private i:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 55
    const/4 v0, 0x0

    sput-object v0, Lcom/cmplay/a/a;->a:Lcom/cmplay/a/a;

    .line 781
    const-string v0, ","

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "id"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "name"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "gender"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "birthday"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "age_range"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cmplay/a/a;->j:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput v0, p0, Lcom/cmplay/a/a;->b:I

    .line 60
    iput v0, p0, Lcom/cmplay/a/a;->c:I

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cmplay/a/a;->d:Lcom/cmplay/a/e;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cmplay/a/a;->e:Ljava/util/List;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cmplay/a/a;->f:Ljava/util/List;

    .line 284
    new-instance v0, Lcom/cmplay/a/a$3;

    invoke-direct {v0, p0}, Lcom/cmplay/a/a$3;-><init>(Lcom/cmplay/a/a;)V

    iput-object v0, p0, Lcom/cmplay/a/a;->g:Lcom/facebook/GraphRequest$b;

    .line 427
    new-instance v0, Lcom/cmplay/a/a$4;

    invoke-direct {v0, p0}, Lcom/cmplay/a/a$4;-><init>(Lcom/cmplay/a/a;)V

    iput-object v0, p0, Lcom/cmplay/a/a;->h:Lcom/facebook/GraphRequest$b;

    .line 654
    new-instance v0, Lcom/cmplay/a/a$5;

    sget-object v1, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/cmplay/a/a$5;-><init>(Lcom/cmplay/a/a;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/cmplay/a/a;->i:Landroid/os/Handler;

    .line 68
    sget-object v0, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/l;->a(Landroid/content/Context;)V

    .line 69
    return-void
.end method

.method static synthetic a(Lcom/cmplay/a/a;I)I
    .locals 0

    .prologue
    .line 40
    iput p1, p0, Lcom/cmplay/a/a;->c:I

    return p1
.end method

.method public static a()Lcom/cmplay/a/a;
    .locals 2

    .prologue
    .line 72
    sget-object v0, Lcom/cmplay/a/a;->a:Lcom/cmplay/a/a;

    if-nez v0, :cond_1

    .line 73
    const-class v1, Lcom/cmplay/a/a;

    monitor-enter v1

    .line 74
    :try_start_0
    sget-object v0, Lcom/cmplay/a/a;->a:Lcom/cmplay/a/a;

    if-nez v0, :cond_0

    .line 75
    new-instance v0, Lcom/cmplay/a/a;

    invoke-direct {v0}, Lcom/cmplay/a/a;-><init>()V

    sput-object v0, Lcom/cmplay/a/a;->a:Lcom/cmplay/a/a;

    .line 77
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    :cond_1
    sget-object v0, Lcom/cmplay/a/a;->a:Lcom/cmplay/a/a;

    return-object v0

    .line 77
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/cmplay/a/a;Lcom/cmplay/a/e;)Lcom/cmplay/a/e;
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/cmplay/a/a;->d:Lcom/cmplay/a/e;

    return-object p1
.end method

.method static synthetic a(Lcom/cmplay/a/a;)Lcom/facebook/GraphRequest$b;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/cmplay/a/a;->g:Lcom/facebook/GraphRequest$b;

    return-object v0
.end method

.method static synthetic b(Lcom/cmplay/a/a;)I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/cmplay/a/a;->c:I

    return v0
.end method

.method static synthetic b(Lcom/cmplay/a/a;I)I
    .locals 0

    .prologue
    .line 40
    iput p1, p0, Lcom/cmplay/a/a;->b:I

    return p1
.end method

.method static synthetic c(Lcom/cmplay/a/a;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/cmplay/a/a;->i:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic d(Lcom/cmplay/a/a;)I
    .locals 2

    .prologue
    .line 40
    iget v0, p0, Lcom/cmplay/a/a;->c:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/cmplay/a/a;->c:I

    return v0
.end method

.method static synthetic e(Lcom/cmplay/a/a;)I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/cmplay/a/a;->b:I

    return v0
.end method

.method static synthetic f(Lcom/cmplay/a/a;)I
    .locals 2

    .prologue
    .line 40
    iget v0, p0, Lcom/cmplay/a/a;->b:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/cmplay/a/a;->b:I

    return v0
.end method

.method static synthetic g(Lcom/cmplay/a/a;)Ljava/util/List;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/cmplay/a/a;->e:Ljava/util/List;

    return-object v0
.end method

.method static synthetic h(Lcom/cmplay/a/a;)Ljava/util/List;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/cmplay/a/a;->f:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 617
    const/4 v0, 0x0

    .line 618
    invoke-static {}, Lcom/facebook/AccessToken;->a()Lcom/facebook/AccessToken;

    move-result-object v1

    .line 619
    if-eqz v1, :cond_0

    .line 620
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://graph.facebook-com/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/picture?access_token="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/facebook/AccessToken;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&type=large"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 622
    :cond_0
    return-object v0
.end method

.method public a(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/cmplay/a/a;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    const-string v0, "facebook_game"

    const-string v1, "loginIn   logInWithReadPermissions"

    invoke-static {v0, v1}, Lcom/cmplay/util/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "public_profile"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "user_friends"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/cmplay/a/a;->a(Landroid/app/Activity;Ljava/util/Collection;)V

    .line 90
    :cond_0
    return-void
.end method

.method public a(Landroid/app/Activity;Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 108
    const-string v0, "facebook_game"

    const-string v1, "loginInReqPermission   logInWithReadPermissions"

    invoke-static {v0, v1}, Lcom/cmplay/util/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-static {}, Lcom/facebook/login/e;->a()Lcom/facebook/login/e;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/facebook/login/e;->a(Landroid/app/Activity;Ljava/util/Collection;)V

    .line 110
    return-void
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 630
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://graph.facebook-com/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/picture?type=large"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/cmplay/a/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    const-string v0, "facebook_game"

    const-string v1, "loginOut   logOut"

    invoke-static {v0, v1}, Lcom/cmplay/util/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    invoke-static {}, Lcom/facebook/login/e;->a()Lcom/facebook/login/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/login/e;->b()V

    .line 135
    :cond_0
    return-void
.end method

.method public b(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 97
    const-string v0, "facebook_game"

    const-string v1, "loginInReqFriendPermission"

    invoke-static {v0, v1}, Lcom/cmplay/util/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "user_friends"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/cmplay/a/a;->a(Landroid/app/Activity;Ljava/util/Collection;)V

    .line 99
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 790
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 791
    const-string v0, "fields"

    sget-object v1, Lcom/cmplay/a/a;->j:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 792
    new-instance v0, Lcom/facebook/GraphRequest;

    invoke-static {}, Lcom/facebook/AccessToken;->a()Lcom/facebook/AccessToken;

    move-result-object v1

    sget-object v4, Lcom/facebook/s;->a:Lcom/facebook/s;

    new-instance v5, Lcom/cmplay/a/a$6;

    invoke-direct {v5, p0}, Lcom/cmplay/a/a$6;-><init>(Lcom/cmplay/a/a;)V

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/s;Lcom/facebook/GraphRequest$b;)V

    invoke-virtual {v0}, Lcom/facebook/GraphRequest;->j()Lcom/facebook/o;

    .line 844
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 142
    invoke-static {}, Lcom/facebook/AccessToken;->a()Lcom/facebook/AccessToken;

    move-result-object v0

    .line 143
    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 151
    const/4 v0, 0x0

    .line 152
    invoke-static {}, Lcom/facebook/AccessToken;->a()Lcom/facebook/AccessToken;

    move-result-object v1

    .line 153
    if-eqz v1, :cond_0

    .line 154
    invoke-virtual {v1}, Lcom/facebook/AccessToken;->e()Ljava/util/Set;

    move-result-object v0

    .line 156
    :cond_0
    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 4

    .prologue
    .line 164
    invoke-static {}, Lcom/facebook/AccessToken;->a()Lcom/facebook/AccessToken;

    move-result-object v0

    .line 165
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/AccessToken;->k()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 166
    :cond_0
    const/4 v0, 0x0

    .line 170
    :goto_0
    return-object v0

    .line 168
    :cond_1
    invoke-virtual {v0}, Lcom/facebook/AccessToken;->c()Ljava/lang/String;

    move-result-object v0

    .line 169
    const-string v1, "facebook_game"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getToken   strToken:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cmplay/util/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public f()Z
    .locals 2

    .prologue
    .line 191
    invoke-static {}, Lcom/cmplay/a/a;->a()Lcom/cmplay/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmplay/a/a;->d()Ljava/util/Set;

    move-result-object v0

    .line 192
    if-nez v0, :cond_0

    .line 193
    const/4 v0, 0x0

    .line 195
    :goto_0
    return v0

    :cond_0
    const-string v1, "user_friends"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public g()V
    .locals 2

    .prologue
    .line 202
    invoke-static {}, Lcom/facebook/b;->a()Lcom/facebook/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/b;->c()Z

    .line 203
    invoke-static {}, Lcom/facebook/AccessToken;->a()Lcom/facebook/AccessToken;

    move-result-object v0

    .line 204
    if-eqz v0, :cond_0

    .line 205
    new-instance v1, Lcom/cmplay/a/a$1;

    invoke-direct {v1, p0, v0}, Lcom/cmplay/a/a$1;-><init>(Lcom/cmplay/a/a;Lcom/facebook/AccessToken;)V

    invoke-static {v0, v1}, Lcom/facebook/GraphRequest;->a(Lcom/facebook/AccessToken;Lcom/facebook/GraphRequest$c;)Lcom/facebook/GraphRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/GraphRequest;->j()Lcom/facebook/o;

    .line 233
    :cond_0
    return-void
.end method

.method public h()V
    .locals 2

    .prologue
    .line 262
    iget-object v0, p0, Lcom/cmplay/a/a;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 263
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/cmplay/a/a$2;

    invoke-direct {v1, p0}, Lcom/cmplay/a/a$2;-><init>(Lcom/cmplay/a/a;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 282
    return-void
.end method

.method public i()V
    .locals 0

    .prologue
    .line 425
    return-void
.end method
