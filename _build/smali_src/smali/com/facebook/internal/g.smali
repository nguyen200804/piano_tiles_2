.class public Lcom/facebook/internal/g;
.super Ljava/lang/Object;
.source "DialogPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/internal/g$a;
    }
.end annotation


# direct methods
.method public static a(Lcom/facebook/internal/a;)V
    .locals 2

    .prologue
    .line 43
    new-instance v0, Lcom/facebook/i;

    const-string v1, "Unable to show the provided content via the web or the installed version of the Facebook app. Some dialogs are only supported starting API 14."

    invoke-direct {v0, v1}, Lcom/facebook/i;-><init>(Ljava/lang/String;)V

    .line 46
    invoke-static {p0, v0}, Lcom/facebook/internal/g;->a(Lcom/facebook/internal/a;Lcom/facebook/i;)V

    .line 47
    return-void
.end method

.method public static a(Lcom/facebook/internal/a;Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/facebook/internal/a;->b()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0}, Lcom/facebook/internal/a;->d()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 62
    invoke-virtual {p0}, Lcom/facebook/internal/a;->e()Z

    .line 63
    return-void
.end method

.method public static a(Lcom/facebook/internal/a;Landroid/os/Bundle;Lcom/facebook/internal/f;)V
    .locals 5

    .prologue
    .line 131
    invoke-static {}, Lcom/facebook/l;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/internal/ab;->b(Landroid/content/Context;)V

    .line 132
    invoke-static {}, Lcom/facebook/l;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/internal/ab;->a(Landroid/content/Context;)V

    .line 134
    invoke-interface {p2}, Lcom/facebook/internal/f;->name()Ljava/lang/String;

    move-result-object v0

    .line 135
    invoke-static {p2}, Lcom/facebook/internal/g;->d(Lcom/facebook/internal/f;)Landroid/net/Uri;

    move-result-object v1

    .line 136
    if-nez v1, :cond_0

    .line 137
    new-instance v1, Lcom/facebook/i;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to fetch the Url for the DialogFeature : \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/facebook/i;-><init>(Ljava/lang/String;)V

    throw v1

    .line 143
    :cond_0
    invoke-static {}, Lcom/facebook/internal/v;->a()I

    move-result v0

    .line 144
    invoke-virtual {p0}, Lcom/facebook/internal/a;->c()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0, p1}, Lcom/facebook/internal/y;->a(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 148
    if-nez v0, :cond_1

    .line 149
    new-instance v0, Lcom/facebook/i;

    const-string v1, "Unable to fetch the app\'s key-hash"

    invoke-direct {v0, v1}, Lcom/facebook/i;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    :cond_1
    invoke-virtual {v1}, Landroid/net/Uri;->isRelative()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 154
    invoke-static {}, Lcom/facebook/internal/y;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Lcom/facebook/internal/aa;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/net/Uri;

    move-result-object v0

    .line 165
    :goto_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 166
    const-string v2, "url"

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const-string v0, "is_fallback"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 169
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 170
    invoke-virtual {p0}, Lcom/facebook/internal/a;->c()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2}, Lcom/facebook/internal/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/facebook/internal/v;->a()I

    move-result v4

    invoke-static {v0, v2, v3, v4, v1}, Lcom/facebook/internal/v;->a(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 176
    invoke-static {}, Lcom/facebook/l;->f()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/facebook/FacebookActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 177
    const-string v1, "FacebookDialogFragment"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 179
    invoke-virtual {p0, v0}, Lcom/facebook/internal/a;->a(Landroid/content/Intent;)V

    .line 180
    return-void

    .line 159
    :cond_2
    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Lcom/facebook/internal/aa;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Lcom/facebook/internal/a;Lcom/facebook/i;)V
    .locals 0

    .prologue
    .line 51
    invoke-static {p0, p1}, Lcom/facebook/internal/g;->b(Lcom/facebook/internal/a;Lcom/facebook/i;)V

    .line 52
    return-void
.end method

.method public static a(Lcom/facebook/internal/a;Lcom/facebook/internal/g$a;Lcom/facebook/internal/f;)V
    .locals 5

    .prologue
    .line 186
    invoke-static {}, Lcom/facebook/l;->f()Landroid/content/Context;

    move-result-object v1

    .line 187
    invoke-interface {p2}, Lcom/facebook/internal/f;->a()Ljava/lang/String;

    move-result-object v2

    .line 188
    invoke-static {p2}, Lcom/facebook/internal/g;->c(Lcom/facebook/internal/f;)I

    move-result v3

    .line 189
    const/4 v0, -0x1

    if-ne v3, v0, :cond_0

    .line 190
    new-instance v0, Lcom/facebook/i;

    const-string v1, "Cannot present this dialog. This likely means that the Facebook app is not installed."

    invoke-direct {v0, v1}, Lcom/facebook/i;-><init>(Ljava/lang/String;)V

    throw v0

    .line 196
    :cond_0
    invoke-static {v3}, Lcom/facebook/internal/v;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 198
    invoke-interface {p1}, Lcom/facebook/internal/g$a;->a()Landroid/os/Bundle;

    move-result-object v0

    .line 203
    :goto_0
    if-nez v0, :cond_1

    .line 204
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 207
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/internal/a;->c()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v2, v3, v0}, Lcom/facebook/internal/v;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    .line 213
    if-nez v0, :cond_3

    .line 214
    new-instance v0, Lcom/facebook/i;

    const-string v1, "Unable to create Intent; this likely means theFacebook app is not installed."

    invoke-direct {v0, v1}, Lcom/facebook/i;-><init>(Ljava/lang/String;)V

    throw v0

    .line 201
    :cond_2
    invoke-interface {p1}, Lcom/facebook/internal/g$a;->b()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    .line 219
    :cond_3
    invoke-virtual {p0, v0}, Lcom/facebook/internal/a;->a(Landroid/content/Intent;)V

    .line 220
    return-void
