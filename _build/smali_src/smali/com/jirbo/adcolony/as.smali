.class Lcom/jirbo/adcolony/as;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jirbo/adcolony/b$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jirbo/adcolony/as$a;
    }
.end annotation


# instance fields
.field a:Lcom/jirbo/adcolony/af;

.field b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jirbo/adcolony/as$a;",
            ">;"
        }
    .end annotation
.end field

.field c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jirbo/adcolony/as$a;",
            ">;"
        }
    .end annotation
.end field

.field d:I

.field e:Z

.field f:I

.field g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/jirbo/adcolony/af;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jirbo/adcolony/as;->b:Ljava/util/ArrayList;

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jirbo/adcolony/as;->c:Ljava/util/ArrayList;

    .line 11
    iput v1, p0, Lcom/jirbo/adcolony/as;->d:I

    .line 12
    iput-boolean v1, p0, Lcom/jirbo/adcolony/as;->e:Z

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jirbo/adcolony/as;->g:Ljava/util/HashMap;

    .line 20
    iput-object p1, p0, Lcom/jirbo/adcolony/as;->a:Lcom/jirbo/adcolony/af;

    .line 21
    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    .prologue
    .line 177
    invoke-virtual {p0}, Lcom/jirbo/adcolony/as;->b()V

    .line 178
    const/4 v0, 0x0

    iput v0, p0, Lcom/jirbo/adcolony/as;->d:I

    .line 179
    return-void
.end method

.method a(DLcom/jirbo/adcolony/g;)V
    .locals 17

    .prologue
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v12, 0x3fe8000000000000L    # 0.75

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v8, 0x3fd0000000000000L    # 0.25

    .line 145
    move-object/from16 v0, p3

    iget-wide v4, v0, Lcom/jirbo/adcolony/g;->k:D

    .line 146
    cmpg-double v6, p1, v4

    if-gez v6, :cond_0

    .line 173
    :goto_0
    return-void

    .line 147
    :cond_0
    cmpg-double v6, v4, v8

    if-gez v6, :cond_1

    cmpl-double v6, p1, v8

    if-ltz v6, :cond_1

    .line 149
    move-object/from16 v0, p3

    iget-object v6, v0, Lcom/jirbo/adcolony/g;->c:Ljava/lang/String;

    invoke-static {v6}, Lcom/jirbo/adcolony/f;->a(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    move-object/from16 v0, p3

    iget-object v6, v0, Lcom/jirbo/adcolony/g;->g:Ljava/lang/String;

    const-string v7, "native"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v6, "native_first_quartile"

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v6, v1}, Lcom/jirbo/adcolony/as;->b(Ljava/lang/String;Lcom/jirbo/adcolony/g;)V

    .line 152
    :cond_1
    :goto_1
    cmpg-double v6, v4, v10

    if-gez v6, :cond_2

    cmpl-double v6, p1, v10

    if-ltz v6, :cond_2

    .line 154
    move-object/from16 v0, p3

    iget-object v6, v0, Lcom/jirbo/adcolony/g;->c:Ljava/lang/String;

    invoke-static {v6}, Lcom/jirbo/adcolony/f;->a(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6

    move-object/from16 v0, p3

    iget-object v6, v0, Lcom/jirbo/adcolony/g;->g:Ljava/lang/String;

    const-string v7, "native"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    const-string v6, "native_midpoint"

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v6, v1}, Lcom/jirbo/adcolony/as;->b(Ljava/lang/String;Lcom/jirbo/adcolony/g;)V

    .line 157
    :cond_2
    :goto_2
    cmpg-double v6, v4, v12

    if-gez v6, :cond_3

    cmpl-double v6, p1, v12

    if-ltz v6, :cond_3

    .line 159
    move-object/from16 v0, p3

    iget-object v6, v0, Lcom/jirbo/adcolony/g;->c:Ljava/lang/String;

    invoke-static {v6}, Lcom/jirbo/adcolony/f;->a(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_7

    move-object/from16 v0, p3

    iget-object v6, v0, Lcom/jirbo/adcolony/g;->g:Ljava/lang/String;

    const-string v7, "native"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const-string v6, "native_third_quartile"

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v6, v1}, Lcom/jirbo/adcolony/as;->b(Ljava/lang/String;Lcom/jirbo/adcolony/g;)V

    .line 162
    :cond_3
    :goto_3
    cmpg-double v4, v4, v14

    if-gez v4, :cond_4

    cmpl-double v4, p1, v14

    if-ltz v4, :cond_4

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/jirbo/adcolony/g;->g:Ljava/lang/String;

    const-string v5, "native"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 164
    sget-object v4, Lcom/jirbo/adcolony/al;->a:Lcom/jirbo/adcolony/al;

    const-string v5, "Tracking ad event - complete"

    invoke-virtual {v4, v5}, Lcom/jirbo/adcolony/al;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/al;

    .line 165
    new-instance v4, Lcom/jirbo/adcolony/a$g;

    invoke-direct {v4}, Lcom/jirbo/adcolony/a$g;-><init>()V

    .line 166
    move-object/from16 v0, p3

    iget-boolean v5, v0, Lcom/jirbo/adcolony/g;->o:Z

    if-eqz v5, :cond_8

    const-string v5, "ad_slot"

    sget-object v6, Lcom/jirbo/adcolony/t;->c:Lcom/jirbo/adcolony/af;

    iget-object v6, v6, Lcom/jirbo/adcolony/af;->e:Lcom/jirbo/adcolony/at;

    iget v6, v6, Lcom/jirbo/adcolony/at;->j:I

    invoke-virtual {v4, v5, v6}, Lcom/jirbo/adcolony/a$g;->b(Ljava/lang/String;I)V

    .line 168
    :goto_4
    const-string v5, "replay"

    move-object/from16 v0, p3

    iget-boolean v6, v0, Lcom/jirbo/adcolony/g;->p:Z

    invoke-virtual {v4, v5, v6}, Lcom/jirbo/adcolony/a$g;->b(Ljava/lang/String;Z)V

    .line 169
    const-string v5, "complete"

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v5, v4, v1}, Lcom/jirbo/adcolony/as;->a(Ljava/lang/String;Lcom/jirbo/adcolony/a$g;Lcom/jirbo/adcolony/g;)V

    .line 170
    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/jirbo/adcolony/g;->e:Lcom/jirbo/adcolony/an$a;

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/jirbo/adcolony/an$a;->q:Z

    .line 172
    :cond_4
    move-wide/from16 v0, p1

    move-object/from16 v2, p3

    iput-wide v0, v2, Lcom/jirbo/adcolony/g;->k:D

    goto/16 :goto_0

    .line 150
    :cond_5
    const-string v6, "first_quartile"

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v6, v1}, Lcom/jirbo/adcolony/as;->b(Ljava/lang/String;Lcom/jirbo/adcolony/g;)V

    goto/16 :goto_1

    .line 155
    :cond_6
    const-string v6, "midpoint"

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v6, v1}, Lcom/jirbo/adcolony/as;->b(Ljava/lang/String;Lcom/jirbo/adcolony/g;)V

    goto/16 :goto_2

    .line 160
    :cond_7
    const-string v6, "third_quartile"

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v6, v1}, Lcom/jirbo/adcolony/as;->b(Ljava/lang/String;Lcom/jirbo/adcolony/g;)V

    goto :goto_3

    .line 167
    :cond_8
    const-string v5, "ad_slot"

    sget-object v6, Lcom/jirbo/adcolony/t;->c:Lcom/jirbo/adcolony/af;

    iget-object v6, v6, Lcom/jirbo/adcolony/af;->e:Lcom/jirbo/adcolony/at;

    iget v6, v6, Lcom/jirbo/adcolony/at;->j:I

    invoke-virtual {v4, v5, v6}, Lcom/jirbo/adcolony/a$g;->b(Ljava/lang/String;I)V

    goto :goto_4
