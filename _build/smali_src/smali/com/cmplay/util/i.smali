.class public Lcom/cmplay/util/i;
.super Ljava/lang/Object;
.source "Helper.java"


# static fields
.field protected static a:Landroid/opengl/GLSurfaceView;

.field protected static b:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 54
    sput-object v0, Lcom/cmplay/util/i;->a:Landroid/opengl/GLSurfaceView;

    .line 55
    sput-object v0, Lcom/cmplay/util/i;->b:Landroid/os/Handler;

    return-void
.end method

.method public static a(JI)J
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 388
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 389
    invoke-virtual {v0, p0, p1}, Landroid/text/format/Time;->set(J)V

    .line 390
    iget v6, v0, Landroid/text/format/Time;->year:I

    .line 391
    iget v5, v0, Landroid/text/format/Time;->month:I

    .line 392
    iget v4, v0, Landroid/text/format/Time;->monthDay:I

    .line 393
    iget v2, v0, Landroid/text/format/Time;->minute:I

    .line 394
    iget v3, v0, Landroid/text/format/Time;->hour:I

    .line 395
    iget v1, v0, Landroid/text/format/Time;->second:I

    .line 409
    if-ne v3, p2, :cond_1

    .line 444
    :cond_0
    :goto_0
    return-wide p0

    .line 414
    :cond_1
    if-ge v3, p2, :cond_2

    .line 415
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    move v3, p2

    .line 416
    invoke-virtual/range {v0 .. v6}, Landroid/text/format/Time;->set(IIIIII)V

    .line 417
    invoke-virtual {v0, v7}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide p0

    goto :goto_0

    .line 427
    :cond_2
    if-le v3, p2, :cond_0

    .line 428
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 429
    rsub-int/lit8 v1, v3, 0x18

    add-int/2addr v1, p2

    mul-int/lit8 v1, v1, 0x3c

    mul-int/lit8 v1, v1, 0x3c

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v2, v1

    add-long/2addr v2, p0

    invoke-virtual {v0, v2, v3}, Landroid/text/format/Time;->set(J)V

    .line 430
    invoke-virtual {v0, v7}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide p0

    goto :goto_0
.end method

.method public static a()V
    .locals 2

    .prologue
    .line 124
    invoke-static {}, Lcom/cmplay/tile2/ui/AppActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 125
    new-instance v1, Lcom/cmplay/util/i$1;

    invoke-direct {v1, v0}, Lcom/cmplay/util/i$1;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 150
    return-void
.end method

.method public static a(Landroid/opengl/GLSurfaceView;)V
    .locals 2

    .prologue
    .line 58
    sget-object v0, Lcom/cmplay/util/i;->b:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/cmplay/util/i;->b:Landroid/os/Handler;

    .line 61
    :cond_0
    sput-object p0, Lcom/cmplay/util/i;->a:Landroid/opengl/GLSurfaceView;

    .line 62
    return-void
.end method