.end method

.method public static a(Lcom/facebook/internal/a;Lcom/facebook/internal/l;)V
    .locals 2

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/facebook/internal/a;->b()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0}, Lcom/facebook/internal/a;->d()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/facebook/internal/l;->a(Landroid/content/Intent;I)V

    .line 70
    invoke-virtual {p0}, Lcom/facebook/internal/a;->e()Z

    .line 71
    return-void
.end method

.method public static a(Lcom/facebook/internal/a;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 107
    invoke-static {}, Lcom/facebook/l;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/internal/ab;->b(Landroid/content/Context;)V

    .line 108
    invoke-static {}, Lcom/facebook/l;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/internal/ab;->a(Landroid/content/Context;)V

    .line 110
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 111
    const-string v1, "action"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const-string v1, "params"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 114
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 115
    invoke-virtual {p0}, Lcom/facebook/internal/a;->c()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/facebook/internal/v;->a()I

    move-result v3

    invoke-static {v1, v2, p1, v3, v0}, Lcom/facebook/internal/v;->a(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 121
    invoke-static {}, Lcom/facebook/l;->f()Landroid/content/Context;

    move-result-object v0

    const-class v2, Lcom/facebook/FacebookActivity;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 122
    const-string v0, "FacebookDialogFragment"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    invoke-virtual {p0, v1}, Lcom/facebook/internal/a;->a(Landroid/content/Intent;)V

    .line 125
    return-void
.end method

.method public static a(Lcom/facebook/internal/f;)Z
    .locals 2

    .prologue
    .line 75
    invoke-static {p0}, Lcom/facebook/internal/g;->c(Lcom/facebook/internal/f;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/internal/f;)[I
    .locals 3

    .prologue
    .line 254
    invoke-interface {p2}, Lcom/facebook/internal/f;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/facebook/internal/aa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/internal/aa$a;

    move-result-object v0

    .line 256
    if-eqz v0, :cond_0

    .line 257
    invoke-virtual {v0}, Lcom/facebook/internal/aa$a;->d()[I

    move-result-object v0

    .line 259
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    invoke-interface {p2}, Lcom/facebook/internal/f;->b()I

    move-result v2

    aput v2, v0, v1

    goto :goto_0
.end method

.method public static b(Lcom/facebook/internal/a;Lcom/facebook/i;)V
    .locals 5

    .prologue
    .line 84
    if-nez p1, :cond_0

    .line 101
    :goto_0
    return-void

    .line 87
    :cond_0
    invoke-static {}, Lcom/facebook/l;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/internal/ab;->b(Landroid/content/Context;)V

    .line 89
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 90
    invoke-static {}, Lcom/facebook/l;->f()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/facebook/FacebookActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 91
    sget-object v1, Lcom/facebook/FacebookActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    invoke-virtual {p0}, Lcom/facebook/internal/a;->c()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {}, Lcom/facebook/internal/v;->a()I

    move-result v3

    invoke-static {p1}, Lcom/facebook/internal/v;->a(Lcom/facebook/i;)Landroid/os/Bundle;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/facebook/internal/v;->a(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 100
    invoke-virtual {p0, v0}, Lcom/facebook/internal/a;->a(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static b(Lcom/facebook/internal/f;)Z
    .locals 1

    .prologue
    .line 80
    invoke-static {p0}, Lcom/facebook/internal/g;->d(Lcom/facebook/internal/f;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c(Lcom/facebook/internal/f;)I
    .locals 2

    .prologue
    .line 239
    invoke-static {}, Lcom/facebook/l;->i()Ljava/lang/String;

    move-result-object v0

    .line 240
    invoke-interface {p0}, Lcom/facebook/internal/f;->a()Ljava/lang/String;

    move-result-object v1

    .line 241
    invoke-static {v0, v1, p0}, Lcom/facebook/internal/g;->a(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/internal/f;)[I

    move-result-object v0

    .line 243
    invoke-static {v1, v0}, Lcom/facebook/internal/v;->a(Ljava/lang/String;[I)I

    move-result v0

    return v0
.end method

.method private static d(Lcom/facebook/internal/f;)Landroid/net/Uri;
    .locals 3

    .prologue
    .line 223
    invoke-interface {p0}, Lcom/facebook/internal/f;->name()Ljava/lang/String;

    move-result-object v0

    .line 224
    invoke-interface {p0}, Lcom/facebook/internal/f;->a()Ljava/lang/String;

    move-result-object v1

    .line 225
    invoke-static {}, Lcom/facebook/l;->i()Ljava/lang/String;

    move-result-object v2

    .line 227
    invoke-static {v2, v1, v0}, Lcom/facebook/internal/aa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/internal/aa$a;

    move-result-object v1

    .line 229
    const/4 v0, 0x0

    .line 230
    if-eqz v1, :cond_0

    .line 231
    invoke-virtual {v1}, Lcom/facebook/internal/aa$a;->c()Landroid/net/Uri;

    move-result-object v0

    .line 234
    :cond_0
    return-object v0
.end method
