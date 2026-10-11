.class public Lcom/cmplay/tile2/ui/a;
.super Landroid/widget/RelativeLayout;
.source "GameProblemLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/widget/Button;

.field private c:Landroid/widget/Button;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/TextView;

.field private h:I

.field private i:Z

.field private j:Lcom/cmplay/b/a;

.field private k:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/cmplay/b/a;)V
    .locals 6

    .prologue
    .line 71
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cmplay/tile2/ui/a;->i:Z

    .line 84
    new-instance v0, Lcom/cmplay/tile2/ui/a$1;

    invoke-direct {v0, p0}, Lcom/cmplay/tile2/ui/a$1;-><init>(Lcom/cmplay/tile2/ui/a;)V

    iput-object v0, p0, Lcom/cmplay/tile2/ui/a;->k:Landroid/content/BroadcastReceiver;

    .line 72
    iput-object p3, p0, Lcom/cmplay/tile2/ui/a;->j:Lcom/cmplay/b/a;

    .line 73
    iput p2, p0, Lcom/cmplay/tile2/ui/a;->h:I

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cmplay/tile2/ui/a;->i:Z

    .line 75
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 76
    iget-object v1, p0, Lcom/cmplay/tile2/ui/a;->k:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 77
    iput-object p1, p0, Lcom/cmplay/tile2/ui/a;->a:Landroid/content/Context;

    .line 78
    new-instance v0, Ljava/lang/Long;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x5265c00

    div-long/2addr v2, v4

    invoke-direct {v0, v2, v3}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    .line 79
    const-string v1, "key_gameproblem_lastshowtime"

    invoke-static {v1, v0}, Lcom/cmplay/util/aa;->a(Ljava/lang/String;I)V

    .line 80
    invoke-direct {p0}, Lcom/cmplay/tile2/ui/a;->a()V

    .line 81
    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 14

    .prologue
    .line 268
    sget-object v0, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmplay/util/t;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 269
    const/4 v0, 0x0

    .line 341
    :goto_0
    return-object v0

    .line 271
    :cond_0
    sget-object v0, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 272
    const/4 v0, 0x0

    goto :goto_0

    .line 274
    :cond_1
    new-instance v0, Ljava/lang/Long;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x5265c00

    div-long/2addr v2, v4

    invoke-direct {v0, v2, v3}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v5

    .line 275
    const-string v0, "key_gameproblem_lastshowtime"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/cmplay/util/aa;->b(Ljava/lang/String;I)I

    move-result v6

    .line 276
    invoke-static {}, Lcom/cmplay/util/NativeUtil;->getGameStartTimes()I

    move-result v0

    .line 277
    const/4 v1, 0x1

    if-gt v0, v1, :cond_4

    const/4 v0, 0x1

    .line 278
    :goto_1
    const-string v1, "key_gameproblem_mess_recommend"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/cmplay/util/aa;->b(Ljava/lang/String;I)I

    move-result v7

    .line 279
    const-string v1, "key_gameproblem_adshowed"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/cmplay/util/aa;->b(Ljava/lang/String;Z)Z

    move-result v8

    .line 280
    invoke-static {}, Lcom/cmplay/b/b;->a()Lcom/cmplay/b/b;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/cmplay/b/b;->a(I)Ljava/lang/String;

    move-result-object v2

    .line 281
    invoke-static {}, Lcom/cmplay/cloud/a;->a()Lcom/cmplay/cloud/a;

    move-result-object v1

    const/4 v3, 0x2

    const-string v4, "section_common"

    const-string v9, "cloud_key_gameproblem_homekey"

    const/4 v10, 0x1

    invoke-virtual {v1, v3, v4, v9, v10}, Lcom/cmplay/cloud/a;->a(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v9

    .line 283
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {}, Lcom/cmplay/tile2/GameApp;->a()J

    move-result-wide v12

    sub-long/2addr v10, v12

    const-wide/16 v12, 0x7530

    cmp-long v1, v10, v12

    if-ltz v1, :cond_5

    const/4 v1, 0x1

    move v4, v1

    .line 284
    :goto_2
    const/4 v1, 0x0

    .line 285
    if-eqz v2, :cond_2

    .line 288
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v1

    .line 292
    :goto_3
    if-nez v3, :cond_6

    .line 293
    const/4 v1, 0x0

    .line 299
    :cond_2
    :goto_4
    const-string v3, "exit"

    if-eq p0, v3, :cond_3

    const-string v3, "home"

    if-ne p0, v3, :cond_7

    if-eqz v9, :cond_7

    :cond_3
    if-eqz v1, :cond_7

    if-nez v0, :cond_7

    sub-int v3, v5, v6

    iget v10, v1, Lcom/cmplay/b/a;->f:I

    if-lt v3, v10, :cond_7

    if-eq v5, v7, :cond_7

    if-nez v8, :cond_7

    if-eqz v4, :cond_7

    move-object v0, v2

    .line 306
    goto/16 :goto_0

    .line 277
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 283
    :cond_5
    const/4 v1, 0x0

    move v4, v1

    goto :goto_2

    .line 289
    :catch_0
    move-exception v1

    .line 290
    const/4 v1, 0x0

    move-object v3, v1

    goto :goto_3

    .line 295
    :cond_6
    new-instance v1, Lcom/cmplay/b/a;

    invoke-direct {v1, v3}, Lcom/cmplay/b/a;-><init>(Lorg/json/JSONObject;)V

    goto :goto_4

    .line 310
    :cond_7
    const-string v2, ""

    .line 311
    const-string v3, "exit"

    if-ne p0, v3, :cond_9

    if-eqz v0, :cond_9

    .line 312
    const-string v0, "0"

    .line 334
    :cond_8
    :goto_5
    new-instance v2, Landroid/content/Intent;

    sget-object v3, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    const-class v4, Lcom/cmplay/tile2/ui/ReportService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 335
    const-string v3, "command_start_report"

    const-string v4, "command_start_gameproblem_disproble"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 336
    const-string v3, "command_start_gameproblem_errorcode"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 337
    const-string v3, "command_start_gameproblem_errortype"

    const-string v0, "exit"

    if-ne p0, v0, :cond_f

    const/4 v0, 0x2

    :goto_6
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 338
    const-string v3, "command_start_gameproblem_adtype"

    if-nez v1, :cond_10

    const-string v0, "all"

    :goto_7
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 339
    const-string v3, "command_start_gameproblem_abname"

    if-nez v1, :cond_11

    const/4 v0, 0x4

    :goto_8
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 340
    sget-object v0, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 341
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 313
    :cond_9
    const-string v3, "home"

    if-ne p0, v3, :cond_a

    if-eqz v0, :cond_a

    .line 314
    const-string v0, "0"

    goto :goto_5

    .line 315
    :cond_a
    if-nez v9, :cond_b

    const-string v0, "home"

    if-ne p0, v0, :cond_b

    .line 316
    const-string v0, "7"

    goto :goto_5

    .line 318
    :cond_b
    if-eqz v1, :cond_12

    sub-int v0, v5, v6

    iget v3, v1, Lcom/cmplay/b/a;->f:I

    if-ge v0, v3, :cond_12

    .line 319
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "2"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 321
    :goto_9
    if-ne v5, v7, :cond_c

    .line 322
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "4"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 324
    :cond_c
    if-eqz v8, :cond_d

    .line 325
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "5"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 327
    :cond_d
    if-nez v4, :cond_e

    .line 328
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "8"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 330
    :cond_e
    if-nez v1, :cond_8

    .line 331
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "9"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_5

    .line 337
    :cond_f
    const/4 v0, 0x3

    goto/16 :goto_6

    .line 338
    :cond_10
    iget-object v0, v1, Lcom/cmplay/b/a;->h:Ljava/lang/String;

    goto/16 :goto_7

    .line 339
    :cond_11
    iget v0, v1, Lcom/cmplay/b/a;->c:I

    goto/16 :goto_8

    :cond_12
    move-object v0, v2

    goto :goto_9
.end method

.method private a()V
    .locals 13

    .prologue
    const/high16 v12, 0x7f070000

    const/16 v11, 0x1e

    const/4 v6, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 100
    iget-object v0, p0, Lcom/cmplay/tile2/ui/a;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030001

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 101
    const v0, 0x7f080036

    invoke-virtual {p0, v0}, Lcom/cmplay/tile2/ui/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cmplay/tile2/ui/a;->b:Landroid/widget/Button;

    .line 102
    const v0, 0x7f080037

    invoke-virtual {p0, v0}, Lcom/cmplay/tile2/ui/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cmplay/tile2/ui/a;->c:Landroid/widget/Button;

    .line 103
    const v0, 0x7f080033

    invoke-virtual {p0, v0}, Lcom/cmplay/tile2/ui/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cmplay/tile2/ui/a;->d:Landroid/widget/TextView;

    .line 104
    const v0, 0x7f080032

    invoke-virtual {p0, v0}, Lcom/cmplay/tile2/ui/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cmplay/tile2/ui/a;->e:Landroid/widget/TextView;

    .line 105
    const v0, 0x7f08002f

    invoke-virtual {p0, v0}, Lcom/cmplay/tile2/ui/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cmplay/tile2/ui/a;->g:Landroid/widget/TextView;

    .line 106
    const v0, 0x7f080031

    invoke-virtual {p0, v0}, Lcom/cmplay/tile2/ui/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cmplay/tile2/ui/a;->f:Landroid/widget/ImageView;

    .line 107
    iget-object v0, p0, Lcom/cmplay/tile2/ui/a;->b:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    iget-object v0, p0, Lcom/cmplay/tile2/ui/a;->c:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    invoke-virtual {p0}, Lcom/cmplay/tile2/ui/a;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 110
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 111
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x14

    invoke-virtual {v0, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1e

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 112
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x10e

    invoke-virtual {v0, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1e

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v0, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 113
    iget-object v0, p0, Lcom/cmplay/tile2/ui/a;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 114
    invoke-virtual {v0, v6}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 115
    iget-object v4, p0, Lcom/cmplay/tile2/ui/a;->b:Landroid/widget/Button;

    iget-object v0, p0, Lcom/cmplay/tile2/ui/a;->j:Lcom/cmplay/b/a;

    iget-object v0, v0, Lcom/cmplay/b/a;->l:Ljava/lang/String;

    const-string v5, "||"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cmplay/tile2/ui/a;->j:Lcom/cmplay/b/a;

    iget-object v0, v0, Lcom/cmplay/b/a;->l:Ljava/lang/String;

    :goto_0
    invoke-virtual {v4, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v4, p0, Lcom/cmplay/tile2/ui/a;->c:Landroid/widget/Button;

    iget-object v0, p0, Lcom/cmplay/tile2/ui/a;->j:Lcom/cmplay/b/a;

    iget-object v0, v0, Lcom/cmplay/b/a;->l:Ljava/lang/String;

    const-string v5, "||"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/cmplay/tile2/ui/a;->j:Lcom/cmplay/b/a;

    iget-object v0, v0, Lcom/cmplay/b/a;->l:Ljava/lang/String;

    :goto_1
    invoke-virtual {v4, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 117
    iget-object v0, p0, Lcom/cmplay/tile2/ui/a;->j:Lcom/cmplay/b/a;

    iget-object v0, v0, Lcom/cmplay/b/a;->o:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 118
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 119
    const/16 v4, 0x140

    iput v4, v0, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 120
    iget-object v4, p0, Lcom/cmplay/tile2/ui/a;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v4, v0, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 121
    iput-boolean v6, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 122
    iget-object v4, p0, Lcom/cmplay/tile2/ui/a;->j:Lcom/cmplay/b/a;

    iget-object v4, v4, Lcom/cmplay/b/a;->o:Ljava/lang/String;

    invoke-static {v4, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 123
    if-eqz v0, :cond_3

    .line 124
    iget-object v4, p0, Lcom/cmplay/tile2/ui/a;->f:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 131
    :goto_2
    iget-object v0, p0, Lcom/cmplay/tile2/ui/a;->j:Lcom/cmplay/b/a;

    iget v0, v0, Lcom/cmplay/b/a;->c:I

    const/4 v4, 0x3

    if-ne v0, v4, :cond_7

    .line 132
    iget-object v0, p0, Lcom/cmplay/tile2/ui/a;->e:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/cmplay/tile2/ui/a;->j:Lcom/cmplay/b/a;

    iget-object v4, v4, Lcom/cmplay/b/a;->j:Ljava/lang/String;

    const-string v5, "&&"

    invoke-virtual {v4, v5, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "##"

    invoke-virtual {v4, v5, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    iget-object v0, p0, Lcom/cmplay/tile2/ui/a;->d:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/cmplay/tile2/ui/a;->j:Lcom/cmplay/b/a;

    iget-object v4, v4, Lcom/cmplay/b/a;->k:Ljava/lang/String;

    const-string v5, "##"

    invoke-virtual {v4, v5, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "&&"

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    iget-object v0, p0, Lcom/cmplay/tile2/ui/a;->g:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/cmplay/tile2/ui/a;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200c9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2, v9, v9, v9}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 136
    iget-object v0, p0, Lcom/cmplay/tile2/ui/a;->g:Landroid/widget/TextView;

    const v2, 0x7f05003a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    :cond_0
    :goto_3
    return-void

    .line 115
    :cond_1
    iget-object v0, p0, Lcom/cmplay/tile2/ui/a;->j:Lcom/cmplay/b/a;

    iget-object v0, v0, Lcom/cmplay/b/a;->l:Ljava/lang/String;

    const-string v5, "\\|\\|"

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v10

    goto/16 :goto_0

    .line 116
    :cond_2
    iget-object v0, p0, Lcom/cmplay/tile2/ui/a;->j:Lcom/cmplay/b/a;

    iget-object v0, v0, Lcom/cmplay/b/a;->l:Ljava/lang/String;

    const-string v5, "\\|\\|"

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v6

    goto/16 :goto_1

    .line 126
    :cond_3
    iget-object v4, p0, Lcom/cmplay/tile2/ui/a;->f:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/cmplay/tile2/ui/a;->j:Lcom/cmplay/b/a;

    iget v0, v0, Lcom/cmplay/b/a;->c:I

    const/4 v5, 0x3

    if-ne v0, v5, :cond_4

    const v0, 0x7f0200cc

    :goto_4
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    :cond_4
    const v0, 0x7f0200da

    goto :goto_4

    .line 129
    :cond_5
    iget-object v4, p0, Lcom/cmplay/tile2/ui/a;->f:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/cmplay/tile2/ui/a;->j:Lcom/cmplay/b/a;

    iget v0, v0, Lcom/cmplay/b/a;->c:I

    const/4 v5, 0x3

    if-ne v0, v5, :cond_6

    const v0, 0x7f0200cc

    :goto_5
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    :cond_6
    const v0, 0x7f0200da

    goto :goto_5

    .line 137
    :cond_7
    iget-object v0, p0, Lcom/cmplay/tile2/ui/a;->j:Lcom/cmplay/b/a;

    iget v0, v0, Lcom/cmplay/b/a;->c:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_8

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<img src=\'2130837809\'/><font color =#feb32b > x"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/cmplay/tile2/ui/a;->j:Lcom/cmplay/b/a;

    iget v4, v4, Lcom/cmplay/b/a;->d:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "</font>"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 139
    new-instance v4, Lcom/cmplay/tile2/ui/a$2;

    invoke-direct {v4, p0}, Lcom/cmplay/tile2/ui/a$2;-><init>(Lcom/cmplay/tile2/ui/a;)V

    .line 149
    iget-object v5, p0, Lcom/cmplay/tile2/ui/a;->e:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/cmplay/tile2/ui/a;->j:Lcom/cmplay/b/a;

    iget-object v6, v6, Lcom/cmplay/b/a;->j:Ljava/lang/String;

    const-string v7, "&&"

    invoke-virtual {v6, v7, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "##"

    invoke-virtual {v6, v7, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    iget-object v5, p0, Lcom/cmplay/tile2/ui/a;->e:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/cmplay/tile2/ui/a;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 151
    iget-object v5, p0, Lcom/cmplay/tile2/ui/a;->d:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/cmplay/tile2/ui/a;->j:Lcom/cmplay/b/a;

    iget-object v7, v7, Lcom/cmplay/b/a;->k:Ljava/lang/String;

    const-string v8, "##"

    invoke-virtual {v7, v8, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v7, "&&"

    invoke-virtual {v2, v7, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4, v9}, Landroid/text/Html;->fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    iget-object v0, p0, Lcom/cmplay/tile2/ui/a;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/cmplay/tile2/ui/a;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 153
    invoke-virtual {p0}, Lcom/cmplay/tile2/ui/a;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f020008

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 154
    invoke-static {v11}, Lcom/cmplay/util/e;->a(I)I

    move-result v2

    invoke-static {v11}, Lcom/cmplay/util/e;->a(I)I

    move-result v3

    invoke-virtual {v0, v10, v10, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 155
    iget-object v2, p0, Lcom/cmplay/tile2/ui/a;->g:Landroid/widget/TextView;

    invoke-virtual {v2, v0, v9, v9, v9}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 156
    iget-object v0, p0, Lcom/cmplay/tile2/ui/a;->g:Landroid/widget/TextView;

    const v2, 0x7f050026

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 157
    :cond_8
    iget-object v0, p0, Lcom/cmplay/tile2/ui/a;->j:Lcom/cmplay/b/a;

    iget v0, v0, Lcom/cmplay/b/a;->c:I

    if-ne v0, v6, :cond_0

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<img src=\'2130837689\'/><font color =#feb32b > x"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/cmplay/tile2/ui/a;->j:Lcom/cmplay/b/a;

    iget v4, v4, Lcom/cmplay/b/a;->d:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "</font>"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 159
    new-instance v4, Lcom/cmplay/tile2/ui/a$3;

    invoke-direct {v4, p0}, Lcom/cmplay/tile2/ui/a$3;-><init>(Lcom/cmplay/tile2/ui/a;)V

    .line 169
    iget-object v5, p0, Lcom/cmplay/tile2/ui/a;->e:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/cmplay/tile2/ui/a;->j:Lcom/cmplay/b/a;

    iget-object v6, v6, Lcom/cmplay/b/a;->j:Ljava/lang/String;

    const-string v7, "&&"

    invoke-virtual {v6, v7, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "##"

    invoke-virtual {v6, v7, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    iget-object v5, p0, Lcom/cmplay/tile2/ui/a;->e:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/cmplay/tile2/ui/a;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 171
    iget-object v5, p0, Lcom/cmplay/tile2/ui/a;->d:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/cmplay/tile2/ui/a;->j:Lcom/cmplay/b/a;

    iget-object v7, v7, Lcom/cmplay/b/a;->k:Ljava/lang/String;

    const-string v8, "##"

    invoke-virtual {v7, v8, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v7, "&&"

    invoke-virtual {v2, v7, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4, v9}, Landroid/text/Html;->fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    iget-object v0, p0, Lcom/cmplay/tile2/ui/a;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/cmplay/tile2/ui/a;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 173
    invoke-virtual {p0}, Lcom/cmplay/tile2/ui/a;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f020008

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 174
    invoke-static {v11}, Lcom/cmplay/util/e;->a(I)I

    move-result v2

    invoke-static {v11}, Lcom/cmplay/util/e;->a(I)I

    move-result v3

    invoke-virtual {v0, v10, v10, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 175
    iget-object v2, p0, Lcom/cmplay/tile2/ui/a;->g:Landroid/widget/TextView;

    invoke-virtual {v2, v0, v9, v9, v9}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 176
    iget-object v0, p0, Lcom/cmplay/tile2/ui/a;->g:Landroid/widget/TextView;

    const v2, 0x7f050026

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3
.end method

.method public static a(Landroid/content/Context;ILjava/lang/String;)V
    .locals 6

    .prologue
    .line 212
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 213
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/cmplay/tile2/ui/a$4;

    invoke-direct {v2, v0, p1, p2}, Lcom/cmplay/tile2/ui/a$4;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    const-wide/16 v4, 0x64

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 227
    return-void
.end method

.method static synthetic a(Lcom/cmplay/tile2/ui/a;)Z
    .locals 1

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/cmplay/tile2/ui/a;->i:Z

    return v0
.end method

.method static synthetic b(Lcom/cmplay/tile2/ui/a;)I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/cmplay/tile2/ui/a;->h:I

    return v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 243
    iget-object v0, p0, Lcom/cmplay/tile2/ui/a;->k:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 245
    :try_start_0
    iget-object v0, p0, Lcom/cmplay/tile2/ui/a;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/cmplay/tile2/ui/a;->k:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cmplay/tile2/ui/a;->k:Landroid/content/BroadcastReceiver;

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/cmplay/tile2/ui/a;->a:Landroid/content/Context;

    instance-of v0, v0, Lcom/cmplay/tile2/ui/GameProblemActivity;

    if-eqz v0, :cond_1

    .line 251
    iget-object v0, p0, Lcom/cmplay/tile2/ui/a;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 252
    const-string v0, "finish"

    const-string v1, "GameProblemActivity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :cond_1
    return-void

    .line 246
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic c(Lcom/cmplay/tile2/ui/a;)Lcom/cmplay/b/a;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/cmplay/tile2/ui/a;->j:Lcom/cmplay/b/a;

    return-object v0
.end method

.method static synthetic d(Lcom/cmplay/tile2/ui/a;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/cmplay/tile2/ui/a;->b()V

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 231
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 239
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 235
    :pswitch_0
    invoke-direct {p0}, Lcom/cmplay/tile2/ui/a;->b()V

    goto :goto_0

    .line 231
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x2

    .line 183
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 203
    :goto_0
    return-void

    .line 186
    :pswitch_0
    invoke-direct {p0}, Lcom/cmplay/tile2/ui/a;->b()V

    .line 187
    const-string v0, "1"

    iget v1, p0, Lcom/cmplay/tile2/ui/a;->h:I

    iget-object v2, p0, Lcom/cmplay/tile2/ui/a;->j:Lcom/cmplay/b/a;

    iget-object v2, v2, Lcom/cmplay/b/a;->h:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmplay/tile2/ui/a;->j:Lcom/cmplay/b/a;

    iget v3, v3, Lcom/cmplay/b/a;->c:I

    invoke-static {v0, v4, v1, v2, v3}, Lcom/cmplay/g/e;->a(Ljava/lang/String;IILjava/lang/String;I)V

    goto :goto_0

    .line 191
    :pswitch_1
    iget-object v0, p0, Lcom/cmplay/tile2/ui/a;->j:Lcom/cmplay/b/a;

    iget v0, v0, Lcom/cmplay/b/a;->n:I

    if-ne v0, v4, :cond_0

    .line 192
    iget-object v0, p0, Lcom/cmplay/tile2/ui/a;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/cmplay/tile2/ui/a;->j:Lcom/cmplay/b/a;

    iget-object v1, v1, Lcom/cmplay/b/a;->m:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/cmplay/util/e;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 196
    :goto_1
    iget-object v0, p0, Lcom/cmplay/tile2/ui/a;->j:Lcom/cmplay/b/a;

    invoke-virtual {v0}, Lcom/cmplay/b/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cmplay/util/NativeUtil;->setCardClick(Ljava/lang/String;)V

    .line 197
    invoke-direct {p0}, Lcom/cmplay/tile2/ui/a;->b()V

    .line 198
    const-string v0, "1"

    const/4 v1, 0x3

    iget v2, p0, Lcom/cmplay/tile2/ui/a;->h:I

    iget-object v3, p0, Lcom/cmplay/tile2/ui/a;->j:Lcom/cmplay/b/a;

    iget-object v3, v3, Lcom/cmplay/b/a;->h:Ljava/lang/String;

    iget-object v4, p0, Lcom/cmplay/tile2/ui/a;->j:Lcom/cmplay/b/a;

    iget v4, v4, Lcom/cmplay/b/a;->c:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/cmplay/g/e;->a(Ljava/lang/String;IILjava/lang/String;I)V

    goto :goto_0

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/cmplay/tile2/ui/a;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/cmplay/tile2/ui/a;->j:Lcom/cmplay/b/a;

    iget-object v1, v1, Lcom/cmplay/b/a;->m:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/cmplay/webview/ui/WebViewActivity;->a(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_1

    .line 183
    nop

    :pswitch_data_0
    .packed-switch 0x7f080036
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