.end method

.method public a(Lcom/jirbo/adcolony/b;)V
    .locals 9

    .prologue
    const/16 v2, 0x2710

    const/4 v8, -0x1

    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 291
    sput-boolean v7, Lcom/jirbo/adcolony/t;->o:Z

    .line 292
    iput-boolean v7, p0, Lcom/jirbo/adcolony/as;->e:Z

    .line 293
    iget v0, p0, Lcom/jirbo/adcolony/as;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/jirbo/adcolony/as;->d:I

    .line 294
    iget-object v0, p1, Lcom/jirbo/adcolony/b;->e:Ljava/lang/Object;

    check-cast v0, Lcom/jirbo/adcolony/as$a;

    .line 295
    sget-object v1, Lcom/jirbo/adcolony/al;->a:Lcom/jirbo/adcolony/al;

    const-string v3, "on_download_finished - event.type = "

    invoke-virtual {v1, v3}, Lcom/jirbo/adcolony/al;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/al;

    move-result-object v1

    iget-object v3, v0, Lcom/jirbo/adcolony/as$a;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/jirbo/adcolony/al;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/al;

    .line 296
    iput-boolean v4, v0, Lcom/jirbo/adcolony/as$a;->k:Z

    .line 298
    iget-boolean v3, p1, Lcom/jirbo/adcolony/b;->i:Z

    .line 299
    if-eqz v3, :cond_0

    iget-object v1, v0, Lcom/jirbo/adcolony/as$a;->c:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 301
    iget-object v1, p1, Lcom/jirbo/adcolony/b;->m:Ljava/lang/String;

    invoke-static {v1}, Lcom/jirbo/adcolony/ak;->b(Ljava/lang/String;)Lcom/jirbo/adcolony/a$g;

    move-result-object v1

    .line 302
    if-eqz v1, :cond_7

    .line 304
    const-string v3, "status"

    invoke-virtual {v1, v3}, Lcom/jirbo/adcolony/a$g;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "success"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 305
    if-eqz v3, :cond_0

    .line 307
    iget-object v5, v0, Lcom/jirbo/adcolony/as$a;->a:Ljava/lang/String;

    const-string v6, "reward_v4vc"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 309
    const-string v5, "v4vc_status"

    invoke-virtual {v1, v5}, Lcom/jirbo/adcolony/a$g;->g(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 311
    const-string v5, "v4vc_callback"

    invoke-virtual {v1, v5}, Lcom/jirbo/adcolony/a$g;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 312
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_4

    .line 315
    new-instance v5, Lcom/jirbo/adcolony/as$a;

    invoke-direct {v5}, Lcom/jirbo/adcolony/as$a;-><init>()V

    .line 316
    const-string v6, "v4vc_callback"

    iput-object v6, v5, Lcom/jirbo/adcolony/as$a;->a:Ljava/lang/String;

    .line 317
    iput-object v1, v5, Lcom/jirbo/adcolony/as$a;->b:Ljava/lang/String;

    .line 318
    iget-object v1, v0, Lcom/jirbo/adcolony/as$a;->d:Ljava/lang/String;

    iput-object v1, v5, Lcom/jirbo/adcolony/as$a;->d:Ljava/lang/String;

    .line 319
    iget v1, v0, Lcom/jirbo/adcolony/as$a;->h:I

    iput v1, v5, Lcom/jirbo/adcolony/as$a;->h:I

    .line 320
    iget-object v1, p0, Lcom/jirbo/adcolony/as;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 343
    :cond_0
    :goto_0
    if-eqz v3, :cond_f

    iget-object v1, v0, Lcom/jirbo/adcolony/as$a;->a:Ljava/lang/String;

    const-string v5, "v4vc_callback"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 345
    sget-object v1, Lcom/jirbo/adcolony/al;->a:Lcom/jirbo/adcolony/al;

    const-string v5, "v4vc_callback response:"

    invoke-virtual {v1, v5}, Lcom/jirbo/adcolony/al;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/al;

    move-result-object v1

    iget-object v5, p1, Lcom/jirbo/adcolony/b;->m:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcom/jirbo/adcolony/al;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/al;

    .line 346
    iget-object v1, p1, Lcom/jirbo/adcolony/b;->m:Ljava/lang/String;

    const-string v5, "vc_success"

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v8, :cond_8

    iget-object v1, p0, Lcom/jirbo/adcolony/as;->g:Ljava/util/HashMap;

    iget v5, v0, Lcom/jirbo/adcolony/as$a;->i:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 348
    sget-object v1, Lcom/jirbo/adcolony/t;->I:Lcom/jirbo/adcolony/ADCVideo;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/jirbo/adcolony/t;->I:Lcom/jirbo/adcolony/ADCVideo;

    iput-boolean v7, v1, Lcom/jirbo/adcolony/ADCVideo;->n:Z

    .line 349
    :cond_1
    sget-object v1, Lcom/jirbo/adcolony/al;->a:Lcom/jirbo/adcolony/al;

    const-string v5, "v4vc_callback success"

    invoke-virtual {v1, v5}, Lcom/jirbo/adcolony/al;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/al;

    .line 350
    iget-object v1, p0, Lcom/jirbo/adcolony/as;->a:Lcom/jirbo/adcolony/af;

    iget-object v5, v0, Lcom/jirbo/adcolony/as$a;->d:Ljava/lang/String;

    iget v6, v0, Lcom/jirbo/adcolony/as$a;->h:I

    invoke-virtual {v1, v7, v5, v6}, Lcom/jirbo/adcolony/af;->a(ZLjava/lang/String;I)V

    move v1, v3

    .line 365
    :goto_1
    if-eqz v1, :cond_b

    .line 367
    sget-object v1, Lcom/jirbo/adcolony/al;->a:Lcom/jirbo/adcolony/al;

    const-string v2, "Event submission SUCCESS for type: "

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/al;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/al;

    move-result-object v1

    iget-object v2, v0, Lcom/jirbo/adcolony/as$a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/al;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/al;

    .line 368
    iput-boolean v7, v0, Lcom/jirbo/adcolony/as$a;->j:Z

    .line 393
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/jirbo/adcolony/as;->a:Lcom/jirbo/adcolony/af;

    iget-object v0, v0, Lcom/jirbo/adcolony/af;->e:Lcom/jirbo/adcolony/at;

    iget-boolean v0, v0, Lcom/jirbo/adcolony/at;->b:Z

    if-nez v0, :cond_3

    .line 395
    invoke-virtual {p0}, Lcom/jirbo/adcolony/as;->c()V

    .line 397
    :cond_3
    return-void

    .line 325
    :cond_4
    sget-object v1, Lcom/jirbo/adcolony/t;->I:Lcom/jirbo/adcolony/ADCVideo;

    if-eqz v1, :cond_5

    sget-object v1, Lcom/jirbo/adcolony/t;->I:Lcom/jirbo/adcolony/ADCVideo;

    iput-boolean v7, v1, Lcom/jirbo/adcolony/ADCVideo;->n:Z

    .line 326
    :cond_5
    sget-object v1, Lcom/jirbo/adcolony/al;->a:Lcom/jirbo/adcolony/al;

    const-string v5, "Client-side V4VC success"

    invoke-virtual {v1, v5}, Lcom/jirbo/adcolony/al;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/al;

    goto :goto_0

    .line 332
    :cond_6
    sget-object v1, Lcom/jirbo/adcolony/al;->a:Lcom/jirbo/adcolony/al;

    const-string v5, "Client-side V4VC failure"

    invoke-virtual {v1, v5}, Lcom/jirbo/adcolony/al;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/al;

    goto/16 :goto_0

    :cond_7
    move v3, v4

    .line 339
    goto/16 :goto_0

    .line 352
    :cond_8
    iget-object v1, p1, Lcom/jirbo/adcolony/b;->m:Ljava/lang/String;

    const-string v5, "vc_decline"

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v8, :cond_9

    iget-object v1, p1, Lcom/jirbo/adcolony/b;->m:Ljava/lang/String;

    const-string v5, "vc_noreward"

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v8, :cond_a

    .line 354
    :cond_9
    sget-object v1, Lcom/jirbo/adcolony/al;->c:Lcom/jirbo/adcolony/al;

    const-string v5, "Server-side V4VC failure: "

    invoke-virtual {v1, v5}, Lcom/jirbo/adcolony/al;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/al;

    move-result-object v1

    iget-object v5, p1, Lcom/jirbo/adcolony/b;->c:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcom/jirbo/adcolony/al;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/al;

    .line 355
    sget-object v1, Lcom/jirbo/adcolony/al;->a:Lcom/jirbo/adcolony/al;

    const-string v5, "v4vc_callback declined"

    invoke-virtual {v1, v5}, Lcom/jirbo/adcolony/al;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/al;

    .line 356
    iget-object v1, p0, Lcom/jirbo/adcolony/as;->a:Lcom/jirbo/adcolony/af;

    const-string v5, ""

    invoke-virtual {v1, v4, v5, v4}, Lcom/jirbo/adcolony/af;->a(ZLjava/lang/String;I)V

    move v1, v3

    goto :goto_1

    .line 360
    :cond_a
    sget-object v1, Lcom/jirbo/adcolony/al;->c:Lcom/jirbo/adcolony/al;

    const-string v3, "Server-side V4VC failure: "

    invoke-virtual {v1, v3}, Lcom/jirbo/adcolony/al;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/al;

    move-result-object v1

    iget-object v3, p1, Lcom/jirbo/adcolony/b;->c:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/jirbo/adcolony/al;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/al;

    move v1, v4

    .line 361
    goto :goto_1

    .line 372
    :cond_b
    sget-object v1, Lcom/jirbo/adcolony/al;->a:Lcom/jirbo/adcolony/al;

    const-string v3, "Event submission FAILED for type: "

    invoke-virtual {v1, v3}, Lcom/jirbo/adcolony/al;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/al;

    move-result-object v1

    iget-object v3, v0, Lcom/jirbo/adcolony/as$a;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/jirbo/adcolony/al;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/al;

    move-result-object v1

    const-string v3, " on try "

    invoke-virtual {v1, v3}, Lcom/jirbo/adcolony/al;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/al;

    move-result-object v1

    iget v3, v0, Lcom/jirbo/adcolony/as$a;->f:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v3}, Lcom/jirbo/adcolony/al;->b(I)Lcom/jirbo/adcolony/al;

    .line 373
    iget v1, v0, Lcom/jirbo/adcolony/as$a;->f:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/jirbo/adcolony/as$a;->f:I

    .line 375
    iget v1, v0, Lcom/jirbo/adcolony/as$a;->f:I

    const/16 v3, 0x18

    if-lt v1, v3, :cond_c

    .line 377
    sget-object v1, Lcom/jirbo/adcolony/al;->d:Lcom/jirbo/adcolony/al;

    const-string v2, "Discarding event after 24 attempts to report."

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/al;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/al;

    .line 378
    iput-boolean v7, v0, Lcom/jirbo/adcolony/as$a;->j:Z

    .line 380
    iget-object v0, v0, Lcom/jirbo/adcolony/as$a;->a:Ljava/lang/String;

    const-string v1, "v4vc_callback"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/jirbo/adcolony/as;->a:Lcom/jirbo/adcolony/af;

    const-string v1, ""

    invoke-virtual {v0, v4, v1, v4}, Lcom/jirbo/adcolony/af;->a(ZLjava/lang/String;I)V

    goto/16 :goto_2

    .line 384
    :cond_c
    const/16 v1, 0x14

    .line 385
    iget v3, v0, Lcom/jirbo/adcolony/as$a;->g:I

    if-lez v3, :cond_d

    iget v1, v0, Lcom/jirbo/adcolony/as$a;->g:I

    mul-int/lit8 v1, v1, 0x3

    .line 386
    :cond_d
    if-le v1, v2, :cond_e

    move v1, v2

    .line 387
    :cond_e
    sget-object v2, Lcom/jirbo/adcolony/al;->a:Lcom/jirbo/adcolony/al;

    const-string v3, "Retrying in "

    invoke-virtual {v2, v3}, Lcom/jirbo/adcolony/al;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/al;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/jirbo/adcolony/al;->a(I)Lcom/jirbo/adcolony/al;

    move-result-object v2

    const-string v3, " seconds (attempt "

    invoke-virtual {v2, v3}, Lcom/jirbo/adcolony/al;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/al;

    move-result-object v2

    iget v3, v0, Lcom/jirbo/adcolony/as$a;->f:I

    invoke-virtual {v2, v3}, Lcom/jirbo/adcolony/al;->a(I)Lcom/jirbo/adcolony/al;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Lcom/jirbo/adcolony/al;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/al;

    .line 388
    iput v1, v0, Lcom/jirbo/adcolony/as$a;->g:I

    .line 389
    invoke-static {}, Lcom/jirbo/adcolony/u;->b()D

    move-result-wide v2

    int-to-double v4, v1

    add-double/2addr v2, v4

    iput-wide v2, v0, Lcom/jirbo/adcolony/as$a;->e:D

    goto/16 :goto_2

    :cond_f
    move v1, v3

    goto/16 :goto_1
