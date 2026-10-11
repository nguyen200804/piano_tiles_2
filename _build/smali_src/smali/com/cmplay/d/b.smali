.class public Lcom/cmplay/d/b;
.super Ljava/lang/Object;
.source "LanguageManager.java"


# static fields
.field private static a:Lcom/cmplay/d/b;


# instance fields
.field private b:Ljava/util/Locale;

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    sput-object v0, Lcom/cmplay/d/b;->a:Lcom/cmplay/d/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cmplay/d/b;->b:Ljava/util/Locale;

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/cmplay/d/b;->c:Ljava/util/Map;

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cmplay/d/b;->d:Z

    .line 35
    const-string v0, "key_language_selected"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/cmplay/util/aa;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 36
    const-string v1, "key_country_selected"

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/cmplay/util/aa;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 37
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 38
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/cmplay/d/b;->b:Ljava/util/Locale;

    .line 42
    :goto_0
    return-void

    .line 40
    :cond_0
    new-instance v2, Ljava/util/Locale;

    invoke-direct {v2, v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/cmplay/d/b;->b:Ljava/util/Locale;

    goto :goto_0
.end method

.method private a(Lorg/apache/commons/csv/CSVRecord;Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 153
    invoke-virtual {p1}, Lorg/apache/commons/csv/CSVRecord;->size()I

    move-result v1

    .line 154
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 155
    invoke-virtual {p1, v0}, Lorg/apache/commons/csv/CSVRecord;->get(I)Ljava/lang/String;

    move-result-object v2

    .line 156
    invoke-static {v2, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 160
    :goto_1
    return v0

    .line 154
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 160
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static declared-synchronized a()Lcom/cmplay/d/b;
    .locals 2

    .prologue
    .line 45
    const-class v1, Lcom/cmplay/d/b;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/cmplay/d/b;->a:Lcom/cmplay/d/b;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcom/cmplay/d/b;

    invoke-direct {v0}, Lcom/cmplay/d/b;-><init>()V

    sput-object v0, Lcom/cmplay/d/b;->a:Lcom/cmplay/d/b;

    .line 48
    :cond_0
    sget-object v0, Lcom/cmplay/d/b;->a:Lcom/cmplay/d/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    const-string v0, "en"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    const-string v0, "EN"

    .line 206
    :goto_0
    return-object v0

    .line 175
    :cond_0
    const-string v0, "zh"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 176
    const-string v0, "tw"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "hk"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "mo"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 179
    :cond_1
    const-string v0, "TW"

    goto :goto_0

    .line 181
    :cond_2
    const-string v0, "CN"

    goto :goto_0

    .line 183
    :cond_3
    const-string v0, "ar"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 184
    const-string v0, "AR"

    goto :goto_0

    .line 185
    :cond_4
    const-string v0, "de"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 186
    const-string v0, "DE"

    goto :goto_0

    .line 187
    :cond_5
    const-string v0, "fr"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 188
    const-string v0, "FR"

    goto :goto_0

    .line 189
    :cond_6
    const-string v0, "pt"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 190
    const-string v0, "PO"

    goto :goto_0

    .line 191
    :cond_7
    const-string v0, "es"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 192
    const-string v0, "ES"

    goto :goto_0

    .line 193
    :cond_8
    const-string v0, "ko"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 194
    const-string v0, "KR"

    goto :goto_0

    .line 195
    :cond_9
    const-string v0, "ja"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 196
    const-string v0, "JP"

    goto :goto_0

    .line 197
    :cond_a
    const-string v0, "ru"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 198
    const-string v0, "RU"

    goto :goto_0

    .line 199
    :cond_b
    const-string v0, "it"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 200
    const-string v0, "IT"

    goto/16 :goto_0

    .line 201
    :cond_c
    const-string v0, "tr"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 202
    const-string v0, "TR"

    goto/16 :goto_0

    .line 203
    :cond_d
    const-string v0, "in"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 204
    const-string v0, "IN"

    goto/16 :goto_0

    .line 206
    :cond_e
    const-string v0, "EN"

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/cmplay/d/b;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/cmplay/d/b;->c:Ljava/util/Map;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 106
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 107
    if-nez v0, :cond_0

    .line 126
    :goto_0
    return-void

    .line 110
    :cond_0
    const-string v1, "res/DB/language.csv"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 112
    :try_start_1
    new-instance v0, Lorg/apache/commons/csv/CSVParser;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    sget-object v3, Lorg/apache/commons/csv/CSVFormat;->DEFAULT:Lorg/apache/commons/csv/CSVFormat;

    invoke-direct {v0, v2, v3}, Lorg/apache/commons/csv/CSVParser;-><init>(Ljava/io/Reader;Lorg/apache/commons/csv/CSVFormat;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 114
    :try_start_2
    invoke-direct {p0, v0}, Lcom/cmplay/d/b;->a(Lorg/apache/commons/csv/CSVParser;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 116
    :try_start_3
    invoke-virtual {v0}, Lorg/apache/commons/csv/CSVParser;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 119
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 121
    :catch_0
    move-exception v0

    .line 122
    const-string v1, "mys"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 116
    :catchall_0
    move-exception v2

    :try_start_5
    invoke-virtual {v0}, Lorg/apache/commons/csv/CSVParser;->close()V

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 119
    :catchall_1
    move-exception v0

    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_1

    .line 123
    :catch_1
    move-exception v0

    .line 124
    const-string v1, "mys"

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Ljava/util/Locale;)V
    .locals 2

    .prologue
    .line 83
    monitor-enter p0

    .line 84
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/cmplay/d/b;->d:Z

    .line 85
    iput-object p2, p0, Lcom/cmplay/d/b;->b:Ljava/util/Locale;

    .line 86
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/cmplay/d/b$1;

    invoke-direct {v1, p0, p1}, Lcom/cmplay/d/b$1;-><init>(Lcom/cmplay/d/b;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 102
    return-void

    .line 86
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/cmplay/d/b;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/cmplay/d/b;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(Lorg/apache/commons/csv/CSVParser;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    .line 129
    invoke-virtual {p1}, Lorg/apache/commons/csv/CSVParser;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    move v2, v0

    .line 132
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/csv/CSVRecord;

    .line 134
    invoke-virtual {v0}, Lorg/apache/commons/csv/CSVRecord;->getRecordNumber()J

    move-result-wide v4

    .line 135
    const-wide/16 v6, 0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    .line 136
    const-string v1, "TID"

    invoke-direct {p0, v0, v1}, Lcom/cmplay/d/b;->a(Lorg/apache/commons/csv/CSVRecord;Ljava/lang/String;)I

    move-result v1

    .line 137
    if-gez v1, :cond_1

    .line 150
    :cond_0
    return-void

    .line 140
    :cond_1
    iget-object v2, p0, Lcom/cmplay/d/b;->b:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/cmplay/d/b;->b:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v4}, Lcom/cmplay/d/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/cmplay/d/b;->a(Lorg/apache/commons/csv/CSVRecord;Ljava/lang/String;)I

    move-result v0

    .line 141
    if-ltz v0, :cond_0

    :goto_1
    move v2, v1

    move v1, v0

    .line 149
    goto :goto_0

    .line 145
    :cond_2
    invoke-virtual {v0, v2}, Lorg/apache/commons/csv/CSVRecord;->get(I)Ljava/lang/String;

    move-result-object v4

    .line 146
    invoke-virtual {v0, v1}, Lorg/apache/commons/csv/CSVRecord;->get(I)Ljava/lang/String;

    move-result-object v0

    .line 147
    iget-object v5, p0, Lcom/cmplay/d/b;->c:Ljava/util/Map;

    invoke-interface {v5, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v1

    move v1, v2

    goto :goto_1
.end method

.method static synthetic a(Lcom/cmplay/d/b;Z)Z
    .locals 0

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/cmplay/d/b;->d:Z

    return p1
.end method

.method private b()V
    .locals 1

    .prologue
    .line 164
    :goto_0
    iget-boolean v0, p0, Lcom/cmplay/d/b;->d:Z

    if-nez v0, :cond_0

    .line 166
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 167
    :catch_0
    move-exception v0

    goto :goto_0

    .line 170
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    monitor-enter p0

    .line 73
    :try_start_0
    invoke-direct {p0}, Lcom/cmplay/d/b;->b()V

    .line 74
    iget-object v0, p0, Lcom/cmplay/d/b;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    monitor-exit p0

    return-object v0

    .line 75
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 52
    .line 53
    if-nez p2, :cond_0

    .line 54
    const-string p2, ""

    .line 56
    :cond_0
    if-nez p3, :cond_1

    .line 57
    const-string p3, ""

    .line 59
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 60
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 64
    :goto_0
    monitor-enter p0

    .line 65
    :try_start_0
    iget-boolean v1, p0, Lcom/cmplay/d/b;->d:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/cmplay/d/b;->b:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 66
    :cond_2
    invoke-direct {p0, p1, v0}, Lcom/cmplay/d/b;->a(Landroid/content/Context;Ljava/util/Locale;)V

    .line 68
    :cond_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    return-void

    .line 62
    :cond_4
    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, p2, p3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 68
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
