.class public Lcom/duapps/ad/base/d;
.super Ljava/lang/Object;
.source "ChannelFactory.java"


# static fields
.field public static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 41
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "admob"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "download"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "facebook"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "inmobi"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "online"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "dlh"

    aput-object v2, v0, v1

    sput-object v0, Lcom/duapps/ad/base/d;->a:[Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/util/List;ILjava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    const/4 v0, 0x5

    const/4 v1, 0x1

    .line 118
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_0

    if-nez p2, :cond_1

    .line 147
    :cond_0
    :goto_0
    return v1

    .line 122
    :cond_1
    if-ge p1, v1, :cond_2

    move p1, v1

    .line 126
    :cond_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-le p1, v2, :cond_3

    .line 127
    if-le p1, v0, :cond_3

    move p1, v0

    .line 131
    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 132
    invoke-interface {v2, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 133
    const-string v0, "download"

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 134
    const-string v0, "download"

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 137
    :cond_4
    const-string v0, "dlh"

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 138
    const-string v0, "dlh"

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 141
    :cond_5
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-le p1, v0, :cond_0

    .line 142
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sub-int v1, p1, v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;IILjava/util/List;Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;)J
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/duapps/ad/entity/a/b",
            "<",
            "Lcom/duapps/ad/entity/a/a;",
            ">;>;",
            "Ljava/lang/String;",
            ")J"
        }
    .end annotation

    .prologue
    .line 48
    const-wide/16 v4, 0x0

    .line 49
    if-eqz p0, :cond_0

    if-eqz p3, :cond_0

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_0

    if-nez p4, :cond_2

    :cond_0
    move-wide v10, v4

    .line 69
    :cond_1
    return-wide v10

    .line 52
    :cond_2
    const-string v2, "ChannelFactory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cacheSize=="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-static {p0}, Lcom/duapps/ad/c/a/b;->a(Landroid/content/Context;)Lcom/duapps/ad/c/a/b;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v6, 0x0

    invoke-virtual {v2, p1, v3, v6}, Lcom/duapps/ad/c/a/b;->a(IZZ)Lcom/duapps/ad/c/a/c;

    move-result-object v12

    .line 54
    const/4 v2, 0x0

    .line 55
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    move-wide v10, v4

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 56
    invoke-virtual {v12, v3}, Lcom/duapps/ad/c/a/c;->a(Ljava/lang/String;)J

    move-result-wide v6

    .line 57
    move-object/from16 v0, p3

    move/from16 v1, p2

    invoke-static {v0, v1, v3}, Lcom/duapps/ad/base/d;->a(Ljava/util/List;ILjava/lang/String;)I

    move-result v8

    .line 58
    const-string v4, "ChannelFactory"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Create channel:"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, ",wt:"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, ",cacheSize: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, ", iType : "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, p0

    move v5, p1

    move-object/from16 v9, p5

    .line 59
    invoke-static/range {v3 .. v9}, Lcom/duapps/ad/base/d;->a(Ljava/lang/String;Landroid/content/Context;IJILjava/lang/String;)Lcom/duapps/ad/entity/a/b;

    move-result-object v8

    .line 60
    if-eqz v8, :cond_3

    .line 61
    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v8}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    add-long v4, v10, v6

    .line 63
    sub-long v6, v4, v6

    iput-wide v6, v8, Lcom/duapps/ad/entity/a/b;->g:J

    .line 64
    const-string v6, "ChannelFactory"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "channel:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "startTime:"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v10, v8, Lcom/duapps/ad/entity/a/b;->g:J

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iput v2, v8, Lcom/duapps/ad/entity/a/b;->m:I

    .line 66
    add-int/lit8 v2, v2, 0x1

    :goto_1
    move-wide v10, v4

    .line 68
    goto/16 :goto_0

    :cond_3
    move-wide v4, v10

    goto :goto_1
.end method

