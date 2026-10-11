.class public final Lcom/duapps/ad/stats/DuAdCacheProvider;
.super Landroid/content/ContentProvider;
.source "DuAdCacheProvider.java"


# static fields
.field private static b:Landroid/net/Uri;

.field private static c:Landroid/net/Uri;

.field private static d:Landroid/net/Uri;

.field private static e:Landroid/net/Uri;

.field private static f:Landroid/net/Uri;

.field private static g:Landroid/net/Uri;

.field private static h:Landroid/net/Uri;

.field private static i:Landroid/net/Uri;

.field private static final j:Ljava/lang/Object;

.field private static final l:Ljava/lang/Object;

.field private static final n:Ljava/lang/Object;

.field private static p:Landroid/content/UriMatcher;


# instance fields
.field private a:Ljava/lang/String;

.field private k:Lcom/duapps/ad/stats/j;

.field private m:Lcom/duapps/ad/stats/k;

.field private o:Lcom/duapps/ad/stats/g;

.field private q:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/duapps/ad/stats/DuAdCacheProvider;->j:Ljava/lang/Object;

    .line 56
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/duapps/ad/stats/DuAdCacheProvider;->l:Ljava/lang/Object;

    .line 65
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/duapps/ad/stats/DuAdCacheProvider;->n:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 15
    const-class v0, Lcom/duapps/ad/stats/DuAdCacheProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duapps/ad/stats/DuAdCacheProvider;->a:Ljava/lang/String;

    return-void
.end method

.method private a(Landroid/net/Uri;)I
    .locals 4

    .prologue
    .line 187
    const/4 v0, -0x1

    .line 188
    if-eqz p1, :cond_0

    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-ne v1, p1, :cond_1

    .line 193
    :cond_0
    :goto_0
    return v0

    .line 191
    :cond_1
    sget-object v0, Lcom/duapps/ad/stats/DuAdCacheProvider;->p:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 192
    iget-object v1, p0, Lcom/duapps/ad/stats/DuAdCacheProvider;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "match code = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)Landroid/content/UriMatcher;
    .locals 3

    .prologue
    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/duapps/ad/stats/DuAdCacheProvider;->b:Landroid/net/Uri;

    .line 85
    sget-object v0, Lcom/duapps/ad/stats/DuAdCacheProvider;->b:Landroid/net/Uri;

    const-string v1, "parse"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/duapps/ad/stats/DuAdCacheProvider;->c:Landroid/net/Uri;

    .line 86
    sget-object v0, Lcom/duapps/ad/stats/DuAdCacheProvider;->b:Landroid/net/Uri;

    const-string v1, "click"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/duapps/ad/stats/DuAdCacheProvider;->d:Landroid/net/Uri;

    .line 87
    sget-object v0, Lcom/duapps/ad/stats/DuAdCacheProvider;->b:Landroid/net/Uri;

    const-string v1, "cache"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/duapps/ad/stats/DuAdCacheProvider;->e:Landroid/net/Uri;

    .line 88
    sget-object v0, Lcom/duapps/ad/stats/DuAdCacheProvider;->b:Landroid/net/Uri;

    const-string v1, "record"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/duapps/ad/stats/DuAdCacheProvider;->f:Landroid/net/Uri;

    .line 89
    sget-object v0, Lcom/duapps/ad/stats/DuAdCacheProvider;->b:Landroid/net/Uri;

    const-string v1, "preparse"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/duapps/ad/stats/DuAdCacheProvider;->g:Landroid/net/Uri;

    .line 90
    sget-object v0, Lcom/duapps/ad/stats/DuAdCacheProvider;->b:Landroid/net/Uri;

    const-string v1, "searchRecord"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/duapps/ad/stats/DuAdCacheProvider;->h:Landroid/net/Uri;

    .line 91
    sget-object v0, Lcom/duapps/ad/stats/DuAdCacheProvider;->b:Landroid/net/Uri;

    const-string v1, "preparsecache"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/duapps/ad/stats/DuAdCacheProvider;->i:Landroid/net/Uri;

    .line 92
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    .line 93
    const-string v1, "parse"

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 94
    const-string v1, "click"

    const/4 v2, 0x2

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 95
    const-string v1, "cache"

    const/4 v2, 0x3

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 96
    const-string v1, "record"

    const/4 v2, 0x4

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 97
    const-string v1, "preparse"

    const/4 v2, 0x5

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 98
    const-string v1, "searchRecord"

    const/4 v2, 0x6

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 99
    const-string v1, "preparsecache"

    const/4 v2, 0x7

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 100
    return-object v0
.end method

