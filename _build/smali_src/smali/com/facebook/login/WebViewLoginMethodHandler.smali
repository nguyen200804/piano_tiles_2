.class Lcom/facebook/login/WebViewLoginMethodHandler;
.super Lcom/facebook/login/LoginMethodHandler;
.source "WebViewLoginMethodHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/login/WebViewLoginMethodHandler$a;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/facebook/login/WebViewLoginMethodHandler;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private c:Lcom/facebook/internal/ac;

.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 280
    new-instance v0, Lcom/facebook/login/WebViewLoginMethodHandler$2;

    invoke-direct {v0}, Lcom/facebook/login/WebViewLoginMethodHandler$2;-><init>()V

    sput-object v0, Lcom/facebook/login/WebViewLoginMethodHandler;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 265
    invoke-direct {p0, p1}, Lcom/facebook/login/LoginMethodHandler;-><init>(Landroid/os/Parcel;)V

    .line 266
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/login/WebViewLoginMethodHandler;->d:Ljava/lang/String;

    .line 267
    return-void
.end method

.method constructor <init>(Lcom/facebook/login/LoginClient;)V
    .locals 0
    .param p1, "loginClient"    # Lcom/facebook/login/LoginClient;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/facebook/login/LoginMethodHandler;-><init>(Lcom/facebook/login/LoginClient;)V

    .line 57
    return-void
.end method

