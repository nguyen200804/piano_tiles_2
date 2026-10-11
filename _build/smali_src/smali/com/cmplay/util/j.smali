.class public Lcom/cmplay/util/j;
.super Ljava/lang/Object;
.source "HttpUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmplay/util/j$a;
    }
.end annotation


# static fields
.field public static a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 299
    invoke-static {}, Lcom/cmplay/util/NativeUtil;->getAndroidIdLast()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/cmplay/util/j;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/cmplay/util/ab$a;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    invoke-static {p0, p1}, Lcom/cmplay/util/j;->b(Lcom/cmplay/util/ab$a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(ZLcom/cmplay/a/e;Ljava/util/List;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    invoke-static {p0, p1, p2}, Lcom/cmplay/util/j;->b(ZLcom/cmplay/a/e;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a()V
    .locals 2

    .prologue
    .line 200
    invoke-static {}, Lcom/cmplay/h/d;->b()Ljava/lang/String;

    move-result-object v0

    .line 204
    new-instance v1, Lcom/cmplay/util/j$13;

    invoke-direct {v1, v0}, Lcom/cmplay/util/j$13;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/cmplay/util/j$13;->start()V

    .line 297
    return-void
.end method

.method public static a(I)V
    .locals 3

    .prologue
    .line 810
    invoke-static {}, Lcom/cmplay/h/d;->b()Ljava/lang/String;

    move-result-object v0

    .line 811
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://p2.cmcm.com/shares/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/vip_banner"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 812
    invoke-static {v0}, Lcom/cmplay/util/j;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 813
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&vipId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 814
    sget-object v1, Lcom/cmplay/util/ab$a;->d:Lcom/cmplay/util/ab$a;

    invoke-static {v1, v0}, Lcom/cmplay/util/j;->b(Lcom/cmplay/util/ab$a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 818
    const-string v1, "key_vip_banner_url"

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/cmplay/util/aa;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 820
    new-instance v1, Lcom/cmplay/util/j$4;

    invoke-direct {v1, v0}, Lcom/cmplay/util/j$4;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/cmplay/util/j$4;->start()V

    .line 840
    return-void
.end method

.method public static a(II)V
    .locals 3

    .prologue
    .line 997
    invoke-static {}, Lcom/cmplay/h/d;->b()Ljava/lang/String;

    move-result-object v0

    .line 998
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://p2.cmcm.com/shares/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/event_banner"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 999
    invoke-static {v0}, Lcom/cmplay/util/j;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1000
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&eventName=halloween_2016"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1001
    sget-object v1, Lcom/cmplay/util/ab$a;->d:Lcom/cmplay/util/ab$a;

    invoke-static {v1, v0}, Lcom/cmplay/util/j;->b(Lcom/cmplay/util/ab$a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1005
    const-string v1, "key_halloween_banner_url"

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/cmplay/util/aa;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1007
    new-instance v1, Lcom/cmplay/util/j$8;

    invoke-direct {v1, p0, p1, v0}, Lcom/cmplay/util/j$8;-><init>(IILjava/lang/String;)V

    invoke-virtual {v1}, Lcom/cmplay/util/j$8;->start()V

    .line 1036
    return-void
.end method

.method public static a(ILjava/lang/String;II)V
    .locals 6

    .prologue
    .line 850
    invoke-static {}, Lcom/cmplay/h/d;->b()Ljava/lang/String;

    move-result-object v0

    .line 851
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://p2.cmcm.com/shares/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/event_banner"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 852
    invoke-static {v0}, Lcom/cmplay/util/j;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 853
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&eventName=christmas_2016"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 854
    sget-object v1, Lcom/cmplay/util/ab$a;->d:Lcom/cmplay/util/ab$a;

    invoke-static {v1, v0}, Lcom/cmplay/util/j;->b(Lcom/cmplay/util/ab$a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 858
    const-string v0, "key_copy_url"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/cmplay/util/aa;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 860
    new-instance v0, Lcom/cmplay/util/j$5;

    move v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/cmplay/util/j$5;-><init>(ILjava/lang/String;IILjava/lang/String;)V

    invoke-virtual {v0}, Lcom/cmplay/util/j$5;->start()V

    .line 890
    return-void
.end method

.method public static a(ILjava/lang/String;IIIII)V
    .locals 9

    .prologue
    .line 903
    invoke-static {}, Lcom/cmplay/h/d;->b()Ljava/lang/String;

    move-result-object v0

    .line 904
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://p2.cmcm.com/shares/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/event_banner"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 905
    invoke-static {v0}, Lcom/cmplay/util/j;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 906
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&eventName=easterday_add"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 907
    sget-object v1, Lcom/cmplay/util/ab$a;->d:Lcom/cmplay/util/ab$a;

    invoke-static {v1, v0}, Lcom/cmplay/util/j;->b(Lcom/cmplay/util/ab$a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 911
    const-string v0, "key_copy_url"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/cmplay/util/aa;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 913
    new-instance v0, Lcom/cmplay/util/j$6;

    move v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v8}, Lcom/cmplay/util/j$6;-><init>(ILjava/lang/String;IIIIILjava/lang/String;)V

    invoke-virtual {v0}, Lcom/cmplay/util/j$6;->start()V

    .line 946
    return-void
.end method

.method public static a(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 4

    .prologue
    .line 575
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 577
    :try_start_0
    const-string v0, "type"

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 578
    const-string v0, "name"

    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 579
    const-string v0, "score"

    invoke-virtual {v1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 580
    const-string v0, "star"

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 582
    if-nez p0, :cond_0

    .line 584
    const-string v0, "sharepic_score"

    invoke-static {v0}, Lcom/cmplay/util/NativeUtil;->getLanguageTextByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 602
    :goto_0
    const-string v2, "unit"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 606
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 607
    invoke-static {}, Lcom/cmplay/h/d;->b()Ljava/lang/String;

    move-result-object v1

    .line 608
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://p2.cmcm.com/shares/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/banner"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 609
    invoke-static {v1}, Lcom/cmplay/util/j;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 610
    sget-object v2, Lcom/cmplay/util/ab$a;->d:Lcom/cmplay/util/ab$a;

    invoke-static {v2, v1}, Lcom/cmplay/util/j;->b(Lcom/cmplay/util/ab$a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 614
    const-string v2, "key_screenshot_url"

    const-string v3, ""

    invoke-static {v2, v3}, Lcom/cmplay/util/aa;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    new-instance v2, Lcom/cmplay/util/j$17;

    invoke-direct {v2, v1, v0}, Lcom/cmplay/util/j$17;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/cmplay/util/j$17;->start()V

    .line 636
    return-void

    .line 587
    :cond_0
    const/16 v0, 0x10

    if-ne p3, v0, :cond_2

    .line 589
    const/4 v0, 0x0

    .line 591
    :try_start_1
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    .line 593
    :goto_2
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 594
    :try_start_2
    const-string v0, "jd_world_tile1"

    invoke-static {v0}, Lcom/cmplay/util/NativeUtil;->getLanguageTextByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 596
    :cond_1
    const-string v0, "jd_world_tile2"

    invoke-static {v0}, Lcom/cmplay/util/NativeUtil;->getLanguageTextByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 599
    :cond_2
    const-string v0, "sharepic_title_tile"

    invoke-static {v0}, Lcom/cmplay/util/NativeUtil;->getLanguageTextByKey(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    goto :goto_0

    .line 603
    :catch_0
    move-exception v0

    .line 604
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 592
    :catch_1
    move-exception v2

    goto :goto_2
.end method

.method public static a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 117
    invoke-static {}, Lcom/cmplay/h/d;->b()Ljava/lang/String;

    move-result-object v0

    .line 118
    sget-object v1, Lcom/cmplay/h/d;->c:Ljava/lang/String;

    .line 122
    new-instance v2, Lcom/cmplay/util/j$11;

    invoke-direct {v2, v0, p0}, Lcom/cmplay/util/j$11;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/cmplay/util/j$11;->start()V

    .line 154
    new-instance v2, Lcom/cmplay/util/j$12;

    invoke-direct {v2, v0, v1}, Lcom/cmplay/util/j$12;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/cmplay/util/j$12;->start()V

    .line 193
    return-void
.end method

.method public static a(Ljava/lang/String;IF)V
    .locals 3

    .prologue
    .line 1045
    invoke-static {}, Lcom/cmplay/h/d;->b()Ljava/lang/String;

    move-result-object v0

    .line 1046
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://p2.cmcm.com/shares/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/event_banner"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1047
    invoke-static {v0}, Lcom/cmplay/util/j;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1048
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&eventName=master"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1049
    sget-object v1, Lcom/cmplay/util/ab$a;->d:Lcom/cmplay/util/ab$a;

    invoke-static {v1, v0}, Lcom/cmplay/util/j;->b(Lcom/cmplay/util/ab$a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1053
    const-string v1, "key_master_banner_url"

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/cmplay/util/aa;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1055
    new-instance v1, Lcom/cmplay/util/j$9;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/cmplay/util/j$9;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    invoke-virtual {v1}, Lcom/cmplay/util/j$9;->start()V

    .line 1084
    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/cmplay/util/j$a;)V
    .locals 3

    .prologue
    .line 52
    invoke-static {}, Lcom/cmplay/h/d;->b()Ljava/lang/String;

    move-result-object v0

    .line 57
    const-string v1, "key_uploading_cd_image_url"

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/cmplay/util/aa;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const-string v1, "key_share_h5_url"

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/cmplay/util/aa;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const-string v1, "key_uploading_audio_url"

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/cmplay/util/aa;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const-string v1, "key_share_bannner_url"

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/cmplay/util/aa;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    new-instance v1, Lcom/cmplay/util/j$1;

    invoke-direct {v1, v0, p0, p1}, Lcom/cmplay/util/j$1;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/cmplay/util/j$a;)V

    invoke-virtual {v1}, Lcom/cmplay/util/j$1;->start()V

    .line 107
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 645
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 647
    :try_start_0
    const-string v0, "songName"

    sget-object v2, Lcom/cmplay/h/d;->e:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 648
    const-string v0, "songId"

    sget v2, Lcom/cmplay/h/d;->d:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 649
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 650
    const-string v0, "words"

    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 652
    :cond_0
    sget-boolean v0, Lcom/cmplay/h/d;->i:Z

    if-nez v0, :cond_4

    .line 653
    const-string v0, "key_share_cd_file_url"

    const-string v2, ""

    invoke-static {v0, v2}, Lcom/cmplay/util/aa;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 654
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 655
    const-string v2, "url "

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 666
    :cond_1
    :goto_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 667
    const-string v0, "eventName"

    invoke-virtual {v1, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 673
    :cond_2
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 674
    invoke-static {}, Lcom/cmplay/h/d;->b()Ljava/lang/String;

    move-result-object v0

    .line 675
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://p2.cmcm.com/shares/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/event_banner"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 676
    invoke-static {v0}, Lcom/cmplay/util/j;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 678
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 679
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&eventName="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 681
    :cond_3
    sget-object v2, Lcom/cmplay/util/ab$a;->d:Lcom/cmplay/util/ab$a;

    invoke-static {v2, v0}, Lcom/cmplay/util/j;->b(Lcom/cmplay/util/ab$a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 685
    const-string v2, "key_screenshot_url"

    const-string v3, ""

    invoke-static {v2, v3}, Lcom/cmplay/util/aa;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    new-instance v2, Lcom/cmplay/util/j$18;

    invoke-direct {v2, v0, v1}, Lcom/cmplay/util/j$18;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/cmplay/util/j$18;->start()V

    .line 707
    return-void

    .line 658
    :cond_4
    :try_start_1
    const-string v0, "key_share_cd_file_url"

    const-string v2, ""

    invoke-static {v0, v2}, Lcom/cmplay/util/aa;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 659
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 660
    const-string v2, "url "

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 670
    :catch_0
    move-exception v0

    .line 671
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 662
    :cond_5
    :try_start_2
    const-string v0, "key_uploading_cd_image_url"

    const-string v2, ""

    invoke-static {v0, v2}, Lcom/cmplay/util/aa;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 663
    const-string v2, "url "

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 496
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 498
    :try_start_0
    const-string v0, "music_id"

    sget v2, Lcom/cmplay/h/d;->d:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 499
    const-string v0, "music_name"

    invoke-static {}, Lcom/cmplay/util/NativeUtil;->getSongName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 500
    const-string v0, "score"

    invoke-static {}, Lcom/cmplay/util/NativeUtil;->getScore()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 501
    const-string v0, "star"

    invoke-static {}, Lcom/cmplay/util/i;->e()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 503
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 504
    const-string v0, "eventName"

    invoke-virtual {v1, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 506
    :cond_0
    const-string v2, "activity_status"

    invoke-static {}, Lcom/cmplay/util/NativeUtil;->getChallengeCopyAllFinishStatus()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 507
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 508
    const-string v0, "name"

    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 510
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 511
    const-string v0, "words"

    invoke-virtual {v1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 513
    :cond_2
    sget-boolean v0, Lcom/cmplay/h/d;->i:Z

    if-nez v0, :cond_6

    .line 514
    const-string v0, "key_share_cd_file_url"

    const-string v2, ""

    invoke-static {v0, v2}, Lcom/cmplay/util/aa;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 515
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 516
    const-string v2, "image_url"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 531
    :cond_3
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 532
    invoke-static {}, Lcom/cmplay/h/d;->b()Ljava/lang/String;

    move-result-object v0

    .line 533
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://p2.cmcm.com/shares/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/event_banner"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 534
    invoke-static {v0}, Lcom/cmplay/util/j;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 536
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 537
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&eventName="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 539
    :cond_4
    sget-object v2, Lcom/cmplay/util/ab$a;->d:Lcom/cmplay/util/ab$a;

    invoke-static {v2, v0}, Lcom/cmplay/util/j;->b(Lcom/cmplay/util/ab$a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 543
    const-string v2, "key_screenshot_url"

    const-string v3, ""

    invoke-static {v2, v3}, Lcom/cmplay/util/aa;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    new-instance v2, Lcom/cmplay/util/j$16;

    invoke-direct {v2, v0, v1}, Lcom/cmplay/util/j$16;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/cmplay/util/j$16;->start()V

    .line 565
    return-void

    .line 506
    :cond_5
    const/4 v0, 0x2

    goto/16 :goto_0

    .line 519
    :cond_6
    :try_start_1
    const-string v0, "key_share_cd_file_url"

    const-string v2, ""

    invoke-static {v0, v2}, Lcom/cmplay/util/aa;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 520
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 521
    const-string v2, "image_url"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 528
    :catch_0
    move-exception v0

    .line 529
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 523
    :cond_7
    :try_start_2
    const-string v0, "key_uploading_cd_image_url"

    const-string v2, ""

    invoke-static {v0, v2}, Lcom/cmplay/util/aa;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 524
    const-string v2, "image_url"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1
.end method

.method private static a(Ljava/net/HttpURLConnection;Lcom/cmplay/util/ab$a;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1506
    const/16 v0, 0x2710

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 1507
    const/16 v0, 0x4e20

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 1508
    invoke-virtual {p0, v4}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 1509
    invoke-virtual {p0, v4}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 1510
    invoke-virtual {p0, v5}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 1511
    invoke-virtual {p1}, Lcom/cmplay/util/ab$a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 1512
    const-string v0, "Connection"

    const-string v1, "Keep-Alive"

    invoke-virtual {p0, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1513
    const-string v0, "Content-Type"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "multipart/form-data; boundary="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1514
    const-string v0, "User-Agent"

    invoke-static {}, Lcom/cmplay/util/j;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1515
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 1516
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 1517
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 1518
    const-string v2, "%s-%s,%s;q=0.8"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v5

    aput-object v1, v3, v4

    const/4 v1, 0x2

    aput-object v0, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1519
    const-string v1, "Accept-Language"

    invoke-virtual {p0, v1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1520
    const-string v0, "Content-Type"

    const-string v1, "application/json"

    invoke-virtual {p0, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1521
    return-void
.end method

.method private static b(Lcom/cmplay/util/ab$a;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 1236
    invoke-static {p0, p1}, Lcom/cmplay/util/ab;->a(Lcom/cmplay/util/ab$a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1238
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1239
    invoke-virtual {v0}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "?sig="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1245
    :goto_0
    return-object v0

    .line 1242
    :catch_0
    move-exception v0

    .line 1243
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 1245
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&sig="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static b(ZLcom/cmplay/a/e;Ljava/util/List;)Ljava/lang/String;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/cmplay/a/e;",
            "Ljava/util/List",
            "<",
            "Lcom/cmplay/a/d;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 415
    invoke-static {}, Lcom/cmplay/a/c;->a()Lcom/cmplay/a/c;

    move-result-object v6

    .line 417
    invoke-virtual {p1}, Lcom/cmplay/a/e;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0, p2}, Lcom/cmplay/a/c;->b(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 418
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v1

    .line 486
    :goto_0
    return-object v0

    .line 421
    :cond_1
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 423
    :try_start_0
    iget-object v0, p1, Lcom/cmplay/a/e;->a:Ljava/lang/String;

    invoke-virtual {v6, v0, p2}, Lcom/cmplay/a/c;->a(Ljava/lang/String;Ljava/util/List;)I

    move-result v0

    .line 424
    if-gez v0, :cond_2

    move-object v0, v1

    .line 425
    goto :goto_0

    .line 427
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 428
    const-string v4, "user_ranking"

    invoke-virtual {v7, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 430
    if-eqz p0, :cond_4

    .line 431
    invoke-static {}, Lcom/cmplay/util/NativeUtil;->getSongName()Ljava/lang/String;

    move-result-object v0

    .line 435
    :goto_1
    const-string v4, "rank_name"

    invoke-virtual {v7, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 436
    const-string v4, "type"

    if-eqz p0, :cond_5

    const/4 v0, 0x1

    :goto_2
    invoke-virtual {v7, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 437
    invoke-static {}, Lcom/cmplay/a/a;->a()Lcom/cmplay/a/a;

    move-result-object v0

    .line 438
    invoke-virtual {v0}, Lcom/cmplay/a/a;->e()Ljava/lang/String;

    move-result-object v0

    .line 439
    const-string v4, "access_token"

    invoke-virtual {v7, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 440
    sget-boolean v0, Lcom/cmplay/util/j;->a:Z

    if-eqz v0, :cond_3

    .line 441
    if-eqz p0, :cond_6

    .line 442
    const-string v0, "order"

    invoke-static {}, Lcom/cmplay/util/NativeUtil;->getSongOrder()I

    move-result v4

    invoke-virtual {v7, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 447
    :cond_3
    :goto_3
    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8}, Lorg/json/JSONArray;-><init>()V

    .line 448
    const/4 v5, -0x1

    .line 449
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmplay/a/d;

    .line 450
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    .line 451
    if-gez v5, :cond_9

    .line 452
    iget-object v2, v0, Lcom/cmplay/a/d;->a:Ljava/lang/String;

    invoke-virtual {v6, v2, p2}, Lcom/cmplay/a/c;->a(Ljava/lang/String;Ljava/util/List;)I

    move-result v2

    .line 453
    if-gez v2, :cond_7

    move-object v0, v1

    .line 454
    goto :goto_0

    .line 433
    :cond_4
    const-string v0, "leaderboard"

    invoke-static {v0}, Lcom/cmplay/util/NativeUtil;->getLanguageTextByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_5
    move v0, v3

    .line 436
    goto :goto_2

    .line 444
    :cond_6
    const-string v0, "order"

    const/4 v4, 0x0

    invoke-virtual {v7, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 483
    :catch_0
    move-exception v0

    .line 484
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    move-object v0, v1

    .line 486
    goto/16 :goto_0

    .line 456
    :cond_7
    add-int/lit8 v2, v2, 0x1

    move v5, v2

    .line 460
    :goto_5
    :try_start_1
    const-string v2, "ranking"

    invoke-virtual {v10, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 462
    const-string v2, "user_id"

    iget-object v4, v0, Lcom/cmplay/a/d;->a:Ljava/lang/String;

    invoke-virtual {v10, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 463
    const-string v2, "user_name"

    iget-object v4, v0, Lcom/cmplay/a/d;->b:Ljava/lang/String;

    invoke-virtual {v10, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 464
    iget v4, v0, Lcom/cmplay/a/d;->d:I

    .line 465
    iget v2, v0, Lcom/cmplay/a/d;->c:I

    .line 466
    if-eqz p0, :cond_8

    .line 468
    const/4 v2, 0x3

    if-le v4, v2, :cond_a

    .line 469
    add-int/lit8 v2, v4, -0x3

    move v4, v3

    .line 475
    :cond_8
    :goto_6
    const-string v11, "stars"

    invoke-virtual {v10, v11, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 476
    const-string v4, "crowns"

    invoke-virtual {v10, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 477
    const-string v2, "score"

    iget v4, v0, Lcom/cmplay/a/d;->g:I

    invoke-virtual {v10, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 478
    const-string v2, "user_level"

    iget v0, v0, Lcom/cmplay/a/d;->e:I

    invoke-virtual {v10, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 479
    invoke-virtual {v8, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_4

    .line 458
    :cond_9
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_5

    :cond_a
    move v2, v3

    .line 472
    goto :goto_6

    .line 481
    :cond_b
    const-string v0, "list"

    invoke-virtual {v7, v0, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 482
    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto/16 :goto_0
.end method

.method public static b()V
    .locals 3

    .prologue
    .line 714
    invoke-static {}, Lcom/cmplay/h/d;->b()Ljava/lang/String;

    move-result-object v0

    .line 715
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://p2.cmcm.com/shares/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/event_banner"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 716
    invoke-static {v0}, Lcom/cmplay/util/j;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 717
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&eventName=valentine_2017"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 718
    sget-object v1, Lcom/cmplay/util/ab$a;->d:Lcom/cmplay/util/ab$a;

    invoke-static {v1, v0}, Lcom/cmplay/util/j;->b(Lcom/cmplay/util/ab$a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 722
    const-string v1, "key_valentine_card_url"

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/cmplay/util/aa;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    new-instance v1, Lcom/cmplay/util/j$2;

    invoke-direct {v1, v0}, Lcom/cmplay/util/j$2;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/cmplay/util/j$2;->start()V

    .line 758
    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 305
    invoke-static {}, Lcom/cmplay/h/d;->b()Ljava/lang/String;

    move-result-object v0

    .line 310
    const-string v1, "key_top_charts_url"

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/cmplay/util/aa;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    invoke-static {}, Lcom/cmplay/a/c;->a()Lcom/cmplay/a/c;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/cmplay/a/c;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 314
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/cmplay/util/j$14;

    invoke-direct {v3, v1, v0}, Lcom/cmplay/util/j$14;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 356
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 761
    invoke-static {}, Lcom/cmplay/h/d;->b()Ljava/lang/String;

    move-result-object v0

    .line 762
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://p2.cmcm.com/shares/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/event_banner"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 763
    invoke-static {v0}, Lcom/cmplay/util/j;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 764
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&eventName=song_mix"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 765
    sget-object v1, Lcom/cmplay/util/ab$a;->d:Lcom/cmplay/util/ab$a;

    invoke-static {v1, v0}, Lcom/cmplay/util/j;->b(Lcom/cmplay/util/ab$a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 769
    const-string v1, "key_screenshot_url"

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/cmplay/util/aa;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    new-instance v1, Lcom/cmplay/util/j$3;

    invoke-direct {v1, p0, p1, v0}, Lcom/cmplay/util/j$3;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/cmplay/util/j$3;->start()V

    .line 803
    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 17

    .prologue
    .line 1285
    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1290
    :cond_0
    const/4 v8, 0x0

    .line 1372
    :goto_0
    return-object v8

    .line 1293
    :cond_1
    const/4 v2, 0x0

    .line 1294
    const/4 v5, 0x0

    .line 1295
    const-wide/16 v6, 0x0

    .line 1296
    const-string v4, ""

    .line 1297
    const-string v9, ""

    .line 1298
    const/4 v3, 0x0

    move v10, v2

    move-object/from16 v8, p0

    .line 1301
    :goto_1
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 1303
    const-string v11, "7d51e5840296"

    .line 1306
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1307
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    .line 1308
    check-cast v2, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1309
    :try_start_1
    sget-object v3, Lcom/cmplay/util/ab$a;->d:Lcom/cmplay/util/ab$a;

    invoke-static {v2, v3, v11}, Lcom/cmplay/util/j;->a(Ljava/net/HttpURLConnection;Lcom/cmplay/util/ab$a;Ljava/lang/String;)V

    .line 1311
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v11

    invoke-direct {v3, v11}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1313
    const-string v11, "UTF-8"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v11

    .line 1314
    invoke-virtual {v3, v11}, Ljava/io/DataOutputStream;->write([B)V

    .line 1315
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    .line 1317
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    .line 1318
    new-instance v12, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v12}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1320
    const/16 v13, 0x400

    new-array v13, v13, [B

    .line 1321
    :goto_2
    const/4 v14, 0x0

    const/16 v15, 0x400

    invoke-virtual {v11, v13, v14, v15}, Ljava/io/InputStream;->read([BII)I

    move-result v14

    const/4 v15, -0x1

    if-eq v14, v15, :cond_3

    .line 1322
    const/4 v15, 0x0

    invoke-virtual {v12, v13, v15, v14}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto :goto_2

    .line 1333
    :catch_0
    move-exception v3

    move-object/from16 v16, v2

    move-object v2, v9

    move-object/from16 v9, v16

    .line 1335
    :goto_3
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 1336
    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v4

    .line 1338
    add-int/lit8 v10, v10, 0x1

    .line 1339
    const/4 v3, 0x3

    if-ge v10, v3, :cond_4

    .line 1344
    const-wide/16 v12, 0x3e8

    :try_start_3
    invoke-static {v12, v13}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1349
    :goto_4
    :try_start_4
    invoke-static {v4}, Lcom/cmplay/util/j;->f(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1350
    invoke-static {v8}, Lcom/cmplay/util/j;->i(Ljava/lang/String;)Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v8

    .line 1359
    :cond_2
    if-eqz v9, :cond_8

    .line 1360
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 1361
    const/4 v9, 0x0

    move-object v3, v8

    move-object v8, v9

    .line 1365
    :goto_5
    const/4 v9, 0x3

    if-lt v10, v9, :cond_7

    move-object v8, v2

    move/from16 v16, v5

    move-object v5, v3

    move/from16 v3, v16

    .line 1366
    :goto_6
    invoke-static {}, Lcom/cmplay/h/f;->b()Lcom/cmplay/h/f;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long v6, v10, v6

    invoke-virtual/range {v2 .. v7}, Lcom/cmplay/h/f;->a(ILjava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 1324
    :cond_3
    :try_start_5
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    .line 1325
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V

    .line 1326
    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-result-object v3

    .line 1327
    :try_start_6
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-result v5

    .line 1359
    if-eqz v2, :cond_6

    .line 1360
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object/from16 v16, v3

    move v3, v5

    move-object v5, v8

    move-object/from16 v8, v16

    .line 1361
    goto :goto_6

    .line 1359
    :cond_4
    if-eqz v9, :cond_8

    .line 1360
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 1361
    const/4 v9, 0x0

    move-object v3, v8

    move-object v8, v9

    goto :goto_5

    .line 1359
    :catchall_0
    move-exception v2

    move-object v3, v9

    :goto_7
    if-eqz v3, :cond_5

    .line 1360
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 1361
    :cond_5
    throw v2

    .line 1345
    :catch_1
    move-exception v3

    goto :goto_4

    .line 1359
    :catchall_1
    move-exception v2

    goto :goto_7

    :catchall_2
    move-exception v3

    move-object/from16 v16, v3

    move-object v3, v2

    move-object/from16 v2, v16

    goto :goto_7

    .line 1333
    :catch_2
    move-exception v2

    move-object/from16 v16, v2

    move-object v2, v9

    move-object v9, v3

    move-object/from16 v3, v16

    goto :goto_3

    :catch_3
    move-exception v4

    move-object v9, v2

    move-object v2, v3

    move-object v3, v4

    goto :goto_3

    :cond_6
    move-object/from16 v16, v3

    move v3, v5

    move-object v5, v8

    move-object/from16 v8, v16

    goto :goto_6

    :cond_7
    move-object v9, v2

    move-object/from16 v16, v8

    move-object v8, v3

    move-object/from16 v3, v16

    goto/16 :goto_1

    :cond_8
    move-object v3, v8

    move-object v8, v9

    goto :goto_5
.end method

.method public static c()V
    .locals 2

    .prologue
    .line 1091
    invoke-static {}, Lcom/cmplay/h/d;->b()Ljava/lang/String;

    move-result-object v0

    .line 1096
    new-instance v1, Lcom/cmplay/util/j$10;

    invoke-direct {v1, v0}, Lcom/cmplay/util/j$10;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/cmplay/util/j$10;->start()V

    .line 1137
    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 363
    invoke-static {}, Lcom/cmplay/h/d;->b()Ljava/lang/String;

    move-result-object v0

    .line 368
    const-string v1, "key_singles_ranking_url"

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/cmplay/util/aa;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    invoke-static {}, Lcom/cmplay/a/c;->a()Lcom/cmplay/a/c;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/cmplay/a/c;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 372
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/cmplay/util/j$15;

    invoke-direct {v3, v1, v0}, Lcom/cmplay/util/j$15;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 412
    return-void
.end method

.method public static d()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1144
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1146
    :try_start_0
    const-string v0, "music_id"

    sget v2, Lcom/cmplay/h/d;->d:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1147
    const-string v0, "music_name"

    sget-object v2, Lcom/cmplay/h/d;->e:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1148
    const-string v0, "score"

    sget-object v2, Lcom/cmplay/h/d;->f:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1149
    const-string v0, "star"

    invoke-static {}, Lcom/cmplay/util/i;->e()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1150
    const-string v0, ""

    .line 1151
    const/16 v0, 0x12

    sget v2, Lcom/cmplay/h/d;->l:I

    if-ne v0, v2, :cond_4

    .line 1152
    invoke-static {}, Lcom/cmplay/util/NativeUtil;->getShareDescription()Ljava/lang/String;

    move-result-object v0

    .line 1162
    :goto_0
    const-string v2, "desc"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1165
    sget-boolean v0, Lcom/cmplay/h/d;->i:Z

    if-nez v0, :cond_5

    .line 1166
    const-string v0, "key_share_cd_file_url"

    const-string v2, ""

    invoke-static {v0, v2}, Lcom/cmplay/util/aa;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1167
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1171
    const-string v2, "image_url"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1188
    :cond_0
    :goto_1
    sget-boolean v0, Lcom/cmplay/h/d;->j:Z

    if-nez v0, :cond_7

    .line 1189
    const-string v0, "key_share_audio_url"

    const-string v2, ""

    invoke-static {v0, v2}, Lcom/cmplay/util/aa;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1190
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1194
    const-string v2, "audio_url"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1211
    :cond_1
    :goto_2
    const-string v0, "key_screenshot_url"

    const-string v2, ""

    invoke-static {v0, v2}, Lcom/cmplay/util/aa;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1212
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1213
    const-string v2, "banner_url"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1216
    :cond_2
    sget v0, Lcom/cmplay/tile2/ui/LoveShareActivity;->a:I

    if-lez v0, :cond_3

    .line 1217
    const-string v0, "name"

    sget-object v2, Lcom/cmplay/tile2/ui/LoveShareActivity;->b:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1218
    const-string v0, "bless"

    sget-object v2, Lcom/cmplay/tile2/ui/LoveShareActivity;->b:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1219
    const-string v0, "from"

    const-string v2, "love"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1220
    const-string v0, "dear"

    sget-object v2, Lcom/cmplay/tile2/ui/LoveShareActivity;->b:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1226
    :cond_3
    :goto_3
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1157
    :cond_4
    :try_start_1
    sget-object v0, Lcom/cmplay/h/d;->h:Ljava/lang/String;

    goto :goto_0

    .line 1174
    :cond_5
    const-string v0, "key_share_cd_file_url"

    const-string v2, ""

    invoke-static {v0, v2}, Lcom/cmplay/util/aa;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1175
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 1179
    const-string v2, "image_url"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1223
    :catch_0
    move-exception v0

    .line 1224
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_3

    .line 1184
    :cond_6
    :try_start_2
    const-string v0, "key_uploading_cd_image_url"

    const-string v2, ""

    invoke-static {v0, v2}, Lcom/cmplay/util/aa;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1185
    const-string v2, "image_url"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_1

    .line 1197
    :cond_7
    const-string v0, "key_share_audio_url"

    const-string v2, ""

    invoke-static {v0, v2}, Lcom/cmplay/util/aa;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1198
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 1202
    const-string v2, "audio_url"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    .line 1207
    :cond_8
    const-string v0, "key_uploading_audio_url"

    const-string v2, ""

    invoke-static {v0, v2}, Lcom/cmplay/util/aa;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1208
    const-string v2, "audio_url"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 17

    .prologue
    .line 1398
    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1403
    const/4 v8, 0x0

    .line 1502
    :goto_0
    return-object v8

    .line 1406
    :cond_0
    const/4 v2, 0x0

    .line 1407
    const/4 v5, 0x0

    .line 1408
    const-wide/16 v6, 0x0

    .line 1409
    const-string v4, ""

    .line 1410
    const-string v9, ""

    .line 1411
    const/4 v3, 0x0

    move v10, v2

    move-object/from16 v8, p0

    .line 1414
    :goto_1
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 1417
    const/16 v2, 0x400

    new-array v11, v2, [B

    .line 1419
    const-string v2, "\r\n"

    .line 1420
    const-string v2, "--"

    .line 1421
    const-string v12, "7d51e5840296"

    .line 1424
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1425
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    .line 1426
    check-cast v2, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1427
    :try_start_1
    sget-object v3, Lcom/cmplay/util/ab$a;->d:Lcom/cmplay/util/ab$a;

    invoke-static {v2, v3, v12}, Lcom/cmplay/util/j;->a(Ljava/net/HttpURLConnection;Lcom/cmplay/util/ab$a;Ljava/lang/String;)V

    .line 1429
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v12

    invoke-direct {v3, v12}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1431
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 1432
    new-instance v12, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1433
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 1434
    new-instance v13, Ljava/io/FileInputStream;

    invoke-direct {v13, v12}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1436
    :goto_2
    const/4 v12, 0x0

    const/16 v14, 0x400

    invoke-virtual {v13, v11, v12, v14}, Ljava/io/FileInputStream;->read([BII)I

    move-result v12

    .line 1437
    if-gtz v12, :cond_3

    .line 1442
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V

    .line 1445
    :cond_1
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    .line 1447
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    .line 1448
    new-instance v12, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v12}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1450
    const/16 v13, 0x400

    new-array v13, v13, [B

    .line 1451
    :goto_3
    const/4 v14, 0x0

    const/16 v15, 0x400

    invoke-virtual {v11, v13, v14, v15}, Ljava/io/InputStream;->read([BII)I

    move-result v14

    const/4 v15, -0x1

    if-eq v14, v15, :cond_5

    .line 1452
    const/4 v15, 0x0

    invoke-virtual {v12, v13, v15, v14}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 1463
    :catch_0
    move-exception v3

    move-object/from16 v16, v2

    move-object v2, v9

    move-object/from16 v9, v16

    .line 1465
    :goto_4
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 1466
    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v4

    .line 1468
    add-int/lit8 v10, v10, 0x1

    .line 1469
    const/4 v3, 0x3

    if-ge v10, v3, :cond_6

    .line 1474
    const-wide/16 v12, 0x3e8

    :try_start_3
    invoke-static {v12, v13}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1479
    :goto_5
    :try_start_4
    invoke-static {v4}, Lcom/cmplay/util/j;->f(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1480
    invoke-static {v8}, Lcom/cmplay/util/j;->i(Ljava/lang/String;)Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v8

    .line 1489
    :cond_2
    if-eqz v9, :cond_9

    .line 1490
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 1491
    const/4 v9, 0x0

    move-object v3, v8

    move-object v8, v9

    .line 1495
    :goto_6
    const/4 v9, 0x3

    if-lt v10, v9, :cond_8

    move-object v8, v2

    move/from16 v16, v5

    move-object v5, v3

    move/from16 v3, v16

    .line 1496
    :goto_7
    invoke-static {}, Lcom/cmplay/h/f;->b()Lcom/cmplay/h/f;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long v6, v10, v6

    invoke-virtual/range {v2 .. v7}, Lcom/cmplay/h/f;->a(ILjava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 1440
    :cond_3
    const/4 v14, 0x0

    :try_start_5
    invoke-virtual {v3, v11, v14, v12}, Ljava/io/DataOutputStream;->write([BII)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 1489
    :catchall_0
    move-exception v3

    move-object/from16 v16, v3

    move-object v3, v2

    move-object/from16 v2, v16

    :goto_8
    if-eqz v3, :cond_4

    .line 1490
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 1491
    :cond_4
    throw v2

    .line 1454
    :cond_5
    :try_start_6
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    .line 1455
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V

    .line 1456
    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v3

    .line 1457
    :try_start_7
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result v5

    .line 1489
    if-eqz v2, :cond_7

    .line 1490
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object/from16 v16, v3

    move v3, v5

    move-object v5, v8

    move-object/from16 v8, v16

    .line 1491
    goto :goto_7

    .line 1489
    :cond_6
    if-eqz v9, :cond_9

    .line 1490
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 1491
    const/4 v9, 0x0

    move-object v3, v8

    move-object v8, v9

    goto :goto_6

    .line 1475
    :catch_1
    move-exception v3

    goto :goto_5

    .line 1489
    :catchall_1
    move-exception v2

    move-object v3, v9

    goto :goto_8

    :catchall_2
    move-exception v2

    goto :goto_8

    .line 1463
    :catch_2
    move-exception v2

    move-object/from16 v16, v2

    move-object v2, v9

    move-object v9, v3

    move-object/from16 v3, v16

    goto :goto_4

    :catch_3
    move-exception v4

    move-object v9, v2

    move-object v2, v3

    move-object v3, v4

    goto/16 :goto_4

    :cond_7
    move-object/from16 v16, v3

    move v3, v5

    move-object v5, v8

    move-object/from16 v8, v16

    goto :goto_7

    :cond_8
    move-object v9, v2

    move-object/from16 v16, v8

    move-object v8, v3

    move-object/from16 v3, v16

    goto/16 :goto_1

    :cond_9
    move-object v3, v8

    move-object v8, v9

    goto :goto_6
.end method

.method public static d(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 953
    invoke-static {}, Lcom/cmplay/h/d;->b()Ljava/lang/String;

    move-result-object v0

    .line 954
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://p2.cmcm.com/shares/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/event_banner"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 955
    invoke-static {v0}, Lcom/cmplay/util/j;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 956
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&eventName=easterday"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 957
    sget-object v1, Lcom/cmplay/util/ab$a;->d:Lcom/cmplay/util/ab$a;

    invoke-static {v1, v0}, Lcom/cmplay/util/j;->b(Lcom/cmplay/util/ab$a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 961
    const-string v1, "key_christmas_card_url"

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/cmplay/util/aa;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 963
    new-instance v1, Lcom/cmplay/util/j$7;

    invoke-direct {v1, p0, v0}, Lcom/cmplay/util/j$7;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/cmplay/util/j$7;->start()V

    .line 990
    return-void
.end method

.method public static e()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1253
    const-string v0, "key_language_selected"

    const-string v1, "en"

    invoke-static {v0, v1}, Lcom/cmplay/util/aa;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1254
    const-string v1, "key_country_selected"

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/cmplay/util/aa;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1255
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1256
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1257
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1258
    const-string v0, "-"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1259
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1261
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static e(Ljava/lang/String;)Ljava/lang/String;
    .locals 13

    .prologue
    const/4 v3, 0x0

    .line 1530
    const-string v6, ""

    .line 1531
    const/4 v1, 0x0

    .line 1533
    const-wide/16 v4, 0x0

    .line 1534
    const-string v2, ""

    .line 1536
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1538
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1542
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1544
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 1545
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 1546
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 1548
    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 1549
    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 1550
    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 1552
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 1553
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v1

    .line 1554
    const/16 v3, 0xc8

    if-eq v1, v3, :cond_0

    const/16 v3, 0xc9

    if-ne v1, v3, :cond_5

    .line 1556
    :cond_0
    :try_start_2
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 1559
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    const-string v10, "UTF-8"

    invoke-direct {v8, v9, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    const/16 v9, 0x2800

    invoke-direct {v7, v8, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 1561
    :goto_0
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 1562
    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 1571
    :catch_0
    move-exception v2

    move v3, v1

    move-wide v11, v4

    move-object v4, v0

    move-wide v0, v11

    .line 1572
    :goto_1
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result-object v2

    .line 1574
    if-eqz v4, :cond_3

    .line 1575
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    move-wide v4, v0

    move v1, v3

    .line 1579
    :goto_2
    invoke-static {}, Lcom/cmplay/h/f;->b()Lcom/cmplay/h/f;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v4, v8, v4

    move-object v3, p0

    invoke-virtual/range {v0 .. v5}, Lcom/cmplay/h/f;->a(ILjava/lang/String;Ljava/lang/String;J)V

    .line 1585
    return-object v6

    .line 1564
    :cond_1
    :try_start_4
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V

    .line 1568
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v3

    .line 1574
    :goto_3
    if-eqz v0, :cond_4

    .line 1575
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object v6, v3

    .line 1576
    goto :goto_2

    .line 1574
    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v1, :cond_2

    .line 1575
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 1576
    :cond_2
    throw v0

    .line 1574
    :catchall_1
    move-exception v1

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v1, v4

    goto :goto_4

    .line 1571
    :catch_1
    move-exception v0

    move-object v2, v0

    move-wide v11, v4

    move-object v4, v1

    move-wide v0, v11

    goto :goto_1

    :catch_2
    move-exception v1

    move-object v2, v1

    move-wide v11, v4

    move-object v4, v0

    move-wide v0, v11

    goto :goto_1

    :cond_3
    move-wide v4, v0

    move v1, v3

    goto :goto_2

    :cond_4
    move-object v6, v3

    goto :goto_2

    :cond_5
    move-object v3, v6

    goto :goto_3
.end method

.method private static f()Ljava/lang/String;
    .locals 6

    .prologue
    .line 1379
    sget-object v0, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    .line 1380
    invoke-static {v0}, Lcom/cmplay/kinfoc/report/c;->g(Landroid/content/Context;)Lcom/cmplay/kinfoc/report/a;

    move-result-object v0

    .line 1381
    iget-object v1, v0, Lcom/cmplay/kinfoc/report/a;->t:Ljava/lang/String;

    .line 1382
    iget v2, v0, Lcom/cmplay/kinfoc/report/a;->D:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 1383
    iget-object v0, v0, Lcom/cmplay/kinfoc/report/a;->b:Ljava/lang/String;

    .line 1384
    const-string v3, "mt=%s;os=%s;cv=%s"

    .line 1385
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v2, v4, v1

    const/4 v1, 0x2

    aput-object v0, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static f(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 1594
    const/4 v0, 0x0

    .line 1595
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "Unable to resolve host"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "p2.cmcm.com"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1597
    const/4 v0, 0x1

    .line 1599
    :cond_0
    return v0
.end method

.method static synthetic g(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    invoke-static {p0}, Lcom/cmplay/util/j;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static h(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 1270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?_plat=android"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&_cv="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    sget-object v2, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cmplay/util/e;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&_network="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/cmplay/util/t;->a(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&_lang="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/cmplay/util/j;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&music_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/cmplay/h/d;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1272
    return-object v0
.end method

.method private static i(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1608
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1609
    const/4 v0, 0x0

    .line 1611
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "p2.cmcm.com"

    sget-object v1, Lcom/cmplay/h/d;->a:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
