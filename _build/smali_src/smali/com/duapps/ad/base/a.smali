.class public Lcom/duapps/ad/base/a;
.super Ljava/lang/Object;
.source "DuAdNetwork.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duapps/ad/base/a$a;
    }
.end annotation


# static fields
.field static final a:Ljava/lang/String;

.field public static b:Z

.field public static volatile c:Z

.field private static d:Lcom/duapps/ad/base/a;

.field private static e:Ljava/lang/String;

.field private static f:Lcom/duapps/ad/base/a$a;


# instance fields
.field private g:Lcom/duapps/ad/c/a;

.field private h:Landroid/content/Context;

.field private i:Lcom/duapps/ad/c/a/d;

.field private final j:Lcom/duapps/ad/c/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/duapps/ad/base/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/duapps/ad/base/a;->a:Ljava/lang/String;

    .line 39
    const/4 v0, 0x0

    sput-boolean v0, Lcom/duapps/ad/base/a;->b:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v0, Lcom/duapps/ad/base/a$1;

    invoke-direct {v0, p0}, Lcom/duapps/ad/base/a$1;-><init>(Lcom/duapps/ad/base/a;)V

    iput-object v0, p0, Lcom/duapps/ad/base/a;->j:Lcom/duapps/ad/c/b;

    .line 78
    iput-object p1, p0, Lcom/duapps/ad/base/a;->h:Landroid/content/Context;

    .line 79
    const/4 v0, 0x1

    sput-boolean v0, Lcom/duapps/ad/base/a;->c:Z

    .line 80
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/duapps/ad/base/a;->a(Landroid/content/Context;)V

    .line 81
    invoke-static {p1}, Lcom/duapps/ad/stats/a;->a(Landroid/content/Context;)V

    .line 83
    new-instance v0, Lcom/duapps/ad/c/a/d;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/duapps/ad/c/a/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/duapps/ad/base/a;->i:Lcom/duapps/ad/c/a/d;

    .line 84
    iget-object v0, p0, Lcom/duapps/ad/base/a;->i:Lcom/duapps/ad/c/a/d;

    invoke-virtual {v0}, Lcom/duapps/ad/c/a/d;->a()V

    .line 86
    invoke-static {p1}, Lcom/duapps/ad/c/a;->a(Landroid/content/Context;)Lcom/duapps/ad/c/a;

    move-result-object v0

    iput-object v0, p0, Lcom/duapps/ad/base/a;->g:Lcom/duapps/ad/c/a;

    .line 87
    iget-object v0, p0, Lcom/duapps/ad/base/a;->g:Lcom/duapps/ad/c/a;

    invoke-virtual {v0}, Lcom/duapps/ad/c/a;->a()V

    .line 88
    iget-object v0, p0, Lcom/duapps/ad/base/a;->g:Lcom/duapps/ad/c/a;

    iget-object v1, p0, Lcom/duapps/ad/base/a;->j:Lcom/duapps/ad/c/b;

    invoke-virtual {v0, v1}, Lcom/duapps/ad/c/a;->a(Lcom/duapps/ad/c/b;)V

    .line 89
    return-void
.end method