.method public static a(Ljava/io/File;)V
    .locals 2

    .prologue
    .line 302
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 307
    :goto_0
    return-void

    .line 305
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cmplay/util/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 306
    const-string v1, "key_share_bg_file_md5"

    invoke-static {v1, v0}, Lcom/cmplay/util/aa;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/cmplay/util/i;->a:Landroid/opengl/GLSurfaceView;

    if-eqz v0, :cond_0

    .line 66
    sget-object v0, Lcom/cmplay/util/i;->a:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0, p0}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 70
    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/Runnable;J)V
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/cmplay/util/i;->b:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 75
    :goto_0
    return-void

    .line 74
    :cond_0
    sget-object v0, Lcom/cmplay/util/i;->b:Landroid/os/Handler;

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 78
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 79
    const-string v1, "details?id="

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 81
    const-string v1, "details?id="

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 82
    add-int/lit8 v0, v0, 0xb

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 84
    :try_start_0
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.android.vending"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 87
    if-nez v1, :cond_0

    .line 88
    new-instance v1, Landroid/content/ActivityNotFoundException;

    invoke-direct {v1}, Landroid/content/ActivityNotFoundException;-><init>()V

    throw v1
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :catch_0
    move-exception v1

    .line 100
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "http://play.google.com/store/apps/details?id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 118
    :goto_0
    return-void

    .line 91
    :cond_0
    :try_start_1
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.android.vending"

    const-string v4, "com.google.android.finsky.activities.LaunchUrlHandlerActivity"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 94
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "market://details?id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 97
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 110
    :cond_1
    :try_start_2
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 111
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 112
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 113
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 191
    :try_start_0
    const-string v0, "com.google.android.gm.ComposeActivityGmail"

    invoke-static {v0, p0, p1, p2, p3}, Lcom/cmplay/util/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    .line 192
    if-nez v0, :cond_0

    .line 193
    const-string v0, "com.android.mail.compose.ComposeActivityGmail"

    invoke-static {v0, p0, p1, p2, p3}, Lcom/cmplay/util/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    .line 195
    :cond_0
    if-nez v0, :cond_1

    .line 196
    const-string v0, ""

    invoke-static {v0, p0, p1, p2, p3}, Lcom/cmplay/util/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    :cond_1
    :goto_0
    return-void

    .line 198
    :catch_0
    move-exception v0

    .line 199
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 5

    .prologue
    .line 209
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 210
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 211
    const-string v2, "android.intent.action.SEND"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 212
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 213
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.google.android.gm"

    invoke-direct {v2, v3, p0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 215
    :cond_0
    const-string v2, "android.intent.extra.EMAIL"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 216
    const-string v2, "android.intent.extra.SUBJECT"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 217
    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 220
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 221
    invoke-static {v0, v1, p4}, Lcom/cmplay/util/e;->a(Landroid/app/Activity;Landroid/content/Intent;I)Z

    move-result v0

    .line 228
    :goto_0
    return v0

    .line 225
    :cond_1
    const-string v2, "message/rfc822"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 226
    const-string v2, "send_email"

    invoke-static {v2}, Lcom/cmplay/util/NativeUtil;->getLanguageTextByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    invoke-static {v0, v1, p4}, Lcom/cmplay/util/e;->a(Landroid/app/Activity;Landroid/content/Intent;I)Z

    move-result v0

    goto :goto_0
.end method

.method public static b()V
    .locals 6

    .prologue
    .line 156
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 157
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05009e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 158
    const-string v2, "title_feedback"

    invoke-static {v2}, Lcom/cmplay/util/NativeUtil;->getLanguageTextByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 159
    const-string v3, "text_feedback"

    invoke-static {v3}, Lcom/cmplay/util/NativeUtil;->getLanguageTextByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 160
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 161
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f050081

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    const-string v0, "\nModel:"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    invoke-static {}, Lcom/cmplay/util/NativeUtil;->getModel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    const-string v0, "\nAndroid Ver:"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    invoke-static {}, Lcom/cmplay/util/NativeUtil;->getOSVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    const-string v0, "\nGame Ver:"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    invoke-static {}, Lcom/cmplay/util/NativeUtil;->getVersionCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    invoke-static {}, Lcom/cmplay/a/c;->a()Lcom/cmplay/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmplay/a/c;->c()Lcom/cmplay/a/e;

    move-result-object v0

    .line 169
    if-eqz v0, :cond_0

    .line 170
    const-string v5, "\nAccount ID:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    invoke-virtual {v0}, Lcom/cmplay/a/e;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    :cond_0
    const-string v0, "\nA_ID:"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    invoke-static {}, Lcom/cmplay/util/NativeUtil;->getAndroidId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    const-string v0, "\nX_ID:"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    invoke-static {}, Lcom/cmplay/util/NativeUtil;->getUUID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    const-string v0, "\nService_ID:"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    invoke-static {}, Lcom/cmplay/util/NativeUtil;->getNetUUid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    const-string v0, "\n\n\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\n\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x7d0

    invoke-static {v1, v2, v0, v3}, Lcom/cmplay/util/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 181
    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 366
    :try_start_0
    sget-object v0, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.facebook.katana"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 367
    const v1, 0x2dd1e2

    if-lt v0, v1, :cond_0

    .line 368
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fb://facewebmodal/f?href="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 369
    sget-object v1, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-static {v1, v2}, Lcom/cmplay/util/e;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 380
    :goto_0
    return-void

    .line 374
    :cond_0
    sget-object v0, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-static {v0, v1}, Lcom/cmplay/util/e;->a(Landroid/content/Context;Landroid/content/Intent;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 376
    :catch_0
    move-exception v0

    .line 378
    sget-object v0, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-static {v0, v1}, Lcom/cmplay/util/e;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    goto :goto_0
.end method

.method public static c()I
    .locals 4

    .prologue
    .line 255
    sget-object v0, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmplay/util/e;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 256
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 257
    const/4 v0, 0x0

    .line 261
    :goto_0
    return v0

    .line 259
    :cond_0
    new-instance v1, Ljava/util/zip/CRC32;

    invoke-direct {v1}, Ljava/util/zip/CRC32;-><init>()V

    .line 260
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/zip/CRC32;->update([B)V

    .line 261
    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v0

    const-wide/16 v2, 0x2

    rem-long/2addr v0, v2

    long-to-int v0, v0

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 453
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 469
    :cond_0
    :goto_0
    return v0

    .line 457
    :cond_1
    const-string v1, "key_get_week_race_diamond_ids"

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/cmplay/util/aa;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 462
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 463
    invoke-virtual {v1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0
.end method

.method public static d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 270
    sget-object v0, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    .line 271
    const-string v1, "share_CD_bg.jpg"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 272
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 273
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 275
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static e()I
    .locals 2

    .prologue
    .line 321
    sget v0, Lcom/cmplay/h/d;->m:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    sget v0, Lcom/cmplay/h/d;->m:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 322
    :cond_0
    const/4 v0, 0x0

    .line 324
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/cmplay/util/NativeUtil;->getScoreLevel()I

    move-result v0

    goto :goto_0
.end method

.method public static f()I
    .locals 2

    .prologue
    .line 328
    const/4 v0, 0x1

    .line 330
    :try_start_0
    invoke-static {}, Lcom/cmplay/util/NativeUtil;->getHallLevel()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 334
    :goto_0
    return v0

    .line 331
    :catch_0
    move-exception v1

    .line 332
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