.method private static a(Ljava/lang/String;Landroid/content/Context;IJILjava/lang/String;)Lcom/duapps/ad/entity/a/b;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "IJI",
            "Ljava/lang/String;",
            ")",
            "Lcom/duapps/ad/entity/a/b",
            "<",
            "Lcom/duapps/ad/entity/a/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 73
    const/4 v1, 0x0

    .line 74
    const-string v0, "facebook"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 76
    new-instance v1, Lcom/duapps/ad/entity/b;

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/duapps/ad/entity/b;-><init>(Landroid/content/Context;IJILjava/lang/String;)V

    .line 98
    :cond_0
    :goto_0
    return-object v1

    .line 77
    :cond_1
    const-string v0, "download"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 79
    new-instance v1, Lcom/duapps/ad/base/o;

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move-object v6, p6

    invoke-direct/range {v1 .. v6}, Lcom/duapps/ad/base/o;-><init>(Landroid/content/Context;IJLjava/lang/String;)V

    goto :goto_0

    .line 80
    :cond_2
    const-string v0, "inmobi"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 82
    new-instance v1, Lcom/duapps/ad/inmobi/a;

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/duapps/ad/inmobi/a;-><init>(Landroid/content/Context;IJILjava/lang/String;)V

    goto :goto_0

    .line 83
    :cond_3
    const-string v0, "dlh"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 85
    new-instance v1, Lcom/duapps/ad/b/a;

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move-object v6, p6

    invoke-direct/range {v1 .. v6}, Lcom/duapps/ad/b/a;-><init>(Landroid/content/Context;IJLjava/lang/String;)V

    goto :goto_0

    .line 86
    :cond_4
    const-string v0, "online"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 88
    new-instance v1, Lcom/duapps/ad/base/q;

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/duapps/ad/base/q;-><init>(Landroid/content/Context;IJILjava/lang/String;)V

    goto :goto_0

    .line 89
    :cond_5
    const-string v0, "admob"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 91
    invoke-static {p1}, Lcom/duapps/ad/base/p;->a(Landroid/content/Context;)Lcom/duapps/ad/base/p;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/duapps/ad/base/p;->d(I)Ljava/lang/String;

    move-result-object v7

    .line 92
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    new-instance v1, Lcom/duapps/ad/a/a;

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move v6, p5

    move-object v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/duapps/ad/a/a;-><init>(Landroid/content/Context;IJILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 96
    :cond_6
    const-string v0, "ChannelFactory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupport error channel:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/duapps/ad/base/h;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static a(Ljava/util/List;Landroid/content/Context;ILjava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 102
    new-instance v2, Ljava/util/ArrayList;

    sget-object v0, Lcom/duapps/ad/base/d;->a:[Ljava/lang/String;

    array-length v0, v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 103
    sget-object v0, Lcom/duapps/ad/base/d;->a:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 105
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 106
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 107
    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 108
    invoke-static {v0, p1, p2, p3}, Lcom/duapps/ad/base/d;->a(Ljava/lang/String;Landroid/content/Context;ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 109
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 113
    :cond_1
    return-object v2
.end method

.method private static a(Ljava/lang/String;Landroid/content/Context;ILjava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 152
    const-string v2, "offerwall"

    invoke-static {p3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "facebook"

    .line 153
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    .line 167
    :cond_0
    :goto_0
    return v0

    .line 156
    :cond_1
    const-string v2, "admob"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 157
    invoke-static {p1}, Lcom/duapps/ad/base/p;->a(Landroid/content/Context;)Lcom/duapps/ad/base/p;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/duapps/ad/base/p;->d(I)Ljava/lang/String;

    move-result-object v2

    .line 158
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xa

    if-le v2, v3, :cond_2

    invoke-static {}, Lcom/duapps/ad/c/b/c;->c()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 159
    :cond_3
    const-string v2, "facebook"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 160
    const-string v2, "offerwall"

    invoke-static {p3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 161
    invoke-static {p1}, Lcom/duapps/ad/base/p;->a(Landroid/content/Context;)Lcom/duapps/ad/base/p;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/duapps/ad/base/p;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {}, Lcom/duapps/ad/c/b/c;->b()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0

    .line 163
    :cond_5
    invoke-static {p1}, Lcom/duapps/ad/base/p;->a(Landroid/content/Context;)Lcom/duapps/ad/base/p;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/duapps/ad/base/p;->b(I)Ljava/util/List;

    move-result-object v2

    .line 164
    if-eqz v2, :cond_6

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_6

    invoke-static {}, Lcom/duapps/ad/c/b/c;->b()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_6
    move v0, v1

    goto :goto_0
.end method