.method static synthetic a(Lcom/duapps/ad/base/a;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/duapps/ad/base/a;->h:Landroid/content/Context;

    return-object v0
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/duapps/ad/base/a;->e:Ljava/lang/String;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 119
    invoke-static {p1}, Lcom/duapps/ad/base/p;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 120
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    sget-object v0, Lcom/duapps/ad/base/a;->a:Ljava/lang/String;

    const-string v1, "app_license should not null"

    invoke-static {v0, v1}, Lcom/duapps/ad/base/h;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 164
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 165
    :cond_0
    invoke-static {}, Lcom/duapps/ad/base/h;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 166
    sget-object v0, Lcom/duapps/ad/base/a;->a:Ljava/lang/String;

    const-string v1, "Params error."

    invoke-static {v0, v1}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    :cond_1
    :goto_0
    return-void

    .line 170
    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 171
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 172
    invoke-static {}, Lcom/duapps/ad/base/h;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 173
    sget-object v0, Lcom/duapps/ad/base/a;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not ACTION_PACKAGE_ADDED: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 177
    :cond_3
    const-string v1, "android.intent.extra.REPLACING"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 178
    invoke-static {}, Lcom/duapps/ad/base/h;->a()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 179
    sget-object v1, Lcom/duapps/ad/base/a;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ACTION_PACKAGE_ADDED, replaceing? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    :cond_4
    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    .line 183
    if-nez v1, :cond_6

    const/4 v1, 0x0

    .line 185
    :goto_1
    if-eqz v2, :cond_5

    const/4 v0, 0x1

    :cond_5
    invoke-static {p0, v1, v0}, Lcom/duapps/ad/stats/h;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 187
    if-nez v2, :cond_1

    .line 188
    invoke-static {p0, v1}, Lcom/duapps/ad/base/a;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 183
    :cond_6
    invoke-static {v1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 104
    invoke-static {p0}, Lcom/duapps/ad/base/p;->a(Landroid/content/Context;)Lcom/duapps/ad/base/p;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/duapps/ad/base/p;->a(Ljava/lang/String;)V

    .line 105
    const-class v1, Lcom/duapps/ad/base/a;

    monitor-enter v1

    .line 106
    :try_start_0
    sget-object v0, Lcom/duapps/ad/base/a;->d:Lcom/duapps/ad/base/a;

    if-nez v0, :cond_0

    .line 107
    new-instance v0, Lcom/duapps/ad/base/a;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/duapps/ad/base/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/duapps/ad/base/a;->d:Lcom/duapps/ad/base/a;

    .line 109
    :cond_0
    monitor-exit v1

    .line 111
    return-void

    .line 109
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic a(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 27
    invoke-static {p0, p1, p2}, Lcom/duapps/ad/base/a;->b(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/duapps/ad/base/a;->f:Lcom/duapps/ad/base/a$a;

    if-eqz v0, :cond_0

    .line 67
    sget-object v0, Lcom/duapps/ad/base/a;->f:Lcom/duapps/ad/base/a$a;

    invoke-interface {v0}, Lcom/duapps/ad/base/a$a;->a()Ljava/lang/String;

    move-result-object v0

    .line 70
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 199
    invoke-static {p0}, Lcom/duapps/ad/base/n;->a(Landroid/content/Context;)Lcom/duapps/ad/base/n;

    move-result-object v0

    .line 200
    invoke-virtual {v0, p1}, Lcom/duapps/ad/base/n;->b(Ljava/lang/String;)Lcom/duapps/ad/stats/f;

    move-result-object v1

    .line 201
    if-nez v1, :cond_1

    .line 202
    invoke-static {}, Lcom/duapps/ad/base/h;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    sget-object v0, Lcom/duapps/ad/base/a;->a:Ljava/lang/String;

    const-string v1, "Non-click item, skip."

    invoke-static {v0, v1}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    :cond_0
    invoke-static {p0, p1, v3}, Lcom/duapps/ad/base/a;->b(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 225
    :goto_0
    return-void

    .line 210
    :cond_1
    invoke-static {p0}, Lcom/duapps/ad/base/m;->l(Landroid/content/Context;)I

    move-result v2

    if-lez v2, :cond_3

    .line 211
    invoke-virtual {v0, p1}, Lcom/duapps/ad/base/n;->f(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 212
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_3

    .line 213
    :cond_2
    invoke-static {p0, p1, v3}, Lcom/duapps/ad/base/a;->b(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 223
    :cond_3
    invoke-static {p0, v1}, Lcom/duapps/ad/stats/h;->f(Landroid/content/Context;Lcom/duapps/ad/stats/f;)V

    .line 224
    invoke-virtual {v0, p1}, Lcom/duapps/ad/base/n;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    .line 228
    invoke-static {p0}, Lcom/duapps/ad/base/n;->a(Landroid/content/Context;)Lcom/duapps/ad/base/n;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/duapps/ad/base/n;->d(Ljava/lang/String;)Lcom/duapps/ad/stats/f;

    move-result-object v1

    .line 230
    if-nez v1, :cond_3

    .line 231
    invoke-static {p0}, Lcom/duapps/ad/base/m;->B(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    invoke-static {p0}, Lcom/duapps/ad/c/a/e;->a(Landroid/content/Context;)Lcom/duapps/ad/c/a/e;

    move-result-object v0

    sget-boolean v1, Lcom/duapps/ad/base/a;->c:Z

    invoke-virtual {v0, v1, p1}, Lcom/duapps/ad/c/a/e;->a(ZLjava/lang/String;)V

    .line 234
    :cond_0
    new-instance v2, Lcom/duapps/ad/stats/f;

    const/16 v0, -0x3e7

    invoke-static {p0, v0, v3, p1, v3}, Lcom/duapps/ad/entity/AdData;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/duapps/ad/entity/AdData;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/duapps/ad/stats/f;-><init>(Lcom/duapps/ad/entity/AdData;)V

    .line 235
    if-eqz p2, :cond_2

    const-wide/16 v0, -0x2

    :goto_0
    invoke-static {p0, v2, v0, v1}, Lcom/duapps/ad/stats/h;->a(Landroid/content/Context;Lcom/duapps/ad/stats/f;J)V

    .line 249
    :cond_1
    :goto_1
    return-void

    .line 235
    :cond_2
    const-wide/16 v0, -0x1

    goto :goto_0

    .line 237
    :cond_3
    invoke-static {p0}, Lcom/duapps/ad/c/a/a;->a(Landroid/content/Context;)Lcom/duapps/ad/c/a/a;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/duapps/ad/c/a/a;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 240
    sget-object v2, Lcom/duapps/ad/base/a;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TiggerPreParse:packageName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 241
    invoke-virtual {v1}, Lcom/duapps/ad/stats/f;->b()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";preParse="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 242
    invoke-virtual {v1}, Lcom/duapps/ad/stats/f;->m()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 240
    invoke-static {v2, v3}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    invoke-virtual {v1, v0}, Lcom/duapps/ad/stats/f;->a(Z)V

    .line 244
    if-eqz p2, :cond_4

    :goto_2
    invoke-virtual {v1, v0}, Lcom/duapps/ad/stats/f;->a(I)V

    .line 245
    new-instance v0, Lcom/duapps/ad/stats/d;

    invoke-direct {v0, p0}, Lcom/duapps/ad/stats/d;-><init>(Landroid/content/Context;)V

    .line 246
    invoke-virtual {v1}, Lcom/duapps/ad/stats/f;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/duapps/ad/stats/d;->e(Lcom/duapps/ad/stats/f;Ljava/lang/String;)V

    .line 247
    invoke-static {p0}, Lcom/duapps/ad/base/n;->a(Landroid/content/Context;)Lcom/duapps/ad/base/n;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/duapps/ad/base/n;->e(Ljava/lang/String;)V

    goto :goto_1

    .line 244
    :cond_4
    const/4 v0, -0x1

    goto :goto_2
.end method