.end method

.method a(Ljava/lang/String;Lcom/jirbo/adcolony/a$g;)V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/jirbo/adcolony/as;->a:Lcom/jirbo/adcolony/af;

    iget-object v0, v0, Lcom/jirbo/adcolony/af;->b:Lcom/jirbo/adcolony/ad;

    iget-object v0, v0, Lcom/jirbo/adcolony/ad;->i:Lcom/jirbo/adcolony/an$l;

    iget-object v0, v0, Lcom/jirbo/adcolony/an$l;->k:Lcom/jirbo/adcolony/an$m;

    .line 47
    if-eqz v0, :cond_0

    .line 49
    iget-object v0, v0, Lcom/jirbo/adcolony/an$m;->h:Lcom/jirbo/adcolony/a$g;

    invoke-virtual {v0, p1}, Lcom/jirbo/adcolony/a$g;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/jirbo/adcolony/as;->a(Ljava/lang/String;Ljava/lang/String;Lcom/jirbo/adcolony/a$g;)V

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/jirbo/adcolony/as;->a:Lcom/jirbo/adcolony/af;

    iget-object v0, v0, Lcom/jirbo/adcolony/af;->b:Lcom/jirbo/adcolony/ad;

    iget-object v0, v0, Lcom/jirbo/adcolony/ad;->i:Lcom/jirbo/adcolony/an$l;

    iget-object v0, v0, Lcom/jirbo/adcolony/an$l;->l:Lcom/jirbo/adcolony/an$af;

    .line 53
    if-eqz v0, :cond_1

    .line 55
    iget-object v0, v0, Lcom/jirbo/adcolony/an$af;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v0}, Lcom/jirbo/adcolony/as;->a(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 57
    :cond_1
    return-void
.end method

.method a(Ljava/lang/String;Lcom/jirbo/adcolony/a$g;Lcom/jirbo/adcolony/g;)V
    .locals 2

    .prologue
    .line 66
    if-nez p1, :cond_0

    .line 68
    sget-object v0, Lcom/jirbo/adcolony/al;->d:Lcom/jirbo/adcolony/al;

    const-string v1, "No such event type:"

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/al;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/al;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jirbo/adcolony/al;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/al;

    .line 82
    :goto_0
    return-void

    .line 71
    :cond_0
    const-string v0, "start"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "native_start"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    sget-object v0, Lcom/jirbo/adcolony/t;->c:Lcom/jirbo/adcolony/af;

    iget-object v0, v0, Lcom/jirbo/adcolony/af;->e:Lcom/jirbo/adcolony/at;

    iget v1, v0, Lcom/jirbo/adcolony/at;->j:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/jirbo/adcolony/at;->j:I

    .line 73
    :cond_2
    if-nez p2, :cond_3

    .line 75
    new-instance p2, Lcom/jirbo/adcolony/a$g;

    invoke-direct {p2}, Lcom/jirbo/adcolony/a$g;-><init>()V

    .line 76
    const-string v0, "replay"

    iget-boolean v1, p3, Lcom/jirbo/adcolony/g;->p:Z

    invoke-virtual {p2, v0, v1}, Lcom/jirbo/adcolony/a$g;->b(Ljava/lang/String;Z)V

    .line 79
    :cond_3
    const-string v0, "s_imp_count"

    sget-object v1, Lcom/jirbo/adcolony/t;->c:Lcom/jirbo/adcolony/af;

    iget-object v1, v1, Lcom/jirbo/adcolony/af;->e:Lcom/jirbo/adcolony/at;

    iget v1, v1, Lcom/jirbo/adcolony/at;->j:I

    invoke-virtual {p2, v0, v1}, Lcom/jirbo/adcolony/a$g;->b(Ljava/lang/String;I)V

    .line 80
    iget-object v0, p3, Lcom/jirbo/adcolony/g;->v:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/jirbo/adcolony/as;->a(Ljava/lang/String;Ljava/lang/String;Lcom/jirbo/adcolony/a$g;Lcom/jirbo/adcolony/g;)V

    .line 81
    iget-object v0, p3, Lcom/jirbo/adcolony/g;->w:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v0}, Lcom/jirbo/adcolony/as;->a(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method a(Ljava/lang/String;Lcom/jirbo/adcolony/g;)V
    .locals 4

    .prologue
    .line 25
    iget-object v0, p0, Lcom/jirbo/adcolony/as;->a:Lcom/jirbo/adcolony/af;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jirbo/adcolony/as;->a:Lcom/jirbo/adcolony/af;

    iget-object v0, v0, Lcom/jirbo/adcolony/af;->b:Lcom/jirbo/adcolony/ad;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jirbo/adcolony/as;->a:Lcom/jirbo/adcolony/af;

    iget-object v0, v0, Lcom/jirbo/adcolony/af;->b:Lcom/jirbo/adcolony/ad;

    iget-object v0, v0, Lcom/jirbo/adcolony/ad;->i:Lcom/jirbo/adcolony/an$l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jirbo/adcolony/as;->a:Lcom/jirbo/adcolony/af;

    iget-object v0, v0, Lcom/jirbo/adcolony/af;->b:Lcom/jirbo/adcolony/ad;

    iget-object v0, v0, Lcom/jirbo/adcolony/ad;->i:Lcom/jirbo/adcolony/an$l;

    iget-object v0, v0, Lcom/jirbo/adcolony/an$l;->n:Lcom/jirbo/adcolony/an$h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jirbo/adcolony/as;->a:Lcom/jirbo/adcolony/af;

    iget-object v0, v0, Lcom/jirbo/adcolony/af;->b:Lcom/jirbo/adcolony/ad;

    iget-object v0, v0, Lcom/jirbo/adcolony/ad;->i:Lcom/jirbo/adcolony/an$l;

    iget-object v0, v0, Lcom/jirbo/adcolony/an$l;->n:Lcom/jirbo/adcolony/an$h;

    .line 29
    invoke-virtual {v0, p1}, Lcom/jirbo/adcolony/an$h;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/an$e;

    move-result-object v0

    if-nez v0, :cond_1

    .line 42
    :cond_0
    :goto_0
    return-void

    .line 31
    :cond_1
    sget-object v0, Lcom/jirbo/adcolony/al;->a:Lcom/jirbo/adcolony/al;

    const-string v1, "Ad request for zone "

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/al;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/al;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jirbo/adcolony/al;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/al;

    .line 32
    iget-object v0, p0, Lcom/jirbo/adcolony/as;->a:Lcom/jirbo/adcolony/af;

    iget-object v0, v0, Lcom/jirbo/adcolony/af;->b:Lcom/jirbo/adcolony/ad;

    iget-object v0, v0, Lcom/jirbo/adcolony/ad;->i:Lcom/jirbo/adcolony/an$l;

    iget-object v0, v0, Lcom/jirbo/adcolony/an$l;->n:Lcom/jirbo/adcolony/an$h;

    invoke-virtual {v0, p1}, Lcom/jirbo/adcolony/an$h;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/an$e;

    move-result-object v0

    .line 33
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/jirbo/adcolony/an$e;->l:Lcom/jirbo/adcolony/an$f;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/jirbo/adcolony/an$e;->l:Lcom/jirbo/adcolony/an$f;

    iget-object v1, v1, Lcom/jirbo/adcolony/an$f;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 35
    new-instance v1, Lcom/jirbo/adcolony/a$g;

    invoke-direct {v1}, Lcom/jirbo/adcolony/a$g;-><init>()V

    .line 36
    iget v2, p2, Lcom/jirbo/adcolony/g;->b:I

    if-nez v2, :cond_2

    const-string v2, "request_denied"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/jirbo/adcolony/a$g;->b(Ljava/lang/String;Z)V

    .line 38
    :goto_1
    const-string v2, "request_denied_reason"

    iget v3, p2, Lcom/jirbo/adcolony/g;->b:I

    invoke-virtual {v1, v2, v3}, Lcom/jirbo/adcolony/a$g;->b(Ljava/lang/String;I)V

    .line 39
    const-string v2, "request"

    iget-object v3, v0, Lcom/jirbo/adcolony/an$e;->l:Lcom/jirbo/adcolony/an$f;

    iget-object v3, v3, Lcom/jirbo/adcolony/an$f;->a:Ljava/lang/String;

    invoke-virtual {p0, v2, v3, v1, p2}, Lcom/jirbo/adcolony/as;->a(Ljava/lang/String;Ljava/lang/String;Lcom/jirbo/adcolony/a$g;Lcom/jirbo/adcolony/g;)V

    .line 40
    sget-object v1, Lcom/jirbo/adcolony/al;->a:Lcom/jirbo/adcolony/al;

    const-string v2, "Tracking ad request - URL : "

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/al;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/al;

    move-result-object v1

    iget-object v0, v0, Lcom/jirbo/adcolony/an$e;->l:Lcom/jirbo/adcolony/an$f;

    iget-object v0, v0, Lcom/jirbo/adcolony/an$f;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/jirbo/adcolony/al;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/al;

    goto :goto_0

    .line 37
    :cond_2
    const-string v2, "request_denied"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/jirbo/adcolony/a$g;->b(Ljava/lang/String;Z)V

    goto :goto_1
.end method

.method a(Ljava/lang/String;Ljava/lang/String;Lcom/jirbo/adcolony/a$g;)V
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/jirbo/adcolony/as;->a(Ljava/lang/String;Ljava/lang/String;Lcom/jirbo/adcolony/a$g;Lcom/jirbo/adcolony/g;)V

    .line 87
    return-void
.end method

.method a(Ljava/lang/String;Ljava/lang/String;Lcom/jirbo/adcolony/a$g;Lcom/jirbo/adcolony/g;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 90
    if-eqz p2, :cond_0

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    if-nez p3, :cond_2

    new-instance p3, Lcom/jirbo/adcolony/a$g;

    invoke-direct {p3}, Lcom/jirbo/adcolony/a$g;-><init>()V

    .line 93
    :cond_2
    invoke-static {}, Lcom/jirbo/adcolony/u;->a()Ljava/lang/String;

    move-result-object v0

    .line 94
    if-eqz p4, :cond_3

    const-string v1, "asi"

    iget-object v2, p4, Lcom/jirbo/adcolony/g;->h:Ljava/lang/String;

    invoke-virtual {p3, v1, v2}, Lcom/jirbo/adcolony/a$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    :cond_3
    invoke-static {}, Lcom/jirbo/adcolony/u;->b()D

    move-result-wide v2

    iget-object v1, p0, Lcom/jirbo/adcolony/as;->a:Lcom/jirbo/adcolony/af;

    iget-object v1, v1, Lcom/jirbo/adcolony/af;->e:Lcom/jirbo/adcolony/at;

    iget-wide v4, v1, Lcom/jirbo/adcolony/at;->g:D

    sub-double/2addr v2, v4

    .line 97
    const-wide/16 v4, 0x0

    cmpl-double v1, v2, v4

    if-lez v1, :cond_4

    const-wide v4, 0x4122750000000000L    # 604800.0

    cmpg-double v1, v2, v4

    if-gez v1, :cond_4

    .line 99
    :cond_4
    const-string v1, "s_time"

    sget-object v2, Lcom/jirbo/adcolony/t;->c:Lcom/jirbo/adcolony/af;

    iget-object v2, v2, Lcom/jirbo/adcolony/af;->e:Lcom/jirbo/adcolony/at;

    iget-wide v2, v2, Lcom/jirbo/adcolony/at;->i:D

    invoke-virtual {p3, v1, v2, v3}, Lcom/jirbo/adcolony/a$g;->b(Ljava/lang/String;D)V

    .line 100
    const-string v1, "sid"

    iget-object v2, p0, Lcom/jirbo/adcolony/as;->a:Lcom/jirbo/adcolony/af;

    iget-object v2, v2, Lcom/jirbo/adcolony/af;->e:Lcom/jirbo/adcolony/at;

    iget-object v2, v2, Lcom/jirbo/adcolony/at;->k:Ljava/lang/String;

    invoke-virtual {p3, v1, v2}, Lcom/jirbo/adcolony/a$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string v1, "guid"

    invoke-virtual {p3, v1, v0}, Lcom/jirbo/adcolony/a$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v1, "guid_key"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "DUBu6wJ27y6xs7VWmNDw67DD"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jirbo/adcolony/u;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v1, v0}, Lcom/jirbo/adcolony/a$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    new-instance v0, Lcom/jirbo/adcolony/as$a;

    invoke-direct {v0}, Lcom/jirbo/adcolony/as$a;-><init>()V

    .line 105
    iput-object p1, v0, Lcom/jirbo/adcolony/as$a;->a:Ljava/lang/String;

    .line 106
    iput-object p2, v0, Lcom/jirbo/adcolony/as$a;->b:Ljava/lang/String;

    .line 107
    sget-object v1, Lcom/jirbo/adcolony/al;->a:Lcom/jirbo/adcolony/al;

    const-string v2, "EVENT ---------------------------"

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/al;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/al;

    .line 108
    sget-object v1, Lcom/jirbo/adcolony/al;->a:Lcom/jirbo/adcolony/al;

    const-string v2, "EVENT - TYPE = "

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/al;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/al;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/jirbo/adcolony/al;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/al;

    .line 109
    sget-object v1, Lcom/jirbo/adcolony/al;->a:Lcom/jirbo/adcolony/al;

    const-string v2, "EVENT - URL  = "

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/al;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/al;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/jirbo/adcolony/al;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/al;

    .line 110
    invoke-virtual {p3}, Lcom/jirbo/adcolony/a$g;->o()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/jirbo/adcolony/as$a;->c:Ljava/lang/String;

    .line 112
    const-string v1, "reward_v4vc"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 114
    const-string v1, "v4vc_name"

    invoke-virtual {p3, v1}, Lcom/jirbo/adcolony/a$g;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/jirbo/adcolony/as$a;->d:Ljava/lang/String;

    .line 115
    const-string v1, "v4vc_amount"

    invoke-virtual {p3, v1}, Lcom/jirbo/adcolony/a$g;->f(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/jirbo/adcolony/as$a;->h:I

    .line 118
    :cond_5
    iget-object v1, p0, Lcom/jirbo/adcolony/as;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    iput-boolean v6, p0, Lcom/jirbo/adcolony/as;->e:Z

    .line 121
    sput-boolean v6, Lcom/jirbo/adcolony/t;->o:Z

    goto/16 :goto_0
.end method

.method a(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 126
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 130
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 132
    new-instance v2, Lcom/jirbo/adcolony/as$a;

    invoke-direct {v2}, Lcom/jirbo/adcolony/as$a;-><init>()V

    .line 133
    iput-object p1, v2, Lcom/jirbo/adcolony/as$a;->a:Ljava/lang/String;

    .line 134
    iput-object v0, v2, Lcom/jirbo/adcolony/as$a;->b:Ljava/lang/String;

    .line 135
    iput-boolean v3, v2, Lcom/jirbo/adcolony/as$a;->l:Z

    .line 136
    iget-object v0, p0, Lcom/jirbo/adcolony/as;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 139
    :cond_2
    iput-boolean v3, p0, Lcom/jirbo/adcolony/as;->e:Z

    .line 140
    sput-boolean v3, Lcom/jirbo/adcolony/t;->o:Z

    goto :goto_0
.end method

.method b()V
    .locals 6

    .prologue
    .line 183
    const/4 v0, 0x1

    sput-boolean v0, Lcom/jirbo/adcolony/t;->o:Z

    .line 184
    new-instance v0, Lcom/jirbo/adcolony/ag;

    const-string v1, "tracking_info.txt"

    invoke-direct {v0, v1}, Lcom/jirbo/adcolony/ag;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/jirbo/adcolony/ak;->c(Lcom/jirbo/adcolony/ag;)Lcom/jirbo/adcolony/a$c;

    move-result-object v1

    .line 185
    if-eqz v1, :cond_2

    .line 187
    iget-object v0, p0, Lcom/jirbo/adcolony/as;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 188
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Lcom/jirbo/adcolony/a$c;->f_()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 190
    invoke-virtual {v1, v0}, Lcom/jirbo/adcolony/a$c;->a(I)Lcom/jirbo/adcolony/a$g;

    move-result-object v2

    .line 191
    new-instance v3, Lcom/jirbo/adcolony/as$a;

    invoke-direct {v3}, Lcom/jirbo/adcolony/as$a;-><init>()V

    .line 192
    const-string v4, "type"

    invoke-virtual {v2, v4}, Lcom/jirbo/adcolony/a$g;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/jirbo/adcolony/as$a;->a:Ljava/lang/String;

    .line 193
    const-string v4, "url"

    invoke-virtual {v2, v4}, Lcom/jirbo/adcolony/a$g;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/jirbo/adcolony/as$a;->b:Ljava/lang/String;

    .line 194
    const-string v4, "payload"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/jirbo/adcolony/a$g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/jirbo/adcolony/as$a;->c:Ljava/lang/String;

    .line 195
    const-string v4, "attempts"

    invoke-virtual {v2, v4}, Lcom/jirbo/adcolony/a$g;->f(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/jirbo/adcolony/as$a;->f:I

    .line 196
    const-string v4, "third_party"

    invoke-virtual {v2, v4}, Lcom/jirbo/adcolony/a$g;->g(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v3, Lcom/jirbo/adcolony/as$a;->l:Z

    .line 198
    iget-object v4, v3, Lcom/jirbo/adcolony/as$a;->a:Ljava/lang/String;

    const-string v5, "v4vc_callback"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, v3, Lcom/jirbo/adcolony/as$a;->a:Ljava/lang/String;

    const-string v5, "reward_v4vc"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 200
    :cond_0
    const-string v4, "v4vc_name"

    invoke-virtual {v2, v4}, Lcom/jirbo/adcolony/a$g;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/jirbo/adcolony/as$a;->d:Ljava/lang/String;

    .line 201
    const-string v4, "v4vc_amount"

    invoke-virtual {v2, v4}, Lcom/jirbo/adcolony/a$g;->f(Ljava/lang/String;)I

    move-result v2

    iput v2, v3, Lcom/jirbo/adcolony/as$a;->h:I

    .line 203
    :cond_1
    iget-object v2, p0, Lcom/jirbo/adcolony/as;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 206
    :cond_2
    sget-object v0, Lcom/jirbo/adcolony/al;->a:Lcom/jirbo/adcolony/al;

    const-string v1, "Loaded "

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/al;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/al;

    move-result-object v0

    iget-object v1, p0, Lcom/jirbo/adcolony/as;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/al;->a(I)Lcom/jirbo/adcolony/al;

    move-result-object v0

    const-string v1, " events"

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/al;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/al;

    .line 207
    return-void
.end method

.method b(Ljava/lang/String;Lcom/jirbo/adcolony/g;)V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/jirbo/adcolony/as;->a(Ljava/lang/String;Lcom/jirbo/adcolony/a$g;Lcom/jirbo/adcolony/g;)V

    .line 62
    return-void
.end method

.method c()V
    .locals 6

    .prologue
    .line 211
    iget-object v0, p0, Lcom/jirbo/adcolony/as;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 212
    iget-object v0, p0, Lcom/jirbo/adcolony/as;->c:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/jirbo/adcolony/as;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 213
    iget-object v0, p0, Lcom/jirbo/adcolony/as;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 214
    new-instance v2, Lcom/jirbo/adcolony/a$c;

    invoke-direct {v2}, Lcom/jirbo/adcolony/a$c;-><init>()V

    .line 215
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/jirbo/adcolony/as;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 217
    iget-object v0, p0, Lcom/jirbo/adcolony/as;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jirbo/adcolony/as$a;

    .line 218
    iget-boolean v3, v0, Lcom/jirbo/adcolony/as$a;->j:Z

    if-nez v3, :cond_3

    .line 220
    iget-object v3, p0, Lcom/jirbo/adcolony/as;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    new-instance v3, Lcom/jirbo/adcolony/a$g;

    invoke-direct {v3}, Lcom/jirbo/adcolony/a$g;-><init>()V

    .line 223
    const-string v4, "type"

    iget-object v5, v0, Lcom/jirbo/adcolony/as$a;->a:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/jirbo/adcolony/a$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    const-string v4, "url"

    iget-object v5, v0, Lcom/jirbo/adcolony/as$a;->b:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/jirbo/adcolony/a$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    iget-object v4, v0, Lcom/jirbo/adcolony/as$a;->c:Ljava/lang/String;

    if-eqz v4, :cond_0

    const-string v4, "payload"

    iget-object v5, v0, Lcom/jirbo/adcolony/as$a;->c:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/jirbo/adcolony/a$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    :cond_0
    const-string v4, "attempts"

    iget v5, v0, Lcom/jirbo/adcolony/as$a;->f:I

    invoke-virtual {v3, v4, v5}, Lcom/jirbo/adcolony/a$g;->b(Ljava/lang/String;I)V

    .line 227
    iget-object v4, v0, Lcom/jirbo/adcolony/as$a;->d:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 229
    const-string v4, "v4vc_name"

    iget-object v5, v0, Lcom/jirbo/adcolony/as$a;->d:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/jirbo/adcolony/a$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    const-string v4, "v4vc_amount"

    iget v5, v0, Lcom/jirbo/adcolony/as$a;->h:I

    invoke-virtual {v3, v4, v5}, Lcom/jirbo/adcolony/a$g;->b(Ljava/lang/String;I)V

    .line 232
    :cond_1
    iget-boolean v0, v0, Lcom/jirbo/adcolony/as$a;->l:Z

    if-eqz v0, :cond_2

    const-string v0, "third_party"

    const/4 v4, 0x1

    invoke-virtual {v3, v0, v4}, Lcom/jirbo/adcolony/a$g;->b(Ljava/lang/String;Z)V

    .line 233
    :cond_2
    invoke-virtual {v2, v3}, Lcom/jirbo/adcolony/a$c;->a(Lcom/jirbo/adcolony/a$i;)Lcom/jirbo/adcolony/a$c;

    .line 215
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 236
    :cond_4
    iget-object v0, p0, Lcom/jirbo/adcolony/as;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 238
    sget-object v0, Lcom/jirbo/adcolony/al;->a:Lcom/jirbo/adcolony/al;

    const-string v1, "Saving tracking_info ("

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/al;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/al;

    move-result-object v0

    iget-object v1, p0, Lcom/jirbo/adcolony/as;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/al;->a(I)Lcom/jirbo/adcolony/al;

    move-result-object v0

    const-string v1, " events)"

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/al;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/al;

    .line 239
    new-instance v0, Lcom/jirbo/adcolony/ag;

    const-string v1, "tracking_info.txt"

    invoke-direct {v0, v1}, Lcom/jirbo/adcolony/ag;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v2}, Lcom/jirbo/adcolony/ak;->a(Lcom/jirbo/adcolony/ag;Lcom/jirbo/adcolony/a$c;)V

    .line 240
    return-void
.end method

.method d()V
    .locals 1

    .prologue
    .line 244
    iget-boolean v0, p0, Lcom/jirbo/adcolony/as;->e:Z

    if-eqz v0, :cond_0

    .line 246
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jirbo/adcolony/as;->e:Z

    .line 247
    invoke-virtual {p0}, Lcom/jirbo/adcolony/as;->c()V

    .line 249
    :cond_0
    invoke-virtual {p0}, Lcom/jirbo/adcolony/as;->e()V

    .line 250
    return-void
.end method

.method e()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 254
    iget-object v0, p0, Lcom/jirbo/adcolony/as;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 287
    :cond_0
    return-void

    .line 256
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/jirbo/adcolony/as;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x3e8

    if-le v0, v1, :cond_2

    iget-object v0, p0, Lcom/jirbo/adcolony/as;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/jirbo/adcolony/as;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 258
    :cond_2
    invoke-static {}, Lcom/jirbo/adcolony/aq;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    invoke-static {}, Lcom/jirbo/adcolony/u;->b()D

    move-result-wide v2

    .line 261
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/jirbo/adcolony/as;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/jirbo/adcolony/as;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jirbo/adcolony/as$a;

    .line 264
    iget-wide v4, v0, Lcom/jirbo/adcolony/as$a;->e:D

    cmpg-double v4, v4, v2

    if-gez v4, :cond_6

    iget-boolean v4, v0, Lcom/jirbo/adcolony/as$a;->k:Z

    if-nez v4, :cond_6

    .line 266
    iget v4, p0, Lcom/jirbo/adcolony/as;->d:I

    const/4 v5, 0x5

    if-eq v4, v5, :cond_0

    .line 267
    iget v4, p0, Lcom/jirbo/adcolony/as;->d:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/jirbo/adcolony/as;->d:I

    .line 268
    iput-boolean v7, v0, Lcom/jirbo/adcolony/as$a;->k:Z

    .line 270
    iget-object v4, v0, Lcom/jirbo/adcolony/as$a;->a:Ljava/lang/String;

    const-string v5, "v4vc_callback"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 272
    iget v4, p0, Lcom/jirbo/adcolony/as;->f:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/jirbo/adcolony/as;->f:I

    iput v4, v0, Lcom/jirbo/adcolony/as$a;->i:I

    .line 273
    iget-object v4, p0, Lcom/jirbo/adcolony/as;->g:Ljava/util/HashMap;

    iget v5, v0, Lcom/jirbo/adcolony/as$a;->i:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-boolean v6, Lcom/jirbo/adcolony/t;->f:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    :cond_3
    new-instance v4, Lcom/jirbo/adcolony/b;

    iget-object v5, p0, Lcom/jirbo/adcolony/as;->a:Lcom/jirbo/adcolony/af;

    iget-object v6, v0, Lcom/jirbo/adcolony/as$a;->b:Ljava/lang/String;

    invoke-direct {v4, v5, v6, p0}, Lcom/jirbo/adcolony/b;-><init>(Lcom/jirbo/adcolony/af;Ljava/lang/String;Lcom/jirbo/adcolony/b$a;)V

    invoke-virtual {v4, v0}, Lcom/jirbo/adcolony/b;->a(Ljava/lang/Object;)Lcom/jirbo/adcolony/b;

    move-result-object v4

    .line 276
    iget-boolean v5, v0, Lcom/jirbo/adcolony/as$a;->l:Z

    if-eqz v5, :cond_4

    iput-boolean v7, v4, Lcom/jirbo/adcolony/b;->h:Z

    .line 277
    :cond_4
    iget-object v5, v0, Lcom/jirbo/adcolony/as$a;->c:Ljava/lang/String;

    if-eqz v5, :cond_5

    .line 279
    const-string v5, "application/json"

    iget-object v6, v0, Lcom/jirbo/adcolony/as$a;->c:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lcom/jirbo/adcolony/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/jirbo/adcolony/b;

    .line 282
    :cond_5
    sget-object v5, Lcom/jirbo/adcolony/al;->b:Lcom/jirbo/adcolony/al;

    const-string v6, "Submitting \'"

    invoke-virtual {v5, v6}, Lcom/jirbo/adcolony/al;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/al;

    move-result-object v5

    iget-object v0, v0, Lcom/jirbo/adcolony/as$a;->a:Ljava/lang/String;

    invoke-virtual {v5, v0}, Lcom/jirbo/adcolony/al;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/al;

    move-result-object v0

    const-string v5, "\' event."

    invoke-virtual {v0, v5}, Lcom/jirbo/adcolony/al;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/al;

    .line 283
    invoke-virtual {v4}, Lcom/jirbo/adcolony/b;->a()V

    .line 284
    sput-boolean v7, Lcom/jirbo/adcolony/t;->o:Z

    .line 261
    :cond_6
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_1
.end method
