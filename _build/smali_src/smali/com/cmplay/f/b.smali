.class public Lcom/cmplay/f/b;
.super Ljava/lang/Object;
.source "AuthWithGoogleForRestAPIs.java"

# interfaces
.implements Lcom/cmplay/f/c;


# instance fields
.field a:Landroid/support/v4/app/FragmentActivity;

.field b:Landroid/content/Context;

.field c:Lcom/cmplay/f/c$a;

.field d:Landroid/view/WindowManager;

.field e:Landroid/widget/RelativeLayout;

.field protected f:Z

.field protected g:Z

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;Lcom/cmplay/f/c$a;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object v0, p0, Lcom/cmplay/f/b;->a:Landroid/support/v4/app/FragmentActivity;

    .line 57
    iput-object v0, p0, Lcom/cmplay/f/b;->b:Landroid/content/Context;

    .line 60
    iput-object v0, p0, Lcom/cmplay/f/b;->c:Lcom/cmplay/f/c$a;

    .line 63
    iput-object v0, p0, Lcom/cmplay/f/b;->d:Landroid/view/WindowManager;

    .line 64
    iput-object v0, p0, Lcom/cmplay/f/b;->e:Landroid/widget/RelativeLayout;

    .line 67
    iput-boolean v1, p0, Lcom/cmplay/f/b;->f:Z

    .line 69
    iput-boolean v1, p0, Lcom/cmplay/f/b;->g:Z

    .line 75
    iput-object p1, p0, Lcom/cmplay/f/b;->a:Landroid/support/v4/app/FragmentActivity;

    .line 76
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/cmplay/f/b;->b:Landroid/content/Context;

    .line 77
    iput-object p2, p0, Lcom/cmplay/f/b;->c:Lcom/cmplay/f/c$a;

    .line 78
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Lcom/cmplay/f/a;
    .locals 1

    .prologue
    .line 252
    new-instance v0, Lcom/cmplay/f/d;

    invoke-direct {v0, p0, p1, p2}, Lcom/cmplay/f/d;-><init>(Lcom/cmplay/f/b;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private a(ILandroid/content/Intent;)V
    .locals 2

    .prologue
    .line 139
    if-nez p2, :cond_1

    .line 140
    const-string v0, "Unknown error, click the button again"

    invoke-virtual {p0, v0}, Lcom/cmplay/f/b;->a(Ljava/lang/String;)V

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 143
    :cond_1
    const/4 v0, -0x1

    if-ne p1, v0, :cond_2

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleAuthorizeResult mEmail:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cmplay/f/b;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cmplay/f/b;->a(Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lcom/cmplay/f/b;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 147
    const-string v0, "authAccount"

    iget-object v1, p0, Lcom/cmplay/f/b;->h:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/cmplay/util/aa;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const-string v0, "Retrying"

    invoke-virtual {p0, v0}, Lcom/cmplay/f/b;->a(Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/cmplay/f/b;->h:Ljava/lang/String;

    const-string v1, "oauth2:https://www.googleapis.com/auth/userinfo.profile"

    invoke-direct {p0, v0, v1}, Lcom/cmplay/f/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/cmplay/f/a;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/cmplay/f/a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 153
    :cond_2
    if-nez p1, :cond_3

    .line 154
    const-string v0, "User rejected authorization."

    invoke-virtual {p0, v0}, Lcom/cmplay/f/b;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 157
    :cond_3
    const-string v0, "Unknown error, try again"

    invoke-virtual {p0, v0}, Lcom/cmplay/f/b;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private e()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 237
    new-array v2, v8, [Ljava/lang/String;

    const-string v1, "com.google"

    aput-object v1, v2, v3

    move-object v1, v0

    move-object v4, v0

    move-object v5, v0

    move-object v6, v0

    move-object v7, v0

    .line 238
    invoke-static/range {v0 .. v7}, Lcom/google/android/gms/common/AccountPicker;->newChooseAccountIntent(Landroid/accounts/Account;Ljava/util/ArrayList;[Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    .line 240
    iget-object v1, p0, Lcom/cmplay/f/b;->a:Landroid/support/v4/app/FragmentActivity;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 241
    invoke-virtual {p0, v8}, Lcom/cmplay/f/b;->a(Z)V

    .line 244
    invoke-direct {p0}, Lcom/cmplay/f/b;->f()V

    .line 245
    return-void
.end method

.method private f()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 291
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 292
    sget-object v0, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    invoke-static {}, Lcom/cmplay/tile2/GameApp;->g()Lcom/cmplay/tile2/GameApp;

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/cmplay/f/b;->d:Landroid/view/WindowManager;

    .line 293
    const/16 v0, 0x7d5

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 294
    const/4 v0, 0x1

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 295
    const/16 v0, 0x8

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 296
    const/16 v0, 0x31

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 297
    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 298
    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 299
    const/4 v0, -0x1

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 300
    const/4 v0, -0x2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 302
    invoke-static {}, Lcom/cmplay/tile2/GameApp;->g()Lcom/cmplay/tile2/GameApp;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 303
    const v2, 0x7f03004d

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/cmplay/f/b;->e:Landroid/widget/RelativeLayout;

    .line 304
    iget-object v0, p0, Lcom/cmplay/f/b;->e:Landroid/widget/RelativeLayout;

    const v2, 0x7f080111

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 305
    const-string v2, "gp_guide1"

    invoke-static {v2}, Lcom/cmplay/util/NativeUtil;->getLanguageTextByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 306
    iget-object v0, p0, Lcom/cmplay/f/b;->d:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/cmplay/f/b;->e:Landroid/widget/RelativeLayout;

    invoke-interface {v0, v2, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 307
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cmplay/f/b;->a:Landroid/support/v4/app/FragmentActivity;

    .line 90
    return-void
.end method

.method public a(I)V
    .locals 3

    .prologue
    .line 165
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 166
    const-string v1, "platform"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 167
    const-string v1, "isLogin"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 168
    const-string v1, "ab_test_type"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 169
    const-string v1, "error_code"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 170
    const-string v1, "show_pick_user_account"

    invoke-virtual {p0}, Lcom/cmplay/f/b;->c()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 171
    const-string v1, "req_authorize"

    invoke-virtual {p0}, Lcom/cmplay/f/b;->d()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 172
    const/4 v1, 0x0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/cmplay/f/b;->a(ZLjava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    :goto_0
    return-void

    .line 174
    :catch_0
    move-exception v0

    .line 175
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public a(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 98
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_3

    .line 99
    if-ne p2, v1, :cond_2

    .line 100
    const-string v0, "authAccount"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmplay/f/b;->h:Ljava/lang/String;

    .line 102
    const-string v0, "authAccount"

    iget-object v1, p0, Lcom/cmplay/f/b;->h:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/cmplay/util/aa;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0}, Lcom/cmplay/f/b;->b()V

    .line 115
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/cmplay/f/b;->d:Landroid/view/WindowManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmplay/f/b;->e:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    .line 116
    iget-object v0, p0, Lcom/cmplay/f/b;->d:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/cmplay/f/b;->e:Landroid/widget/RelativeLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 136
    :cond_1
    :goto_1
    return-void

    .line 107
    :cond_2
    if-nez p2, :cond_0

    .line 111
    const v0, 0xc354

    invoke-virtual {p0, v0}, Lcom/cmplay/f/b;->a(I)V

    goto :goto_0

    .line 118
    :cond_3
    const/16 v0, 0x3e9

    if-eq p1, v0, :cond_4

    const/16 v0, 0x3ea

    if-ne p1, v0, :cond_1

    .line 123
    :cond_4
    if-ne p2, v1, :cond_5

    .line 127
    invoke-direct {p0, p2, p3}, Lcom/cmplay/f/b;->a(ILandroid/content/Intent;)V

    goto :goto_1

    .line 128
    :cond_5
    if-nez p2, :cond_1

    .line 132
    const v0, 0xc355

    invoke-virtual {p0, v0}, Lcom/cmplay/f/b;->a(I)V

    goto :goto_1
.end method

.method public a(Landroid/support/v4/app/FragmentActivity;)V
    .locals 1

    .prologue
    .line 82
    iput-object p1, p0, Lcom/cmplay/f/b;->a:Landroid/support/v4/app/FragmentActivity;

    .line 83
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/cmplay/f/b;->b:Landroid/content/Context;

    .line 84
    return-void
.end method

.method public a(Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 260
    iget-object v0, p0, Lcom/cmplay/f/b;->a:Landroid/support/v4/app/FragmentActivity;

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/cmplay/f/b;->a:Landroid/support/v4/app/FragmentActivity;

    new-instance v1, Lcom/cmplay/f/b$1;

    invoke-direct {v1, p0, p1}, Lcom/cmplay/f/b$1;-><init>(Lcom/cmplay/f/b;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 285
    :cond_0
    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 202
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 314
    iput-boolean p1, p0, Lcom/cmplay/f/b;->f:Z

    .line 315
    return-void
.end method

.method a(ZLjava/lang/String;)V
    .locals 3

    .prologue
    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Notifying LISTENER of sign-in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p1, :cond_1

    const-string v0, "SUCCESS"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cmplay/f/b;->a(Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Lcom/cmplay/f/b;->c:Lcom/cmplay/f/c$a;

    if-eqz v0, :cond_0

    .line 190
    if-eqz p1, :cond_2

    .line 191
    iget-object v0, p0, Lcom/cmplay/f/b;->c:Lcom/cmplay/f/c$a;

    invoke-interface {v0, p2}, Lcom/cmplay/f/c$a;->b(Ljava/lang/String;)V

    .line 196
    :cond_0
    :goto_1
    return-void

    .line 184
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FAILURE\njsonData:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 193
    :cond_2
    iget-object v0, p0, Lcom/cmplay/f/b;->c:Lcom/cmplay/f/c$a;

    invoke-interface {v0, p2}, Lcom/cmplay/f/c$a;->a(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public b()V
    .locals 2

    .prologue
    .line 210
    const-string v0, "authAccount"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/cmplay/util/aa;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmplay/f/b;->h:Ljava/lang/String;

    .line 214
    iget-object v0, p0, Lcom/cmplay/f/b;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    invoke-direct {p0}, Lcom/cmplay/f/b;->e()V

    .line 233
    :goto_0
    return-void

    .line 220
    :cond_0
    sget-object v0, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmplay/util/t;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 224
    iget-object v0, p0, Lcom/cmplay/f/b;->h:Ljava/lang/String;

    const-string v1, "oauth2:https://www.googleapis.com/auth/userinfo.profile"

    invoke-direct {p0, v0, v1}, Lcom/cmplay/f/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/cmplay/f/a;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/cmplay/f/a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 229
    :cond_1
    const v0, 0xc356

    invoke-virtual {p0, v0}, Lcom/cmplay/f/b;->a(I)V

    goto :goto_0
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 322
    iput-boolean p1, p0, Lcom/cmplay/f/b;->g:Z

    .line 323
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 310
    iget-boolean v0, p0, Lcom/cmplay/f/b;->f:Z

    return v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 318
    iget-boolean v0, p0, Lcom/cmplay/f/b;->g:Z

    return v0
.end method