.method private b()Ljava/lang/String;
    .locals 3

    .prologue
    .line 213
    iget-object v0, p0, Lcom/facebook/login/WebViewLoginMethodHandler;->b:Lcom/facebook/login/LoginClient;

    invoke-virtual {v0}, Lcom/facebook/login/LoginClient;->b()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 214
    const-string v1, "com.facebook.login.AuthorizationClient.WebViewAuthHandler.TOKEN_STORE_KEY"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 217
    const-string v1, "TOKEN"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private c(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 203
    iget-object v0, p0, Lcom/facebook/login/WebViewLoginMethodHandler;->b:Lcom/facebook/login/LoginClient;

    invoke-virtual {v0}, Lcom/facebook/login/LoginClient;->b()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 204
    const-string v1, "com.facebook.login.AuthorizationClient.WebViewAuthHandler.TOKEN_STORE_KEY"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "TOKEN"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 210
    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/facebook/login/WebViewLoginMethodHandler;->c:Lcom/facebook/internal/ac;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/facebook/login/WebViewLoginMethodHandler;->c:Lcom/facebook/internal/ac;

    invoke-virtual {v0}, Lcom/facebook/internal/ac;->cancel()V

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/login/WebViewLoginMethodHandler;->c:Lcom/facebook/internal/ac;

    .line 75
    :cond_0
    return-void
.end method

.method a(Lcom/facebook/login/LoginClient$Request;Landroid/os/Bundle;Lcom/facebook/i;)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 144
    if-eqz p2, :cond_2

    .line 146
    const-string v0, "e2e"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    const-string v0, "e2e"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/login/WebViewLoginMethodHandler;->d:Ljava/lang/String;

    .line 151
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/login/LoginClient$Request;->a()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/facebook/c;->e:Lcom/facebook/c;

    invoke-virtual {p1}, Lcom/facebook/login/LoginClient$Request;->d()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, p2, v1, v3}, Lcom/facebook/login/WebViewLoginMethodHandler;->a(Ljava/util/Collection;Landroid/os/Bundle;Lcom/facebook/c;Ljava/lang/String;)Lcom/facebook/AccessToken;

    move-result-object v1

    .line 156
    iget-object v0, p0, Lcom/facebook/login/WebViewLoginMethodHandler;->b:Lcom/facebook/login/LoginClient;

    invoke-virtual {v0}, Lcom/facebook/login/LoginClient;->c()Lcom/facebook/login/LoginClient$Request;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/facebook/login/LoginClient$Result;->a(Lcom/facebook/login/LoginClient$Request;Lcom/facebook/AccessToken;)Lcom/facebook/login/LoginClient$Result;

    move-result-object v0

    .line 163
    iget-object v3, p0, Lcom/facebook/login/WebViewLoginMethodHandler;->b:Lcom/facebook/login/LoginClient;

    invoke-virtual {v3}, Lcom/facebook/login/LoginClient;->b()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    move-result-object v3

    .line 165
    invoke-virtual {v3}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 166
    invoke-virtual {v1}, Lcom/facebook/AccessToken;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/facebook/login/WebViewLoginMethodHandler;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/facebook/i; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    :goto_0
    iget-object v1, p0, Lcom/facebook/login/WebViewLoginMethodHandler;->d:Ljava/lang/String;

    invoke-static {v1}, Lcom/facebook/internal/aa;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 196
    iget-object v1, p0, Lcom/facebook/login/WebViewLoginMethodHandler;->d:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/facebook/login/WebViewLoginMethodHandler;->b(Ljava/lang/String;)V

    .line 199
    :cond_1
    iget-object v1, p0, Lcom/facebook/login/WebViewLoginMethodHandler;->b:Lcom/facebook/login/LoginClient;

    invoke-virtual {v1, v0}, Lcom/facebook/login/LoginClient;->a(Lcom/facebook/login/LoginClient$Result;)V

    .line 200
    return-void

    .line 167
    :catch_0
    move-exception v0

    .line 168
    iget-object v1, p0, Lcom/facebook/login/WebViewLoginMethodHandler;->b:Lcom/facebook/login/LoginClient;

    invoke-virtual {v1}, Lcom/facebook/login/LoginClient;->c()Lcom/facebook/login/LoginClient$Request;

    move-result-object v1

    invoke-virtual {v0}, Lcom/facebook/i;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/facebook/login/LoginClient$Result;->a(Lcom/facebook/login/LoginClient$Request;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/login/LoginClient$Result;

    move-result-object v0

    goto :goto_0

    .line 174
    :cond_2
    instance-of v0, p3, Lcom/facebook/j;

    if-eqz v0, :cond_3

    .line 175
    iget-object v0, p0, Lcom/facebook/login/WebViewLoginMethodHandler;->b:Lcom/facebook/login/LoginClient;

    invoke-virtual {v0}, Lcom/facebook/login/LoginClient;->c()Lcom/facebook/login/LoginClient$Request;

    move-result-object v0

    const-string v1, "User canceled log in."

    invoke-static {v0, v1}, Lcom/facebook/login/LoginClient$Result;->a(Lcom/facebook/login/LoginClient$Request;Ljava/lang/String;)Lcom/facebook/login/LoginClient$Result;

    move-result-object v0

    goto :goto_0

    .line 180
    :cond_3
    iput-object v2, p0, Lcom/facebook/login/WebViewLoginMethodHandler;->d:Ljava/lang/String;

    .line 183
    invoke-virtual {p3}, Lcom/facebook/i;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 184
    instance-of v1, p3, Lcom/facebook/n;

    if-eqz v1, :cond_4

    .line 185
    check-cast p3, Lcom/facebook/n;

    invoke-virtual {p3}, Lcom/facebook/n;->a()Lcom/facebook/k;

    move-result-object v0

    .line 187
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v3, "%d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Lcom/facebook/k;->b()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 188
    invoke-virtual {v0}, Lcom/facebook/k;->toString()Ljava/lang/String;

    move-result-object v0

    .line 190
    :goto_1
    iget-object v3, p0, Lcom/facebook/login/WebViewLoginMethodHandler;->b:Lcom/facebook/login/LoginClient;

    invoke-virtual {v3}, Lcom/facebook/login/LoginClient;->c()Lcom/facebook/login/LoginClient$Request;

    move-result-object v3

    invoke-static {v3, v2, v0, v1}, Lcom/facebook/login/LoginClient$Result;->a(Lcom/facebook/login/LoginClient$Request;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/login/LoginClient$Result;

    move-result-object v0

    goto :goto_0

    :cond_4
    move-object v1, v2

    goto :goto_1
.end method

.method a(Lcom/facebook/login/LoginClient$Request;)Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 79
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 80
    invoke-virtual {p1}, Lcom/facebook/login/LoginClient$Request;->a()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/internal/aa;->a(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    const-string v0, ","

    invoke-virtual {p1}, Lcom/facebook/login/LoginClient$Request;->a()Ljava/util/Set;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 82
    const-string v2, "scope"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v2, "scope"

    invoke-virtual {p0, v2, v0}, Lcom/facebook/login/WebViewLoginMethodHandler;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 86
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/login/LoginClient$Request;->c()Lcom/facebook/login/a;

    move-result-object v0

    .line 87
    const-string v2, "default_audience"

    invoke-virtual {v0}, Lcom/facebook/login/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-static {}, Lcom/facebook/AccessToken;->a()Lcom/facebook/AccessToken;

    move-result-object v0

    .line 91
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/facebook/AccessToken;->c()Ljava/lang/String;

    move-result-object v0

    .line 92
    :goto_0
    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/facebook/login/WebViewLoginMethodHandler;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 94
    const-string v2, "access_token"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string v0, "access_token"

    const-string v2, "1"

    invoke-virtual {p0, v0, v2}, Lcom/facebook/login/WebViewLoginMethodHandler;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 110
    :goto_1
    new-instance v0, Lcom/facebook/login/WebViewLoginMethodHandler$1;

    invoke-direct {v0, p0, p1}, Lcom/facebook/login/WebViewLoginMethodHandler$1;-><init>(Lcom/facebook/login/WebViewLoginMethodHandler;Lcom/facebook/login/LoginClient$Request;)V

    .line 117
    invoke-static {}, Lcom/facebook/login/LoginClient;->m()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/facebook/login/WebViewLoginMethodHandler;->d:Ljava/lang/String;

    .line 118
    const-string v2, "e2e"

    iget-object v3, p0, Lcom/facebook/login/WebViewLoginMethodHandler;->d:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/facebook/login/WebViewLoginMethodHandler;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 119
    const-string v2, "state"

    invoke-virtual {p1}, Lcom/facebook/login/LoginClient$Request;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/facebook/login/WebViewLoginMethodHandler;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    iget-object v2, p0, Lcom/facebook/login/WebViewLoginMethodHandler;->b:Lcom/facebook/login/LoginClient;

    invoke-virtual {v2}, Lcom/facebook/login/LoginClient;->b()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    .line 123
    new-instance v3, Lcom/facebook/login/WebViewLoginMethodHandler$a;

    invoke-virtual {p1}, Lcom/facebook/login/LoginClient$Request;->d()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v2, v4, v1}, Lcom/facebook/login/WebViewLoginMethodHandler$a;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/facebook/login/WebViewLoginMethodHandler;->d:Ljava/lang/String;

    invoke-virtual {v3, v1}, Lcom/facebook/login/WebViewLoginMethodHandler$a;->a(Ljava/lang/String;)Lcom/facebook/login/WebViewLoginMethodHandler$a;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/login/LoginClient$Request;->f()Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/facebook/login/WebViewLoginMethodHandler$a;->a(Z)Lcom/facebook/login/WebViewLoginMethodHandler$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/facebook/login/WebViewLoginMethodHandler$a;->a(Lcom/facebook/internal/ac$c;)Lcom/facebook/internal/ac$a;

    move-result-object v0

    .line 130
    invoke-virtual {v0}, Lcom/facebook/internal/ac$a;->a()Lcom/facebook/internal/ac;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/login/WebViewLoginMethodHandler;->c:Lcom/facebook/internal/ac;

    .line 132
    new-instance v0, Lcom/facebook/internal/FacebookDialogFragment;

    invoke-direct {v0}, Lcom/facebook/internal/FacebookDialogFragment;-><init>()V

    .line 133
    invoke-virtual {v0, v5}, Lcom/facebook/internal/FacebookDialogFragment;->setRetainInstance(Z)V

    .line 134
    iget-object v1, p0, Lcom/facebook/login/WebViewLoginMethodHandler;->c:Lcom/facebook/internal/ac;

    invoke-virtual {v0, v1}, Lcom/facebook/internal/FacebookDialogFragment;->a(Landroid/app/Dialog;)V

    .line 135
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "FacebookDialogFragment"

    invoke-virtual {v0, v1, v2}, Lcom/facebook/internal/FacebookDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 138
    return v5

    .line 91
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 104
    :cond_2
    iget-object v0, p0, Lcom/facebook/login/WebViewLoginMethodHandler;->b:Lcom/facebook/login/LoginClient;

    invoke-virtual {v0}, Lcom/facebook/login/LoginClient;->b()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/internal/aa;->b(Landroid/content/Context;)V

    .line 105
    const-string v0, "access_token"

    const-string v2, "0"

    invoke-virtual {p0, v0, v2}, Lcom/facebook/login/WebViewLoginMethodHandler;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    const-string v0, "web_view"

    return-object v0
.end method

.method d()Z
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x1

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 271
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 276
    invoke-super {p0, p1, p2}, Lcom/facebook/login/LoginMethodHandler;->writeToParcel(Landroid/os/Parcel;I)V

    .line 277
    iget-object v0, p0, Lcom/facebook/login/WebViewLoginMethodHandler;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 278
    return-void
.end method
