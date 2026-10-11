.class public Lcom/ijinshan/cloudconfig/c/a;
.super Ljava/lang/Object;
.source "CloudConfigEnv.java"


# static fields
.field private static a:Landroid/content/Context;

.field private static b:Ljava/lang/String;

.field private static c:I

.field private static d:Z

.field private static volatile e:Z

.field private static volatile f:Z

.field private static g:Ljava/lang/String;

.field private static h:Z

.field private static i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 20
    const/4 v0, 0x0

    sput-object v0, Lcom/ijinshan/cloudconfig/c/a;->a:Landroid/content/Context;

    .line 21
    const-string v0, ""

    sput-object v0, Lcom/ijinshan/cloudconfig/c/a;->b:Ljava/lang/String;

    .line 22
    sput v1, Lcom/ijinshan/cloudconfig/c/a;->c:I

    .line 23
    sput-boolean v2, Lcom/ijinshan/cloudconfig/c/a;->d:Z

    .line 24
    sput-boolean v2, Lcom/ijinshan/cloudconfig/c/a;->e:Z

    .line 25
    sput-boolean v1, Lcom/ijinshan/cloudconfig/c/a;->f:Z

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/ijinshan/cloudconfig/c/a;->g:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/ijinshan/cloudconfig/c/a;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 71
    sput-object p0, Lcom/ijinshan/cloudconfig/c/a;->a:Landroid/content/Context;

    .line 73
    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 51
    sput-object p0, Lcom/ijinshan/cloudconfig/c/a;->g:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 0

    .prologue
    .line 36
    invoke-static {p0}, Lcom/ijinshan/cloudconfig/c/a;->b(Ljava/lang/String;)V

    .line 37
    invoke-static {p1}, Lcom/ijinshan/cloudconfig/c/a;->a(Ljava/lang/String;)V

    .line 38
    sput-boolean p2, Lcom/ijinshan/cloudconfig/c/a;->h:Z

    .line 39
    sput-boolean p3, Lcom/ijinshan/cloudconfig/c/a;->i:Z

    .line 40
    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 121
    sget-object v0, Lcom/ijinshan/cloudconfig/c/a;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    sput-object p0, Lcom/ijinshan/cloudconfig/c/a;->b:Ljava/lang/String;

    .line 124
    :cond_0
    return-void
.end method

.method public static b()Z
    .locals 1

    .prologue
    .line 55
    sget-boolean v0, Lcom/ijinshan/cloudconfig/c/a;->h:Z

    return v0
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 156
    if-eqz p0, :cond_1

    .line 158
    :try_start_0
    const-string v0, "connectivity"

    .line 159
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 160
    if-eqz v0, :cond_0

    .line 162
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 163
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    const/4 v0, 0x1

    .line 173
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 168
    goto :goto_0

    .line 169
    :catch_0
    move-exception v0

    move v0, v1

    .line 170
    goto :goto_0

    :cond_1
    move v0, v1

    .line 173
    goto :goto_0
.end method

.method public static c()Z
    .locals 1

    .prologue
    .line 58
    sget-boolean v0, Lcom/ijinshan/cloudconfig/c/a;->i:Z

    return v0
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 183
    if-nez p0, :cond_0

    move v0, v1

    .line 206
    :goto_0
    return v0

    .line 187
    :cond_0
    :try_start_0
    const-string v0, "connectivity"

    .line 188
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 189
    if-nez v0, :cond_1

    move v0, v1

    .line 190
    goto :goto_0

    .line 193
    :cond_1
    const/4 v3, 0x1

    .line 194
    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 195
    if-nez v0, :cond_2

    move v0, v1

    .line 196
    goto :goto_0

    .line 198
    :cond_2
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    .line 200
    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v0, v3, :cond_3

    move v0, v2

    .line 201
    goto :goto_0

    .line 202
    :catch_0
    move-exception v0

    move v0, v1

    .line 203
    goto :goto_0

    :cond_3
    move v0, v1

    .line 206
    goto :goto_0
.end method

.method public static d()Landroid/content/Context;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/ijinshan/cloudconfig/c/a;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    sget-object v0, Lcom/ijinshan/cloudconfig/c/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static f()V
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x1

    sput-boolean v0, Lcom/ijinshan/cloudconfig/c/a;->f:Z

    .line 140
    return-void
.end method
