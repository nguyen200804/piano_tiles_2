.class Lcom/cmplay/util/s$26;
.super Ljava/lang/Object;
.source "NativeInterfaceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/util/s;->a(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Lcom/cmplay/util/s;


# direct methods
.method constructor <init>(Lcom/cmplay/util/s;III)V
    .locals 0

    .prologue
    .line 2048
    iput-object p1, p0, Lcom/cmplay/util/s$26;->d:Lcom/cmplay/util/s;

    iput p2, p0, Lcom/cmplay/util/s$26;->a:I

    iput p3, p0, Lcom/cmplay/util/s$26;->b:I

    iput p4, p0, Lcom/cmplay/util/s$26;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v2, 0x0

    .line 2051
    invoke-static {}, Lcom/cmplay/ad/a;->a()[Ljava/lang/Integer;

    move-result-object v0

    .line 2052
    iget v1, p0, Lcom/cmplay/util/s$26;->a:I

    invoke-static {v1, v2}, Lcom/cmplay/internalpush/b;->b(IZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2053
    const/16 v1, 0x3f1

    invoke-static {v0, v1}, Lcom/cmplay/util/e;->a([Ljava/lang/Integer;I)[Ljava/lang/Integer;

    move-result-object v0

    :cond_0
    move v1, v2

    .line 2055
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_4

    .line 2056
    aget-object v3, v0, v1

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 2057
    invoke-static {v5}, Lcom/cmplay/ad/a;->a(I)I

    move-result v3

    iget v4, p0, Lcom/cmplay/util/s$26;->b:I

    if-eq v3, v4, :cond_2

    .line 2055
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2060
    :cond_2
    const-string v3, "NativeUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "showAd  id = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cmplay/util/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2061
    new-instance v3, Lcom/cmplay/util/s$26$1;

    invoke-direct {v3, p0, v5}, Lcom/cmplay/util/s$26$1;-><init>(Lcom/cmplay/util/s$26;I)V

    invoke-static {v5, v3}, Lcom/cmplay/ad/a;->a(ILcom/cmplay/ad/c;)Lcom/cmplay/ad/d;

    move-result-object v3

    .line 2118
    if-eqz v3, :cond_6

    :try_start_0
    iget v4, p0, Lcom/cmplay/util/s$26;->a:I

    invoke-interface {v3, v4}, Lcom/cmplay/ad/d;->canShow(I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2120
    iget v4, p0, Lcom/cmplay/util/s$26;->a:I

    invoke-interface {v3, v4}, Lcom/cmplay/ad/d;->show(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    .line 2122
    :try_start_1
    iget v4, p0, Lcom/cmplay/util/s$26;->b:I

    sget v6, Lcom/cmplay/ad/a;->b:I

    if-ne v4, v6, :cond_3

    .line 2123
    if-eqz v3, :cond_5

    .line 2124
    const-string v4, "key_ad_interstitial_show"

    const/4 v6, 0x0

    invoke-static {v4, v6}, Lcom/cmplay/util/aa;->b(Ljava/lang/String;I)I

    move-result v4

    .line 2125
    add-int/lit8 v4, v4, 0x1

    .line 2126
    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static {v6, v4, v7}, Lcom/cmplay/ad/g/a;->a(IIZ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_3
    :goto_1
    move v4, v3

    .line 2142
    :goto_2
    if-eqz v4, :cond_1

    .line 2143
    const-string v0, "NativeUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showad = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmplay/util/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2147
    :cond_4
    return-void

    .line 2128
    :cond_5
    :try_start_2
    new-instance v4, Lcom/cmplay/util/s$26$2;

    invoke-direct {v4, p0, v5}, Lcom/cmplay/util/s$26$2;-><init>(Lcom/cmplay/util/s$26;I)V

    invoke-static {v4}, Lorg/cocos2dx/lib/Cocos2dxHelper;->runOnGLThread(Ljava/lang/Runnable;)V

    .line 2135
    new-instance v4, Lcom/cmplay/util/c/a/a;

    invoke-direct {v4}, Lcom/cmplay/util/c/a/a;-><init>()V

    iget v6, p0, Lcom/cmplay/util/s$26;->a:I

    int-to-byte v6, v6

    const/4 v7, 0x5

    const/4 v8, 0x4

    iget v9, p0, Lcom/cmplay/util/s$26;->c:I

    int-to-byte v9, v9

    invoke-virtual {v4, v6, v7, v8, v9}, Lcom/cmplay/util/c/a/a;->a(BBSB)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 2139
    :catch_0
    move-exception v4

    move-object v10, v4

    move v4, v3

    move-object v3, v10

    .line 2140
    :goto_3
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 2139
    :catch_1
    move-exception v3

    move v4, v2

    goto :goto_3

    :cond_6
    move v3, v2

    goto :goto_1
.end method