.method public static a(Landroid/content/Context;I)Landroid/net/Uri;
    .locals 4

    .prologue
    .line 267
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 268
    sget-object v1, Lcom/duapps/ad/stats/DuAdCacheProvider;->b:Landroid/net/Uri;

    if-nez v1, :cond_0

    .line 269
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".DuAdCacheProvider"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 270
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/duapps/ad/stats/DuAdCacheProvider;->b:Landroid/net/Uri;

    .line 272
    :cond_0
    sget-object v1, Lcom/duapps/ad/stats/DuAdCacheProvider;->c:Landroid/net/Uri;

    if-nez v1, :cond_1

    .line 273
    sget-object v1, Lcom/duapps/ad/stats/DuAdCacheProvider;->b:Landroid/net/Uri;

    const-string v2, "parse"

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/duapps/ad/stats/DuAdCacheProvider;->c:Landroid/net/Uri;

    .line 275
    :cond_1
    sget-object v1, Lcom/duapps/ad/stats/DuAdCacheProvider;->d:Landroid/net/Uri;

    if-nez v1, :cond_2

    .line 276
    sget-object v1, Lcom/duapps/ad/stats/DuAdCacheProvider;->b:Landroid/net/Uri;

    const-string v2, "click"

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/duapps/ad/stats/DuAdCacheProvider;->d:Landroid/net/Uri;

    .line 278
    :cond_2
    sget-object v1, Lcom/duapps/ad/stats/DuAdCacheProvider;->e:Landroid/net/Uri;

    if-nez v1, :cond_3

    .line 279
    sget-object v1, Lcom/duapps/ad/stats/DuAdCacheProvider;->b:Landroid/net/Uri;

    const-string v2, "cache"

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/duapps/ad/stats/DuAdCacheProvider;->e:Landroid/net/Uri;

    .line 281
    :cond_3
    sget-object v1, Lcom/duapps/ad/stats/DuAdCacheProvider;->f:Landroid/net/Uri;

    if-nez v1, :cond_4

    .line 282
    sget-object v1, Lcom/duapps/ad/stats/DuAdCacheProvider;->b:Landroid/net/Uri;

    const-string v2, "record"

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/duapps/ad/stats/DuAdCacheProvider;->f:Landroid/net/Uri;

    .line 284
    :cond_4
    sget-object v1, Lcom/duapps/ad/stats/DuAdCacheProvider;->g:Landroid/net/Uri;

    if-nez v1, :cond_5

    .line 285
    sget-object v1, Lcom/duapps/ad/stats/DuAdCacheProvider;->b:Landroid/net/Uri;

    const-string v2, "preparse"

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/duapps/ad/stats/DuAdCacheProvider;->g:Landroid/net/Uri;

    .line 287
    :cond_5
    sget-object v1, Lcom/duapps/ad/stats/DuAdCacheProvider;->h:Landroid/net/Uri;

    if-nez v1, :cond_6

    .line 288
    sget-object v1, Lcom/duapps/ad/stats/DuAdCacheProvider;->b:Landroid/net/Uri;

    const-string v2, "searchRecord"

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/duapps/ad/stats/DuAdCacheProvider;->h:Landroid/net/Uri;

    .line 290
    :cond_6
    sget-object v1, Lcom/duapps/ad/stats/DuAdCacheProvider;->i:Landroid/net/Uri;

    if-nez v1, :cond_7

    .line 291
    sget-object v1, Lcom/duapps/ad/stats/DuAdCacheProvider;->b:Landroid/net/Uri;

    const-string v2, "preparsecache"

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/duapps/ad/stats/DuAdCacheProvider;->i:Landroid/net/Uri;

    .line 294
    :cond_7
    packed-switch p1, :pswitch_data_0

    .line 319
    :goto_0
    return-object v0

    .line 296
    :pswitch_0
    sget-object v0, Lcom/duapps/ad/stats/DuAdCacheProvider;->c:Landroid/net/Uri;

    goto :goto_0

    .line 299
    :pswitch_1
    sget-object v0, Lcom/duapps/ad/stats/DuAdCacheProvider;->e:Landroid/net/Uri;

    goto :goto_0

    .line 302
    :pswitch_2
    sget-object v0, Lcom/duapps/ad/stats/DuAdCacheProvider;->d:Landroid/net/Uri;

    goto :goto_0

    .line 305
    :pswitch_3
    sget-object v0, Lcom/duapps/ad/stats/DuAdCacheProvider;->g:Landroid/net/Uri;

    goto :goto_0

    .line 308
    :pswitch_4
    sget-object v0, Lcom/duapps/ad/stats/DuAdCacheProvider;->f:Landroid/net/Uri;

    goto :goto_0

    .line 311
    :pswitch_5
    sget-object v0, Lcom/duapps/ad/stats/DuAdCacheProvider;->h:Landroid/net/Uri;

    goto :goto_0

    .line 314
    :pswitch_6
    sget-object v0, Lcom/duapps/ad/stats/DuAdCacheProvider;->i:Landroid/net/Uri;

    goto :goto_0

    .line 294
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private a(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 227
    packed-switch p1, :pswitch_data_0

    .line 241
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 229
    :pswitch_1
    const-string v0, "ad_parse"

    goto :goto_0

    .line 231
    :pswitch_2
    const-string v0, "preparse_cache"

    goto :goto_0

    .line 233
    :pswitch_3
    const-string v0, "cache"

    goto :goto_0

    .line 235
    :pswitch_4
    const-string v0, "tbvc"

    goto :goto_0

    .line 237
    :pswitch_5
    const-string v0, "appcache"

    goto :goto_0

    .line 239
    :pswitch_6
    const-string v0, "srecord"

    goto :goto_0

    .line 227
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".DuAdCacheProvider"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 80
    invoke-static {v0}, Lcom/duapps/ad/stats/DuAdCacheProvider;->a(Ljava/lang/String;)Landroid/content/UriMatcher;

    move-result-object v0

    sput-object v0, Lcom/duapps/ad/stats/DuAdCacheProvider;->p:Landroid/content/UriMatcher;

    .line 81
    return-void
.end method

.method private b(Landroid/content/Context;I)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 197
    const/4 v0, 0x0

    .line 198
    packed-switch p2, :pswitch_data_0

    .line 223
    :goto_0
    :pswitch_0
    return-object v0

    .line 201
    :pswitch_1
    iget-object v0, p0, Lcom/duapps/ad/stats/DuAdCacheProvider;->m:Lcom/duapps/ad/stats/k;

    if-nez v0, :cond_0

    .line 202
    new-instance v0, Lcom/duapps/ad/stats/k;

    invoke-direct {v0, p1}, Lcom/duapps/ad/stats/k;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/duapps/ad/stats/DuAdCacheProvider;->m:Lcom/duapps/ad/stats/k;

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/duapps/ad/stats/DuAdCacheProvider;->m:Lcom/duapps/ad/stats/k;

    invoke-virtual {v0}, Lcom/duapps/ad/stats/k;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    goto :goto_0

    .line 209
    :pswitch_2
    iget-object v0, p0, Lcom/duapps/ad/stats/DuAdCacheProvider;->k:Lcom/duapps/ad/stats/j;

    if-nez v0, :cond_1

    .line 210
    new-instance v0, Lcom/duapps/ad/stats/j;

    invoke-direct {v0, p1}, Lcom/duapps/ad/stats/j;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/duapps/ad/stats/DuAdCacheProvider;->k:Lcom/duapps/ad/stats/j;

    .line 212
    :cond_1
    iget-object v0, p0, Lcom/duapps/ad/stats/DuAdCacheProvider;->k:Lcom/duapps/ad/stats/j;

    invoke-virtual {v0}, Lcom/duapps/ad/stats/j;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    goto :goto_0

    .line 215
    :pswitch_3
    iget-object v0, p0, Lcom/duapps/ad/stats/DuAdCacheProvider;->o:Lcom/duapps/ad/stats/g;

    if-nez v0, :cond_2

    .line 216
    new-instance v0, Lcom/duapps/ad/stats/g;

    invoke-direct {v0, p1}, Lcom/duapps/ad/stats/g;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/duapps/ad/stats/DuAdCacheProvider;->o:Lcom/duapps/ad/stats/g;

    .line 218
    :cond_2
    iget-object v0, p0, Lcom/duapps/ad/stats/DuAdCacheProvider;->o:Lcom/duapps/ad/stats/g;

    invoke-virtual {v0}, Lcom/duapps/ad/stats/g;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    goto :goto_0

    .line 198
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private b(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 246
    const/4 v0, 0x0

    .line 247
    packed-switch p1, :pswitch_data_0

    .line 263
    :goto_0
    :pswitch_0
    return-object v0

    .line 250
    :pswitch_1
    sget-object v0, Lcom/duapps/ad/stats/DuAdCacheProvider;->l:Ljava/lang/Object;

    goto :goto_0

    .line 255
    :pswitch_2
    sget-object v0, Lcom/duapps/ad/stats/DuAdCacheProvider;->j:Ljava/lang/Object;

    goto :goto_0

    .line 258
    :pswitch_3
    sget-object v0, Lcom/duapps/ad/stats/DuAdCacheProvider;->n:Ljava/lang/Object;

    goto :goto_0

    .line 247
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 158
    iget-object v1, p0, Lcom/duapps/ad/stats/DuAdCacheProvider;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "del selcetion  = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " , selectionArgs = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 159
    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    .line 158
    :goto_0
    invoke-static {v1, v0}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    invoke-direct {p0, p1}, Lcom/duapps/ad/stats/DuAdCacheProvider;->a(Landroid/net/Uri;)I

    move-result v1

    .line 161
    const/4 v0, -0x1

    .line 162
    if-lez v1, :cond_0

    const/4 v2, 0x7

    if-le v1, v2, :cond_2

    .line 169
    :cond_0
    :goto_1
    return v0

    .line 159
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 164
    :cond_2
    invoke-direct {p0, v1}, Lcom/duapps/ad/stats/DuAdCacheProvider;->b(I)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 165
    :try_start_0
    invoke-virtual {p0}, Lcom/duapps/ad/stats/DuAdCacheProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/duapps/ad/stats/DuAdCacheProvider;->b(Landroid/content/Context;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 166
    invoke-direct {p0, v1}, Lcom/duapps/ad/stats/DuAdCacheProvider;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 167
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    sget-object v0, Lcom/duapps/ad/stats/DuAdCacheProvider;->p:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 138
    const-string v0, "vnd.android.cursor.dir/unkown"

    :goto_0
    return-object v0

    .line 124
    :pswitch_0
    const-string v0, "vnd.android.cursor.dir/parse"

    goto :goto_0

    .line 126
    :pswitch_1
    const-string v0, "vnd.android.cursor.dir/click"

    goto :goto_0

    .line 128
    :pswitch_2
    const-string v0, "vnd.android.cursor.dir/cache"

    goto :goto_0

    .line 130
    :pswitch_3
    const-string v0, "vnd.android.cursor.dir/preparse"

    goto :goto_0

    .line 132
    :pswitch_4
    const-string v0, "vnd.android.cursor.dir/record"

    goto :goto_0

    .line 134
    :pswitch_5
    const-string v0, "vnd.android.cursor.dir/searchRecord"

    goto :goto_0

    .line 136
    :pswitch_6
    const-string v0, "vnd.android.cursor.dir/preparseCache"

    goto :goto_0

    .line 122
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 145
    invoke-direct {p0, p1}, Lcom/duapps/ad/stats/DuAdCacheProvider;->a(Landroid/net/Uri;)I

    move-result v1

    .line 146
    if-lez v1, :cond_0

    const/4 v2, 0x7

    if-le v1, v2, :cond_1

    :cond_0
    move-object p1, v0

    .line 152
    :goto_0
    return-object p1

    .line 148
    :cond_1
    invoke-direct {p0, v1}, Lcom/duapps/ad/stats/DuAdCacheProvider;->b(I)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 149
    :try_start_0
    invoke-virtual {p0}, Lcom/duapps/ad/stats/DuAdCacheProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/duapps/ad/stats/DuAdCacheProvider;->b(Landroid/content/Context;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 150
    invoke-direct {p0, v1}, Lcom/duapps/ad/stats/DuAdCacheProvider;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 151
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/duapps/ad/stats/DuAdCacheProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/duapps/ad/stats/DuAdCacheProvider;->q:Landroid/content/Context;

    .line 74
    iget-object v0, p0, Lcom/duapps/ad/stats/DuAdCacheProvider;->q:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/duapps/ad/stats/DuAdCacheProvider;->a(Landroid/content/Context;)V

    .line 75
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9

    .prologue
    const/4 v0, 0x0

    .line 106
    invoke-direct {p0, p1}, Lcom/duapps/ad/stats/DuAdCacheProvider;->a(Landroid/net/Uri;)I

    move-result v1

    .line 107
    if-lez v1, :cond_0

    const/4 v2, 0x7

    if-le v1, v2, :cond_1

    .line 116
    :cond_0
    :goto_0
    return-object v0

    .line 110
    :cond_1
    invoke-direct {p0, v1}, Lcom/duapps/ad/stats/DuAdCacheProvider;->b(I)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    .line 111
    :try_start_0
    invoke-virtual {p0}, Lcom/duapps/ad/stats/DuAdCacheProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/duapps/ad/stats/DuAdCacheProvider;->b(Landroid/content/Context;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 112
    invoke-direct {p0, v1}, Lcom/duapps/ad/stats/DuAdCacheProvider;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 114
    monitor-exit v8

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 175
    invoke-direct {p0, p1}, Lcom/duapps/ad/stats/DuAdCacheProvider;->a(Landroid/net/Uri;)I

    move-result v1

    .line 176
    const/4 v0, -0x1

    .line 177
    if-lez v1, :cond_0

    const/4 v2, 0x7

    if-le v1, v2, :cond_1

    .line 183
    :cond_0
    :goto_0
    return v0

    .line 179
    :cond_1
    invoke-direct {p0, v1}, Lcom/duapps/ad/stats/DuAdCacheProvider;->b(I)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 180
    :try_start_0
    invoke-virtual {p0}, Lcom/duapps/ad/stats/DuAdCacheProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/duapps/ad/stats/DuAdCacheProvider;->b(Landroid/content/Context;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 181
    invoke-direct {p0, v1}, Lcom/duapps/ad/stats/DuAdCacheProvider;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 182
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
