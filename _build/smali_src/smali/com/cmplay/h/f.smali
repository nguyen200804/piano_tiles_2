.class public Lcom/cmplay/h/f;
.super Ljava/lang/Object;
.source "ShareHelper.java"

# interfaces
.implements Lcom/cmplay/h/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmplay/h/f$a;,
        Lcom/cmplay/h/f$b;
    }
.end annotation


# static fields
.field private static e:Ljava/text/SimpleDateFormat;


# instance fields
.field private a:Lcom/cmplay/h/f$a;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cmplay/h/c;",
            ">;"
        }
    .end annotation
.end field

.field private c:J

.field private d:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1163
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/cmplay/h/f;->e:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cmplay/h/f;->b:Ljava/util/ArrayList;

    .line 50
    iput-wide v2, p0, Lcom/cmplay/h/f;->c:J

    .line 51
    iput-wide v2, p0, Lcom/cmplay/h/f;->d:J

    .line 1046
    return-void
.end method

.method private a(Landroid/app/Activity;)Z
    .locals 1

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/cmplay/h/f;->i()Z

    move-result v0

    if-nez v0, :cond_0

    .line 136
    const-string v0, "share_fb_have_no_network"

    invoke-static {v0}, Lcom/cmplay/util/NativeUtil;->getLanguageTextByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/cmplay/h/f;->b(Landroid/app/Activity;Ljava/lang/String;)V

    .line 137
    const/4 v0, 0x0

    .line 139
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private a(Landroid/app/Activity;Lcom/cmplay/h/a/c;Lcom/cmplay/h/e;)Z
    .locals 1

    .prologue
    .line 115
    invoke-virtual {p2}, Lcom/cmplay/h/a/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/cmplay/h/f;->a(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {p0}, Lcom/cmplay/h/f;->c()V

    .line 117
    invoke-virtual {p2, p3}, Lcom/cmplay/h/a/c;->a(Lcom/cmplay/h/e;)V

    .line 118
    invoke-virtual {p0, p2}, Lcom/cmplay/h/f;->a(Lcom/cmplay/h/c;)V

    .line 119
    const/4 v0, 0x1

    .line 121
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 143
    invoke-direct {p0}, Lcom/cmplay/h/f;->i()Z

    move-result v1

    if-nez v1, :cond_0

    .line 144
    const-string v1, "share_fb_have_no_network"

    invoke-static {v1}, Lcom/cmplay/util/NativeUtil;->getLanguageTextByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/cmplay/h/f;->b(Landroid/app/Activity;Ljava/lang/String;)V

    .line 151
    :goto_0
    return v0

    .line 147
    :cond_0
    invoke-virtual {p0, p2}, Lcom/cmplay/h/f;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 148
    const-string v1, "app_not_found"

    invoke-static {v1}, Lcom/cmplay/util/NativeUtil;->getLanguageTextByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/cmplay/h/f;->b(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 151
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static b()Lcom/cmplay/h/f;
    .locals 1

    .prologue
    .line 155
    sget-object v0, Lcom/cmplay/h/f$b;->a:Lcom/cmplay/h/f;

    return-object v0
.end method

.method private b(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 251
    new-instance v0, Lcom/cmplay/h/f$1;

    invoke-direct {v0, p0, p2}, Lcom/cmplay/h/f$1;-><init>(Lcom/cmplay/h/f;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 258
    return-void
.end method

.method public static h()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1170
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 1171
    sget-object v1, Lcom/cmplay/h/f;->e:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 1172
    return-object v0
.end method

.method private i()Z
    .locals 1

    .prologue
    .line 261
    sget-object v0, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmplay/util/t;->c(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a(I)V
    .locals 4

    .prologue
    .line 270
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 271
    const-string v1, "share_how_fast"

    invoke-static {v1}, Lcom/cmplay/util/NativeUtil;->getLanguageTextByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 272
    const/4 v2, 0x4

    .line 273
    new-instance v3, Lcom/cmplay/h/e;

    invoke-direct {v3}, Lcom/cmplay/h/e;-><init>()V

    .line 274
    invoke-virtual {v3, p1, v2}, Lcom/cmplay/h/e;->a(II)V

    .line 275
    invoke-virtual {v3, v1}, Lcom/cmplay/h/e;->b(Ljava/lang/String;)V

    .line 276
    invoke-virtual {p0, v0, v3}, Lcom/cmplay/h/f;->f(Landroid/app/Activity;Lcom/cmplay/h/e;)V

    .line 277
    return-void
.end method

.method public a(IIII)V
    .locals 4

    .prologue
    const/4 v1, 0x4

    const/4 v2, 0x3

    .line 1062
    const/4 v0, 0x0

    .line 1063
    const/16 v3, 0x258

    if-eq p1, v3, :cond_0

    const/16 v3, 0x259

    if-ne p1, v3, :cond_1

    .line 1066
    :cond_0
    sget-boolean v0, Lcom/cmplay/util/j;->a:Z

    if-eqz v0, :cond_4

    move v0, v1

    .line 1077
    :cond_1
    :goto_0
    const/16 v3, 0x3a2

    if-ne p1, v3, :cond_3

    const/16 v3, 0x189c

    if-ne p2, v3, :cond_3

    if-eq p4, v2, :cond_2

    if-eq p4, v1, :cond_2

    const/4 v1, 0x5

    if-ne p4, v1, :cond_3

    .line 1079
    :cond_2
    sget-boolean v1, Lcom/cmplay/tile2/ui/SongMixShareActivity;->a:Z

    if-eqz v1, :cond_5

    .line 1080
    const/16 p2, 0x18d0

    .line 1090
    :cond_3
    :goto_1
    invoke-static {p1, p2, p3, p4, v0}, Lcom/cmplay/util/NativeUtil;->reportShareData(IIIII)V

    .line 1091
    return-void

    :cond_4
    move v0, v2

    .line 1069
    goto :goto_0

    .line 1082
    :cond_5
    const/16 p2, 0x18cf

    goto :goto_1
.end method

.method public a(IILandroid/content/Intent;)V
    .locals 5

    .prologue
    .line 160
    iget-object v0, p0, Lcom/cmplay/h/f;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmplay/h/f;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 168
    :cond_0
    return-void

    .line 163
    :cond_1
    const-string v0, "MMM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ShareHelper onActivityResult size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/cmplay/h/f;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmplay/util/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lcom/cmplay/h/f;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmplay/h/c;

    .line 165
    const-string v2, "MMM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ShareHelper onActivityResult "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cmplay/util/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    invoke-interface {v0, p1, p2, p3}, Lcom/cmplay/h/c;->a(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public a(ILjava/lang/String;)V
    .locals 8

    .prologue
    const/4 v7, 0x7

    const/4 v4, 0x6

    const/4 v6, 0x1

    const/4 v5, 0x2

    const/4 v2, 0x0

    .line 711
    invoke-static {}, Lcom/cmplay/util/NativeUtil;->isNetworkAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 713
    const-string v0, "share_fb_have_no_network"

    invoke-static {v0}, Lcom/cmplay/util/NativeUtil;->getLanguageTextByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cmplay/util/NativeUtil;->toastTip(Ljava/lang/String;)V

    .line 714
    invoke-static {v5, v2}, Lcom/cmplay/util/NativeUtil;->shareCallbackOnGLThread(II)V

    .line 777
    :goto_0
    return-void

    .line 718
    :cond_0
    const/4 v0, 0x0

    .line 719
    if-eq v4, p1, :cond_1

    const/16 v1, 0x8

    if-ne v1, p1, :cond_5

    .line 720
    :cond_1
    invoke-static {}, Lcom/cmplay/a/c;->a()Lcom/cmplay/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmplay/a/c;->d()Ljava/util/List;

    move-result-object v0

    .line 729
    :cond_2
    :goto_1
    const/4 v1, -0x1

    .line 731
    invoke-static {}, Lcom/cmplay/a/c;->a()Lcom/cmplay/a/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cmplay/a/c;->c()Lcom/cmplay/a/e;

    move-result-object v3

    .line 732
    if-eqz v3, :cond_7

    .line 733
    invoke-virtual {v3}, Lcom/cmplay/a/e;->a()Ljava/lang/String;

    move-result-object v1

    .line 734
    invoke-static {}, Lcom/cmplay/a/c;->a()Lcom/cmplay/a/c;

    move-result-object v3

    invoke-virtual {v3, v1, v0}, Lcom/cmplay/a/c;->a(Ljava/lang/String;Ljava/util/List;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 746
    :goto_2
    if-ltz v1, :cond_8

    .line 747
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    move v3, v1

    move v1, v0

    .line 756
    :goto_3
    const/4 v0, 0x0

    .line 757
    if-eq v4, p1, :cond_3

    const/16 v4, 0x8

    if-ne v4, p1, :cond_9

    .line 758
    :cond_3
    const-string v0, "shareshow_text5"

    invoke-static {v0}, Lcom/cmplay/util/NativeUtil;->getLanguageTextByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v6

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 762
    :cond_4
    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "chmod 777 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/cmplay/util/e;->a(Ljava/lang/String;)Z

    .line 764
    new-instance v1, Lcom/cmplay/h/e;

    invoke-direct {v1}, Lcom/cmplay/h/e;-><init>()V

    .line 765
    invoke-virtual {v1, v0}, Lcom/cmplay/h/e;->b(Ljava/lang/String;)V

    .line 766
    invoke-virtual {v1, p2}, Lcom/cmplay/h/e;->c(Ljava/lang/String;)V

    .line 769
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 770
    invoke-static {}, Lcom/cmplay/util/NativeUtil;->isFacebookInstalled()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 771
    invoke-virtual {v1, v5, p1}, Lcom/cmplay/h/e;->a(II)V

    .line 772
    invoke-virtual {p0, v0, v1, v5}, Lcom/cmplay/h/f;->a(Landroid/app/Activity;Lcom/cmplay/h/e;I)Z

    goto/16 :goto_0

    .line 721
    :cond_5
    if-eq v7, p1, :cond_6

    const/16 v1, 0x9

    if-ne v1, p1, :cond_2

    .line 722
    :cond_6
    invoke-static {}, Lcom/cmplay/a/c;->a()Lcom/cmplay/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmplay/a/c;->e()Ljava/util/List;

    move-result-object v0

    goto/16 :goto_1

    .line 736
    :cond_7
    const-string v3, ""

    goto :goto_2

    :cond_8
    move v1, v2

    move v3, v2

    .line 750
    goto :goto_3

    .line 759
    :cond_9
    if-eq v7, p1, :cond_a

    const/16 v1, 0x9

    if-ne v1, p1, :cond_4

    .line 760
    :cond_a
    const-string v0, "shareshow_text4"

    invoke-static {v0}, Lcom/cmplay/util/NativeUtil;->getLanguageTextByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {}, Lcom/cmplay/util/NativeUtil;->getSongName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 775
    :cond_b
    const/4 v2, 0x5

    invoke-virtual {v1, v2, p1}, Lcom/cmplay/h/e;->a(II)V

    .line 776
    invoke-virtual {p0, v0, v1}, Lcom/cmplay/h/f;->e(Landroid/app/Activity;Lcom/cmplay/h/e;)V

    goto/16 :goto_0
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 819
    invoke-static {}, Lcom/cmplay/util/NativeUtil;->isNetworkAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 821
    const-string v0, "share_fb_have_no_network"

    invoke-static {v0}, Lcom/cmplay/util/NativeUtil;->getLanguageTextByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cmplay/util/NativeUtil;->toastTip(Ljava/lang/String;)V

    .line 822
    const/4 v0, 0x0

    invoke-static {v3, v0}, Lcom/cmplay/util/NativeUtil;->shareCallbackOnGLThread(II)V

    .line 841
    :goto_0
    return-void

    .line 826
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "chmod 777 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cmplay/util/e;->a(Ljava/lang/String;)Z

    .line 828
    new-instance v1, Lcom/cmplay/h/e;

    invoke-direct {v1}, Lcom/cmplay/h/e;-><init>()V

    .line 829
    invoke-virtual {v1, p3}, Lcom/cmplay/h/e;->b(Ljava/lang/String;)V

    .line 830
    invoke-virtual {v1, p2}, Lcom/cmplay/h/e;->c(Ljava/lang/String;)V

    .line 833
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 834
    invoke-static {}, Lcom/cmplay/util/NativeUtil;->isFacebookInstalled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 835
    invoke-virtual {v1, v3, p1}, Lcom/cmplay/h/e;->a(II)V

    .line 836
    invoke-virtual {p0, v0, v1, v3}, Lcom/cmplay/h/f;->a(Landroid/app/Activity;Lcom/cmplay/h/e;I)Z

    goto :goto_0

    .line 839
    :cond_1
    const/4 v2, 0x5

    invoke-virtual {v1, v2, p1}, Lcom/cmplay/h/e;->a(II)V

    .line 840
    invoke-virtual {p0, v0, v1}, Lcom/cmplay/h/f;->e(Landroid/app/Activity;Lcom/cmplay/h/e;)V

    goto :goto_0
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;J)V
    .locals 6

    .prologue
    .line 1102
    sget-object v0, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmplay/util/t;->a(Landroid/content/Context;)I

    move-result v4

    .line 1103
    invoke-static {p3}, Lcom/cmplay/util/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cmplay/util/t;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1109
    long-to-int v3, p4

    move v0, p1

    move-object v1, p2

    move-object v2, p3

    invoke-static/range {v0 .. v5}, Lcom/cmplay/util/NativeUtil;->reportHttpException(ILjava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    .line 1110
    return-void
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 916
    sget-object v0, Lcom/cmplay/webview/ui/WebViewActivity;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/cmplay/webview/ui/WebViewActivity;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 929
    :cond_0
    :goto_0
    return-void

    .line 919
    :cond_1
    sget-object v0, Lcom/cmplay/webview/ui/WebViewActivity;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 921
    new-instance v1, Lcom/cmplay/h/e;

    invoke-direct {v1}, Lcom/cmplay/h/e;-><init>()V

    .line 922
    invoke-virtual {v1, p2}, Lcom/cmplay/h/e;->d(Ljava/lang/String;)V

    .line 923
    invoke-virtual {v1, p3}, Lcom/cmplay/h/e;->b(Ljava/lang/String;)V

    .line 924
    invoke-virtual {v1, p4}, Lcom/cmplay/h/e;->e(Ljava/lang/String;)V

    .line 925
    invoke-virtual {v1, p5}, Lcom/cmplay/h/e;->a(Ljava/lang/String;)V

    .line 926
    invoke-virtual {v1, p1}, Lcom/cmplay/h/e;->c(I)V

    .line 927
    invoke-virtual {v1, v2}, Lcom/cmplay/h/e;->b(I)V

    .line 928
    invoke-virtual {p0, v0, v1, v2}, Lcom/cmplay/h/f;->a(Landroid/app/Activity;Lcom/cmplay/h/e;I)Z

    goto :goto_0
.end method

.method public a(J)V
    .locals 1

    .prologue
    .line 1157
    iput-wide p1, p0, Lcom/cmplay/h/f;->c:J

    .line 1158
    return-void
.end method

.method public a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 667
    invoke-static {}, Lcom/cmplay/util/NativeUtil;->isNetworkAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 669
    const-string v0, "share_fb_have_no_network"

    invoke-static {v0}, Lcom/cmplay/util/NativeUtil;->getLanguageTextByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cmplay/util/NativeUtil;->toastTip(Ljava/lang/String;)V

    .line 670
    const/4 v0, 0x0

    invoke-static {p5, v0}, Lcom/cmplay/util/NativeUtil;->shareCallbackOnGLThread(II)V

    .line 702
    :goto_0
    return-void

    .line 674
    :cond_0
    sput-object p2, Lcom/cmplay/h/d;->e:Ljava/lang/String;

    .line 676
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "chmod 777 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cmplay/util/e;->a(Ljava/lang/String;)Z

    .line 677
    const-string v0, "favorites_diy_share_txt2"

    invoke-static {v0}, Lcom/cmplay/util/NativeUtil;->getLanguageTextByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 679
    invoke-static {}, Lcom/cmplay/h/d;->c()I

    move-result v1

    .line 680
    new-instance v2, Lcom/cmplay/h/e;

    invoke-direct {v2}, Lcom/cmplay/h/e;-><init>()V

    .line 681
    invoke-virtual {v2, v0}, Lcom/cmplay/h/e;->b(Ljava/lang/String;)V

    .line 682
    invoke-virtual {v2, p4}, Lcom/cmplay/h/e;->c(Ljava/lang/String;)V

    .line 683
    invoke-virtual {v2, v1}, Lcom/cmplay/h/e;->c(I)V

    .line 686
    const-string v0, "song_mix"

    invoke-static {v0}, Lcom/cmplay/util/j;->a(Ljava/lang/String;)V

    .line 689
    invoke-static {}, Lcom/cmplay/util/NativeUtil;->isFacebookInstalled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 690
    invoke-virtual {v2, v3, v1}, Lcom/cmplay/h/e;->a(II)V

    .line 691
    invoke-virtual {p0, p1, v2, v3}, Lcom/cmplay/h/f;->a(Landroid/app/Activity;Lcom/cmplay/h/e;I)Z

    goto :goto_0

    .line 694
    :cond_1
    invoke-static {}, Lcom/cmplay/util/NativeUtil;->isWeChatInstalled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 695
    const/4 v0, 0x6

    invoke-virtual {v2, v0, v1}, Lcom/cmplay/h/e;->a(II)V

    .line 696
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lcom/cmplay/h/e;->c(Ljava/lang/String;)V

    .line 697
    invoke-virtual {p0, p1, v2}, Lcom/cmplay/h/f;->c(Landroid/app/Activity;Lcom/cmplay/h/e;)Z

    goto :goto_0

    .line 700
    :cond_2
    const/4 v0, 0x5

    invoke-virtual {v2, v0, v1}, Lcom/cmplay/h/e;->a(II)V

    .line 701
    invoke-virtual {p0, p1, v2}, Lcom/cmplay/h/f;->e(Landroid/app/Activity;Lcom/cmplay/h/e;)V

    goto :goto_0
.end method

.method public a(Lcom/cmplay/h/c;)V
    .locals 3

    .prologue
    .line 189
    const-string v0, "MMM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ShareHelper registerActivityResult abc "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmplay/util/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcom/cmplay/h/f;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/cmplay/h/f;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    const-string v0, "MMM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ShareHelper registerActivityResult add "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmplay/util/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    const-string v0, "MMM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ShareHelper after registerActivityResult size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/cmplay/h/f;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmplay/util/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    :goto_0
    return-void

    .line 196
    :cond_0
    const/4 v1, 0x0

    .line 197
    iget-object v0, p0, Lcom/cmplay/h/f;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmplay/h/c;

    .line 198
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 199
    const/4 v0, 0x1

    .line 203
    :goto_1
    if-nez v0, :cond_2

    .line 204
    const-string v0, "MMM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ShareHelper registerActivityResult add "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmplay/util/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    iget-object v0, p0, Lcom/cmplay/h/f;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 209
    :goto_2
    const-string v0, "MMM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ShareHelper after registerActivityResult size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/cmplay/h/f;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmplay/util/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 207
    :cond_2
    const-string v0, "MMM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ShareHelper registerActivityResult exist,not add"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmplay/util/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public a(Lcom/cmplay/h/f$a;)V
    .locals 0

    .prologue
    .line 1051
    iput-object p1, p0, Lcom/cmplay/h/f;->a:Lcom/cmplay/h/f$a;

    .line 1052
    return-void
.end method

.method public a(Ljava/lang/String;ILjava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v2, 0x0

    .line 613
    invoke-static {}, Lcom/cmplay/util/NativeUtil;->isNetworkAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 615
    const-string v0, "share_fb_have_no_network"

    invoke-static {v0}, Lcom/cmplay/util/NativeUtil;->getLanguageTextByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cmplay/util/NativeUtil;->toastTip(Ljava/lang/String;)V

    .line 616
    invoke-static {p2, v2}, Lcom/cmplay/util/NativeUtil;->shareCallbackOnGLThread(II)V

    .line 658
    :goto_0
    return-void

    .line 620
    :cond_0
    invoke-static {}, Lcom/cmplay/util/NativeUtil;->getSongName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cmplay/h/d;->e:Ljava/lang/String;

    .line 621
    invoke-static {}, Lcom/cmplay/util/NativeUtil;->getScore()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cmplay/h/d;->f:Ljava/lang/String;

    .line 623
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "chmod 777 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cmplay/util/e;->a(Ljava/lang/String;)Z

    .line 625
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 626
    const-string v0, "share_valentine_fb_name"

    invoke-static {v0}, Lcom/cmplay/util/NativeUtil;->getLanguageTextByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 634
    :goto_1
    invoke-static {}, Lcom/cmplay/h/d;->c()I

    move-result v1

    .line 635
    new-instance v2, Lcom/cmplay/h/e;

    invoke-direct {v2}, Lcom/cmplay/h/e;-><init>()V

    .line 636
    invoke-virtual {v2, v0}, Lcom/cmplay/h/e;->b(Ljava/lang/String;)V

    .line 637
    invoke-virtual {v2, p1}, Lcom/cmplay/h/e;->c(Ljava/lang/String;)V

    .line 638
    invoke-virtual {v2, v1}, Lcom/cmplay/h/e;->c(I)V

    .line 641
    invoke-static {v5}, Lcom/cmplay/util/j;->a(Ljava/lang/String;)V

    .line 644
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 645
    invoke-static {}, Lcom/cmplay/util/NativeUtil;->isFacebookInstalled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 646
    invoke-virtual {v2, v4, v1}, Lcom/cmplay/h/e;->a(II)V

    .line 647
    invoke-virtual {p0, v0, v2, v4}, Lcom/cmplay/h/f;->a(Landroid/app/Activity;Lcom/cmplay/h/e;I)Z

    goto :goto_0

    .line 628
    :cond_1
    const-string v0, "share_valentine_fb"

    invoke-static {v0}, Lcom/cmplay/util/NativeUtil;->getLanguageTextByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 650
    :cond_2
    invoke-static {}, Lcom/cmplay/util/NativeUtil;->isWeChatInstalled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 651
    const/4 v3, 0x6

    invoke-virtual {v2, v3, v1}, Lcom/cmplay/h/e;->a(II)V

    .line 652
    invoke-virtual {v2, v5}, Lcom/cmplay/h/e;->c(Ljava/lang/String;)V

    .line 653
    invoke-virtual {p0, v0, v2}, Lcom/cmplay/h/f;->c(Landroid/app/Activity;Lcom/cmplay/h/e;)Z

    goto :goto_0

    .line 656
    :cond_3
    const/4 v3, 0x5

    invoke-virtual {v2, v3, v1}, Lcom/cmplay/h/e;->a(II)V

    .line 657
    invoke-virtual {p0, v0, v2}, Lcom/cmplay/h/f;->e(Landroid/app/Activity;Lcom/cmplay/h/e;)V

    goto/16 :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 1122
    invoke-static {p1, p2, p3}, Lcom/cmplay/util/NativeUtil;->reportMessagePush(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1123
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 9

    .prologue
    const/4 v8, 0x5

    const/4 v2, 0x0

    const/4 v7, 0x2

    const/4 v3, 0x0

    const/4 v6, 0x1

    .line 287
    invoke-static {}, Lcom/cmplay/util/NativeUtil;->isNetworkAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 289
    const-string v0, "share_fb_have_no_network"

    invoke-static {v0}, Lcom/cmplay/util/NativeUtil;->getLanguageTextByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cmplay/util/NativeUtil;->toastTip(Ljava/lang/String;)V

    .line 290
    invoke-static {p4, v3}, Lcom/cmplay/util/NativeUtil;->shareCallbackOnGLThread(II)V

    .line 441
    :cond_0
    :goto_0
    return-void

    .line 294
    :cond_1
    sput-object p2, Lcom/cmplay/h/d;->e:Ljava/lang/String;

    .line 295
    sput-object p1, Lcom/cmplay/h/d;->f:Ljava/lang/String;

    .line 298
    sget v0, Lcom/cmplay/h/d;->n:I

    if-ne v6, v0, :cond_a

    .line 299
    sget v0, Lcom/cmplay/h/d;->m:I

    packed-switch v0, :pswitch_data_0

    :cond_2
    move-object v0, v2

    .line 371
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "chmod 777 "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/cmplay/util/e;->a(Ljava/lang/String;)Z

    .line 373
    invoke-static {}, Lcom/cmplay/h/d;->c()I

    move-result v1

    .line 374
    new-instance v3, Lcom/cmplay/h/e;

    invoke-direct {v3}, Lcom/cmplay/h/e;-><init>()V

    .line 375
    invoke-virtual {v3, v0}, Lcom/cmplay/h/e;->b(Ljava/lang/String;)V

    .line 376
    invoke-virtual {v3, p3}, Lcom/cmplay/h/e;->c(Ljava/lang/String;)V

    .line 377
    invoke-virtual {v3, v1}, Lcom/cmplay/h/e;->c(I)V

    .line 379
    sget v0, Lcom/cmplay/h/d;->n:I

    if-ne v6, v0, :cond_d

    .line 385
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 386
    invoke-static {}, Lcom/cmplay/util/NativeUtil;->isFacebookInstalled()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 387
    invoke-virtual {v3, v7, v1}, Lcom/cmplay/h/e;->a(II)V

    .line 388
    invoke-virtual {p0, v0, v3, v7}, Lcom/cmplay/h/f;->a(Landroid/app/Activity;Lcom/cmplay/h/e;I)Z

    goto :goto_0

    .line 301
    :pswitch_0
    invoke-static {}, Lcom/cmplay/util/i;->e()I

    move-result v1

    .line 303
    const/4 v0, 0x3

    if-gt v1, v0, :cond_3

    .line 304
    const-string v0, "shareshow_text1_star"

    invoke-static {v0}, Lcom/cmplay/util/NativeUtil;->getLanguageTextByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 309
    :goto_2
    const-string v4, "shareshow_text1_main"

    invoke-static {v4}, Lcom/cmplay/util/NativeUtil;->getLanguageTextByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    aput-object p2, v5, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 306
    :cond_3
    add-int/lit8 v1, v1, -0x3

    .line 307
    const-string v0, "shareshow_text1_crown"

    invoke-static {v0}, Lcom/cmplay/util/NativeUtil;->getLanguageTextByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 314
    :pswitch_1
    :try_start_0
    invoke-static {}, Lcom/cmplay/util/NativeUtil;->getHallLevel()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 316
    :goto_3
    const/16 v1, 0x10

    if-ne v0, v1, :cond_5

    .line 320
    :try_start_1
    sget-object v0, Lcom/cmplay/h/d;->f:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    .line 323
    :goto_4
    if-ne v0, v6, :cond_4

    .line 324
    const-string v0, "jd_world_tile1"

    invoke-static {v0}, Lcom/cmplay/util/NativeUtil;->getLanguageTextByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 328
    :goto_5
    const-string v1, "shareshow_jd_main"

    invoke-static {v1}, Lcom/cmplay/util/NativeUtil;->getLanguageTextByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v4, v7, [Ljava/lang/Object;

    aput-object p1, v4, v3

    aput-object v0, v4, v6

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 315
    :catch_0
    move-exception v0

    move v0, v3

    goto :goto_3

    .line 321
    :catch_1
    move-exception v0

    move v0, v3

    goto :goto_4

    .line 326
    :cond_4
    const-string v0, "jd_world_tile2"

    invoke-static {v0}, Lcom/cmplay/util/NativeUtil;->getLanguageTextByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 331
    :cond_5
    const/high16 v0, 0x42480000    # 50.0f

    sget v1, Lcom/cmplay/h/d;->o:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_6

    .line 332
    const-string v0, "shareshow_text2_main"

    invoke-static {v0}, Lcom/cmplay/util/NativeUtil;->getLanguageTextByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget v5, Lcom/cmplay/h/d;->o:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 334
    :cond_6
    const-string v0, "shareshow_text3_main"

    invoke-static {v0}, Lcom/cmplay/util/NativeUtil;->getLanguageTextByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Object;

    aput-object p1, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 339
    :pswitch_2
    invoke-static {}, Lcom/cmplay/util/NativeUtil;->getRanking()I

    move-result v0

    .line 340
    if-lez v0, :cond_7

    .line 341
    const-string v1, "master_sharerank"

    invoke-static {v1}, Lcom/cmplay/util/NativeUtil;->getLanguageTextByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v3

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 343
    :cond_7
    const-string v0, "master_sharespeed"

    invoke-static {v0}, Lcom/cmplay/util/NativeUtil;->getLanguageTextByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Object;

    aput-object p1, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 347
    :pswitch_3
    invoke-static {}, Lcom/cmplay/util/NativeUtil;->getChallengeStatus()I

    move-result v0

    if-ne v6, v0, :cond_8

    .line 348
    const-string v0, "share_xmas_map"

    invoke-static {v0}, Lcom/cmplay/util/NativeUtil;->getLanguageTextByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {}, Lcom/cmplay/util/NativeUtil;->getChallengeLevel()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 350
    :cond_8
    const-string v0, "share_xmas_map_fail"

    invoke-static {v0}, Lcom/cmplay/util/NativeUtil;->getLanguageTextByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {}, Lcom/cmplay/util/NativeUtil;->getChallengeLevel()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 355
    :pswitch_4
    invoke-static {}, Lcom/cmplay/util/NativeUtil;->getChallengeStatus()I

    move-result v0

    if-ne v6, v0, :cond_9

    .line 356
    const-string v0, "share_newyear_map"

    invoke-static {v0}, Lcom/cmplay/util/NativeUtil;->getLanguageTextByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {}, Lcom/cmplay/util/NativeUtil;->getChallengeLevel()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 358
    :cond_9
    const-string v0, "share_newyear_map_fail"

    invoke-static {v0}, Lcom/cmplay/util/NativeUtil;->getLanguageTextByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {}, Lcom/cmplay/util/NativeUtil;->getChallengeLevel()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 364
    :cond_a
    sget v0, Lcom/cmplay/h/d;->n:I

    if-nez v0, :cond_2

    .line 365
    const-string v0, "share_msg"

    invoke-static {v0}, Lcom/cmplay/util/NativeUtil;->getLanguageTextByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Object;

    aput-object p2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 391
    :cond_b
    invoke-static {}, Lcom/cmplay/util/NativeUtil;->isWeChatInstalled()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 392
    const/4 v2, 0x7

    invoke-virtual {v3, v2, v1}, Lcom/cmplay/h/e;->a(II)V

    .line 393
    invoke-virtual {p0, v0, v3}, Lcom/cmplay/h/f;->d(Landroid/app/Activity;Lcom/cmplay/h/e;)Z

    goto/16 :goto_0

    .line 401
    :cond_c
    invoke-virtual {v3, v8, v1}, Lcom/cmplay/h/e;->a(II)V

    .line 402
    invoke-virtual {p0, v0, v3}, Lcom/cmplay/h/f;->e(Landroid/app/Activity;Lcom/cmplay/h/e;)V

    goto/16 :goto_0

    .line 404
    :cond_d
    sget v0, Lcom/cmplay/h/d;->n:I

    if-nez v0, :cond_0

    .line 415
    invoke-static {v2}, Lcom/cmplay/util/j;->a(Ljava/lang/String;)V

    .line 418
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 419
    invoke-static {}, Lcom/cmplay/util/NativeUtil;->isFacebookInstalled()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 420
    invoke-virtual {v3, v7, v1}, Lcom/cmplay/h/e;->a(II)V

    .line 421
    invoke-virtual {p0, v0, v3, v7}, Lcom/cmplay/h/f;->a(Landroid/app/Activity;Lcom/cmplay/h/e;I)Z

    goto/16 :goto_0

    .line 424
    :cond_e
    invoke-static {}, Lcom/cmplay/util/NativeUtil;->isWeChatInstalled()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 425
    const/4 v4, 0x7

    invoke-virtual {v3, v4, v1}, Lcom/cmplay/h/e;->a(II)V

    .line 426
    invoke-virtual {v3, v2}, Lcom/cmplay/h/e;->c(Ljava/lang/String;)V

    .line 427
    invoke-virtual {p0, v0, v3}, Lcom/cmplay/h/f;->d(Landroid/app/Activity;Lcom/cmplay/h/e;)Z

    goto/16 :goto_0

    .line 430
    :cond_f
    invoke-virtual {v3, v8, v1}, Lcom/cmplay/h/e;->a(II)V

    .line 431
    invoke-virtual {v3, v2}, Lcom/cmplay/h/e;->c(Ljava/lang/String;)V

    .line 432
    invoke-virtual {p0, v0, v3}, Lcom/cmplay/h/f;->e(Landroid/app/Activity;Lcom/cmplay/h/e;)V

    .line 435
    sget-boolean v0, Lcom/cmplay/h/d;->k:Z

    if-eqz v0, :cond_10

    .line 436
    invoke-static {}, Lcom/cmplay/h/b;->a()Lcom/cmplay/h/b;

    move-result-object v0

    const-string v1, "at_upload_img_finish"

    invoke-virtual {v0, v1}, Lcom/cmplay/h/b;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 438
    :cond_10
    invoke-static {}, Lcom/cmplay/h/b;->a()Lcom/cmplay/h/b;

    move-result-object v0

    const-string v1, "at_upload_img_not_finish"

    invoke-virtual {v0, v1}, Lcom/cmplay/h/b;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 299
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public a()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 58
    const-string v1, "com.cmplay.tiles4_cn.wxapi.WechatHelper"

    .line 60
    :try_start_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 61
    const-string v2, "getInstance"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 62
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3

    .line 63
    const/4 v0, 0x1

    .line 73
    :goto_0
    return v0

    .line 64
    :catch_0
    move-exception v1

    .line 65
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 66
    :catch_1
    move-exception v1

    .line 67
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    .line 68
    :catch_2
    move-exception v1

    .line 69
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    .line 70
    :catch_3
    move-exception v1

    .line 71
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0
.end method

.method public a(Landroid/app/Activity;Lcom/cmplay/h/e;)Z
    .locals 2

    .prologue
    .line 89
    new-instance v0, Lcom/cmplay/h/a/b;

    const/4 v1, 0x3

    invoke-direct {v0, p1, v1}, Lcom/cmplay/h/a/b;-><init>(Landroid/app/Activity;I)V

    .line 90
    invoke-direct {p0, p1, v0, p2}, Lcom/cmplay/h/f;->a(Landroid/app/Activity;Lcom/cmplay/h/a/c;Lcom/cmplay/h/e;)Z

    move-result v0

    return v0
.end method

.method public a(Landroid/app/Activity;Lcom/cmplay/h/e;I)Z
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/cmplay/h/f;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {p0}, Lcom/cmplay/h/f;->c()V

    .line 80
    new-instance v0, Lcom/cmplay/h/a/b;

    invoke-direct {v0, p1, p3}, Lcom/cmplay/h/a/b;-><init>(Landroid/app/Activity;I)V

    .line 81
    invoke-virtual {p0, v0}, Lcom/cmplay/h/f;->a(Lcom/cmplay/h/c;)V

    .line 82
    invoke-virtual {v0, p2}, Lcom/cmplay/h/a/b;->a(Lcom/cmplay/h/e;)V

    .line 83
    const/4 v0, 0x1

    .line 85
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 171
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    :goto_0
    return v1

    .line 173
    :cond_0
    const/4 v0, 0x1

    .line 175
    :try_start_0
    sget-object v2, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x100

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move v1, v0

    .line 180
    goto :goto_0

    .line 176
    :catch_0
    move-exception v0

    move v0, v1

    .line 178
    goto :goto_1
.end method

.method public b(IIII)V
    .locals 0

    .prologue
    .line 1136
    invoke-static {p1, p2, p3, p4}, Lcom/cmplay/util/NativeUtil;->reportWhitetile2Class(IIII)V

    .line 1137
    return-void
.end method

.method public b(ILjava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 786
    invoke-static {}, Lcom/cmplay/util/NativeUtil;->isNetworkAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 788
    const-string v0, "share_fb_have_no_network"

    invoke-static {v0}, Lcom/cmplay/util/NativeUtil;->getLanguageTextByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cmplay/util/NativeUtil;->toastTip(Ljava/lang/String;)V

    .line 789
    const/4 v0, 0x0

    invoke-static {v3, v0}, Lcom/cmplay/util/NativeUtil;->shareCallbackOnGLThread(II)V

    .line 809
    :goto_0
    return-void

    .line 793
    :cond_0
    const-string v0, " "

    .line 794
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "chmod 777 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/cmplay/util/e;->a(Ljava/lang/String;)Z

    .line 796
    new-instance v1, Lcom/cmplay/h/e;

    invoke-direct {v1}, Lcom/cmplay/h/e;-><init>()V

    .line 797
    invoke-virtual {v1, v0}, Lcom/cmplay/h/e;->b(Ljava/lang/String;)V

    .line 798
    invoke-virtual {v1, p2}, Lcom/cmplay/h/e;->c(Ljava/lang/String;)V

    .line 801
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 802
    invoke-static {}, Lcom/cmplay/util/NativeUtil;->isFacebookInstalled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 803
    invoke-virtual {v1, v3, p1}, Lcom/cmplay/h/e;->a(II)V

    .line 804
    invoke-virtual {p0, v0, v1, v3}, Lcom/cmplay/h/f;->a(Landroid/app/Activity;Lcom/cmplay/h/e;I)Z

    goto :goto_0

    .line 807
    :cond_1
    const/4 v2, 0x5

    invoke-virtual {v1, v2, p1}, Lcom/cmplay/h/e;->a(II)V

    .line 808
    invoke-virtual {p0, v0, v1}, Lcom/cmplay/h/f;->e(Landroid/app/Activity;Lcom/cmplay/h/e;)V

    goto :goto_0
.end method

.method public b(ILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 851
    invoke-static {}, Lcom/cmplay/util/NativeUtil;->isNetworkAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 853
    const-string v0, "share_fb_have_no_network"

    invoke-static {v0}, Lcom/cmplay/util/NativeUtil;->getLanguageTextByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cmplay/util/NativeUtil;->toastTip(Ljava/lang/String;)V

    .line 854
    const/4 v0, 0x0

    invoke-static {v3, v0}, Lcom/cmplay/util/NativeUtil;->shareCallbackOnGLThread(II)V

    .line 874
    :goto_0
    return-void

    .line 858
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "chmod 777 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cmplay/util/e;->a(Ljava/lang/String;)Z

    .line 860
    new-instance v1, Lcom/cmplay/h/e;

    invoke-direct {v1}, Lcom/cmplay/h/e;-><init>()V

    .line 861
    invoke-virtual {v1, p3}, Lcom/cmplay/h/e;->b(Ljava/lang/String;)V

    .line 862
    invoke-virtual {v1, p2}, Lcom/cmplay/h/e;->c(Ljava/lang/String;)V

    .line 865
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 866
    invoke-static {}, Lcom/cmplay/util/NativeUtil;->isFacebookInstalled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 867
    invoke-virtual {v1, v3, p1}, Lcom/cmplay/h/e;->a(II)V

    .line 868
    invoke-virtual {v1, v3}, Lcom/cmplay/h/e;->d(I)V

    .line 869
    invoke-virtual {p0, v0, v1, v3}, Lcom/cmplay/h/f;->a(Landroid/app/Activity;Lcom/cmplay/h/e;I)Z

    goto :goto_0

    .line 872
    :cond_1
    const/4 v2, 0x5

    invoke-virtual {v1, v2, p1}, Lcom/cmplay/h/e;->a(II)V

    .line 873
    invoke-virtual {p0, v0, v1}, Lcom/cmplay/h/f;->e(Landroid/app/Activity;Lcom/cmplay/h/e;)V

    goto :goto_0
.end method

.method public b(Lcom/cmplay/h/c;)V
    .locals 4

    .prologue
    .line 218
    iget-object v0, p0, Lcom/cmplay/h/f;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 243
    :goto_0
    return-void

    .line 221
    :cond_0
    const-string v0, "MMM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ShareHelper unRegisterActivityResult "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmplay/util/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    const-string v0, "MMM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ShareHelper before unRegisterActivityResult size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/cmplay/h/f;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmplay/util/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    const/4 v2, -0x1

    .line 224
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/cmplay/h/f;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 225
    iget-object v0, p0, Lcom/cmplay/h/f;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmplay/h/c;

    .line 226
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 228
    const-string v0, "MMM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ShareHelper unRegisterActivityResult remove"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/cmplay/util/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    :goto_2
    if-ltz v1, :cond_1

    .line 233
    iget-object v0, p0, Lcom/cmplay/h/f;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 242
    :cond_1
    const-string v0, "MMM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ShareHelper after unRegisterActivityResult size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/cmplay/h/f;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmplay/util/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 224
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 455
    invoke-static {}, Lcom/cmplay/util/NativeUtil;->isNetworkAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 457
    const-string v0, "share_fb_have_no_network"

    invoke-static {v0}, Lcom/cmplay/util/NativeUtil;->getLanguageTextByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cmplay/util/NativeUtil;->toastTip(Ljava/lang/String;)V

    .line 458
    invoke-static {p4, v2}, Lcom/cmplay/util/NativeUtil;->shareCallbackOnGLThread(II)V

    .line 496
    :goto_0
    return-void

    .line 462
    :cond_0
    sput-object p2, Lcom/cmplay/h/d;->e:Ljava/lang/String;

    .line 463
    sput-object p1, Lcom/cmplay/h/d;->f:Ljava/lang/String;

    .line 465
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "chmod 777 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cmplay/util/e;->a(Ljava/lang/String;)Z

    .line 466
    const-string v0, "share_msg"

    invoke-static {v0}, Lcom/cmplay/util/NativeUtil;->getLanguageTextByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 471
    invoke-static {}, Lcom/cmplay/h/d;->c()I

    move-result v1

    .line 472
    new-instance v2, Lcom/cmplay/h/e;

    invoke-direct {v2}, Lcom/cmplay/h/e;-><init>()V

    .line 473
    invoke-virtual {v2, v0}, Lcom/cmplay/h/e;->b(Ljava/lang/String;)V

    .line 474
    invoke-virtual {v2, p3}, Lcom/cmplay/h/e;->c(Ljava/lang/String;)V

    .line 475
    invoke-virtual {v2, v1}, Lcom/cmplay/h/e;->c(I)V

    .line 478
    invoke-static {v4}, Lcom/cmplay/util/j;->a(Ljava/lang/String;)V

    .line 481
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 482
    invoke-static {}, Lcom/cmplay/util/NativeUtil;->isFacebookInstalled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 483
    invoke-virtual {v2, v5, v1}, Lcom/cmplay/h/e;->a(II)V

    .line 484
    invoke-virtual {p0, v0, v2, v5}, Lcom/cmplay/h/f;->a(Landroid/app/Activity;Lcom/cmplay/h/e;I)Z

    goto :goto_0

    .line 487
    :cond_1
    invoke-static {}, Lcom/cmplay/util/NativeUtil;->isWeChatInstalled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 488
    const/4 v3, 0x7

    invoke-virtual {v2, v3, v1}, Lcom/cmplay/h/e;->a(II)V

    .line 489
    invoke-virtual {v2, v4}, Lcom/cmplay/h/e;->c(Ljava/lang/String;)V

    .line 490
    invoke-virtual {p0, v0, v2}, Lcom/cmplay/h/f;->d(Landroid/app/Activity;Lcom/cmplay/h/e;)Z

    goto :goto_0

    .line 493
    :cond_2
    const/4 v3, 0x5

    invoke-virtual {v2, v3, v1}, Lcom/cmplay/h/e;->a(II)V

    .line 494
    invoke-virtual {v2, v4}, Lcom/cmplay/h/e;->c(Ljava/lang/String;)V

    .line 495
    invoke-virtual {p0, v0, v2}, Lcom/cmplay/h/f;->e(Landroid/app/Activity;Lcom/cmplay/h/e;)V

    goto :goto_0
.end method

.method public b(I)Z
    .locals 2

    .prologue
    .line 969
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 970
    new-instance v1, Lcom/cmplay/h/f$3;

    invoke-direct {v1, p0, p1, v0}, Lcom/cmplay/h/f$3;-><init>(Lcom/cmplay/h/f;ILandroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 998
    const/4 v0, 0x1

    return v0
.end method

.method public b(Landroid/app/Activity;Lcom/cmplay/h/e;)Z
    .locals 1

    .prologue
    .line 94
    new-instance v0, Lcom/cmplay/h/a/d;

    invoke-direct {v0, p1}, Lcom/cmplay/h/a/d;-><init>(Landroid/content/Context;)V

    .line 95
    invoke-direct {p0, p1, v0, p2}, Lcom/cmplay/h/f;->a(Landroid/app/Activity;Lcom/cmplay/h/a/c;Lcom/cmplay/h/e;)Z

    move-result v0

    return v0
.end method

.method public c()V
    .locals 2

    .prologue
    .line 246
    iget-object v0, p0, Lcom/cmplay/h/f;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 247
    const-string v0, "MMM"

    const-string v1, "ShareHelper mActivityResultList destory "

    invoke-static {v0, v1}, Lcom/cmplay/util/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    return-void
.end method

.method public c(ILjava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 883
    invoke-static {}, Lcom/cmplay/util/NativeUtil;->isNetworkAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 885
    const-string v0, "share_fb_have_no_network"

    invoke-static {v0}, Lcom/cmplay/util/NativeUtil;->getLanguageTextByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cmplay/util/NativeUtil;->toastTip(Ljava/lang/String;)V

    .line 886
    const/4 v0, 0x0

    invoke-static {v3, v0}, Lcom/cmplay/util/NativeUtil;->shareCallbackOnGLThread(II)V

    .line 906
    :goto_0
    return-void

    .line 890
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "chmod 777 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cmplay/util/e;->a(Ljava/lang/String;)Z

    .line 892
    const-string v0, "share_xmas_puzzle"

    invoke-static {v0}, Lcom/cmplay/util/NativeUtil;->getLanguageTextByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 893
    new-instance v1, Lcom/cmplay/h/e;

    invoke-direct {v1}, Lcom/cmplay/h/e;-><init>()V

    .line 894
    invoke-virtual {v1, v0}, Lcom/cmplay/h/e;->b(Ljava/lang/String;)V

    .line 895
    invoke-virtual {v1, p2}, Lcom/cmplay/h/e;->c(Ljava/lang/String;)V

    .line 898
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 899
    invoke-static {}, Lcom/cmplay/util/NativeUtil;->isFacebookInstalled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 900
    invoke-virtual {v1, v3, p1}, Lcom/cmplay/h/e;->a(II)V

    .line 901
    invoke-virtual {p0, v0, v1, v3}, Lcom/cmplay/h/f;->a(Landroid/app/Activity;Lcom/cmplay/h/e;I)Z

    goto :goto_0

    .line 904
    :cond_1
    const/4 v2, 0x5

    invoke-virtual {v1, v2, p1}, Lcom/cmplay/h/e;->a(II)V

    .line 905
    invoke-virtual {p0, v0, v1}, Lcom/cmplay/h/f;->e(Landroid/app/Activity;Lcom/cmplay/h/e;)V

    goto :goto_0
.end method

.method public c(I)Z
    .locals 2

    .prologue
    .line 1007
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 1008
    new-instance v1, Lcom/cmplay/h/f$4;

    invoke-direct {v1, p0, p1, v0}, Lcom/cmplay/h/f$4;-><init>(Lcom/cmplay/h/f;ILandroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1020
    const/4 v0, 0x1

    return v0
.end method

.method public c(Landroid/app/Activity;Lcom/cmplay/h/e;)Z
    .locals 1

    .prologue
    .line 100
    new-instance v0, Lcom/cmplay/h/a/f;

    invoke-direct {v0, p1}, Lcom/cmplay/h/a/f;-><init>(Landroid/content/Context;)V

    .line 101
    invoke-direct {p0, p1, v0, p2}, Lcom/cmplay/h/f;->a(Landroid/app/Activity;Lcom/cmplay/h/a/c;Lcom/cmplay/h/e;)Z

    move-result v0

    return v0
.end method

.method public d()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x2

    .line 506
    invoke-static {}, Lcom/cmplay/util/NativeUtil;->isNetworkAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 508
    const-string v0, "share_fb_have_no_network"

    invoke-static {v0}, Lcom/cmplay/util/NativeUtil;->getLanguageTextByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cmplay/util/NativeUtil;->toastTip(Ljava/lang/String;)V

    .line 509
    const/4 v0, 0x0

    invoke-static {v4, v0}, Lcom/cmplay/util/NativeUtil;->shareCallbackOnGLThread(II)V

    .line 541
    :goto_0
    return-void

    .line 514
    :cond_0
    invoke-static {}, Lcom/cmplay/util/j;->a()V

    .line 516
    const-string v0, "Share_collection_txt"

    invoke-static {v0}, Lcom/cmplay/util/NativeUtil;->getLanguageTextByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 521
    const/16 v1, 0x14

    .line 522
    new-instance v2, Lcom/cmplay/h/e;

    invoke-direct {v2}, Lcom/cmplay/h/e;-><init>()V

    .line 523
    invoke-virtual {v2, v0}, Lcom/cmplay/h/e;->b(Ljava/lang/String;)V

    .line 526
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 527
    invoke-static {}, Lcom/cmplay/util/NativeUtil;->isFacebookInstalled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 528
    invoke-virtual {v2, v4, v1}, Lcom/cmplay/h/e;->a(II)V

    .line 529
    invoke-virtual {p0, v0, v2, v4}, Lcom/cmplay/h/f;->a(Landroid/app/Activity;Lcom/cmplay/h/e;I)Z

    goto :goto_0

    .line 532
    :cond_1
    invoke-static {}, Lcom/cmplay/util/NativeUtil;->isWeChatInstalled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 533
    const/4 v3, 0x7

    invoke-virtual {v2, v3, v1}, Lcom/cmplay/h/e;->a(II)V

    .line 534
    invoke-virtual {v2, v5}, Lcom/cmplay/h/e;->c(Ljava/lang/String;)V

    .line 535
    invoke-virtual {p0, v0, v2}, Lcom/cmplay/h/f;->d(Landroid/app/Activity;Lcom/cmplay/h/e;)Z

    goto :goto_0

    .line 538
    :cond_2
    const/4 v3, 0x5

    invoke-virtual {v2, v3, v1}, Lcom/cmplay/h/e;->a(II)V

    .line 539
    invoke-virtual {v2, v5}, Lcom/cmplay/h/e;->c(Ljava/lang/String;)V

    .line 540
    invoke-virtual {p0, v0, v2}, Lcom/cmplay/h/f;->e(Landroid/app/Activity;Lcom/cmplay/h/e;)V

    goto :goto_0
.end method

.method public d(ILjava/lang/String;)Z
    .locals 2

    .prologue
    .line 1028
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 1029
    new-instance v1, Lcom/cmplay/h/f$5;

    invoke-direct {v1, p0, p2, p1, v0}, Lcom/cmplay/h/f$5;-><init>(Lcom/cmplay/h/f;Ljava/lang/String;ILandroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1043
    const/4 v0, 0x1

    return v0
.end method

.method public d(Landroid/app/Activity;Lcom/cmplay/h/e;)Z
    .locals 1

    .prologue
    .line 105
    new-instance v0, Lcom/cmplay/h/a/e;

    invoke-direct {v0, p1}, Lcom/cmplay/h/a/e;-><init>(Landroid/content/Context;)V

    .line 106
    invoke-direct {p0, p1, v0, p2}, Lcom/cmplay/h/f;->a(Landroid/app/Activity;Lcom/cmplay/h/a/c;Lcom/cmplay/h/e;)Z

    move-result v0

    return v0
.end method

.method public e()V
    .locals 6

    .prologue
    .line 551
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 552
    iget-wide v2, p0, Lcom/cmplay/h/f;->d:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1f4

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 604
    :goto_0
    return-void

    .line 558
    :cond_0
    iput-wide v0, p0, Lcom/cmplay/h/f;->d:J

    .line 560
    invoke-static {}, Lcom/cmplay/util/NativeUtil;->isNetworkAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 562
    const-string v0, "share_fb_have_no_network"

    invoke-static {v0}, Lcom/cmplay/util/NativeUtil;->getLanguageTextByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cmplay/util/NativeUtil;->toastTip(Ljava/lang/String;)V

    .line 563
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/cmplay/util/NativeUtil;->shareCallbackOnGLThread(II)V

    goto :goto_0

    .line 568
    :cond_1
    const-string v0, "warmup"

    new-instance v1, Lcom/cmplay/h/f$2;

    invoke-direct {v1, p0}, Lcom/cmplay/h/f$2;-><init>(Lcom/cmplay/h/f;)V

    invoke-static {v0, v1}, Lcom/cmplay/util/j;->a(Ljava/lang/String;Lcom/cmplay/util/j$a;)V

    goto :goto_0
.end method

.method public e(Landroid/app/Activity;Lcom/cmplay/h/e;)V
    .locals 3

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/cmplay/h/f;->c()V

    .line 127
    new-instance v0, Lcom/cmplay/h/a/a;

    invoke-direct {v0, p1}, Lcom/cmplay/h/a/a;-><init>(Landroid/content/Context;)V

    .line 128
    invoke-virtual {v0, p2}, Lcom/cmplay/h/a/a;->a(Lcom/cmplay/h/e;)V

    .line 129
    const-string v1, "MMM"

    const-string v2, "ShareHelper shareToSystem "

    invoke-static {v1, v2}, Lcom/cmplay/util/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    invoke-virtual {p0, v0}, Lcom/cmplay/h/f;->a(Lcom/cmplay/h/c;)V

    .line 132
    return-void
.end method

.method public f(Landroid/app/Activity;Lcom/cmplay/h/e;)V
    .locals 1

    .prologue
    .line 932
    invoke-virtual {p2}, Lcom/cmplay/h/e;->f()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 961
    :goto_0
    :pswitch_0
    return-void

    .line 934
    :pswitch_1
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/cmplay/h/f;->a(Landroid/app/Activity;Lcom/cmplay/h/e;I)Z

    goto :goto_0

    .line 937
    :pswitch_2
    const/4 v0, 0x4

    invoke-virtual {p0, p1, p2, v0}, Lcom/cmplay/h/f;->a(Landroid/app/Activity;Lcom/cmplay/h/e;I)Z

    goto :goto_0

    .line 940
    :pswitch_3
    const/4 v0, 0x2

    invoke-virtual {p0, p1, p2, v0}, Lcom/cmplay/h/f;->a(Landroid/app/Activity;Lcom/cmplay/h/e;I)Z

    goto :goto_0

    .line 943
    :pswitch_4
    invoke-virtual {p0, p1, p2}, Lcom/cmplay/h/f;->a(Landroid/app/Activity;Lcom/cmplay/h/e;)Z

    goto :goto_0

    .line 946
    :pswitch_5
    invoke-virtual {p0, p1, p2}, Lcom/cmplay/h/f;->b(Landroid/app/Activity;Lcom/cmplay/h/e;)Z

    goto :goto_0

    .line 949
    :pswitch_6
    invoke-virtual {p0, p1, p2}, Lcom/cmplay/h/f;->e(Landroid/app/Activity;Lcom/cmplay/h/e;)V

    goto :goto_0

    .line 952
    :pswitch_7
    invoke-virtual {p0, p1, p2}, Lcom/cmplay/h/f;->c(Landroid/app/Activity;Lcom/cmplay/h/e;)Z

    goto :goto_0

    .line 955
    :pswitch_8
    invoke-virtual {p0, p1, p2}, Lcom/cmplay/h/f;->d(Landroid/app/Activity;Lcom/cmplay/h/e;)Z

    goto :goto_0

    .line 932
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 1144
    invoke-static {}, Lcom/cmplay/util/i;->c()I

    move-result v0

    .line 1145
    if-nez v0, :cond_0

    .line 1146
    const/4 v0, 0x1

    .line 1148
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()J
    .locals 2

    .prologue
    .line 1153
    iget-wide v0, p0, Lcom/cmplay/h/f;->c:J

    return-wide v0
.end method
