.class public final Lcom/cmcm/orion/picks/a/a/b;
.super Ljava/lang/Object;
.source "AdUtil.java"


# static fields
.field public static a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const/16 v0, 0x39

    sput v0, Lcom/cmcm/orion/picks/a/a/b;->a:I

    return-void
.end method

.method private static a(Lcom/cmcm/orion/picks/a/a/a;)Landroid/content/ContentValues;
    .locals 4

    .prologue
    .line 186
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 188
    :try_start_0
    const-string v0, "title"

    invoke-virtual {p0}, Lcom/cmcm/orion/picks/a/a/a;->i()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/cmcm/orion/picks/a/a/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    const-string v0, "pic_url"

    invoke-virtual {p0}, Lcom/cmcm/orion/picks/a/a/a;->k()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/cmcm/orion/picks/a/a/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    const-string v0, "pkg"

    invoke-virtual {p0}, Lcom/cmcm/orion/picks/a/a/a;->l()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/cmcm/orion/picks/a/a/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const-string v0, "pkg_url"

    invoke-virtual {p0}, Lcom/cmcm/orion/picks/a/a/a;->m()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/cmcm/orion/picks/a/a/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    const-string v0, "desc"

    invoke-virtual {p0}, Lcom/cmcm/orion/picks/a/a/a;->j()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/cmcm/orion/picks/a/a/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    const-string v0, "des"

    invoke-virtual {p0}, Lcom/cmcm/orion/picks/a/a/a;->n()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/cmcm/orion/picks/a/a/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const-string v0, "download_num"

    invoke-virtual {p0}, Lcom/cmcm/orion/picks/a/a/a;->o()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/cmcm/orion/picks/a/a/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    const-string v0, "rating"

    invoke-virtual {p0}, Lcom/cmcm/orion/picks/a/a/a;->r()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 196
    const-string v0, "pkg_size"

    invoke-virtual {p0}, Lcom/cmcm/orion/picks/a/a/a;->p()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/cmcm/orion/picks/a/a/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    const-string v0, "res_type"

    invoke-virtual {p0}, Lcom/cmcm/orion/picks/a/a/a;->q()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 198
    const-string v0, "mt_type"

    invoke-virtual {p0}, Lcom/cmcm/orion/picks/a/a/a;->s()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 199
    const-string v0, "app_show_type"

    invoke-virtual {p0}, Lcom/cmcm/orion/picks/a/a/a;->t()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 200
    const-string v0, "background"

    invoke-virtual {p0}, Lcom/cmcm/orion/picks/a/a/a;->B()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    const-string v0, "button_txt"

    invoke-virtual {p0}, Lcom/cmcm/orion/picks/a/a/a;->C()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    const-string v0, "html"

    invoke-virtual {p0}, Lcom/cmcm/orion/picks/a/a/a;->E()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    const-string v0, "extension"

    invoke-virtual {p0}, Lcom/cmcm/orion/picks/a/a/a;->D()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    const-string v0, "deeplink"

    invoke-virtual {p0}, Lcom/cmcm/orion/picks/a/a/a;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    const-string v0, "priority"

    invoke-virtual {p0}, Lcom/cmcm/orion/picks/a/a/a;->g()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 206
    const-string v0, "click_tracking_url"

    invoke-virtual {p0}, Lcom/cmcm/orion/picks/a/a/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    const-string v0, "third_imp_url"

    invoke-virtual {p0}, Lcom/cmcm/orion/picks/a/a/a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    const-string v0, "create_time"

    invoke-virtual {p0}, Lcom/cmcm/orion/picks/a/a/a;->f()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 209
    const-string v0, "posid"

    invoke-virtual {p0}, Lcom/cmcm/orion/picks/a/a/a;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    const-string v2, "is_show"

    invoke-virtual {p0}, Lcom/cmcm/orion/picks/a/a/a;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 211
    const-string v0, "ext_pics"

    invoke-virtual {p0}, Lcom/cmcm/orion/picks/a/a/a;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    const-string v0, "mpa"

    invoke-virtual {p0}, Lcom/cmcm/orion/picks/a/a/a;->G()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    const-string v0, "source"

    invoke-virtual {p0}, Lcom/cmcm/orion/picks/a/a/a;->w()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    const-string v0, "app_id"

    invoke-virtual {p0}, Lcom/cmcm/orion/picks/a/a/a;->x()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 215
    const-string v0, "brand_type"

    invoke-virtual {p0}, Lcom/cmcm/orion/picks/a/a/a;->J()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 216
    const-string v0, "tabid"

    invoke-virtual {p0}, Lcom/cmcm/orion/picks/a/a/a;->H()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    const-string v0, "news_ad"

    invoke-virtual {p0}, Lcom/cmcm/orion/picks/a/a/a;->I()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    const-string v0, "ad_status"

    invoke-virtual {p0}, Lcom/cmcm/orion/picks/a/a/a;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 219
    const-string v0, "width"

    invoke-virtual {p0}, Lcom/cmcm/orion/picks/a/a/a;->M()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 220
    const-string v0, "height"

    invoke-virtual {p0}, Lcom/cmcm/orion/picks/a/a/a;->N()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 221
    const-string v0, "report_interval"

    invoke-virtual {p0}, Lcom/cmcm/orion/picks/a/a/a;->L()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 222
    const-string v0, "report_ratio"

    invoke-virtual {p0}, Lcom/cmcm/orion/picks/a/a/a;->O()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    :goto_1
    return-object v1

    .line 210
    :cond_0
    const/4 v0, 0x0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public static a(Lcom/cmcm/orion/picks/a/a/a;Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 2

    .prologue
    .line 273
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 274
    const-string v0, "_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 275
    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 276
    invoke-virtual {p0, v0}, Lcom/cmcm/orion/picks/a/a/a;->c(Ljava/lang/String;)V

    .line 278
    :cond_0
    invoke-static {p0}, Lcom/cmcm/orion/picks/a/a/b;->a(Lcom/cmcm/orion/picks/a/a/a;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/database/Cursor;)Lcom/cmcm/orion/picks/a/a/a;
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 286
    if-nez p0, :cond_0

    .line 287
    const/4 v0, 0x0

    .line 325
    :goto_0
    return-object v0

    .line 289
    :cond_0
    new-instance v1, Lcom/cmcm/orion/picks/a/a/a;

    invoke-direct {v1}, Lcom/cmcm/orion/picks/a/a/a;-><init>()V

    .line 290
    const-string v2, "title"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cmcm/orion/picks/a/a/a;->f(Ljava/lang/String;)V

    .line 291
    const-string v2, "pic_url"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cmcm/orion/picks/a/a/a;->h(Ljava/lang/String;)V

    .line 292
    const-string v2, "pkg"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cmcm/orion/picks/a/a/a;->i(Ljava/lang/String;)V

    .line 293
    const-string v2, "pkg_url"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cmcm/orion/picks/a/a/a;->j(Ljava/lang/String;)V

    .line 294
    const-string v2, "des"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cmcm/orion/picks/a/a/a;->k(Ljava/lang/String;)V

    .line 295
    const-string v2, "desc"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cmcm/orion/picks/a/a/a;->g(Ljava/lang/String;)V

    .line 296
    const-string v2, "download_num"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cmcm/orion/picks/a/a/a;->l(Ljava/lang/String;)V

    .line 297
    const-string v2, "rating"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/cmcm/orion/picks/a/a/a;->a(D)V

    .line 298
    const-string v2, "pkg_size"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cmcm/orion/picks/a/a/a;->m(Ljava/lang/String;)V

    .line 299
    const-string v2, "res_type"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/cmcm/orion/picks/a/a/a;->c(I)V

    .line 300
    const-string v2, "mt_type"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/cmcm/orion/picks/a/a/a;->d(I)V

    .line 301
    const-string v2, "app_show_type"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/cmcm/orion/picks/a/a/a;->e(I)V

    .line 302
    const-string v2, "background"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cmcm/orion/picks/a/a/a;->o(Ljava/lang/String;)V

    .line 303
    const-string v2, "button_txt"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cmcm/orion/picks/a/a/a;->p(Ljava/lang/String;)V

    .line 304
    const-string v2, "html"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cmcm/orion/picks/a/a/a;->r(Ljava/lang/String;)V

    .line 305
    const-string v2, "extension"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cmcm/orion/picks/a/a/a;->q(Ljava/lang/String;)V

    .line 306
    const-string v2, "deeplink"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cmcm/orion/picks/a/a/a;->e(Ljava/lang/String;)V

    .line 307
    const-string v2, "priority"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/cmcm/orion/picks/a/a/a;->b(I)V

    .line 308
    const-string v2, "click_tracking_url"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cmcm/orion/picks/a/a/a;->a(Ljava/lang/String;)V

    .line 309
    const-string v2, "third_imp_url"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cmcm/orion/picks/a/a/a;->b(Ljava/lang/String;)V

    .line 310
    const-string v2, "create_time"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/cmcm/orion/picks/a/a/a;->a(J)V

    .line 311
    const-string v2, "posid"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cmcm/orion/picks/a/a/a;->c(Ljava/lang/String;)V

    .line 312
    const-string v2, "is_show"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, v0, :cond_1

    :goto_1
    invoke-virtual {v1, v0}, Lcom/cmcm/orion/picks/a/a/a;->a(Z)V

    .line 313
    const-string v0, "ext_pics"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/cmcm/orion/picks/a/a/a;->d(Ljava/lang/String;)V

    .line 314
    const-string v0, "mpa"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/cmcm/orion/picks/a/a/a;->s(Ljava/lang/String;)V

    .line 315
    const-string v0, "source"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/cmcm/orion/picks/a/a/a;->n(Ljava/lang/String;)V

    .line 316
    const-string v0, "app_id"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/cmcm/orion/picks/a/a/a;->f(I)V

    .line 317
    const-string v0, "brand_type"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/cmcm/orion/picks/a/a/a;->g(I)V

    .line 318
    const-string v0, "tabid"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/cmcm/orion/picks/a/a/a;->t(Ljava/lang/String;)V

    .line 319
    const-string v0, "news_ad"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/cmcm/orion/picks/a/a/a;->u(Ljava/lang/String;)V

    .line 320
    const-string v0, "ad_status"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/cmcm/orion/picks/a/a/a;->a(I)V

    .line 321
    const-string v0, "width"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/cmcm/orion/picks/a/a/a;->h(I)V

    .line 322
    const-string v0, "height"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/cmcm/orion/picks/a/a/a;->i(I)V

    .line 323
    const-string v0, "report_interval"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/cmcm/orion/picks/a/a/a;->b(J)V

    .line 324
    const-string v0, "report_ratio"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/cmcm/orion/picks/a/a/a;->j(I)V

    move-object v0, v1

    .line 325
    goto/16 :goto_0

    .line 312
    :cond_1
    const/4 v0, 0x0

    goto/16 :goto_1
.end method

.method public static a(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)Lcom/cmcm/orion/picks/a/a/a;
    .locals 10

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 104
    new-instance v6, Lcom/cmcm/orion/picks/a/a/a;

    invoke-direct {v6}, Lcom/cmcm/orion/picks/a/a/a;-><init>()V

    .line 105
    if-eqz p1, :cond_4

    .line 106
    const-string v2, "title"

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/cmcm/orion/picks/a/a/a;->f(Ljava/lang/String;)V

    .line 107
    const-string v2, "desc"

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/cmcm/orion/picks/a/a/a;->g(Ljava/lang/String;)V

    .line 108
    const-string v2, "pic_url"

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/cmcm/orion/picks/a/a/a;->h(Ljava/lang/String;)V

    .line 109
    const-string v2, "pkg"

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/cmcm/orion/picks/a/a/a;->i(Ljava/lang/String;)V

    .line 110
    const-string v2, "pkg_url"

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/cmcm/orion/picks/a/a/a;->j(Ljava/lang/String;)V

    .line 111
    const-string v2, "des"

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/cmcm/orion/picks/a/a/a;->k(Ljava/lang/String;)V

    .line 112
    const-string v2, "download_num"

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/cmcm/orion/picks/a/a/a;->l(Ljava/lang/String;)V

    .line 113
    const-string v2, "rating"

    const-wide/16 v4, 0x0

    invoke-virtual {p1, v2, v4, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v2

    invoke-virtual {v6, v2, v3}, Lcom/cmcm/orion/picks/a/a/a;->a(D)V

    .line 114
    const-string v2, "pkg_size"

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/cmcm/orion/picks/a/a/a;->m(Ljava/lang/String;)V

    .line 115
    const-string v2, "res_type"

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v6, v2}, Lcom/cmcm/orion/picks/a/a/a;->c(I)V

    .line 116
    const-string v2, "mt_type"

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v6, v2}, Lcom/cmcm/orion/picks/a/a/a;->d(I)V

    .line 117
    const-string v2, "app_show_type"

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v6, v2}, Lcom/cmcm/orion/picks/a/a/a;->e(I)V

    .line 118
    const-string v2, "background"

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/cmcm/orion/picks/a/a/a;->o(Ljava/lang/String;)V

    .line 119
    const-string v2, "button_txt"

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/cmcm/orion/picks/a/a/a;->p(Ljava/lang/String;)V

    .line 120
    const-string v2, "html"

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/cmcm/orion/picks/a/a/a;->r(Ljava/lang/String;)V

    .line 121
    const-string v2, "extension"

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/cmcm/orion/picks/a/a/a;->q(Ljava/lang/String;)V

    .line 122
    const-string v2, "deeplink"

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/cmcm/orion/picks/a/a/a;->e(Ljava/lang/String;)V

    .line 123
    const-string v2, "priority"

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v6, v2}, Lcom/cmcm/orion/picks/a/a/a;->b(I)V

    .line 124
    const-string v2, "click_tracking_url"

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/cmcm/orion/picks/a/a/a;->a(Ljava/lang/String;)V

    .line 125
    const-string v2, "third_imp_url"

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/cmcm/orion/picks/a/a/a;->b(Ljava/lang/String;)V

    .line 126
    const-string v2, "install_tracking_url"

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/cmcm/orion/picks/a/a/a;->v(Ljava/lang/String;)V

    .line 127
    const-string v2, "create_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p1, v2, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-virtual {v6, v2, v3}, Lcom/cmcm/orion/picks/a/a/a;->a(J)V

    .line 128
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 129
    invoke-virtual {v6, p0}, Lcom/cmcm/orion/picks/a/a/a;->c(Ljava/lang/String;)V

    .line 133
    :goto_0
    const-string v2, "is_show"

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_1

    .line 134
    :goto_1
    invoke-virtual {v6, v0}, Lcom/cmcm/orion/picks/a/a/a;->a(Z)V

    .line 135
    const-string v0, "ext_pics"

    const-string v2, ""

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/cmcm/orion/picks/a/a/a;->d(Ljava/lang/String;)V

    .line 136
    const-string v0, "source"

    const-string v2, ""

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/cmcm/orion/picks/a/a/a;->n(Ljava/lang/String;)V

    .line 137
    const-string v0, "app_id"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/cmcm/orion/picks/a/a/a;->f(I)V

    .line 138
    const-string v0, "brand_type"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/cmcm/orion/picks/a/a/a;->g(I)V

    .line 139
    invoke-virtual {v6, p2}, Lcom/cmcm/orion/picks/a/a/a;->t(Ljava/lang/String;)V

    .line 140
    const-string v0, "news_ad"

    const-string v2, ""

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/cmcm/orion/picks/a/a/a;->u(Ljava/lang/String;)V

    .line 141
    const-string v0, "ad_status"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/cmcm/orion/picks/a/a/a;->a(I)V

    .line 142
    const-string v0, "mpa"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 144
    :try_start_0
    const-string v0, "mpa"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1159
    invoke-virtual {v6, v0}, Lcom/cmcm/orion/picks/a/a/a;->s(Ljava/lang/String;)V

    .line 1164
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1166
    :try_start_1
    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    move v7, v1

    .line 1167
    :goto_2
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v7, v0, :cond_2

    .line 1168
    invoke-virtual {v9, v7}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 1169
    const-string v1, "mpa_id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1170
    const-string v2, "ac"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1171
    const-string v3, "title"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1172
    const-string v4, "pic_url"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1173
    const-string v5, "pkg_url"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1174
    new-instance v0, Lcom/cmcm/orion/picks/a/a/k;

    invoke-direct/range {v0 .. v5}, Lcom/cmcm/orion/picks/a/a/k;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1175
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1167
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    goto :goto_2

    .line 131
    :cond_0
    const-string v2, "posid"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/cmcm/orion/picks/a/a/a;->c(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    move v0, v1

    .line 133
    goto/16 :goto_1

    :catch_0
    move-exception v0

    .line 1180
    :cond_2
    :try_start_2
    new-instance v0, Lcom/cmcm/orion/picks/a/a/l;

    invoke-direct {v0}, Lcom/cmcm/orion/picks/a/a/l;-><init>()V

    .line 1181
    invoke-virtual {v0, v8}, Lcom/cmcm/orion/picks/a/a/l;->a(Ljava/util/List;)V

    .line 1182
    invoke-virtual {v6, v0}, Lcom/cmcm/orion/picks/a/a/a;->a(Lcom/cmcm/orion/picks/a/a/l;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 149
    :cond_3
    :goto_3
    const-string v0, "width"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/cmcm/orion/picks/a/a/a;->h(I)V

    .line 150
    const-string v0, "height"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/cmcm/orion/picks/a/a/a;->i(I)V

    .line 151
    const-string v0, "report_interval"

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-virtual {v6, v0, v1}, Lcom/cmcm/orion/picks/a/a/a;->b(J)V

    .line 152
    const-string v0, "report_ratio"

    const/16 v1, 0x64

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/cmcm/orion/picks/a/a/a;->j(I)V

    move-object v0, v6

    .line 155
    :goto_4
    return-object v0

    :cond_4
    move-object v0, v6

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_3
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 282
    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CREATE TABLE IF NOT EXISTS "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(_id INTEGER PRIMARY KEY,title TEXT,desc TEXT,pic_url TEXT,pkg TEXT,pkg_url TEXT,des TEXT,download_num TEXT,rating DOUBLE,pkg_size TEXT,res_type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " INTEGER,app_show_type INTEGER,mt_type INTEGER,background TEXT,button_txt TEXT,font INTEGER,html TEXT,extension TEXT,deeplink TEXT,priority INTEGER,click_tracking_url TEXT,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "third_imp_url TEXT,create_time INTEGER,posid TEXT,is_show INTEGER,mpa TEXT,ext_pics TEXT,source TEXT,app_id INTEGER,brand_type INTEGER,tabid TEXT,news_ad TEXT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",ad_status INTEGER,width INTEGER,height INTEGER,report_interval INTEGER,report_ratio INTEGER);"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 369
    return-void
.end method
