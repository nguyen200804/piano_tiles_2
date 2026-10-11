.class public Lcom/cmplay/util/b/d$a;
.super Lcom/cmplay/ipc/a;
.source "ServicePreferencesHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmplay/util/b/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/cmplay/util/k;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 196
    invoke-direct {p0}, Lcom/cmplay/ipc/a;-><init>()V

    .line 197
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/cmplay/util/b/d$a;->a:Ljava/util/Map;

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)Lcom/cmplay/util/k;
    .locals 2

    .prologue
    .line 200
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 201
    const/4 v0, 0x0

    .line 208
    :cond_0
    :goto_0
    return-object v0

    .line 203
    :cond_1
    iget-object v0, p0, Lcom/cmplay/util/b/d$a;->a:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmplay/util/k;

    .line 204
    if-nez v0, :cond_0

    .line 205
    new-instance v0, Lcom/cmplay/util/b/d;

    invoke-direct {v0, p1, p2}, Lcom/cmplay/util/b/d;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 206
    iget-object v1, p0, Lcom/cmplay/util/b/d$a;->a:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/content/ContentValues;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 213
    invoke-static {}, Lcom/cmplay/i/c;->d()V

    .line 214
    invoke-static {}, Lcom/cmplay/util/b/d;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 215
    invoke-virtual {p0}, Lcom/cmplay/util/b/d$a;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/cmplay/util/b/d$a;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/cmplay/util/k;

    move-result-object v0

    .line 216
    if-nez v0, :cond_0

    .line 217
    const/4 v0, 0x0

    .line 257
    :goto_0
    return-object v0

    .line 219
    :cond_0
    invoke-static {}, Lcom/cmplay/util/b/d;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 220
    invoke-static {}, Lcom/cmplay/util/b/d;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 221
    if-ne v1, v3, :cond_5

    .line 222
    const-string v1, ""

    .line 223
    if-ne v2, v3, :cond_1

    .line 224
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/cmplay/util/b/d;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/cmplay/util/b/d;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-interface {v0, v2, v3}, Lcom/cmplay/util/k;->a(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 226
    :cond_1
    if-ne v2, v4, :cond_2

    .line 227
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/cmplay/util/b/d;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/cmplay/util/b/d;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v0, v2, v3}, Lcom/cmplay/util/k;->a(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 229
    :cond_2
    if-ne v2, v5, :cond_3

    .line 230
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/cmplay/util/b/d;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/cmplay/util/b/d;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {v0, v2, v4, v5}, Lcom/cmplay/util/k;->a(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 232
    :cond_3
    if-ne v2, v6, :cond_4

    .line 233
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/cmplay/util/b/d;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/cmplay/util/b/d;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/cmplay/util/k;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 235
    :cond_4
    if-ne v2, v7, :cond_6

    .line 236
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/cmplay/util/b/d;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/cmplay/util/b/d;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-interface {v0, v2, v3}, Lcom/cmplay/util/k;->a(Ljava/lang/String;F)F

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 239
    :cond_5
    if-ne v1, v4, :cond_6

    .line 240
    if-ne v2, v3, :cond_7

    .line 241
    invoke-static {}, Lcom/cmplay/util/b/d;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/cmplay/util/b/d;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/cmplay/util/k;->b(Ljava/lang/String;Z)V

    .line 257
    :cond_6
    :goto_1
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 243
    :cond_7
    if-ne v2, v4, :cond_8

    .line 244
    invoke-static {}, Lcom/cmplay/util/b/d;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/cmplay/util/b/d;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/cmplay/util/k;->b(Ljava/lang/String;I)V

    goto :goto_1

    .line 246
    :cond_8
    if-ne v2, v5, :cond_9

    .line 247
    invoke-static {}, Lcom/cmplay/util/b/d;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/cmplay/util/b/d;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lcom/cmplay/util/k;->b(Ljava/lang/String;J)V

    goto :goto_1

    .line 249
    :cond_9
    if-ne v2, v6, :cond_a

    .line 250
    invoke-static {}, Lcom/cmplay/util/b/d;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/cmplay/util/b/d;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/cmplay/util/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 252
    :cond_a
    if-ne v2, v7, :cond_6

    .line 253
    invoke-static {}, Lcom/cmplay/util/b/d;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/cmplay/util/b/d;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/cmplay/util/k;->b(Ljava/lang/String;F)V

    goto :goto_1
.end method
