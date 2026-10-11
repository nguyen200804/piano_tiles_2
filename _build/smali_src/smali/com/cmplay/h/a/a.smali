.class public Lcom/cmplay/h/a/a;
.super Lcom/cmplay/h/a/c;
.source "DefaultPlatform.java"


# instance fields
.field private c:J

.field private d:Lcom/cmplay/h/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/cmplay/h/a/c;-><init>(Landroid/content/Context;)V

    .line 34
    return-void
.end method


# virtual methods
.method public a(IILandroid/content/Intent;)V
    .locals 11

    .prologue
    const/4 v10, 0x5

    const/4 v1, 0x1

    .line 84
    const/16 v0, 0x3e9

    if-eq p1, v0, :cond_0

    .line 109
    :goto_0
    return-void

    .line 87
    :cond_0
    const-string v2, "MMM"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DefaultPlatform onActivityResult result code is "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ",data=null is "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez p3, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object v0, p0, Lcom/cmplay/h/a/a;->d:Lcom/cmplay/h/e;

    invoke-virtual {v0}, Lcom/cmplay/h/e;->g()I

    move-result v0

    invoke-static {v0}, Lcom/cmplay/h/b;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 89
    iget-object v2, p0, Lcom/cmplay/h/a/a;->d:Lcom/cmplay/h/e;

    invoke-virtual {v2}, Lcom/cmplay/h/e;->g()I

    move-result v2

    invoke-static {v2}, Lcom/cmplay/h/b;->b(I)I

    move-result v2

    .line 90
    invoke-static {}, Lcom/cmplay/h/b;->e()I

    move-result v3

    .line 91
    iget-object v4, p0, Lcom/cmplay/h/a/a;->d:Lcom/cmplay/h/e;

    invoke-virtual {v4}, Lcom/cmplay/h/e;->g()I

    move-result v4

    iget-object v5, p0, Lcom/cmplay/h/a/a;->d:Lcom/cmplay/h/e;

    invoke-virtual {v5}, Lcom/cmplay/h/e;->f()I

    move-result v5

    invoke-static {v4, v5}, Lcom/cmplay/h/b;->a(II)I

    move-result v4

    .line 92
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/cmplay/h/a/a;->c:J

    sub-long/2addr v6, v8

    .line 94
    const-wide/16 v8, 0xfa0

    cmp-long v5, v6, v8

    if-lez v5, :cond_2

    .line 95
    invoke-virtual {p0, v10, v1}, Lcom/cmplay/h/a/a;->a(II)V

    .line 97
    const-string v1, "at_sys_share_valid"

    invoke-virtual {p0, v1}, Lcom/cmplay/h/a/a;->a(Ljava/lang/String;)V

    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "at_sys_share_valid"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cmplay/h/a/a;->a(Ljava/lang/String;)V

    .line 99
    invoke-static {}, Lcom/cmplay/h/f;->b()Lcom/cmplay/h/f;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/cmplay/h/f;->a(IIII)V

    .line 107
    :goto_2
    invoke-static {}, Lcom/cmplay/h/f;->b()Lcom/cmplay/h/f;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/cmplay/h/f;->b(Lcom/cmplay/h/c;)V

    .line 108
    invoke-virtual {p0}, Lcom/cmplay/h/a/a;->b()V

    goto/16 :goto_0

    .line 87
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 101
    :cond_2
    const/4 v1, 0x2

    invoke-virtual {p0, v10, v1}, Lcom/cmplay/h/a/a;->a(II)V

    .line 103
    const-string v1, "at_sys_share_invalid"

    invoke-virtual {p0, v1}, Lcom/cmplay/h/a/a;->a(Ljava/lang/String;)V

    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "at_sys_share_invalid"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cmplay/h/a/a;->a(Ljava/lang/String;)V

    .line 105
    invoke-static {}, Lcom/cmplay/h/f;->b()Lcom/cmplay/h/f;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/cmplay/h/f;->a(IIII)V

    goto :goto_2
.end method

.method public a(Lcom/cmplay/h/e;)V
    .locals 5

    .prologue
    .line 38
    iput-object p1, p0, Lcom/cmplay/h/a/a;->d:Lcom/cmplay/h/e;

    .line 39
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    invoke-virtual {p1}, Lcom/cmplay/h/e;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 43
    invoke-virtual {p1}, Lcom/cmplay/h/e;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    :cond_0
    invoke-virtual {p1}, Lcom/cmplay/h/e;->a()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 47
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 48
    const-string v2, "#pianotiles2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    :cond_1
    invoke-virtual {p1}, Lcom/cmplay/h/e;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 54
    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    const-string v2, "sms_body"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    const-string v2, "Kdescription"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    invoke-virtual {p1}, Lcom/cmplay/h/e;->c()Ljava/lang/String;

    move-result-object v1

    .line 60
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 61
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 62
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 63
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 65
    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 68
    :cond_3
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 69
    const-string v1, "share_title"

    invoke-static {v1}, Lcom/cmplay/util/NativeUtil;->getLanguageTextByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    .line 70
    iget-object v0, p0, Lcom/cmplay/h/a/a;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const/16 v2, 0x3e9

    invoke-static {v0, v1, v2}, Lcom/cmplay/util/e;->a(Landroid/app/Activity;Landroid/content/Intent;I)Z

    .line 71
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cmplay/h/a/a;->c:J

    .line 73
    iget-object v0, p0, Lcom/cmplay/h/a/a;->d:Lcom/cmplay/h/e;

    invoke-virtual {v0}, Lcom/cmplay/h/e;->g()I

    move-result v0

    invoke-static {v0}, Lcom/cmplay/h/b;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 74
    const-string v1, "clk_system_share"

    invoke-virtual {p0, v1}, Lcom/cmplay/h/a/a;->a(Ljava/lang/String;)V

    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clk_system_share"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cmplay/h/a/a;->a(Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/cmplay/h/a/a;->d:Lcom/cmplay/h/e;

    invoke-virtual {v0}, Lcom/cmplay/h/e;->g()I

    move-result v0

    invoke-static {v0}, Lcom/cmplay/h/b;->b(I)I

    move-result v0

    .line 77
    invoke-static {}, Lcom/cmplay/h/b;->e()I

    move-result v1

    .line 78
    iget-object v2, p0, Lcom/cmplay/h/a/a;->d:Lcom/cmplay/h/e;

    invoke-virtual {v2}, Lcom/cmplay/h/e;->g()I

    move-result v2

    iget-object v3, p0, Lcom/cmplay/h/a/a;->d:Lcom/cmplay/h/e;

    invoke-virtual {v3}, Lcom/cmplay/h/e;->f()I

    move-result v3

    invoke-static {v2, v3}, Lcom/cmplay/h/b;->a(II)I

    move-result v2

    .line 79
    invoke-static {}, Lcom/cmplay/h/f;->b()Lcom/cmplay/h/f;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v0, v1, v2, v4}, Lcom/cmplay/h/f;->a(IIII)V

    .line 80
    return-void
.end method
